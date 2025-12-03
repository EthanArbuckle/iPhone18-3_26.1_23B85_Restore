@interface NEPacketTunnelFlow
- (BOOL)writePacketObjects:(NSArray *)packets;
- (BOOL)writePackets:(NSArray *)packets withProtocols:(NSArray *)protocols;
- (void)closeVirtualInterface;
- (void)dealloc;
- (void)readPacketObjectsWithCompletionHandler:(void *)completionHandler;
- (void)readPacketsWithCompletionHandler:(void *)completionHandler;
@end

@implementation NEPacketTunnelFlow

- (BOOL)writePacketObjects:(NSArray *)packets
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = packets;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy || !selfCopy->_interface)
  {
    goto LABEL_29;
  }

  buffersSize = selfCopy->_buffersSize;
  if (buffersSize < [(NSArray *)v4 count])
  {
    v7 = malloc_type_realloc(selfCopy->_packetDataArray, 8 * [(NSArray *)v4 count], 0x10040436913F5uLL);
    if (v7)
    {
      selfCopy->_packetDataArray = v7;
      v8 = malloc_type_realloc(selfCopy->_packetProtocols, 4 * [(NSArray *)v4 count], 0x100004052888210uLL);
      if (v8)
      {
        selfCopy->_packetProtocols = v8;
        v9 = malloc_type_realloc(selfCopy->_packetLengths, 8 * [(NSArray *)v4 count], 0x100004000313F17uLL);
        if (v9)
        {
          selfCopy->_packetLengths = v9;
          selfCopy->_buffersSize = [(NSArray *)v4 count];
          goto LABEL_8;
        }

        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v20 = 136315138;
          v21 = "[NEPacketTunnelFlow writePacketObjects:]";
          _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet lengths", &v20, 0xCu);
        }
      }

      else
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v20 = 136315138;
          v21 = "[NEPacketTunnelFlow writePacketObjects:]";
          _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet protocols", &v20, 0xCu);
        }
      }
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315138;
        v21 = "[NEPacketTunnelFlow writePacketObjects:]";
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet data pointers", &v20, 0xCu);
      }
    }

LABEL_29:
    v16 = 0;
    goto LABEL_30;
  }

LABEL_8:
  packetDataArray = selfCopy->_packetDataArray;
  if (packetDataArray && selfCopy->_packetLengths && selfCopy->_packetProtocols)
  {
    for (i = 0; ; ++i)
    {
      if (i >= [(NSArray *)v4 count])
      {
        packetDataArray = selfCopy->_packetDataArray;
        goto LABEL_22;
      }

      v12 = [(NSArray *)v4 objectAtIndexedSubscript:i];
      data = [v12 data];

      if ((isa_nsdata(data) & 1) == 0)
      {
        break;
      }

      selfCopy->_packetDataArray[i] = [data bytes];
      selfCopy->_packetLengths[i] = [data length];
      v14 = [(NSArray *)v4 objectAtIndexedSubscript:i];
      selfCopy->_packetProtocols[i] = [v14 protocolFamily];
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[NEPacketTunnelFlow writePacketObjects:]";
      v22 = 2048;
      v23 = i;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%s: object at index %lu of packets array is not an NSData", &v20, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_22:
  v16 = NEVirtualInterfaceWriteMultipleIPPackets(selfCopy->_interface, selfCopy->_packetProtocols, packetDataArray, selfCopy->_packetLengths, [(NSArray *)v4 count]) != 0;
LABEL_30:
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)writePackets:(NSArray *)packets withProtocols:(NSArray *)protocols
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = packets;
  v7 = protocols;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy || !selfCopy->_interface)
  {
    goto LABEL_43;
  }

  if (selfCopy->_interfaceType == 1)
  {
    v9 = [(NSArray *)v6 count];
    if (v9 != [(NSArray *)v7 count])
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315650;
        v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
        v25 = 2048;
        v26 = [(NSArray *)v6 count];
        v27 = 2048;
        v28 = [(NSArray *)v7 count];
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s: packets count (%lu) does not equal protocols count (%lu)", &v23, 0x20u);
      }

      goto LABEL_38;
    }
  }

  buffersSize = selfCopy->_buffersSize;
  if (buffersSize < [(NSArray *)v6 count])
  {
    v11 = malloc_type_realloc(selfCopy->_packetDataArray, 8 * [(NSArray *)v6 count], 0x10040436913F5uLL);
    if (v11)
    {
      selfCopy->_packetDataArray = v11;
      if (selfCopy->_interfaceType != 1)
      {
LABEL_10:
        v13 = malloc_type_realloc(selfCopy->_packetLengths, 8 * [(NSArray *)v6 count], 0x100004000313F17uLL);
        if (v13)
        {
          selfCopy->_packetLengths = v13;
          selfCopy->_buffersSize = [(NSArray *)v6 count];
          goto LABEL_12;
        }

        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315138;
          v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
          _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet lengths", &v23, 0xCu);
        }

        goto LABEL_38;
      }

      v12 = malloc_type_realloc(selfCopy->_packetProtocols, 4 * [(NSArray *)v6 count], 0x100004052888210uLL);
      if (v12)
      {
        selfCopy->_packetProtocols = v12;
        goto LABEL_10;
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315138;
        v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet protocols", &v23, 0xCu);
      }
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315138;
        v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s: Failed to allocate memory for packet data pointers", &v23, 0xCu);
      }
    }

