@interface NWRemoteConnectionDirector
- (BOOL)receiveRemoteReply:(id)reply;
- (NWRemoteConnectionDirector)initWithDelegate:(id)delegate;
- (NWRemoteConnectionDirectorDelegate)delegate;
- (id)createCloseConnectionMessageForClientID:(id)d;
- (id)createOpenConnectionMessageForClientID:(id)d endpoint:(id)endpoint parameters:(id)parameters;
- (id)createSendDataMessageForClientID:(id)d data:(id)data receiveWindow:(unsigned int)window;
- (id)createStartBrowseMessageForClientID:(id)d descriptor:(id)descriptor parameters:(id)parameters;
- (id)createStopBrowseMessageForClientID:(id)d;
- (nw_protocol)outputHandlerForFlowID:(id)d;
- (unint64_t)dataModeForFlowID:(id)d;
- (void)dealloc;
- (void)receiveData:(id)data forClient:(id)client;
- (void)setOutputProtocolHandler:(nw_protocol *)handler forFlowID:(id)d dataMode:(unint64_t)mode;
@end

@implementation NWRemoteConnectionDirector

- (NWRemoteConnectionDirectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveData:(id)data forClient:(id)client
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  clientCopy = client;
  v8 = [(NWRemoteConnectionDirector *)self outputHandlerForFlowID:clientCopy];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    while (1)
    {
      writeRequests = [(NWRemoteConnectionDirector *)selfCopy writeRequests];
      v12 = [writeRequests count];

      if (!v12)
      {
        break;
      }

      writeRequests2 = [(NWRemoteConnectionDirector *)selfCopy writeRequests];
      firstObject = [writeRequests2 firstObject];

      if (!nw_remote_director_write_request([(NWRemoteConnectionDirector *)selfCopy directorProtocol], v9, firstObject))
      {

        break;
      }

      writeRequests3 = [(NWRemoteConnectionDirector *)selfCopy writeRequests];
      [writeRequests3 removeObjectAtIndex:0];
    }

    v17 = [[NWRemoteConnectionWriteRequest alloc] initWithData:dataCopy clientID:clientCopy];
    if (v12 || !nw_remote_director_write_request([(NWRemoteConnectionDirector *)selfCopy directorProtocol], v9, v17))
    {
      writeRequests4 = [(NWRemoteConnectionDirector *)selfCopy writeRequests];
      [writeRequests4 addObject:v17];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136446466;
      v20 = "[NWRemoteConnectionDirector receiveData:forClient:]";
      v21 = 2114;
      v22 = 0;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s No client protocol found for %{public}@, dropping data", &v19, 0x16u);
    }
  }
}

