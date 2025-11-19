@interface AUPBClientManager
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedInstance;
- (AUPBClientManager)init;
- (id).cxx_construct;
- (id)serverFromRef:(OpaqueAUPBServer *)a3;
- (int)addNewServerListener:(void *)a3 withUserData:(void *)a4;
- (int)addPropertyListener:(void *)a3 onServer:(OpaqueAUPBServer *)a4 block:(OpaqueAUPB *)a5 property:(unsigned int)a6 withUserData:(void *)a7;
- (int)removePropertyListener:(void *)a3 onServer:(OpaqueAUPBServer *)a4 block:(OpaqueAUPB *)a5 property:(unsigned int)a6 withUserData:(void *)a7;
- (int)removePropertyListenersForServer:(OpaqueAUPBServer *)a3;
- (int)removeServerListener:(void *)a3 withUserData:(void *)a4;
- (int)setAUProperty:(unsigned int)a3 onServer:(OpaqueAUPBServer *)a4 audioUnit:(OpaqueRemoteAudioUnit *)a5 scope:(unsigned int)a6 element:(unsigned int)a7 withValue:(const void *)a8 size:(unsigned int)a9;
- (void)dealloc;
- (void)handleRegistrarCrash;
- (void)newServerAdded:(id)a3;
- (void)startRegistarConnection;
@end

@implementation AUPBClientManager

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 sharedInstance];

  return v3;
}

+ (id)sharedInstance
{
  objc_sync_enter(a1);
  if (!sSharedInstance)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___AUPBClientManager;
    sSharedInstance = [objc_msgSendSuper2(&v4 allocWithZone_];
  }

  objc_sync_exit(a1);
  return sSharedInstance;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

intptr_t __81__AUPBClientManager_setSerialAUProperty_onServer_audioUnit_scope_element_toData___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

intptr_t __81__AUPBClientManager_getSerialAUProperty_onServer_audioUnit_scope_element_inData___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  **(a1 + 56) = a3;
  v4 = **(a1 + 56);
  if (v4)
  {
    v5 = v4;
  }

  [*(a1 + 32) removeSema:*(*(*(a1 + 48) + 8) + 40)];
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v6);
}

intptr_t __75__AUPBClientManager_setAUParameter_onServer_audioUnit_scope_element_value___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

intptr_t __85__AUPBClientManager_getAUParameter_onServer_audioUnit_scope_element_copiedIntoValue___block_invoke(uint64_t a1, int a2, float a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  **(a1 + 56) = a3;
  [*(a1 + 32) removeSema:*(*(*(a1 + 48) + 8) + 40)];
  v4 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v4);
}

- (int)setAUProperty:(unsigned int)a3 onServer:(OpaqueAUPBServer *)a4 audioUnit:(OpaqueRemoteAudioUnit *)a5 scope:(unsigned int)a6 element:(unsigned int)a7 withValue:(const void *)a8 size:(unsigned int)a9
{
  v34 = *MEMORY[0x1E69E9840];
  if (!self->mConnectionAcknowledged)
  {
    v16 = 560295540;
    goto LABEL_12;
  }

  v14 = [(AUPBClientManager *)self serverFromRef:a4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1936881215;
  if (!gLogScope)
  {
    v15 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136316674;
      *&buf[1] = "AUPBClientManager.mm";
      v24 = 1024;
      v25 = 684;
      v26 = 1024;
      v27 = a3;
      v28[0] = 2048;
      *&v28[1] = a4;
      v28[5] = 2048;
      v29 = a5;
      v30 = 1024;
      v31 = a6;
      v32 = 1024;
      v33 = a7;
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d SetAUProp: property=%d server=%p au=%p scope=%d element=%d\n", buf, 0x38u);
    }

    goto LABEL_9;
  }

  v15 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v14)
  {
    PropertyMarshaller::PropertyMarshaller(buf, 0);
  }

  v16 = *(v20 + 6);
  _Block_object_dispose(&v19, 8);
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

intptr_t __83__AUPBClientManager_setAUProperty_onServer_audioUnit_scope_element_withValue_size___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

