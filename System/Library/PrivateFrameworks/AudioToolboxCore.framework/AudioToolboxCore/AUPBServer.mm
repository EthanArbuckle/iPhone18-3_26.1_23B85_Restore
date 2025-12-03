@interface AUPBServer
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedInstance;
- (AUPBServer)init;
- (AUProcessingBlock)aupbFromAUHandle:(unsigned int)handle;
- (AUProcessingBlock)aupbFromRef:(OpaqueAUPB *)ref;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (OpaqueAUPB)registerBlock:(const AUPBMethods *)block withUserData:(void *)data;
- (OpaqueRemoteAudioUnit)auRefFromHandle:(unsigned int)handle;
- (id).cxx_construct;
- (int)registerAU:(OpaqueRemoteAudioUnit *)u inBlock:(OpaqueAUPB *)block;
- (int)unregisterAU:(OpaqueRemoteAudioUnit *)u;
- (int)unregisterBlock:(OpaqueAUPB *)block;
- (unsigned)auHandleFromRef:(OpaqueRemoteAudioUnit *)ref;
- (void)checkConnectRegistrar;
- (void)dealloc;
- (void)handleRegistrarCrash;
- (void)processingBlock:(OpaqueAUPB *)block properties:(const unsigned int *)properties count:(unsigned int)count changedWithQualifierData:(void *)data length:(unsigned int)length;
- (void)startRegistrarConnection;
@end

@implementation AUPBServer

+ (id)sharedInstance
{
  objc_sync_enter(self);
  if (!sSharedInstance)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___AUPBServer;
    sSharedInstance = [objc_msgSendSuper2(&v4 allocWithZone_];
  }

  objc_sync_exit(self);
  return sSharedInstance;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  sharedInstance = [self sharedInstance];

  return sharedInstance;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 9) = self + 80;
  *(self + 13) = 0;
  return self;
}

- (AUProcessingBlock)aupbFromRef:(OpaqueAUPB *)ref
{
  v4 = [(AUPBServer *)self handleFromAUPBRef:ref];
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  p_end_node = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  v5 = left;
  if (!left)
  {
    return 0;
  }

  v8 = p_end_node;
  do
  {
    v9 = v5[4].__left_;
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v5;
    }

    v5 = v5[v11].__left_;
  }

  while (v5);
  if (v8 == p_end_node)
  {
    return 0;
  }

  v12 = v8[4].__left_;
  v13 = &v8[5];
  if (v4 >= v12)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

- (unsigned)auHandleFromRef:(OpaqueRemoteAudioUnit *)ref
{
  begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
  if (begin_node == &self->mAUHandlesToInfo.__tree_.__end_node_)
  {
    return 0;
  }

  while (begin_node[6].__left_ != ref)
  {
    left = begin_node[1].__left_;
    if (left)
    {
      do
      {
        v5 = left;
        left = left->super.isa;
      }

      while (left);
    }

    else
    {
      do
      {
        v5 = begin_node[2].__left_;
        v6 = v5->super.isa == begin_node;
        begin_node = v5;
      }

      while (!v6);
    }

    begin_node = v5;
    if (v5 == &self->mAUHandlesToInfo.__tree_.__end_node_)
    {
      return 0;
    }
  }

  return begin_node[4].__left_;
}

- (OpaqueRemoteAudioUnit)auRefFromHandle:(unsigned int)handle
{
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return 0;
  }

  v6 = p_end_node;
  do
  {
    v7 = v4[4].__left_;
    v8 = v7 >= handle;
    v9 = v7 < handle;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9].__left_;
  }

  while (v4);
  if (v6 != p_end_node && LODWORD(v6[4].__left_) <= handle)
  {
    return v6[6].__left_;
  }

  else
  {
    return 0;
  }
}