LABEL_38:

LABEL_43:
    v19 = 0;
    goto LABEL_44;
  }

LABEL_12:
  packetDataArray = selfCopy->_packetDataArray;
  if (packetDataArray && selfCopy->_packetLengths && (selfCopy->_interfaceType != 1 || selfCopy->_packetProtocols))
  {
    for (i = 0; ; ++i)
    {
      if (i >= [(NSArray *)v6 count])
      {
        packetDataArray = selfCopy->_packetDataArray;
        goto LABEL_33;
      }

      v16 = [(NSArray *)v6 objectAtIndexedSubscript:i];
      if ((isa_nsdata(v16) & 1) == 0)
      {
        break;
      }

      selfCopy->_packetDataArray[i] = [v16 bytes];
      selfCopy->_packetLengths[i] = [v16 length];
      if (selfCopy->_interfaceType == 1)
      {
        v17 = [(NSArray *)v7 objectAtIndexedSubscript:i];
        if ((isa_nsnumber(v17) & 1) == 0)
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v23 = 136315394;
            v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
            v25 = 2048;
            v26 = i;
            _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s: object at index %lu of protocols array is not an NSNumber", &v23, 0x16u);
          }

          goto LABEL_42;
        }

        selfCopy->_packetProtocols[i] = [v17 unsignedIntValue];
      }
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "[NEPacketTunnelFlow writePackets:withProtocols:]";
      v25 = 2048;
      v26 = i;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%s: object at index %lu of packets array is not an NSData", &v23, 0x16u);
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_33:
  v19 = NEVirtualInterfaceWriteMultipleIPPackets(selfCopy->_interface, selfCopy->_packetProtocols, packetDataArray, selfCopy->_packetLengths, [(NSArray *)v6 count]) != 0;
LABEL_44:
  objc_sync_exit(selfCopy);

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)readPacketObjectsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    v7 = objc_getProperty(selfCopy, v6, 32, 1);
    if (v7)
    {
    }

    else if (selfCopy->_interface)
    {
      objc_setProperty_atomic_copy(selfCopy, v8, v4, 32);
      if (!selfCopy->_handlerSetup)
      {
        objc_initWeak(&location, selfCopy);
        interface = selfCopy->_interface;
        if (interface)
        {
          *(interface + 73) = 0;
          v10 = selfCopy->_interface;
        }

        else
        {
          v10 = 0;
        }

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __61__NEPacketTunnelFlow_readPacketObjectsWithCompletionHandler___block_invoke;
        v13[3] = &unk_1E7F09860;
        objc_copyWeak(&v14, &location);
        v13[4] = selfCopy;
        if (NEVirtualInterfaceSetReadMultipleIPPacketsHandler(v10, v13))
        {
          selfCopy->_handlerSetup = 1;
        }

        else
        {
          v11 = ne_log_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *v12 = 0;
            _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to set the multiple packet read handler", v12, 2u);
          }
        }

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      NEVirtualInterfaceReadyToReadMultiple(selfCopy->_interface, 0x40u);
    }
  }

  objc_sync_exit(selfCopy);
}

