@interface CBScalablePipe
- (CBScalablePipe)initWithPipeManager:(id)a3 info:(id)a4;
- (id)description;
- (void)dealloc;
- (void)setOrphan;
@end

@implementation CBScalablePipe

- (CBScalablePipe)initWithPipeManager:(id)a3 info:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = CBScalablePipe;
  v9 = [(CBScalablePipe *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pipeManager, a3);
    v11 = [[CBPeer alloc] initWithInfo:v8 manager:v7];
    peer = v10->_peer;
    v10->_peer = v11;

    objc_storeStrong(&v10->_central, v10->_peer);
    v13 = [v8 objectForKeyedSubscript:@"kCBMsgArgName"];
    name = v10->_name;
    v10->_name = v13;

    v15 = [v8 objectForKeyedSubscript:@"kCBMsgArgType"];
    v10->_type = [v15 integerValue];

    v16 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgPriority"];
    v10->_priority = [v16 integerValue];

    v17 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgReliable"];
    v10->_reliablePipe = [v17 integerValue] != 0;

    v18 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgPeerType"];
    v10->_peerType = [v18 integerValue];

    v19 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgPeerCLVersion"];
    v10->_peerCLVersion = [v19 integerValue];

    v20 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgPeerCLFeatures"];
    v10->_peerCLFeatures = [v20 unsignedIntValue];

    v21 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArglocalCLVersion"];
    v10->_localCLVersion = [v21 integerValue];

    v22 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArglocalCLFeatures"];
    v10->_localCLFeatures = [v22 unsignedIntValue];

    v23 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgSocket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v8 objectForKeyedSubscript:@"kCBLePipeMsgArgSocket"];
      v10->_socket = [v24 intValue];

      readStream[0] = 0;
      writeStream = 0;
      CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], v10->_socket, readStream, &writeStream);
      input = v10->_input;
      v10->_input = readStream[0];

      output = v10->_output;
      v10->_output = writeStream;

      if (CBLogInitOnce != -1)
      {
        [CBCharacteristic handleDescriptorsDiscovered:];
      }

      v27 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        socket = v10->_socket;
        v29 = "yes";
        if (v10->_input)
        {
          v30 = "yes";
        }

        else
        {
          v30 = "no";
        }

        if (!v10->_output)
        {
          v29 = "no";
        }

        *buf = 138413058;
        v40 = v10;
        v41 = 1024;
        *v42 = socket;
        *&v42[4] = 2080;
        *&v42[6] = v30;
        *&v42[14] = 2080;
        *&v42[16] = v29;
        _os_log_impl(&dword_1C0AC1000, v27, OS_LOG_TYPE_DEFAULT, "%@ created socket pipe: fd %d, in %s, out %s", buf, 0x26u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        readStream[0] = 0;
        readStream[1] = 0;
        [v23 getUUIDBytes:readStream];
        if (uuid_is_null(readStream))
        {
          if (CBLogInitOnce != -1)
          {
            [CBCharacteristic handleDescriptorsDiscovered:];
          }

          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
          {
            [CBScalablePipe initWithPipeManager:info:];
          }
        }

        else
        {
          os_channel_attr_create();
          os_channel_attr_set();
          v10->_channel = os_channel_create_extended();
          os_channel_attr_destroy();
          if (CBLogInitOnce != -1)
          {
            [CBCharacteristic handleDescriptorsDiscovered:];
          }

          v33 = CBLogComponent;
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
          {
            channel = v10->_channel;
            *buf = 138412802;
            if (channel)
            {
              v35 = "yes";
            }

            else
            {
              v35 = "no";
            }

            v40 = v10;
            v41 = 2112;
            *v42 = v23;
            *&v42[8] = 2080;
            *&v42[10] = v35;
            _os_log_impl(&dword_1C0AC1000, v33, OS_LOG_TYPE_DEFAULT, "%@ created skywalk pipe: UUID %@, channel %s", buf, 0x20u);
          }
        }
      }

      else
      {
        if (CBLogInitOnce != -1)
        {
          [CBCharacteristic handleDescriptorsDiscovered:];
        }

        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
          [CBScalablePipe initWithPipeManager:info:];
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setOrphan
{
  pipeManager = self->_pipeManager;
  self->_pipeManager = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  socket = self->_socket;
  if (socket)
  {
    close(socket);
  }

  if (self->_channel)
  {
    os_channel_destroy();
  }

  v4.receiver = self;
  v4.super_class = CBScalablePipe;
  [(CBScalablePipe *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = "low";
  v6 = "medium";
  type = self->_type;
  priority = self->_priority;
  v9 = "isochronous";
  if (priority == 2)
  {
    v9 = "high";
  }

  if (priority != 1)
  {
    v6 = v9;
  }

  if (priority)
  {
    v5 = v6;
  }

  v10 = "server";
  if (type != 1)
  {
    v10 = "peer-to-peer";
  }

  if (!type)
  {
    v10 = "client";
  }

  if (self->_reliablePipe)
  {
    v11 = "ON";
  }

  else
  {
    v11 = "OFF";
  }

  v12 = "yes";
  if (!self->_channel)
  {
    v12 = "no";
  }

  return [v3 stringWithFormat:@"<%@: peer = %@, name = %@, type = %s, priority = %s reliability is %s, socket %d, channel %s>", v4, self->_peer, self->_name, v10, v5, v11, self->_socket, v12];
}

- (void)initWithPipeManager:info:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_3(&dword_1C0AC1000, v0, v1, "%@ init with no socket/UUID: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithPipeManager:info:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_3(&dword_1C0AC1000, v0, v1, "%@ not creating skywalk channel: UUID %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end