- (void)setOutputProtocolHandler:(nw_protocol *)handler forFlowID:(id)d dataMode:(unint64_t)mode
{
  modeCopy = mode;
  v12[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  protocolHashTable = [(NWRemoteConnectionDirector *)self protocolHashTable];
  v12[0] = 0;
  v12[1] = 0;
  [dCopy getUUIDBytes:v12];

  node = nw_hash_table_get_node(protocolHashTable, v12, 16);
  if (node)
  {
    nw_hash_table_remove_node(protocolHashTable, node);
  }

  if (handler)
  {
    v11 = nw_hash_table_add_object(protocolHashTable, handler, 0);
    if (v11)
    {
      *(v11 + 32) = modeCopy;
    }
  }
}

- (nw_protocol)outputHandlerForFlowID:(id)d
{
  v10[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  protocolHashTable = [(NWRemoteConnectionDirector *)self protocolHashTable];
  if (nw_hash_table_count(protocolHashTable, v6) && (v10[0] = 0, v10[1] = 0, [dCopy getUUIDBytes:v10], (node = nw_hash_table_get_node(-[NWRemoteConnectionDirector protocolHashTable](self, "protocolHashTable"), v10, 16)) != 0))
  {
    defaultOutputHandler = *(node + 16);
  }

  else
  {
    defaultOutputHandler = [(NWRemoteConnectionDirector *)self defaultOutputHandler];
  }

  return defaultOutputHandler;
}

- (unint64_t)dataModeForFlowID:(id)d
{
  v10[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  protocolHashTable = [(NWRemoteConnectionDirector *)self protocolHashTable];
  if (nw_hash_table_count(protocolHashTable, v6))
  {
    v10[0] = 0;
    v10[1] = 0;
    [dCopy getUUIDBytes:v10];
    node = nw_hash_table_get_node([(NWRemoteConnectionDirector *)self protocolHashTable], v10, 16);
    if (node)
    {
      v8 = *(node + 32);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)receiveRemoteReply:(id)reply
{
  v77 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (replyCopy)
  {
    v5 = [[NWPBCommandMessage alloc] initWithData:replyCopy];
    v6 = v5;
    if (!v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      delegate = gLogObj;
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v75 = 2114;
        v76 = replyCopy;
        v8 = "%{public}s Could not parse reply: %{public}@";
        v9 = delegate;
        v10 = 22;
LABEL_19:
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if ((*&v5->_has & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      delegate = gLogObj;
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v8 = "%{public}s Reply missing command value";
LABEL_18:
        v9 = delegate;
        v10 = 12;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (!v5->_messageData)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      delegate = gLogObj;
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v8 = "%{public}s Reply missing message data";
        goto LABEL_18;
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    delegate = [(NWRemoteConnectionDirector *)self delegate];
    if ((*&v6->_has & 1) == 0)
    {
      goto LABEL_10;
    }

    command = v6->_command;
    if (command > 3)
    {
      if (command > 5)
      {
        if (command == 6)
        {
          v36 = [NWPBUpdateBrowse alloc];
          v37 = v6->_messageData;
          v11 = [(NWPBUpdateBrowse *)v36 initWithData:v37];

          if (!v11)
          {
            v52 = __nwlog_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_ERROR, "%{public}s Update browse message could not be parsed", buf, 0xCu);
            }

            v15 = 0;

            goto LABEL_15;
          }

          v38 = objc_alloc(MEMORY[0x1E696AFB0]);
          v39 = v11[1].isa;
          v40 = [v38 initWithUUIDString:v39];

          v15 = v40 != 0;
          if (v40)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v15 = 1;

              goto LABEL_15;
            }

            v63 = v40;
            v64 = delegate;
            v65 = replyCopy;
            array = [MEMORY[0x1E695DF70] array];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v42 = v11[2].isa;
            v43 = [(objc_class *)v42 countByEnumeratingWithState:&v66 objects:v72 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v67;
              do
              {
                for (i = 0; i != v44; ++i)
                {
                  if (*v67 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  data = [*(*(&v66 + 1) + 8 * i) data];
                  v48 = [NWEndpoint endpointWithProtocolBufferData:data];

                  [array addObject:v48];
                }

                v44 = [(objc_class *)v42 countByEnumeratingWithState:&v66 objects:v72 count:16];
              }

              while (v44);
            }

            delegate = v64;
            v40 = v63;
            [v64 setDiscoveredEndpoints:array forClient:v63];
            replyCopy = v65;
          }

          else
          {
            array = __nwlog_obj();
            if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
              _os_log_impl(&dword_181A37000, array, OS_LOG_TYPE_ERROR, "%{public}s Update browse message missing client ID", buf, 0xCu);
            }
          }

          goto LABEL_15;
        }

        if (command != 7)
        {
          goto LABEL_60;
        }

        v11 = __nwlog_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v12 = "%{public}s Close connection command is not valid to send to connection director";
LABEL_12:
        v13 = v11;
        v14 = 12;
LABEL_13:
        _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_14;
      }

      if (command != 4)
      {
        v11 = __nwlog_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v12 = "%{public}s Open connection command is not valid to send to connection director";
        goto LABEL_12;
      }

      v18 = [NWPBSendData alloc];
      v19 = v6->_messageData;
      v11 = [(NWPBSendData *)v18 initWithData:v19];

      if (v11)
      {
        v20 = objc_alloc(MEMORY[0x1E696AFB0]);
        v21 = v11[1].isa;
        v22 = [v20 initWithUUIDString:v21];

        if (v22)
        {
          v23 = v11[2].isa;
          [(NWRemoteConnectionDirector *)self receiveData:v23 forClient:v22];

          v15 = 1;
          goto LABEL_15;
        }

        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_ERROR, "%{public}s Send data missing client ID", buf, 0xCu);
        }

        v50 = 0;
        goto LABEL_78;
      }

      v50 = __nwlog_obj();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
      v51 = "%{public}s Send data message could not be parsed";
    }

    else
    {
      if (command <= 1)
      {
        if (!command)
        {
LABEL_10:
          v11 = __nwlog_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

          *buf = 136446210;
          v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
          v12 = "%{public}s Invalid command sent to connection receiver";
          goto LABEL_12;
        }

        if (command == 1)
        {
          v11 = __nwlog_obj();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = 136446210;
          v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
          v12 = "%{public}s Open connection command is not valid to send to connection director";
          goto LABEL_12;
        }

LABEL_60:
        v11 = __nwlog_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        if (*&v6->_has)
        {
          v49 = v6->_command;
        }

        else
        {
          v49 = 0;
        }

        *buf = 136446466;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v75 = 1024;
        LODWORD(v76) = v49;
        v12 = "%{public}s Unknown command %d sent to connection receiver";
        v13 = v11;
        v14 = 18;
        goto LABEL_13;
      }

      if (command != 2)
      {
        v11 = __nwlog_obj();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v12 = "%{public}s Close connection command is not valid to send to connection director";
        goto LABEL_12;
      }

      v24 = [NWPBUpdatePath alloc];
      v25 = v6->_messageData;
      v11 = [(NWPBUpdatePath *)v24 initWithData:v25];

      if (v11)
      {
        v26 = v11[1].isa;

        if (v26)
        {
          v27 = v11;
          v28 = delegate;
          v29 = v27;
          v30 = v27[1].isa;
          data2 = [(objc_class *)v30 data];
          v32 = [NWPath pathWithProtocolBufferData:data2];

          v15 = v32 != 0;
          if (v32)
          {
            delegate = v28;
            if ([v32 status] == 1)
            {
              v33 = __nwlog_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                clientID = [v32 clientID];
                *buf = 136446466;
                v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
                v75 = 2114;
                v76 = clientID;
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_DEBUG, "%{public}s Updated path is satisfied, opening %{public}@", buf, 0x16u);

                delegate = v28;
              }

              clientID2 = [v32 clientID];
              [delegate openClient:clientID2];
            }

            else
            {
              if ([v32 status] != 2)
              {
                v15 = 1;
                v11 = v29;

                goto LABEL_15;
              }

              v54 = __nwlog_obj();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                clientID3 = [v32 clientID];
                *buf = 136446466;
                v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
                v75 = 2114;
                v76 = clientID3;
                _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s Updated path is unsatisfied, closing %{public}@", buf, 0x16u);

                delegate = v28;
              }

              clientID2 = [v32 clientID];
              [delegate closeClient:clientID2];
            }
          }

          else
          {
            clientID2 = __nwlog_obj();
            delegate = v28;
            if (os_log_type_enabled(clientID2, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446210;
              v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
              _os_log_impl(&dword_181A37000, clientID2, OS_LOG_TYPE_ERROR, "%{public}s Update path could not parse path", buf, 0xCu);
            }
          }

          v11 = v29;

LABEL_15:
LABEL_21:

          goto LABEL_22;
        }

        v50 = __nwlog_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
          v51 = "%{public}s Update path message missing path";
          goto LABEL_77;
        }

LABEL_78:
        v15 = 0;

        goto LABEL_15;
      }

      v50 = __nwlog_obj();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 136446210;
      v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
      v51 = "%{public}s Update path message could not be parsed";
    }

LABEL_77:
    _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_ERROR, v51, buf, 0xCu);
    goto LABEL_78;
  }

  v56 = __nwlog_obj();
  *buf = 136446210;
  v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
  v57 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v70 = 0;
  if (__nwlog_fault(v57, &type, &v70))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v60 = "%{public}s called with null replyData";