intptr_t __93__AUPBClientManager_getAUProperty_onServer_audioUnit_scope_element_copiedIntoBufer_withSize___block_invoke(uint64_t a1, int a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (a3 && !*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = [a3 bytes];
    [a3 length];
    PropertyMarshaller::PropertyMarshaller(v7, v5);
  }

  [*(a1 + 32) removeSema:{*(*(*(a1 + 48) + 8) + 40), v7[0]}];
  return dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

intptr_t __95__AUPBClientManager_getAUPropertyInfo_onServer_audioUnit_scope_element_intoDataSize_writeable___block_invoke(uint64_t a1, int a2, int a3, char a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v5 = *(a1 + 56);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    *v6 = a4;
  }

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = *(a1 + 72);
    v8 = 8;
    if (v7 <= 32)
    {
      if (v7 > 23)
      {
        if ((v7 - 24) < 2 || v7 == 30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        switch(v7)
        {
          case 0:
            goto LABEL_26;
          case 4:
            v8 = 104;
            goto LABEL_26;
          case 16:
LABEL_26:
            **(a1 + 56) = v8;
            break;
        }
      }
    }

    else
    {
      if (v7 <= 37)
      {
        if ((v7 - 34) < 2)
        {
LABEL_11:
          v8 = 16;
          goto LABEL_26;
        }

        if (v7 != 33)
        {
          if (v7 != 36)
          {
            goto LABEL_27;
          }

          goto LABEL_11;
        }

LABEL_24:
        v8 = 24;
        goto LABEL_26;
      }

      if (v7 == 38)
      {
        goto LABEL_24;
      }

      if (v7 == 50 || v7 == 54)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  [*(a1 + 32) removeSema:*(*(*(a1 + 48) + 8) + 40)];
  v9 = *(*(*(a1 + 48) + 8) + 40);

  return dispatch_semaphore_signal(v9);
}

intptr_t __56__AUPBClientManager_setPBProperty_onServer_block_value___block_invoke(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  [*(a1 + 48) removeSema:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v3);
}

intptr_t __61__AUPBClientManager_copyPBProperty_onServer_block_intoValue___block_invoke(uint64_t a1, int a2, CFDataRef data)
{
  v25 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = a2;
  **(a1 + 64) = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  v4 = *(a1 + 72);
  if (v4 == 1651272556)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_27;
    }

    v10 = **(a1 + 64);
    if (!v10)
    {
      goto LABEL_27;
    }

    BytePtr = CFDataGetBytePtr(v10);
    if (CFDataGetLength(**(a1 + 64)) >= 4)
    {
      [*(a1 + 32) aupbRefFromHandle:*BytePtr];
      operator new();
    }

    v8 = 0;
    CFRelease(**(a1 + 64));
    v20 = CFDataCreate(0, 0, 0);
  }

  else
  {
    if (v4 != 1635087726)
    {
      goto LABEL_27;
    }

    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_27;
    }

    v5 = **(a1 + 64);
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(**(a1 + 64));
    if (Length >= 0x10)
    {
      v8 = 0;
      v9 = 0;
      v12 = Length >> 4;
      do
      {
        *&v24 = *v6;
        DWORD2(v24) = *(v6 + 2);
        v13 = [*(a1 + 32) auRefFromHandle:*(v6 + 3)];
        v14 = v9 - v8;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-v8 >> 3) > v16)
        {
          v16 = 0x5555555555555556 * (-v8 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v8 >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::allocator<AUPBUnit>::allocate_at_least[abi:ne200100](v17);
        }

        v18 = 24 * v15;
        *v18 = v24;
        *(v18 + 16) = v13;
        v9 = 24 * v15 + 24;
        v19 = (v18 + 24 * (v14 / -24));
        memcpy(v19, v8, v14);
        if (v8)
        {
          operator delete(v8);
        }

        v8 = v19;
        v6 += 16;
        --v12;
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    CFRelease(**(a1 + 64));
    v20 = CFDataCreate(0, v8, v9 - v8);
  }

  **(a1 + 64) = v20;
  if (v8)
  {
    operator delete(v8);
  }

LABEL_27:
  [*(a1 + 40) removeSema:*(*(*(a1 + 56) + 8) + 40)];
  v21 = *(*(*(a1 + 56) + 8) + 40);
  v22 = *MEMORY[0x1E69E9840];

  return dispatch_semaphore_signal(v21);
}