- (AUProcessingBlock)aupbFromAUHandle:(unsigned int)handle
{
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  do
  {
    v5 = left[4].__left_;
    v6 = v5 >= handle;
    v7 = v5 < handle;
    if (v6)
    {
      p_end_node = left;
    }

    left = left[v7].__left_;
  }

  while (left);
  if (p_end_node == &self->mAUHandlesToInfo.__tree_.__end_node_)
  {
    return 0;
  }

  if (LODWORD(p_end_node[4].__left_) > handle)
  {
    return 0;
  }

  v10 = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  v8 = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = p_end_node[5].__left_;
  v12 = v8;
  do
  {
    v13 = v9[4].__left_;
    v6 = v13 >= v11;
    v14 = v13 < v11;
    if (v6)
    {
      v12 = v9;
    }

    v9 = v9[v14].__left_;
  }

  while (v9);
  if (v12 == v8)
  {
    return 0;
  }

  v15 = v12[4].__left_;
  v16 = &v12[5];
  if (v11 >= v15)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

- (void)processingBlock:(OpaqueAUPB *)block properties:(const unsigned int *)properties count:(unsigned int)count changedWithQualifierData:(void *)data length:(unsigned int)length
{
  dataCopy = data;
  v39 = *MEMORY[0x1E69E9840];
  if (self->mConnectionAcknowledged)
  {
    v12 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      blockCopy = block;
      v37 = 1024;
      countCopy = count;
      _os_log_debug_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "PBPropsChanged: Block=%p #props=%u\n", buf, 0x12u);
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (count)
    {
      countCopy2 = count;
      do
      {
        v15 = *properties++;
        [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v15, dataCopy)}];
        --countCopy2;
      }

      while (countCopy2);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->mClientConnections;
    dataCopy = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16, dataCopy];
    if (dataCopy)
    {
      v17 = dataCopy;
      v18 = *v31;
      if (v28)
      {
        v19 = length == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = !v19;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = [(AUPBServer *)self handleFromAUPBRef:block];
          proxyInterface = [v22 proxyInterface];
          if (v20)
          {
            v25 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:length];
          }

          else
          {
            v25 = 0;
          }

          [proxyInterface processingBlock:v23 propertiesChanged:v13 withQualifierData:v25];
        }

        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (int)unregisterAU:(OpaqueRemoteAudioUnit *)u
{
  v20 = *MEMORY[0x1E69E9840];
  ptr = self->mLock.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
  p_mAUHandlesToInfo = &self->mAUHandlesToInfo;
  v7 = begin_node;
  if (begin_node != p_mAUHandlesToInfo + 1)
  {
    while (v7[6] != u)
    {
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
      if (v10 == p_mAUHandlesToInfo + 1)
      {
        goto LABEL_13;
      }
    }

    v12 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(v7 + 8);
      v16 = 134218240;
      uCopy = u;
      v18 = 1024;
      v19 = v15;
      _os_log_debug_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "Unregistered AU %p, handle 0x%x\n", &v16, 0x12u);
    }

    std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(p_mAUHandlesToInfo, v7);
    operator delete(v7);
  }