LABEL_105:
        _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
      }
    }

    else
    {
      if (v70 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = type;
        v62 = os_log_type_enabled(v58, type);
        if (backtrace_string)
        {
          if (v62)
          {
            *buf = 136446466;
            v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
            v75 = 2082;
            v76 = backtrace_string;
            _os_log_impl(&dword_181A37000, v58, v59, "%{public}s called with null replyData, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_107;
        }

        if (!v62)
        {
          goto LABEL_106;
        }

        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v60 = "%{public}s called with null replyData, no backtrace";
        goto LABEL_105;
      }

      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        v74 = "[NWRemoteConnectionDirector receiveRemoteReply:]";
        v60 = "%{public}s called with null replyData, backtrace limit exceeded";
        goto LABEL_105;
      }
    }

LABEL_106:
  }

LABEL_107:
  if (v57)
  {
    free(v57);
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (id)createSendDataMessageForClientID:(id)d data:(id)data receiveWindow:(unsigned int)window
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataCopy = data;
  v9 = dataCopy;
  if (dCopy)
  {
    if (dataCopy)
    {
      v10 = objc_alloc_init(NWPBSendData);
      uUIDString = [dCopy UUIDString];
      v12 = uUIDString;
      if (v10)
      {
        objc_storeStrong(&v10->_clientUUID, uUIDString);

        objc_storeStrong(&v10->_messageData, data);
        *&v10->_has |= 1u;
        v10->_receiveWindow = window;
      }

      else
      {
      }

      v13 = objc_alloc_init(NWPBCommandMessage);
      p_isa = &v13->super.super.isa;
      if (v13)
      {
        *&v13->_has |= 1u;
        v13->_command = 4;
        data = [(NWPBSendData *)v10 data];
        objc_storeStrong(p_isa + 2, data);
      }

      else
      {
        data = [(NWPBSendData *)v10 data];
      }

      data2 = [p_isa data];

      goto LABEL_8;
    }

    v23 = __nwlog_obj();
    *buf = 136446210;
    v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v19, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null data";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v28 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v27 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v27)
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null data, no backtrace";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (!v27)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_27:
      _os_log_impl(&dword_181A37000, v20, v21, v26, buf, 0x16u);
LABEL_28:

      free(backtrace_string);
    }
  }

  else
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v19, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null clientID";
LABEL_37:
          _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
        }