- (int)removePropertyListenersForServer:(OpaqueAUPBServer *)a3
{
  begin = self->mPropertyListeners.__begin_;
  end = self->mPropertyListeners.__end_;
  while (begin != end)
  {
    if (*begin == a3)
    {
      v7 = end - (begin + 40);
      if (end != (begin + 40))
      {
        memmove(begin, begin + 40, end - (begin + 40));
      }

      end = (begin + v7);
      self->mPropertyListeners.__end_ = (begin + v7);
    }

    else
    {
      begin = (begin + 40);
    }
  }

  return 0;
}

- (int)removePropertyListener:(void *)a3 onServer:(OpaqueAUPBServer *)a4 block:(OpaqueAUPB *)a5 property:(unsigned int)a6 withUserData:(void *)a7
{
  v36 = *MEMORY[0x1E69E9840];
  begin = self->mPropertyListeners.__begin_;
  end = self->mPropertyListeners.__end_;
  if (begin == end)
  {
LABEL_8:
    v15 = -50;
  }

  else
  {
    while (*(begin + 3) != a3 || *begin != a4 || *(begin + 1) != a5 || *(begin + 4) != a6 || *(begin + 4) != a7)
    {
      begin = (begin + 40);
      if (begin == end)
      {
        goto LABEL_8;
      }
    }

    v19 = end - (begin + 40);
    if (end != (begin + 40))
    {
      memmove(begin, begin + 40, end - (begin + 40));
    }

    v15 = 0;
    self->mPropertyListeners.__end_ = (begin + v19);
  }

  if (gLogScope)
  {
    v16 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136316930;
    v21 = "AUPBClientManager.mm";
    v22 = 1024;
    v23 = 478;
    v24 = 2048;
    v25 = a3;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = a5;
    v30 = 1024;
    v31 = a6;
    v32 = 2048;
    v33 = a7;
    v34 = 1024;
    v35 = v15;
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d RemovePBPropListener: proc=%p, server=%p block=%p property=%d userData=%p result=%d\n", &v20, 0x46u);
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int)addPropertyListener:(void *)a3 onServer:(OpaqueAUPBServer *)a4 block:(OpaqueAUPB *)a5 property:(unsigned int)a6 withUserData:(void *)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = -50;
  if (a3 && a4)
  {
    end = self->mPropertyListeners.__end_;
    cap = self->mPropertyListeners.__cap_;
    if (end >= cap)
    {
      begin = self->mPropertyListeners.__begin_;
      v18 = end - begin;
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0x666666666666666)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = 40 * v19;
      *v23 = a4;
      *(v23 + 8) = a5;
      *(v23 + 16) = a6;
      *(v23 + 20) = 0;
      *(v23 + 24) = a3;
      *(v23 + 32) = a7;
      v16 = (40 * v19 + 40);
      v24 = (40 * v19 - v18);
      memcpy((v23 - v18), begin, v18);
      self->mPropertyListeners.__begin_ = v24;
      self->mPropertyListeners.__end_ = v16;
      self->mPropertyListeners.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = a4;
      *(end + 1) = a5;
      *(end + 2) = a6;
      v16 = (end + 40);
      *(end + 3) = a3;
      *(end + 4) = a7;
    }

    v12 = 0;
    self->mPropertyListeners.__end_ = v16;
  }

  if (gLogScope)
  {
    v25 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v28 = 136316930;
    v29 = "AUPBClientManager.mm";
    v30 = 1024;
    v31 = 463;
    v32 = 2048;
    v33 = a3;
    v34 = 2048;
    v35 = a4;
    v36 = 2048;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    v40 = 2048;
    v41 = a7;
    v42 = 1024;
    v43 = v12;
    _os_log_impl(&dword_18F5DF000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d AddPBPropListener: proc=%p, server=%p block=%p property=%d userData=%p result=%d\n", &v28, 0x46u);
  }

LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int)removeServerListener:(void *)a3 withUserData:(void *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    begin = self->mNewServerListeners.__begin_;
    end = self->mNewServerListeners.__end_;
    while (begin != end)
    {
      if (*begin == a3 && *(begin + 1) == a4)
      {
        v13 = end - (begin + 16);
        if (end != (begin + 16))
        {
          memmove(begin, begin + 16, end - (begin + 16));
        }

        v9 = 0;
        self->mNewServerListeners.__end_ = (begin + v13);
        goto LABEL_8;
      }

      begin = (begin + 16);
    }
  }

  v9 = -50;