LABEL_13:
  os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)registerAU:(OpaqueRemoteAudioUnit *)u inBlock:(OpaqueAUPB *)block
{
  v29 = *MEMORY[0x1E69E9840];
  ptr = self->mLock.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  v8 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134218496;
    uCopy = u;
    v25 = 1024;
    uCopy2 = u;
    v27 = 2048;
    blockCopy = block;
    _os_log_debug_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "Registered AU %p -> handle 0x%x in block %p\n", &v23, 0x1Cu);
  }

  p_end_node = &self->mAUHandlesToInfo.__tree_.__end_node_;
  left = self->mAUHandlesToInfo.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_11;
  }

  v11 = &self->mAUHandlesToInfo.__tree_.__end_node_;
  do
  {
    v12 = left[4].__left_;
    v13 = v12 >= u;
    v14 = v12 < u;
    if (v13)
    {
      v11 = left;
    }

    left = left[v14].__left_;
  }

  while (left);
  if (v11 != p_end_node && LODWORD(v11[4].__left_) <= u)
  {
    v19 = 1886806380;
    v20 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
    {
      v23 = 67109120;
      LODWORD(uCopy) = u;
      _os_log_error_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "### AU Handle 0x%x is already in handles to info map\n", &v23, 8u);
    }
  }

  else
  {
LABEL_11:
    v15 = [(AUPBServer *)self handleFromAUPBRef:block];
    v16 = p_end_node->__left_;
    if (!p_end_node->__left_)
    {
LABEL_17:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v17 = v16;
        v18 = v16[8];
        if (v18 <= u)
        {
          break;
        }

        v16 = *v17;
        if (!*v17)
        {
          goto LABEL_17;
        }
      }

      if (v18 >= u)
      {
        break;
      }

      v16 = *(v17 + 1);
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    v19 = 0;
    v17[10] = v15;
    *(v17 + 6) = u;
  }

  os_unfair_recursive_lock_unlock();
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (int)unregisterBlock:(OpaqueAUPB *)block
{
  v26 = *MEMORY[0x1E69E9840];
  ptr = self->mLock.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(AUPBServer *)self handleFromAUPBRef:block];
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->mBlockHandlesToMethods.__tree_.__end_node_;
  do
  {
    v9 = left[4].__left_;
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      p_end_node = left;
    }

    left = left[v11].__left_;
  }

  while (left);
  if (p_end_node != &self->mBlockHandlesToMethods.__tree_.__end_node_ && v6 >= LODWORD(p_end_node[4].__left_))
  {
    begin_node = self->mAUHandlesToInfo.__tree_.__begin_node_;
    if (begin_node != &self->mAUHandlesToInfo.__tree_.__end_node_)
    {
      do
      {
        if (LODWORD(begin_node[5].__left_) == LODWORD(p_end_node[4].__left_))
        {
          v16 = std::__tree<std::__value_type<unsigned int,RemoteAUHandleInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,RemoteAUHandleInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,RemoteAUHandleInfo>>>::__remove_node_pointer(&self->mAUHandlesToInfo, begin_node);
          operator delete(begin_node);
        }

        else
        {
          isa = begin_node[1].__left_;
          if (isa)
          {
            do
            {
              v16 = isa;
              isa = isa->super.isa;
            }

            while (isa);
          }

          else
          {
            do
            {
              v16 = begin_node[2].__left_;
              v18 = v16->super.isa == begin_node;
              begin_node = v16;
            }

            while (!v18);
          }
        }

        begin_node = v16;
      }

      while (v16 != &self->mAUHandlesToInfo.__tree_.__end_node_);
    }

    v19 = p_end_node[1].__left_;
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = v19->__left_;
      }

      while (v19);
    }

    else
    {
      v21 = p_end_node;
      do
      {
        v20 = v21[2].__left_;
        v18 = *v20 == v21;
        v21 = v20;
      }

      while (!v18);
    }

    if (self->mBlockHandlesToMethods.__tree_.__begin_node_ == p_end_node)
    {
      self->mBlockHandlesToMethods.__tree_.__begin_node_ = v20;
    }

    v22 = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
    --self->mBlockHandlesToMethods.__tree_.__size_;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v22, p_end_node);
    operator delete(p_end_node);
    v23 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v24 = 134217984;
      blockCopy = block;
      _os_log_debug_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_DEBUG, "Unregistered blockRef %p\n", &v24, 0xCu);
    }

    [(AUPBServer *)self blockListChanged];
    v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = -50;
  }

  os_unfair_recursive_lock_unlock();
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (OpaqueAUPB)registerBlock:(const AUPBMethods *)block withUserData:(void *)data
{
  v23 = *MEMORY[0x1E69E9840];
  ptr = self->mLock.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  mAUPBRefCounter = self->mAUPBRefCounter;
  self->mAUPBRefCounter = mAUPBRefCounter + 1;
  v9 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 67109376;
    *&v20[4] = mAUPBRefCounter;
    *&v20[8] = 2048;
    *&v20[10] = data;
    _os_log_debug_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "blockRef 0x%x assigned, userData: %p\n", v20, 0x12u);
  }

  v10 = *&block->var2;
  *v20 = *&block->var0;
  *&v20[16] = v10;
  v11 = *&block->var6;
  v21 = *&block->var4;
  v22 = v11;
  left = self->mBlockHandlesToMethods.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v13 = left;
      v14 = left[8];
      if (mAUPBRefCounter >= v14)
      {
        break;
      }

      left = *v13;
      if (!*v13)
      {
        goto LABEL_9;
      }
    }

    if (v14 >= mAUPBRefCounter)
    {
      break;
    }

    left = *(v13 + 1);
    if (!left)
    {
      goto LABEL_9;
    }
  }

  v16 = v21;
  v15 = v22;
  v17 = *&v20[16];
  *(v13 + 10) = *v20;
  *(v13 + 14) = v17;
  *(v13 + 18) = v16;
  *(v13 + 22) = v15;
  *(v13 + 13) = data;
  [(AUPBServer *)self blockListChanged:*v20];
  os_unfair_recursive_lock_unlock();
  v18 = *MEMORY[0x1E69E9840];
  return mAUPBRefCounter;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(connection valueForEntitlement:{@"com.apple.private.coreaudio.rpbclient", "BOOLValue"}];
  v7 = gAUPBServerLogCategory;
  if (v6)
  {
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = connection;
      _os_log_debug_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_DEBUG, "New client connected (xpcCon=%p)\n", &buf, 0xCu);
    }

    v8 = objc_alloc_init(AUPBClientConnection);
    [(AUPBClientConnection *)v8 setXpcconnection:connection];
    -[NSXPCConnection setExportedInterface:](-[AUPBClientConnection xpcconnection](v8, "xpcconnection"), "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F034FCF0]);
    [(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] setExportedObject:self];
    -[NSXPCConnection setRemoteObjectInterface:](-[AUPBClientConnection xpcconnection](v8, "xpcconnection"), "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0353338]);
    [(AUPBClientConnection *)v8 setProxyInterface:[(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] remoteObjectProxy]];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__2735;
    v18 = __Block_byref_object_dispose__2736;
    v19 = v8;
    xpcconnection = [(AUPBClientConnection *)v8 xpcconnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke;
    v14[3] = &unk_1E72BAB58;
    v14[4] = connection;
    v14[5] = self;
    v14[6] = &buf;
    [(NSXPCConnection *)xpcconnection setInterruptionHandler:v14];
    xpcconnection2 = [(AUPBClientConnection *)v8 xpcconnection];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke_64;
    v13[3] = &unk_1E72BAB58;
    v13[4] = connection;
    v13[5] = self;
    v13[6] = &buf;
    [(NSXPCConnection *)xpcconnection2 setInvalidationHandler:v13];
    [(NSMutableArray *)self->mClientConnections addObject:v8];

    [(NSXPCConnection *)[(AUPBClientConnection *)v8 xpcconnection] resume];
    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = [connection description];
    _os_log_error_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "Refusing connection without entitlement: %@", &buf, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = 134217984;
    v7 = v5;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Client connection (xpcCon=%p) interrupted\n", &v6, 0xCu);
  }

  result = [*(a1[5] + 32) containsObject:*(*(a1[6] + 8) + 40)];
  if (result)
  {
    result = [*(a1[5] + 32) removeObject:*(*(a1[6] + 8) + 40)];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __49__AUPBServer_listener_shouldAcceptNewConnection___block_invoke_64(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = 134217984;
    v7 = v5;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Client connection (xpcCon=%p) invalidated\n", &v6, 0xCu);
  }

  result = [*(a1[5] + 32) containsObject:*(*(a1[6] + 8) + 40)];
  if (result)
  {
    result = [*(a1[5] + 32) removeObject:*(*(a1[6] + 8) + 40)];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleRegistrarCrash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Registrar crashed - cancelling client connections\n", buf, 2u);
  }

  self->mRegistrarConnection = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mClientConnections = self->mClientConnections;
  v5 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(mClientConnections);
        }

        [objc_msgSend(*(*(&v13 + 1) + 8 * i) "xpcconnection")];
      }

      v6 = [(NSMutableArray *)mClientConnections countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->mClientConnections removeAllObjects];
  if (self->mConnectionAcknowledged)
  {
    v9 = gAUPBServerLogCategory;
    if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v9, OS_LOG_TYPE_DEBUG, "CheckconnectRegistrar after 2 sec:\n", buf, 2u);
    }

    v10 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__AUPBServer_handleRegistrarCrash__block_invoke;
    block[3] = &unk_1E72C16A0;
    block[4] = self;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)startRegistrarConnection
{
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Starting registrar connection\n", buf, 2u);
  }

  self->mRegistrarConnection = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.internal.aupbregistrarservice"];
  -[NSXPCConnection setRemoteObjectInterface:](self->mRegistrarConnection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F03564B0]);
  *buf = 0;
  v12 = buf;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__2735;
  v15 = __Block_byref_object_dispose__2736;
  selfCopy = self;
  mRegistrarConnection = self->mRegistrarConnection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__AUPBServer_startRegistrarConnection__block_invoke;
  v10[3] = &unk_1E72C2B68;
  v10[4] = buf;
  [(NSXPCConnection *)mRegistrarConnection setInterruptionHandler:v10];
  v5 = self->mRegistrarConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__AUPBServer_startRegistrarConnection__block_invoke_2;
  v9[3] = &unk_1E72C2B68;
  v9[4] = buf;
  [(NSXPCConnection *)v5 setInvalidationHandler:v9];
  [(NSXPCConnection *)self->mRegistrarConnection resume];
  v6 = [(NSXPCConnection *)self->mRegistrarConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2747];
  self->mProxyInterface = v6;
  endpoint = [(NSXPCListener *)self->mListener endpoint];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AUPBServer_startRegistrarConnection__block_invoke_33;
  v8[3] = &unk_1E72C1678;
  v8[4] = self;
  [(AUPBRegistrarHosting *)v6 setListenerEndpoint:endpoint withReply:v8];
  _Block_object_dispose(buf, 8);
}

