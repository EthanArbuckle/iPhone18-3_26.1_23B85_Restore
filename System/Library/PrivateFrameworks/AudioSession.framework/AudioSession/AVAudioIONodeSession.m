@interface AVAudioIONodeSession
- (AVAudioIONodePlayState)playState;
- (AVAudioIONodeSession)initWithDescription:(id)a3;
- (AVAudioIONodeSession)initWithDescription:(id)a3 server:(id)a4;
- (BOOL)_setMXProperties:(void *)a3 properties:(id)a4 error:(id *)a5;
- (BOOL)privateCreateIONodeSession:(id)a3 server:(id)a4;
- (BOOL)reconfigure:(id)a3 error:(id *)a4;
- (BOOL)setMXProperties:(id)a3 error:(id *)a4;
- (BOOL)setMXSessionProperty:(id)a3 value:(id)a4 error:(id *)a5;
- (NSUUID)nodeSessionUUID;
- (id).cxx_construct;
- (id)getMXProperties:(id)a3 propertyErrors:(id *)a4;
- (id)getMXSessionProperty:(id)a3 error:(id *)a4;
- (int)sessionOwnerPID;
- (unsigned)nodeSessionID;
- (unsigned)playerType;
- (unsigned)sourceSessionID;
- (void)dealloc;
- (void)invalidate;
- (void)setInputMuted:(BOOL)a3;
- (void)setOutputMuted:(BOOL)a3;
- (void)setPlayState:(id)a3;
@end

@implementation AVAudioIONodeSession

- (AVAudioIONodeSession)initWithDescription:(id)a3 server:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AVAudioIONodeSession;
  v8 = [(AVAudioIONodeSession *)&v14 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_invalidated);
    v10 = [(AVAudioIONodeSession *)v8 privateCreateIONodeSession:v6 server:v7];
    if ((v10 & 1) == 0)
    {
      v11 = *avas::client::gSessionClientLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "AVAudioIONodeSession.mm";
        v17 = 1024;
        v18 = 94;
        _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create IONodeSession on the server", buf, 0x12u);
      }

      v9 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (AVAudioIONodeSession)initWithDescription:(id)a3
{
  v4 = a3;
  v5 = avac::CreateInProcessIONodeSessionServer(v4);
  if (!v5)
  {
    v5 = objc_alloc_init(AVAudioIONodeSessionRemoteServer);
  }

  v6 = [(AVAudioIONodeSession *)self initWithDescription:v4 server:v5];

  return v6;
}

- (BOOL)privateCreateIONodeSession:(id)a3 server:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  operator new();
}

- (void)dealloc
{
  [(AVAudioIONodeSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = AVAudioIONodeSession;
  [(AVAudioIONodeSession *)&v3 dealloc];
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_invalidated._Value, 1u) & 1) == 0)
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    v3 = ptr[6];
    v4 = *(ptr + 1);
    v10 = 0;
    v5 = [v4 invalidateIONode:v3 error:&v10];
    v6 = v10;

    if ((v5 & 1) == 0)
    {
      v8 = *avas::client::gSessionClientLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "AVAudioIONodeSession.mm";
        v13 = 1024;
        v14 = 156;
        v15 = 1024;
        v16 = v3;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to invalidate AVAudioIONodeSession 0x%x: %@", buf, 0x22u);
      }
    }

    avas::client::AVAudioIONodeSessionImpl::SetNodeID((ptr + 2), 0);

    os_unfair_lock_unlock(ptr);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)reconfigure:(id)a3 error:(id *)a4
{
  v6 = a3;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  if ([(AVAudioIONodeDescription *)v6 isEqual:*(ptr + 2)])
  {
    goto LABEL_4;
  }

  v8 = *(ptr + 1);
  v9 = ptr[6];
  v10 = [(AVAudioIONodeDescription *)v6 sourceSession];
  v11 = [(AVAudioIONodeDescription *)v6 sessionOwnerPID];
  v12 = [v8 reconfigureIONode:v9 withSourceSession:v10 sessionOwnerPID:v11 playerType:-[AVAudioIONodeDescription playerType](v6 error:{"playerType"), a4}];

  if (v12)
  {
    avas::client::AVAudioIONodeSessionImpl::SetNodeID((ptr + 2), v12);
    avas::client::AVAudioIONodeSessionImpl::SetDescription((ptr + 2), v6);
LABEL_4:
    LOBYTE(v12) = 1;
  }

  os_unfair_lock_unlock(ptr);

  return v12;
}

- (unsigned)nodeSessionID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  os_unfair_lock_opaque = ptr[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(ptr);
  return os_unfair_lock_opaque;
}

- (NSUUID)nodeSessionUUID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v3 = *(ptr + 4);
  os_unfair_lock_unlock(ptr);

  return v3;
}

- (unsigned)sourceSessionID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v3 = [*(ptr + 2) sourceSession];
  os_unfair_lock_unlock(ptr);
  return v3;
}