LABEL_38:

        goto LABEL_39;
      }

      if (v28 != 1)
      {
        v20 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null clientID, backtrace limit exceeded";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v21 = type;
      v25 = os_log_type_enabled(v20, type);
      if (!backtrace_string)
      {
        if (v25)
        {
          *buf = 136446210;
          v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
          v22 = "%{public}s called with null clientID, no backtrace";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (!v25)
      {
        goto LABEL_28;
      }

      *buf = 136446466;
      v31 = "[NWRemoteConnectionDirector createSendDataMessageForClientID:data:receiveWindow:]";
      v32 = 2082;
      v33 = backtrace_string;
      v26 = "%{public}s called with null clientID, dumping backtrace:%{public}s";
      goto LABEL_27;
    }
  }

LABEL_39:
  if (v19)
  {
    free(v19);
  }

  data2 = 0;
LABEL_8:

  return data2;
}

- (id)createStopBrowseMessageForClientID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc_init(NWPBStopBrowse);
    uUIDString = [dCopy UUIDString];
    if (v4)
    {
      objc_storeStrong(&v4->_clientUUID, uUIDString);
    }

    v6 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v6->super.super.isa;
    if (v6)
    {
      *&v6->_has |= 1u;
      v6->_command = 7;
      data = [(NWPBStopBrowse *)v4 data];
      objc_storeStrong(p_isa + 2, data);
    }

    else
    {
      data = [(NWPBStopBrowse *)v4 data];
    }

    data2 = [p_isa data];

    goto LABEL_7;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v21 = "[NWRemoteConnectionDirector createStopBrowseMessageForClientID:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createStopBrowseMessageForClientID:]";
        v15 = "%{public}s called with null clientID";
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "[NWRemoteConnectionDirector createStopBrowseMessageForClientID:]";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null clientID, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createStopBrowseMessageForClientID:]";
        v15 = "%{public}s called with null clientID, no backtrace";
        goto LABEL_23;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createStopBrowseMessageForClientID:]";
        v15 = "%{public}s called with null clientID, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v12)
  {
    free(v12);
  }

  data2 = 0;