LABEL_8:
  if (gLogScope)
  {
    v10 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136316162;
    v15 = "AUPBClientManager.mm";
    v16 = 1024;
    v17 = 450;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = a4;
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d RemoveServerListener: proc=%p, userData=%p, result=%d\n", &v14, 0x2Cu);
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int)addNewServerListener:(void *)a3 withUserData:(void *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    end = self->mNewServerListeners.__end_;
    cap = self->mNewServerListeners.__cap_;
    if (end >= cap)
    {
      begin = self->mNewServerListeners.__begin_;
      v12 = end - begin;
      v13 = (end - begin) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v15 = cap - begin;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (!(v16 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = (16 * v13);
      *v17 = a3;
      v17[1] = a4;
      v9 = (16 * v13 + 16);
      memcpy(0, begin, v12);
      self->mNewServerListeners.__begin_ = 0;
      self->mNewServerListeners.__end_ = v9;
      self->mNewServerListeners.__cap_ = 0;
      if (begin)
      {
        operator delete(begin);
      }
    }

    else
    {
      *end = a3;
      *(end + 1) = a4;
      v9 = (end + 16);
    }

    self->mNewServerListeners.__end_ = v9;
    v18 = [(NSMutableArray *)self->mRemoteServers copy];
    mTouchServersQueue = self->mTouchServersQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AUPBClientManager_addNewServerListener_withUserData___block_invoke;
    block[3] = &unk_1E72C1738;
    block[4] = v18;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(mTouchServersQueue, block);
    v10 = 0;
  }

  else
  {
    v10 = -50;
  }

  if (gLogScope)
  {
    v20 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v25 = "AUPBClientManager.mm";
    v26 = 1024;
    v27 = 432;
    v28 = 2048;
    v29 = a3;
    v30 = 2048;
    v31 = a4;
    v32 = 1024;
    v33 = v10;
    _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d AddServerListener: proc=%p, userData=%p, result=%d\n", buf, 0x2Cu);
  }

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

void __55__AUPBClientManager_addNewServerListener_withUserData___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(a1 + 40))(*(a1 + 48), [*(*(&v8 + 1) + 8 * i) ref]);
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)serverFromRef:(OpaqueAUPBServer *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mRemoteServers = self->mRemoteServers;
  v5 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(mRemoteServers);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 ref] == a3)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)mRemoteServers countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __73__AUPBClientManager_processingBlock_propertiesChanged_withQualifierData___block_invoke(uint64_t a1)
{
  v2 = 40;
  if (!*(a1 + 112))
  {
    v2 = 64;
  }

  v3 = *(a1 + v2);
  v10 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 72);
  v6 = [*(a1 + 32) aupbRefFromHandle:*(a1 + 116)];
  v7 = *(a1 + 120);
  v8 = *(a1 + 112);

  return v10(v4, v5, v6, v7, v3, v8);
}

