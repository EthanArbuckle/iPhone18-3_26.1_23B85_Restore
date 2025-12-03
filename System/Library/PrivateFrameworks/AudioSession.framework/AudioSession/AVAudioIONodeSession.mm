@interface AVAudioIONodeSession
- (AVAudioIONodePlayState)playState;
- (AVAudioIONodeSession)initWithDescription:(id)description;
- (AVAudioIONodeSession)initWithDescription:(id)description server:(id)server;
- (BOOL)_setMXProperties:(void *)properties properties:(id)a4 error:(id *)error;
- (BOOL)privateCreateIONodeSession:(id)session server:(id)server;
- (BOOL)reconfigure:(id)reconfigure error:(id *)error;
- (BOOL)setMXProperties:(id)properties error:(id *)error;
- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error;
- (NSUUID)nodeSessionUUID;
- (id).cxx_construct;
- (id)getMXProperties:(id)properties propertyErrors:(id *)errors;
- (id)getMXSessionProperty:(id)property error:(id *)error;
- (int)sessionOwnerPID;
- (unsigned)nodeSessionID;
- (unsigned)playerType;
- (unsigned)sourceSessionID;
- (void)dealloc;
- (void)invalidate;
- (void)setInputMuted:(BOOL)muted;
- (void)setOutputMuted:(BOOL)muted;
- (void)setPlayState:(id)state;
@end

@implementation AVAudioIONodeSession

- (AVAudioIONodeSession)initWithDescription:(id)description server:(id)server
{
  v19 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  serverCopy = server;
  v14.receiver = self;
  v14.super_class = AVAudioIONodeSession;
  v8 = [(AVAudioIONodeSession *)&v14 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_invalidated);
    v10 = [(AVAudioIONodeSession *)v8 privateCreateIONodeSession:descriptionCopy server:serverCopy];
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

- (AVAudioIONodeSession)initWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = avac::CreateInProcessIONodeSessionServer(descriptionCopy);
  if (!v5)
  {
    v5 = objc_alloc_init(AVAudioIONodeSessionRemoteServer);
  }

  v6 = [(AVAudioIONodeSession *)self initWithDescription:descriptionCopy server:v5];

  return v6;
}

- (BOOL)privateCreateIONodeSession:(id)session server:(id)server
{
  v8 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  serverCopy = server;
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

- (BOOL)reconfigure:(id)reconfigure error:(id *)error
{
  reconfigureCopy = reconfigure;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  if ([(AVAudioIONodeDescription *)reconfigureCopy isEqual:*(ptr + 2)])
  {
    goto LABEL_4;
  }

  v8 = *(ptr + 1);
  v9 = ptr[6];
  sourceSession = [(AVAudioIONodeDescription *)reconfigureCopy sourceSession];
  sessionOwnerPID = [(AVAudioIONodeDescription *)reconfigureCopy sessionOwnerPID];
  v12 = [v8 reconfigureIONode:v9 withSourceSession:sourceSession sessionOwnerPID:sessionOwnerPID playerType:-[AVAudioIONodeDescription playerType](reconfigureCopy error:{"playerType"), error}];

  if (v12)
  {
    avas::client::AVAudioIONodeSessionImpl::SetNodeID((ptr + 2), v12);
    avas::client::AVAudioIONodeSessionImpl::SetDescription((ptr + 2), reconfigureCopy);
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
  sourceSession = [*(ptr + 2) sourceSession];
  os_unfair_lock_unlock(ptr);
  return sourceSession;
}

- (int)sessionOwnerPID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  sessionOwnerPID = [*(ptr + 2) sessionOwnerPID];
  intValue = [sessionOwnerPID intValue];

  os_unfair_lock_unlock(ptr);
  return intValue;
}

- (unsigned)playerType
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  playerType = [*(ptr + 2) playerType];
  os_unfair_lock_unlock(ptr);
  return playerType;
}

- (void)setInputMuted:(BOOL)muted
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

- (void)setOutputMuted:(BOOL)muted
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

- (void)setPlayState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (![(AVAudioIONodePlayState *)self->_playState isEqual:stateCopy])
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    v6 = *(ptr + 1);
    v7 = ptr[6];
    v16 = 0;
    v8 = [v6 setIONode:v7 playState:objc_msgSend(stateCopy modes:"playState") error:{objc_msgSend(stateCopy, "ioMode"), &v16}];
    v9 = v16;

    if (v8)
    {
      v11 = [stateCopy copy];
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

- (id)getMXSessionProperty:(id)property error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v12[0] = propertyCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(AVAudioIONodeSession *)self getMXProperties:v7 propertyErrors:error];

  v9 = [v8 objectForKeyedSubscript:propertyCopy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  v15 = propertyCopy;
  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [(AVAudioIONodeSession *)self setMXProperties:v11 error:error];

  if (!valueCopy)
  {
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setMXProperties:(id)properties error:(id *)error
{
  ptr = self->_impl.__ptr_;
  propertiesCopy = properties;
  os_unfair_lock_lock(ptr);
  lock[0] = ptr;
  lock[1] = ptr + 2;
  v8 = [(AVAudioIONodeSession *)self _setMXProperties:lock properties:propertiesCopy error:error];

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  return v8;
}

- (BOOL)_setMXProperties:(void *)properties properties:(id)a4 error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = **(properties + 1);
  v8 = *(*(properties + 1) + 16);
  v43 = 0;
  v31 = [v7 setPropertiesIONode:v8 values:a4 error:&v43];
  v32 = v43;

  v9 = v32;
  if (!v32)
  {
    v25 = 0;
    v24 = 0;
    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ([v31 count])
  {
    v10 = MEMORY[0x1E695DF90];
    userInfo = [v32 userInfo];
    v12 = [v10 dictionaryWithDictionary:userInfo];

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
    domain = [v32 domain];
    v24 = [v22 errorWithDomain:domain code:objc_msgSend(v32 userInfo:{"code"), v12}];

    v9 = v32;
  }

  else
  {
    v24 = v32;
  }

  if (error)
  {
    v27 = v24;
    v25 = v24;
    v9 = v32;
    errorCopy2 = error;
LABEL_25:
    *errorCopy2 = v25;
    v24 = v25;
  }

LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

- (id)getMXProperties:(id)properties propertyErrors:(id *)errors
{
  v40 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v7 = *(ptr + 1);
  v8 = ptr[6];
  v37 = 0;
  v38 = 0;
  v29 = propertiesCopy;
  v30 = [v7 getPropertiesIONode:v8 properties:propertiesCopy status:&v38 error:&v37];
  v32 = v38;
  v9 = v37;

  if (!v9)
  {
    v25 = 0;
    errorsCopy4 = errors;
    if (!errors)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = [v32 count];
  errorsCopy3 = errors;
  if (v10)
  {
    v12 = MEMORY[0x1E695DF90];
    userInfo = [v9 userInfo];
    v14 = [v12 dictionaryWithDictionary:userInfo];

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
    domain = [v9 domain];
    v23 = [v21 errorWithDomain:domain code:objc_msgSend(v9 userInfo:{"code"), v14}];

    v9 = v23;
    errorsCopy3 = errors;
  }

  if (errorsCopy3)
  {
    v24 = v9;
    v25 = v9;
    errorsCopy4 = errors;
LABEL_16:
    *errorsCopy4 = v25;
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