- (int)sessionOwnerPID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v3 = [*(ptr + 2) sessionOwnerPID];
  v4 = [v3 intValue];

  os_unfair_lock_unlock(ptr);
  return v4;
}

- (unsigned)playerType
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v3 = [*(ptr + 2) playerType];
  os_unfair_lock_unlock(ptr);
  return v3;
}

- (void)setInputMuted:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "AVAudioIONodeSession.mm";
    v7 = 1024;
    v8 = 226;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Unimplemented!", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)setOutputMuted:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "AVAudioIONodeSession.mm";
    v7 = 1024;
    v8 = 237;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Unimplemented!", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (AVAudioIONodePlayState)playState
{
  v2 = [(AVAudioIONodePlayState *)self->_playState copy];

  return v2;
}

- (void)setPlayState:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(AVAudioIONodePlayState *)self->_playState isEqual:v4])
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    v6 = *(ptr + 1);
    v7 = ptr[6];
    v16 = 0;
    v8 = [v6 setIONode:v7 playState:objc_msgSend(v4 modes:"playState") error:{objc_msgSend(v4, "ioMode"), &v16}];
    v9 = v16;

    if (v8)
    {
      v11 = [v4 copy];
      playState = self->_playState;
      self->_playState = v11;
    }

    else
    {
      v13 = *avas::client::gSessionClientLog(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = ptr[6];
        *buf = 136315906;
        v18 = "AVAudioIONodeSession.mm";
        v19 = 1024;
        v20 = 260;
        v21 = 1024;
        v22 = v14;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_1AC8A4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set play state for 0x%x: %@", buf, 0x22u);
      }
    }

    os_unfair_lock_unlock(ptr);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)getMXSessionProperty:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(AVAudioIONodeSession *)self getMXProperties:v7 propertyErrors:a4];

  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)setMXSessionProperty:(id)a3 value:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v15 = v8;
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [(AVAudioIONodeSession *)self setMXProperties:v11 error:a5];

  if (!v9)
  {
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setMXProperties:(id)a3 error:(id *)a4
{
  ptr = self->_impl.__ptr_;
  v7 = a3;
  os_unfair_lock_lock(ptr);
  lock[0] = ptr;
  lock[1] = ptr + 2;
  v8 = [(AVAudioIONodeSession *)self _setMXProperties:lock properties:v7 error:a4];

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  return v8;
}

- (BOOL)_setMXProperties:(void *)a3 properties:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = **(a3 + 1);
  v8 = *(*(a3 + 1) + 16);
  v43 = 0;
  v31 = [v7 setPropertiesIONode:v8 values:a4 error:&v43];
  v32 = v43;

  v9 = v32;
  if (!v32)
  {
    v25 = 0;
    v24 = 0;
    v26 = a5;
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ([v31 count])
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = [v32 userInfo];
    v12 = [v10 dictionaryWithDictionary:v11];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v31;
    v13 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v13)
    {
      v34 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v17)
          {
            v18 = *v36;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v35 + 1) + 8 * j);
                v21 = [v16 objectForKeyedSubscript:v20];
                if (([v21 isEqual:&unk_1F2163260] & 1) == 0)
                {
                  [v12 setObject:v21 forKeyedSubscript:v20];
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v17);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v13);
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = [v32 domain];
    v24 = [v22 errorWithDomain:v23 code:objc_msgSend(v32 userInfo:{"code"), v12}];

    v9 = v32;
  }

  else
  {
    v24 = v32;
  }

  if (a5)
  {
    v27 = v24;
    v25 = v24;
    v9 = v32;
    v26 = a5;
LABEL_25:
    *v26 = v25;
    v24 = v25;
  }

LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (id)getMXProperties:(id)a3 propertyErrors:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v7 = *(ptr + 1);
  v8 = ptr[6];
  v37 = 0;
  v38 = 0;
  v29 = v5;
  v30 = [v7 getPropertiesIONode:v8 properties:v5 status:&v38 error:&v37];
  v32 = v38;
  v9 = v37;

  if (!v9)
  {
    v25 = 0;
    v26 = a4;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = [v32 count];
  v11 = a4;
  if (v10)
  {
    v12 = MEMORY[0x1E695DF90];
    v13 = [v9 userInfo];
    v14 = [v12 dictionaryWithDictionary:v13];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v32;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          v20 = [v15 objectForKeyedSubscript:v19];
          if (([v20 isEqual:&unk_1F2163260] & 1) == 0)
          {
            [v14 setObject:v20 forKeyedSubscript:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v16);
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = [v9 domain];
    v23 = [v21 errorWithDomain:v22 code:objc_msgSend(v9 userInfo:{"code"), v14}];

    v9 = v23;
    v11 = a4;
  }

  if (v11)
  {
    v24 = v9;
    v25 = v9;
    v26 = a4;
LABEL_16:
    *v26 = v25;
    v9 = v25;
  }

LABEL_17:

  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0;
  return self;
}

@end