LABEL_7:

  return data2;
}

- (id)createStartBrowseMessageForClientID:(id)d descriptor:(id)descriptor parameters:(id)parameters
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  descriptorCopy = descriptor;
  parametersCopy = parameters;
  v10 = parametersCopy;
  if (!dCopy)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v22, &type, &v33))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
      v25 = "%{public}s called with null clientID";
LABEL_50:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      goto LABEL_51;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null clientID, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v29 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null clientID, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v29)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null clientID, dumping backtrace:%{public}s";
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v30, buf, 0x16u);
LABEL_37:

    free(backtrace_string);
    goto LABEL_52;
  }

  if (!descriptorCopy)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v22, &type, &v33))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
      v25 = "%{public}s called with null descriptor";
      goto LABEL_50;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null descriptor, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v31 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null descriptor, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v31)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null descriptor, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

  if (parametersCopy)
  {
    v11 = objc_alloc_init(NWPBStartBrowse);
    uUIDString = [dCopy UUIDString];
    v13 = uUIDString;
    if (v11)
    {
      objc_storeStrong(&v11->_clientUUID, uUIDString);

      createProtocolBufferObject = [descriptorCopy createProtocolBufferObject];
      objc_storeStrong(&v11->_descriptor, createProtocolBufferObject);

      createProtocolBufferObject2 = [v10 createProtocolBufferObject];
      objc_storeStrong(&v11->_parameters, createProtocolBufferObject2);
    }

    else
    {

      createProtocolBufferObject2 = [v10 createProtocolBufferObject];
    }

    v16 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v16->super.super.isa;
    if (v16)
    {
      *&v16->_has |= 1u;
      v16->_command = 5;
      data = [(NWPBStartBrowse *)v11 data];
      objc_storeStrong(p_isa + 2, data);
    }

    else
    {
      data = [(NWPBStartBrowse *)v11 data];
    }

    data2 = [p_isa data];

    goto LABEL_9;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v22, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null parameters";
        goto LABEL_50;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v32 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
        v25 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v32)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createStartBrowseMessageForClientID:descriptor:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

LABEL_52:
  if (v22)
  {
    free(v22);
  }

  data2 = 0;
LABEL_9:

  return data2;
}

- (id)createCloseConnectionMessageForClientID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc_init(NWPBCloseConnection);
    uUIDString = [dCopy UUIDString];
    if (v4)
    {
      objc_storeStrong(&v4->_clientUUID, uUIDString);
    }

    v6 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v6->super.super.isa;
    if (v6)
    {
      *&v6->_has |= 1u;
      v6->_command = 3;
      data = [(NWPBCloseConnection *)v4 data];
      objc_storeStrong(p_isa + 2, data);
    }

    else
    {
      data = [(NWPBCloseConnection *)v4 data];
    }

    data2 = [p_isa data];

    goto LABEL_7;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v21 = "[NWRemoteConnectionDirector createCloseConnectionMessageForClientID:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createCloseConnectionMessageForClientID:]";
        v15 = "%{public}s called with null clientID";