void __38__AUPBServer_startRegistrarConnection__block_invoke_33(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [a2 code];
    v5 = 1;
    if (v4 && v4 != 4)
    {
      if (v4 != 2)
      {
        goto LABEL_7;
      }

      v5 = 0;
    }

    *(*(a1 + 32) + 121) = v5;
  }

LABEL_7:
  v6 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "[AUPBServer startRegistrarConnection]_block_invoke";
    v10 = 2080;
    v11 = [objc_msgSend(a2 "description")];
    _os_log_debug_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%s %s", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __38__AUPBServer_startRegistrarConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = gAUPBServerLogCategory;
  if (os_log_type_enabled(gAUPBServerLogCategory, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = [objc_msgSend(a2 "description")];
    _os_log_error_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)checkConnectRegistrar
{
  if (self->mValidToken)
  {
    state64[3] = v2;
    state64[4] = v3;
    state64[0] = 0;
    state = notify_get_state(self->mNotifyToken, state64);
    if (state64[0])
    {
      v6 = state == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6 && !self->mRegistrarConnection)
    {
      [(AUPBServer *)self startRegistrarConnection];
    }
  }
}

- (AUPBServer)init
{
  v6.receiver = self;
  v6.super_class = AUPBServer;
  v2 = [(AUPBServer *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.coreaudio", "aupbs");
    gAUPBServerLogCategory = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEBUG, "Starting\n", buf, 2u);
    }

    v2->mAUPBRefCounter = 1;
    v2->mAUHandleCntr = 1;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  if (self->mValidToken)
  {
    notify_cancel(self->mNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = AUPBServer;
  [(AUPBServer *)&v3 dealloc];
}

@end