void __61__NEPacketTunnelFlow_readPacketObjectsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unsigned int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained;
    objc_sync_enter(v13);
    v15 = objc_getProperty(v13, v14, 32, 1);
    objc_setProperty_atomic_copy(v13, v16, 0, 32);
    objc_sync_exit(v13);

    if (v15)
    {
      memset(v40, 0, sizeof(v40));
      if (a7 > 0x40)
      {
        __assert_rtn("[NEPacketTunnelFlow readPacketObjectsWithCompletionHandler:]_block_invoke", "NEPacketTunnelFlow.m", 227, "num_packets <= NEVPNPluginMaxPendingPackets");
      }

      v35 = v12;
      v36 = a7;
      v37 = v15;
      if (a7)
      {
        v17 = v40;
        v18 = a4;
        v19 = v36;
        do
        {
          if (a4)
          {
            v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
            if (v21)
            {
              Property = *(a1 + 32);
              if (Property)
              {
                Property = objc_getProperty(Property, v20, 72, 1);
              }

              v23 = [Property objectForKeyedSubscript:v21];
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
            v21 = 0;
          }

          v24 = [NEPacket alloc];
          v25 = objc_alloc(MEMORY[0x1E695DEF0]);
          v27 = *a5++;
          v26 = v27;
          v28 = *a6++;
          v29 = [v25 initWithBytes:v26 length:v28];
          LOBYTE(v28) = *a3;
          a3 += 4;
          v30 = [(NEPacket *)&v24->super.isa initWithData:v29 protocolFamily:v28 metadata:v23];
          v31 = *v17;
          *v17++ = v30;

          v18 += 16;
          --v19;
        }

        while (v19);
      }

      v32 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v40 count:v36];
      v37[2](v37, v32);

      for (i = 504; i != -8; i -= 8)
      {
      }

      v12 = v35;
      v15 = v37;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)readPacketsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    if (!objc_getProperty(selfCopy, v6, 96, 1))
    {
      objc_setProperty_atomic_copy(selfCopy, v7, v4, 96);
      interface = selfCopy->_interface;
      if (interface)
      {
        if (!selfCopy->_handlerSetup)
        {
          objc_initWeak(&location, selfCopy);
          v9 = selfCopy->_interface;
          if (v9)
          {
            *(v9 + 73) = 0;
            v10 = selfCopy->_interface;
          }

          else
          {
            v10 = 0;
          }

          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __55__NEPacketTunnelFlow_readPacketsWithCompletionHandler___block_invoke;
          v13[3] = &unk_1E7F09860;
          objc_copyWeak(&v14, &location);
          v13[4] = selfCopy;
          if (NEVirtualInterfaceSetReadMultipleIPPacketsHandler(v10, v13))
          {
            selfCopy->_handlerSetup = 1;
          }

          else
          {
            v11 = ne_log_obj();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *v12 = 0;
              _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to set the multiple packet read handler", v12, 2u);
            }
          }

          objc_destroyWeak(&v14);
          objc_destroyWeak(&location);
          interface = selfCopy->_interface;
        }

        NEVirtualInterfaceReadyToReadMultiple(interface, 0x40u);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __55__NEPacketTunnelFlow_readPacketsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, void *a5, uint64_t *a6, unsigned int a7)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = WeakRetained;
    objc_sync_enter(v14);
    v16 = objc_getProperty(v14, v15, 96, 1);
    objc_setProperty_atomic_copy(v14, v17, 0, 96);
    objc_sync_exit(v14);

    if (v16)
    {
      memset(v37, 0, sizeof(v37));
      memset(v36, 0, sizeof(v36));
      if (a7 > 0x40)
      {
        __assert_rtn("[NEPacketTunnelFlow readPacketsWithCompletionHandler:]_block_invoke", "NEPacketTunnelFlow.m", 170, "num_packets <= NEVPNPluginMaxPendingPackets");
      }

      v34 = v16;
      v35 = a7;
      if (a7)
      {
        v18 = v36;
        v19 = v37;
        v20 = v35;
        do
        {
          v21 = objc_alloc(MEMORY[0x1E695DEF0]);
          v22 = *a6++;
          v23 = [v21 initWithBytes:*a5 length:v22];
          v24 = *v19;
          *v19 = v23;

          v25 = *(a1 + 32);
          if (v25 && *(v25 + 80) == 1)
          {
            v26 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*a3];
            v27 = *v18;
            *v18 = v26;
          }

          ++v18;
          ++a3;
          ++v19;
          ++a5;
          --v20;
        }

        while (v20);
      }

      v28 = *(a1 + 32);
      if (v28 && *(v28 + 80) == 1)
      {
        v16 = v34;
        v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v36 count:v35];
      }

      else
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v16 = v34;
      }

      v30 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v37 count:v35];
      v16[2](v16, v30, v29);

      for (i = 504; i != -8; i -= 8)
      {
      }

      for (j = 504; j != -8; j -= 8)
      {
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NEPacketTunnelFlow *)self closeVirtualInterface];
  v3.receiver = self;
  v3.super_class = NEPacketTunnelFlow;
  [(NEPacketTunnelFlow *)&v3 dealloc];
}

- (void)closeVirtualInterface
{
  if (self)
  {
    self = self;
    objc_sync_enter(self);
    v1 = self[11];
    if (v1)
    {
      NEVirtualInterfaceInvalidate(v1);
      CFRelease(self[11]);
      self[11] = 0;
      *(self + 8) = 0;
      objc_setProperty_atomic_copy(self, v2, 0, 96);
      v3 = self[5];
      if (v3)
      {
        free(v3);
        self[5] = 0;
      }

      v4 = self[6];
      if (v4)
      {
        free(v4);
        self[6] = 0;
      }

      v5 = self[7];
      if (v5)
      {
        free(v5);
        self[7] = 0;
      }
    }

    objc_sync_exit(self);
  }
}

@end