LABEL_23:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v21 = "[NWRemoteConnectionDirector createCloseConnectionMessageForClientID:]";
            v22 = 2082;
            v23 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null clientID, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (!v17)
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createCloseConnectionMessageForClientID:]";
        v15 = "%{public}s called with null clientID, no backtrace";
        goto LABEL_23;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v21 = "[NWRemoteConnectionDirector createCloseConnectionMessageForClientID:]";
        v15 = "%{public}s called with null clientID, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

LABEL_25:
  if (v12)
  {
    free(v12);
  }

  data2 = 0;
LABEL_7:

  return data2;
}

- (id)createOpenConnectionMessageForClientID:(id)d endpoint:(id)endpoint parameters:(id)parameters
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  endpointCopy = endpoint;
  parametersCopy = parameters;
  v10 = parametersCopy;
  if (!dCopy)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v22, &type, &v33))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
      v25 = "%{public}s called with null clientID";
LABEL_50:
      _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      goto LABEL_51;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null clientID, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v29 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v29)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null clientID, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v29)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null clientID, dumping backtrace:%{public}s";
LABEL_36:
    _os_log_impl(&dword_181A37000, v23, v24, v30, buf, 0x16u);
LABEL_37:

    free(backtrace_string);
    goto LABEL_52;
  }

  if (!endpointCopy)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v22, &type, &v33))
    {
      goto LABEL_52;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_51;
      }

      *buf = 136446210;
      v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
      v25 = "%{public}s called with null endpoint";
      goto LABEL_50;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v31 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v31)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v31)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

  if (parametersCopy)
  {
    v11 = objc_alloc_init(NWPBOpenConnection);
    uUIDString = [dCopy UUIDString];
    v13 = uUIDString;
    if (v11)
    {
      objc_storeStrong(&v11->_clientUUID, uUIDString);

      createProtocolBufferObject = [endpointCopy createProtocolBufferObject];
      objc_storeStrong(&v11->_endpoint, createProtocolBufferObject);

      createProtocolBufferObject2 = [v10 createProtocolBufferObject];
      objc_storeStrong(&v11->_parameters, createProtocolBufferObject2);
    }

    else
    {

      createProtocolBufferObject2 = [v10 createProtocolBufferObject];
    }

    v16 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v16->super.super.isa;
    if (v16)
    {
      *&v16->_has |= 1u;
      v16->_command = 1;
      data = [(NWPBOpenConnection *)v11 data];
      objc_storeStrong(p_isa + 2, data);
    }

    else
    {
      data = [(NWPBOpenConnection *)v11 data];
    }

    data2 = [p_isa data];

    goto LABEL_9;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
  v22 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v22, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null parameters";
        goto LABEL_50;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (v33 != 1)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = type;
    v32 = os_log_type_enabled(v23, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
        v25 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (!v32)
    {
      goto LABEL_37;
    }

    *buf = 136446466;
    v36 = "[NWRemoteConnectionDirector createOpenConnectionMessageForClientID:endpoint:parameters:]";
    v37 = 2082;
    v38 = backtrace_string;
    v30 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
    goto LABEL_36;
  }

LABEL_52:
  if (v22)
  {
    free(v22);
  }

  data2 = 0;
LABEL_9:

  return data2;
}

- (void)dealloc
{
  if ([(NWRemoteConnectionDirector *)self directorProtocol])
  {
    free([(NWRemoteConnectionDirector *)self directorProtocol]);
    [(NWRemoteConnectionDirector *)self setDirectorProtocol:0];
  }

  if ([(NWRemoteConnectionDirector *)self protocolHashTable]&& [(NWRemoteConnectionDirector *)self protocolHashTable])
  {
    protocolHashTable = [(NWRemoteConnectionDirector *)self protocolHashTable];
    _nw_hash_table_release(protocolHashTable, v4);
    [(NWRemoteConnectionDirector *)self setProtocolHashTable:0];
  }

  v5.receiver = self;
  v5.super_class = NWRemoteConnectionDirector;
  [(NWRemoteConnectionDirector *)&v5 dealloc];
}