- (void)newServerAdded:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(RemoteAUPBServer);
  -[RemoteAUPBServer setXpcConnection:](v5, "setXpcConnection:", [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:a3]);
  -[NSXPCConnection setRemoteObjectInterface:](-[RemoteAUPBServer xpcConnection](v5, "xpcConnection"), "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034FCF0]);
  [(RemoteAUPBServer *)v5 setProxyInterface:[(NSXPCConnection *)[(RemoteAUPBServer *)v5 xpcConnection] remoteObjectProxy]];
  -[NSXPCConnection setExportedInterface:](-[RemoteAUPBServer xpcConnection](v5, "xpcConnection"), "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353338]);
  [(NSXPCConnection *)[(RemoteAUPBServer *)v5 xpcConnection] setExportedObject:self];
  mServerRefCounter = self->mServerRefCounter;
  self->mServerRefCounter = mServerRefCounter + 1;
  [(RemoteAUPBServer *)v5 setRef:mServerRefCounter];
  if (gLogScope)
  {
    v7 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "AUPBClientManager.mm";
    v22 = 1024;
    v23 = 251;
    v24 = 2080;
    v25 = [-[RemoteAUPBServer description](v5 "description")];
    _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s\n", buf, 0x1Cu);
  }

LABEL_7:
  objc_initWeak(buf, v5);
  objc_initWeak(&location, self);
  v8 = [(RemoteAUPBServer *)v5 xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__AUPBClientManager_newServerAdded___block_invoke;
  v16[3] = &unk_1E72C16C8;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(v18, buf);
  v18[1] = mServerRefCounter;
  [(NSXPCConnection *)v8 setInvalidationHandler:v16];
  v9 = [(RemoteAUPBServer *)v5 xpcConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__AUPBClientManager_newServerAdded___block_invoke_127;
  v13[3] = &unk_1E72C16C8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(v15, buf);
  v15[1] = mServerRefCounter;
  [(NSXPCConnection *)v9 setInterruptionHandler:v13];
  mTouchServersQueue = self->mTouchServersQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__AUPBClientManager_newServerAdded___block_invoke_128;
  v12[3] = &unk_1E72C16F0;
  v12[4] = self;
  v12[5] = v5;
  v12[6] = mServerRefCounter;
  dispatch_async(mTouchServersQueue, v12);
  objc_destroyWeak(v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

id *__36__AUPBClientManager_newServerAdded___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (!result)
  {
    goto LABEL_22;
  }

  v3 = result;
  result = objc_loadWeak((a1 + 40));
  if (!result)
  {
    goto LABEL_22;
  }

  v4 = result;
  [result signalAllSemaphores];
  [v3[3] removeObject:v4];
  if (!gLogScope)
  {
    v5 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [objc_msgSend(v4 "description")];
      v7 = [v3[3] count];
      v15 = 136315906;
      v16 = "AUPBClientManager.mm";
      v17 = 1024;
      v18 = 261;
      v19 = 2080;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Remote server %s invalidated, now have %lu servers\n", &v15, 0x26u);
    }

    goto LABEL_9;
  }

  v5 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = v3[4];
  v9 = v3[5];
  if (v8 != v9)
  {
    v10 = v8 + 4;
    do
    {
      v11 = v10 - 4;
      if (*(v10 - 4) == *(a1 + 48) && *(v10 - 3) == 0 && *(v10 - 4) == 1684628836)
      {
        (*(v10 - 1))(*v10);
      }

      v10 += 5;
    }

    while (v11 + 5 != v9);
  }

  result = [v3 removePropertyListenersForServer:*(a1 + 48)];
LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

id *__36__AUPBClientManager_newServerAdded___block_invoke_127(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (!result)
  {
    goto LABEL_22;
  }

  v3 = result;
  result = objc_loadWeak((a1 + 40));
  if (!result)
  {
    goto LABEL_22;
  }

  v4 = result;
  [result signalAllSemaphores];
  [v3[3] removeObject:v4];
  if (!gLogScope)
  {
    v5 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [objc_msgSend(v4 "description")];
      v7 = [v3[3] count];
      v15 = 136315906;
      v16 = "AUPBClientManager.mm";
      v17 = 1024;
      v18 = 277;
      v19 = 2080;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Remote server %s interrupted, now have %lu servers\n", &v15, 0x26u);
    }

    goto LABEL_9;
  }

  v5 = *gLogScope;
  if (*gLogScope)
  {
    goto LABEL_7;
  }

LABEL_9:
  v8 = v3[4];
  v9 = v3[5];
  if (v8 != v9)
  {
    v10 = v8 + 4;
    do
    {
      v11 = v10 - 4;
      if (*(v10 - 4) == *(a1 + 48) && *(v10 - 3) == 0 && *(v10 - 4) == 1684628836)
      {
        (*(v10 - 1))(*v10);
      }

      v10 += 5;
    }

    while (v11 + 5 != v9);
  }

  result = [v3 removePropertyListenersForServer:*(a1 + 48)];
LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __36__AUPBClientManager_newServerAdded___block_invoke_128(uint64_t a1)
{
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];

  result = [objc_msgSend(*(a1 + 40) "xpcConnection")];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    result = v7(v6, *(a1 + 48));
  }

  return result;
}

- (void)handleRegistrarCrash
{
  v13 = *MEMORY[0x1E69E9840];
  mRegistrarConnection = self->mRegistrarConnection;
  if (mRegistrarConnection)
  {

    self->mRegistrarConnection = 0;
  }

  if (self->mConnectionAcknowledged)
  {
    if (gLogScope)
    {
      v4 = *gLogScope;
      if (!*gLogScope)
      {
LABEL_13:
        v6 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__AUPBClientManager_handleRegistrarCrash__block_invoke;
        block[3] = &unk_1E72C16A0;
        block[4] = self;
        dispatch_after(v6, MEMORY[0x1E69E96A0], block);
        goto LABEL_17;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v10 = "AUPBClientManager.mm";
      v11 = 1024;
      v12 = 226;
      _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Delaying checking in with registrar a few seconds...\n", buf, 0x12u);
    }

    goto LABEL_13;
  }

  if (gLogScope)
  {
    v5 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v10 = "AUPBClientManager.mm";
    v11 = 1024;
    v12 = 233;
    _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Not retrying since connection not acknowledged.  No Entitlement?", buf, 0x12u);
  }

LABEL_17:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)startRegistarConnection
{
  self->mRegistrarConnection = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.internal.aupbregistrarservice"];
  -[NSXPCConnection setRemoteObjectInterface:](self->mRegistrarConnection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03564B0]);
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3042000000;
  v9[3] = __Block_byref_object_copy__8724;
  v9[4] = __Block_byref_object_dispose__8725;
  objc_initWeak(&v10, self);
  mRegistrarConnection = self->mRegistrarConnection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke;
  v8[3] = &unk_1E72C2B68;
  v8[4] = v9;
  [(NSXPCConnection *)mRegistrarConnection setInterruptionHandler:v8];
  v4 = self->mRegistrarConnection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke_2;
  v7[3] = &unk_1E72C2B68;
  v7[4] = v9;
  [(NSXPCConnection *)v4 setInvalidationHandler:v7];
  -[NSXPCConnection setExportedInterface:](self->mRegistrarConnection, "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353268]);
  [(NSXPCConnection *)self->mRegistrarConnection setExportedObject:self];
  [(NSXPCConnection *)self->mRegistrarConnection resume];
  v5 = [(NSXPCConnection *)self->mRegistrarConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8726];
  self->mProxyInterface = v5;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AUPBClientManager_startRegistarConnection__block_invoke_99;
  v6[3] = &unk_1E72C1678;
  v6[4] = self;
  [(AUPBRegistrarHosting *)v5 registerAsEndpointListenerWithReply:v6];
  if (self->mValidToken)
  {
    notify_set_state(self->mNotifyToken, 1uLL);
    notify_post("com.apple.audio.aupbregistrarneeded");
  }

  _Block_object_dispose(v9, 8);
  objc_destroyWeak(&v10);
}

uint64_t __44__AUPBClientManager_startRegistarConnection__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((*(*(a1 + 32) + 8) + 40));

  return [Weak handleRegistrarCrash];
}

uint64_t __44__AUPBClientManager_startRegistarConnection__block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((*(*(a1 + 32) + 8) + 40));

  return [Weak handleRegistrarCrash];
}

void __44__AUPBClientManager_startRegistarConnection__block_invoke_99(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [a2 code];
    v5 = 1;
    if (v4 && v4 != 3)
    {
      if (v4 != 1)
      {
        goto LABEL_7;
      }

      v5 = 0;
    }

    *(*(a1 + 32) + 101) = v5;
  }

LABEL_7:
  if (gLogScope)
  {
    v6 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "AUPBClientManager.mm";
    v10 = 1024;
    v11 = 210;
    v12 = 2080;
    v13 = [objc_msgSend(a2 "description")];
    _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v8, 0x1Cu);
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

void __44__AUPBClientManager_startRegistarConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (gLogScope)
  {
    v3 = *gLogScope;
    if (!*gLogScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "AUPBClientManager.mm";
    v7 = 1024;
    v8 = 190;
    v9 = 2080;
    v10 = [objc_msgSend(a2 "description")];
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v5, 0x1Cu);
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
}

- (AUPBClientManager)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = AUPBClientManager;
  if ([(AUPBClientManager *)&v4 init])
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  if (self->mValidToken)
  {
    notify_cancel(self->mNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = AUPBClientManager;
  [(AUPBClientManager *)&v3 dealloc];
}

@end