- (NWRemoteConnectionDirector)initWithDelegate:(id)delegate
{
  v47 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    v28 = __nwlog_obj();
    *buf = 136446210;
    v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v12, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v15 = "%{public}s called with null delegate";
      }

      else if (v39 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v17 = type;
        v35 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v17, "%{public}s called with null delegate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v12)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (!v35)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v15 = "%{public}s called with null delegate, no backtrace";
      }

      else
      {
        v13 = __nwlog_obj();
        v17 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v15 = "%{public}s called with null delegate, backtrace limit exceeded";
      }

      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v38.receiver = self;
  v38.super_class = NWRemoteConnectionDirector;
  v5 = [(NWRemoteConnectionDirector *)&v38 init];
  if (!v5)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
    v30 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v30, &type, &v39))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v33 = "%{public}s [super init] failed";
LABEL_73:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
      }
    }

    else
    {
      if (v39 == 1)
      {
        v36 = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = type;
        v37 = os_log_type_enabled(v31, type);
        if (v36)
        {
          if (v37)
          {
            *buf = 136446466;
            v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
            v43 = 2082;
            v44 = v36;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v36);
          goto LABEL_75;
        }

        if (!v37)
        {
          goto LABEL_74;
        }

        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v33 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_73;
      }

      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v33 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_73;
      }
    }

LABEL_74:

LABEL_75:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_40;
  }

  self = v5;
  objc_storeWeak(&v5->_delegate, delegateCopy);
  self->_maximumDataChunkSize = 10240;
  array = [MEMORY[0x1E695DF70] array];
  writeRequests = self->_writeRequests;
  self->_writeRequests = array;

  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  self->_directorProtocol = v8;
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446466;
    v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
    v43 = 2048;
    v44 = 64;
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446466;
      v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
      v43 = 2048;
      v44 = 64;
      v15 = "%{public}s calloc(%zu) failed";
    }

    else
    {
      if (v39 == 1)
      {
        v18 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (v18)
        {
          if (v20)
          {
            *buf = 136446722;
            v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
            v43 = 2048;
            v44 = 64;
            v45 = 2082;
            v46 = v18;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s calloc(%zu) failed, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v18);
          if (!v12)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if (!v20)
        {
          goto LABEL_36;
        }

        *buf = 136446466;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v43 = 2048;
        v44 = 64;
        v15 = "%{public}s calloc(%zu) failed, no backtrace";
        v24 = v13;
        v25 = v19;
        goto LABEL_30;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_36;
      }

      *buf = 136446466;
      v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
      v43 = 2048;
      v44 = 64;
      v15 = "%{public}s calloc(%zu) failed, backtrace limit exceeded";
    }

    v24 = v13;
    v25 = v14;
LABEL_30:
    v26 = 22;
LABEL_35:
    _os_log_impl(&dword_181A37000, v24, v25, v15, buf, v26);
    goto LABEL_36;
  }

  if (initWithDelegate__directorProtocolOnceToken != -1)
  {
    dispatch_once(&initWithDelegate__directorProtocolOnceToken, &__block_literal_global_46326);
  }

  directorProtocol = self->_directorProtocol;
  directorProtocol->identifier = &NWRemoteConnectionDirectorProtocolIdentifier;
  directorProtocol->callbacks = &NWRemoteConnectionDirectorProtocolCallbacks;
  directorProtocol->handle = self;
  internal = nw_hash_table_create_internal(0x11u, 4, nw_protocol_get_key, nw_protocol_key_hash, nw_protocol_matches_key, nw_protocol_hash_release, nw_protocol_hash_retain);
  if (!internal)
  {
    self->_protocolHashTable = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *buf = 136446210;
    v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (!__nwlog_fault(v12, &type, &v39))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v15 = "%{public}s nw_protocol_hash_table_create failed";
LABEL_33:
        v24 = v13;
        v25 = v17;
LABEL_34:
        v26 = 12;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v39 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
        v15 = "%{public}s nw_protocol_hash_table_create failed, backtrace limit exceeded";
        goto LABEL_33;
      }

LABEL_36:

      goto LABEL_37;
    }

    v21 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v22 = type;
    v23 = os_log_type_enabled(v13, type);
    if (!v21)
    {
      if (!v23)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
      v15 = "%{public}s nw_protocol_hash_table_create failed, no backtrace";
      v24 = v13;
      v25 = v22;
      goto LABEL_34;
    }

    if (v23)
    {
      *buf = 136446466;
      v42 = "[NWRemoteConnectionDirector initWithDelegate:]";
      v43 = 2082;
      v44 = v21;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s nw_protocol_hash_table_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v21);
LABEL_37:
    if (!v12)
    {
LABEL_39:

LABEL_40:
      self = 0;
      goto LABEL_41;
    }

LABEL_38:
    free(v12);
    goto LABEL_39;
  }

  *(internal + 56) &= ~2u;
  self->_protocolHashTable = internal;
LABEL_41:

  return self;
}

double __47__NWRemoteConnectionDirector_initWithDelegate___block_invoke()
{
  NWRemoteConnectionDirectorProtocolIdentifier = 0u;
  unk_1EA8425F8 = 0u;
  *&result = 0x100000004;
  qword_1EA842608 = 0x100000004;
  NWRemoteConnectionDirectorProtocolCallbacks = nw_protocol_default_add_input_handler;
  qword_1EA842620 = nw_protocol_default_replace_input_handler;
  qword_1EA842618 = nw_protocol_default_remove_input_handler;
  qword_1EA8426C8 = nw_protocol_default_input_finished;
  qword_1EA8426D0 = nw_protocol_default_output_finished;
  qword_1EA842718 = nw_protocol_default_input_flush;
  qword_1EA842660 = nw_protocol_default_get_input_frames;
  qword_1EA842668 = nw_protocol_default_get_output_frames;
  qword_1EA842670 = nw_protocol_default_finalize_output_frames;
  qword_1EA842708 = nw_protocol_default_get_message_properties;
  qword_1EA842678 = nw_protocol_default_link_state;
  qword_1EA842680 = nw_protocol_default_get_parameters;
  qword_1EA842690 = nw_protocol_default_get_local;
  qword_1EA842698 = nw_protocol_default_get_remote;
  qword_1EA842688 = nw_protocol_default_get_path;
  qword_1EA8426B8 = nw_protocol_default_updated_path;
  qword_1EA8426D8 = nw_protocol_default_get_output_local;
  qword_1EA8426E0 = nw_protocol_default_get_output_interface;
  qword_1EA842628 = nw_protocol_default_connect;
  qword_1EA842630 = nw_protocol_default_disconnect;
  qword_1EA842638 = nw_protocol_default_connected;
  qword_1EA842640 = nw_protocol_default_disconnected;
  qword_1EA842648 = nw_protocol_default_error;
  qword_1EA842710 = nw_protocol_default_reset;
  qword_1EA8426C0 = nw_protocol_default_supports_external_data;
  qword_1EA8426E8 = nw_protocol_default_waiting_for_output;
  qword_1EA8426F0 = nw_protocol_default_copy_info;
  qword_1EA8426A0 = nw_protocol_default_register_notification;
  qword_1EA8426A8 = nw_protocol_default_unregister_notification;
  qword_1EA8426B0 = nw_protocol_default_notify;
  qword_1EA8426F8 = nw_protocol_default_add_listen_handler;
  qword_1EA842700 = nw_protocol_default_remove_listen_handler;
  qword_1EA842650 = nw_remote_director_input_available;
  qword_1EA842658 = nw_remote_director_output_available;
  return result;
}

@end