@interface NWRemoteConnectionActor
- (BOOL)receiveRemoteCommand:(id)a3;
- (NWRemoteConnectionActor)initWithDelegate:(id)a3;
- (NWRemoteConnectionActorDelegate)delegate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scheduleReadsOnConnection:(id)a3;
- (void)sendData:(id)a3 forConnection:(id)a4;
- (void)updateEndpointsForBrowser:(id)a3;
- (void)updatePathForConnection:(id)a3;
@end

@implementation NWRemoteConnectionActor

- (NWRemoteConnectionActorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)receiveRemoteCommand:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [[NWPBCommandMessage alloc] initWithData:v4];
    v6 = v5;
    if (!v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v85 = 2114;
        v86 = v4;
        v8 = "%{public}s Could not parse command: %{public}@";
        v9 = v7;
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
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v8 = "%{public}s Command missing command value";
LABEL_18:
        v9 = v7;
        v10 = 12;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (!v5->_messageData)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v8 = "%{public}s Command missing message data";
        goto LABEL_18;
      }

LABEL_20:
      v26 = 0;
LABEL_21:

      goto LABEL_22;
    }

    command = v5->_command;
    if (command <= 3)
    {
      if (command <= 1)
      {
        if (!command)
        {
          v7 = __nwlog_obj();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 136446210;
          v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
          v8 = "%{public}s Invalid command sent to connection receiver";
          goto LABEL_18;
        }

        if (command == 1)
        {
          v12 = [NWPBOpenConnection alloc];
          v13 = v6->_messageData;
          v7 = [(NWPBOpenConnection *)v12 initWithData:v13];

          if (v7)
          {
            v14 = objc_alloc(MEMORY[0x1E696AFB0]);
            v15 = v7[1].isa;
            v16 = [v14 initWithUUIDString:v15];

            if (v16)
            {
              v17 = v7[2].isa;
              v18 = [(objc_class *)v17 data];
              v19 = [NWEndpoint endpointWithProtocolBufferData:v18];

              v20 = v7[3].isa;
              v21 = [(objc_class *)v20 data];
              v22 = [NWParameters parametersWithProtocolBufferData:v21];

              v23 = [NWConnection connectionWithEndpoint:v19 parameters:v22];
              v24 = objc_alloc_init(NWRemoteConnectionWrapper);
              [(NWRemoteConnectionWrapper *)v24 setClientID:v16];
              [(NWRemoteConnectionWrapper *)v24 setConnection:v23];
              v25 = [(NWRemoteConnectionActor *)self connections];
              [v25 setObject:v24 forKeyedSubscript:v16];

              [v23 addObserver:self forKeyPath:@"connectionState" options:5 context:v24];
              [v23 addObserver:self forKeyPath:@"currentPath" options:5 context:v24];

LABEL_36:
LABEL_42:
              v26 = 1;

              goto LABEL_21;
            }

            v67 = __nwlog_obj();
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_84;
            }

            *buf = 136446210;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            v68 = "%{public}s Open connection missing client ID";
            goto LABEL_83;
          }

          v64 = __nwlog_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            v65 = "%{public}s Open connection message could not be parsed";
            goto LABEL_68;
          }

          goto LABEL_85;
        }

LABEL_55:
        v7 = __nwlog_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        if (*&v6->_has)
        {
          v63 = v6->_command;
        }

        else
        {
          v63 = 0;
        }

        *buf = 136446466;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v85 = 1024;
        LODWORD(v86) = v63;
        v8 = "%{public}s Unknown command %d sent to connection receiver";
        v9 = v7;
        v10 = 18;
        goto LABEL_19;
      }

      if (command == 2)
      {
        v7 = __nwlog_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v8 = "%{public}s Update Path command is not valid to send to connection receiver";
        goto LABEL_18;
      }

      v42 = [NWPBCloseConnection alloc];
      v43 = v6->_messageData;
      v7 = [(NWPBCloseConnection *)v42 initWithData:v43];

      if (!v7)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
          v65 = "%{public}s Close connection message could not be parsed";
          goto LABEL_68;
        }

        goto LABEL_85;
      }

      v44 = objc_alloc(MEMORY[0x1E696AFB0]);
      v45 = v7[1].isa;
      v16 = [v44 initWithUUIDString:v45];

      if (v16)
      {
        v46 = [(NWRemoteConnectionActor *)self connections];
        v47 = [v46 objectForKeyedSubscript:v16];
        v19 = [v47 connection];

        [v19 removeObserver:self forKeyPath:@"connectionState"];
        [v19 removeObserver:self forKeyPath:@"currentPath"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 writeCloseWithCompletionHandler:&__block_literal_global_50293];
        }

        [v19 cancel];
        v48 = [(NWRemoteConnectionActor *)self connections];
        [v48 setObject:0 forKeyedSubscript:v16];

        goto LABEL_36;
      }

      v67 = __nwlog_obj();
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
      v68 = "%{public}s Close connection missing client ID";
LABEL_83:
      _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_ERROR, v68, buf, 0xCu);
LABEL_84:

      v64 = 0;
      goto LABEL_85;
    }

    if (command > 5)
    {
      if (command == 6)
      {
        v7 = __nwlog_obj();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v8 = "%{public}s Update Browse command is not valid to send to connection receiver";
        goto LABEL_18;
      }

      if (command != 7)
      {
        goto LABEL_55;
      }

      v49 = [NWPBStopBrowse alloc];
      v50 = v6->_messageData;
      v7 = [(NWPBStopBrowse *)v49 initWithData:v50];

      if (!v7)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
          v65 = "%{public}s Stop browse message could not be parsed";
          goto LABEL_68;
        }

        goto LABEL_85;
      }

      v51 = objc_alloc(MEMORY[0x1E696AFB0]);
      v52 = v7[1].isa;
      v16 = [v51 initWithUUIDString:v52];

      if (v16)
      {
        v53 = [(NWRemoteConnectionActor *)self browsers];
        v54 = [v53 objectForKeyedSubscript:v16];
        v55 = [v54 browser];

        [v55 removeObserver:self forKeyPath:@"discoveredEndpoints"];
        [v55 cancel];
        v56 = [(NWRemoteConnectionActor *)self browsers];
        [v56 setObject:0 forKeyedSubscript:v16];

        goto LABEL_42;
      }

      v67 = __nwlog_obj();
      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
      v68 = "%{public}s Stop browse missing client ID";
      goto LABEL_83;
    }

    if (command == 4)
    {
      v57 = [NWPBSendData alloc];
      v58 = v6->_messageData;
      v7 = [(NWPBSendData *)v57 initWithData:v58];

      if (!v7)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
          v65 = "%{public}s Send data message could not be parsed";
LABEL_68:
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_ERROR, v65, buf, 0xCu);
        }

LABEL_85:
        v26 = 0;

        goto LABEL_21;
      }

      v59 = objc_alloc(MEMORY[0x1E696AFB0]);
      v60 = v7[1].isa;
      v32 = [v59 initWithUUIDString:v60];

      if (v32)
      {
        v61 = [(NWRemoteConnectionActor *)self connections];
        v62 = [v61 objectForKeyedSubscript:v32];
        v35 = [v62 connection];

        v26 = v35 != 0;
        if (v35)
        {
          v38 = v7[2].isa;
          if (v38)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v35 writeData:v38 completionHandler:&__block_literal_global_55];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v82 = v38;
                v70 = MEMORY[0x1E695DEC8];
                v71 = v35;
                v72 = [v70 arrayWithObjects:&v82 count:1];
                [v71 writeDatagrams:v72 completionHandler:&__block_literal_global_58_50300];
              }
            }
          }
        }

        else
        {
          v38 = __nwlog_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            v85 = 2114;
            v86 = v32;
            _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s Send data could not find connection for %{public}@", buf, 0x16u);
          }
        }

        goto LABEL_94;
      }

      v35 = __nwlog_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v66 = "%{public}s Send data missing client ID";
LABEL_77:
        _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_ERROR, v66, buf, 0xCu);
        v26 = 0;
LABEL_95:

        goto LABEL_21;
      }
    }

    else
    {
      v28 = [NWPBStartBrowse alloc];
      v29 = v6->_messageData;
      v7 = [(NWPBStartBrowse *)v28 initWithData:v29];

      if (!v7)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
          v65 = "%{public}s Start browse message could not be parsed";
          goto LABEL_68;
        }

        goto LABEL_85;
      }

      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      v31 = v7[1].isa;
      v32 = [v30 initWithUUIDString:v31];

      if (v32)
      {
        v33 = v7[2].isa;
        v34 = [(objc_class *)v33 data];
        v35 = [NWBrowseDescriptor descriptorWithProtocolBufferData:v34];

        if (v35)
        {
          v36 = v7[3].isa;
          v37 = [(objc_class *)v36 data];
          v38 = [NWParameters parametersWithProtocolBufferData:v37];

          if (v38)
          {
            v39 = [[NWBrowser alloc] initWithDescriptor:v35 parameters:v38];
            v40 = objc_alloc_init(NWRemoteBrowserWrapper);
            [(NWRemoteBrowserWrapper *)v40 setClientID:v32];
            [(NWRemoteBrowserWrapper *)v40 setBrowser:v39];
            v41 = [(NWRemoteConnectionActor *)self browsers];
            [v41 setObject:v40 forKeyedSubscript:v32];

            [(NWBrowser *)v39 addObserver:self forKeyPath:@"discoveredEndpoints" options:5 context:v40];
            v26 = 1;
LABEL_94:

            goto LABEL_95;
          }

          v69 = __nwlog_obj();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s Start browse missing parameters", buf, 0xCu);
          }

          v38 = 0;
        }

        else
        {
          v38 = __nwlog_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s Start browse missing descriptor", buf, 0xCu);
          }
        }

        v26 = 0;
        goto LABEL_94;
      }

      v35 = __nwlog_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v66 = "%{public}s Start browse missing client ID";
        goto LABEL_77;
      }
    }

    v26 = 0;
    goto LABEL_95;
  }

  v73 = __nwlog_obj();
  *buf = 136446210;
  v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
  v74 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v80 = 0;
  if (__nwlog_fault(v74, &type, &v80))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v77 = "%{public}s called with null commandData";
LABEL_111:
        _os_log_impl(&dword_181A37000, v75, v76, v77, buf, 0xCu);
      }
    }

    else
    {
      if (v80 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v75 = __nwlog_obj();
        v76 = type;
        v79 = os_log_type_enabled(v75, type);
        if (backtrace_string)
        {
          if (v79)
          {
            *buf = 136446466;
            v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
            v85 = 2082;
            v86 = backtrace_string;
            _os_log_impl(&dword_181A37000, v75, v76, "%{public}s called with null commandData, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_113;
        }

        if (!v79)
        {
          goto LABEL_112;
        }

        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v77 = "%{public}s called with null commandData, no backtrace";
        goto LABEL_111;
      }

      v75 = __nwlog_obj();
      v76 = type;
      if (os_log_type_enabled(v75, type))
      {
        *buf = 136446210;
        v84 = "[NWRemoteConnectionActor receiveRemoteCommand:]";
        v77 = "%{public}s called with null commandData, backtrace limit exceeded";
        goto LABEL_111;
      }
    }

LABEL_112:
  }

LABEL_113:
  if (v74)
  {
    free(v74);
  }

  v26 = 0;
LABEL_22:

  return v26;
}

void __48__NWRemoteConnectionActor_receiveRemoteCommand___block_invoke_56(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "[NWRemoteConnectionActor receiveRemoteCommand:]_block_invoke";
      v6 = 2114;
      v7 = v2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Write had error %{public}@", &v4, 0x16u);
    }
  }
}

void __48__NWRemoteConnectionActor_receiveRemoteCommand___block_invoke_53(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "[NWRemoteConnectionActor receiveRemoteCommand:]_block_invoke";
      v6 = 2114;
      v7 = v2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Write had error %{public}@", &v4, 0x16u);
    }
  }
}

void __48__NWRemoteConnectionActor_receiveRemoteCommand___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "[NWRemoteConnectionActor receiveRemoteCommand:]_block_invoke";
      v6 = 2114;
      v7 = v2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_ERROR, "%{public}s Write close had error %{public}@", &v4, 0x16u);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([v9 isEqualToString:@"connectionState"])
  {
    v11 = v10;
    v12 = a6;
    v13 = [v12 connection];

    if (v13 != v11)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        v15 = [v12 connection];
        v21 = 136446722;
        v22 = "[NWRemoteConnectionActor observeValueForKeyPath:ofObject:change:context:]";
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = v11;
        v16 = "%{public}s Connection wrapper invalid: %p != %p";
LABEL_13:
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_ERROR, v16, &v21, 0x20u);
      }

LABEL_14:

LABEL_18:
      goto LABEL_19;
    }

    if ([v11 connectionState] == 3)
    {
      [(NWRemoteConnectionActor *)self scheduleReadsOnConnection:v12];
    }

    goto LABEL_17;
  }

  if ([v9 isEqualToString:@"currentPath"])
  {
    v11 = v10;
    v12 = a6;
    v17 = [v12 connection];

    if (v17 != v11)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_17:
    [(NWRemoteConnectionActor *)self updatePathForConnection:v12];
    goto LABEL_18;
  }

  if ([v9 isEqualToString:@"discoveredEndpoints"])
  {
    v18 = v10;
    v19 = a6;
    v20 = [v19 browser];

    if (v20 == v18)
    {
      [(NWRemoteConnectionActor *)self updateEndpointsForBrowser:v19];
      goto LABEL_18;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = [v19 browser];
    v21 = 136446722;
    v22 = "[NWRemoteConnectionActor observeValueForKeyPath:ofObject:change:context:]";
    v23 = 2048;
    v24 = v15;
    v25 = 2048;
    v26 = v18;
    v16 = "%{public}s Browser wrapper invalid: %p != %p";
    goto LABEL_13;
  }

LABEL_19:
}

- (void)scheduleReadsOnConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 connection];
  if (isKindOfClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__NWRemoteConnectionActor_scheduleReadsOnConnection___block_invoke;
    v12[3] = &unk_1E6A341C0;
    v12[4] = self;
    v8 = &v13;
    v13 = v4;
    [v7 readDataWithMinimumLength:1 maximumLength:0x100000 completionHandler:v12];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v7 = [v4 connection];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__NWRemoteConnectionActor_scheduleReadsOnConnection___block_invoke_36;
    v10[3] = &unk_1E6A341E8;
    v10[4] = self;
    v8 = &v11;
    v11 = v4;
    [v7 readDatagramsWithMinimumCount:1 maximumCount:1 completionHandler:v10];
    goto LABEL_5;
  }

LABEL_6:
}

void __53__NWRemoteConnectionActor_scheduleReadsOnConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) sendData:v5 forConnection:*(a1 + 40)];
  }

  if (v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446466;
      v10 = "[NWRemoteConnectionActor scheduleReadsOnConnection:]_block_invoke";
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s Read length had error %{public}@", &v9, 0x16u);
    }

    v8 = [*(a1 + 40) connection];
    [v8 cancel];
  }

  else
  {
    [*(a1 + 32) scheduleReadsOnConnection:*(a1 + 40)];
  }
}

void __53__NWRemoteConnectionActor_scheduleReadsOnConnection___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) sendData:*(*(&v13 + 1) + 8 * v10++) forConnection:*(a1 + 40)];
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }

  if (v6)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v18 = "[NWRemoteConnectionActor scheduleReadsOnConnection:]_block_invoke";
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Read had error %{public}@", buf, 0x16u);
    }

    v12 = [*(a1 + 40) connection];
    [v12 cancel];
  }

  else
  {
    [*(a1 + 32) scheduleReadsOnConnection:*(a1 + 40)];
  }
}

- (void)updateEndpointsForBrowser:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 browser];
    v7 = [v6 discoveredEndpoints];

    v8 = objc_alloc_init(NWPBUpdateBrowse);
    v9 = [v5 clientID];
    v10 = [v9 UUIDString];
    if (v8)
    {
      objc_storeStrong(&v8->_clientUUID, v10);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v37 + 1) + 8 * i) createProtocolBufferObject];
          if (v8)
          {
            discoveredEndpoints = v8->_discoveredEndpoints;
            if (!discoveredEndpoints)
            {
              v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v19 = v8->_discoveredEndpoints;
              v8->_discoveredEndpoints = v18;

              discoveredEndpoints = v8->_discoveredEndpoints;
            }

            [(NSMutableArray *)discoveredEndpoints addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v13);
    }

    v20 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v20->super.super.isa;
    if (v20)
    {
      *&v20->_has |= 1u;
      v20->_command = 6;
      v22 = [(NWPBUpdateBrowse *)v8 data];
      objc_storeStrong(p_isa + 2, v22);
    }

    else
    {
      v22 = [(NWPBUpdateBrowse *)v8 data];
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v11 count];
      v25 = [v5 clientID];
      v26 = [v25 UUIDString];
      *buf = 136446722;
      v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
      v46 = 1024;
      LODWORD(v47[0]) = v24;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v26;
      _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s Updating browse results (%u) for %{public}@", buf, 0x1Cu);
    }

    v27 = [(NWRemoteConnectionActor *)self delegate];
    v28 = [p_isa data];
    v43 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [v27 sendRemoteReplies:v29];

    goto LABEL_20;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
  v31 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v41 = 0;
  if (__nwlog_fault(v31, &type, &v41))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
        v34 = "%{public}s called with null wrapper";
LABEL_34:
        _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
      }
    }

    else
    {
      if (v41 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v36 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
            v46 = 2082;
            v47[0] = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (!v36)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
        v34 = "%{public}s called with null wrapper, no backtrace";
        goto LABEL_34;
      }

      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v45 = "[NWRemoteConnectionActor updateEndpointsForBrowser:]";
        v34 = "%{public}s called with null wrapper, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:
  }

LABEL_36:
  if (v31)
  {
    free(v31);
  }

LABEL_20:
}

- (void)sendData:(id)a3 forConnection:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v21, &type, &v30))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
        v24 = "%{public}s called with null data";
LABEL_36:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else if (v30 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v27 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v27)
        {
          *buf = 136446466;
          v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v21)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v21);
        goto LABEL_8;
      }

      if (v27)
      {
        *buf = 136446210;
        v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
        v24 = "%{public}s called with null data, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
        v24 = "%{public}s called with null data, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v7)
  {
    v9 = objc_alloc_init(NWPBSendData);
    messageData = [v8 clientID];
    v11 = [messageData UUIDString];
    v12 = v11;
    if (v9)
    {
      objc_storeStrong(&v9->_clientUUID, v11);

      v13 = v6;
      messageData = v9->_messageData;
      v9->_messageData = v13;
    }

    else
    {
    }

    v14 = objc_alloc_init(NWPBCommandMessage);
    p_isa = &v14->super.super.isa;
    if (v14)
    {
      *&v14->_has |= 1u;
      v14->_command = 4;
      v16 = [(NWPBSendData *)v9 data];
      objc_storeStrong(p_isa + 2, v16);
    }

    else
    {
      v16 = [(NWPBSendData *)v9 data];
    }

    v17 = [(NWRemoteConnectionActor *)self delegate];
    v18 = [p_isa data];
    v32 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [v17 sendRemoteReplies:v19];

    goto LABEL_8;
  }

  v25 = __nwlog_obj();
  *buf = 136446210;
  v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v21, &type, &v30))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
      v24 = "%{public}s called with null wrapper";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v30 != 1)
  {
    v22 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v22, type))
    {
      *buf = 136446210;
      v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
      v24 = "%{public}s called with null wrapper, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v28 = __nw_create_backtrace_string();
  v22 = __nwlog_obj();
  v23 = type;
  v29 = os_log_type_enabled(v22, type);
  if (!v28)
  {
    if (v29)
    {
      *buf = 136446210;
      v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
      v24 = "%{public}s called with null wrapper, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v29)
  {
    *buf = 136446466;
    v34 = "[NWRemoteConnectionActor sendData:forConnection:]";
    v35 = 2082;
    v36 = v28;
    _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v28);
  if (v21)
  {
    goto LABEL_39;
  }

LABEL_8:
}

- (void)updatePathForConnection:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 connection];
    v7 = [v6 connectionState];

    if (v7 == 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s Skipping update path for connection in preparing state", buf, 0xCu);
      }
    }

    else
    {
      v9 = [v5 connection];
      v8 = [v9 currentPath];

      if (v8)
      {
        v10 = [v8 createProtocolBufferObject];
        v11 = [v5 clientID];
        v12 = [v11 UUIDString];
        if (v10)
        {
          objc_storeStrong(&v10[2].isa, v12);
        }

        v13 = [v5 connection];
        v14 = [v13 connectionState];

        if (v14 != 3 && v10)
        {
          LOBYTE(v10[8].isa) |= 1u;
          LODWORD(v10[7].isa) = 2;
        }

        v15 = objc_alloc_init(NWPBUpdatePath);
        v16 = v15;
        if (v15)
        {
          objc_storeStrong(&v15->_responsePath, v10);
        }

        v17 = objc_alloc_init(NWPBCommandMessage);
        p_isa = &v17->super.super.isa;
        if (v17)
        {
          *&v17->_has |= 1u;
          v17->_command = 2;
          v19 = [(NWPBUpdatePath *)v16 data];
          objc_storeStrong(p_isa + 2, v19);
        }

        else
        {
          v19 = [(NWPBUpdatePath *)v16 data];
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          if (v10)
          {
            if (v10[8].isa)
            {
              isa_low = SLODWORD(v10[7].isa);
            }

            else
            {
              isa_low = 0;
            }

            v23 = [NWPath createStringFromStatus:isa_low];
            isa = v10[2].isa;
          }

          else
          {
            v23 = [NWPath createStringFromStatus:0];
            isa = 0;
          }

          v25 = isa;
          *buf = 136446722;
          v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
          v41 = 2114;
          v42 = v23;
          v43 = 2114;
          v44 = v25;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s Updating path (%{public}@) for %{public}@", buf, 0x20u);
        }

        v26 = [(NWRemoteConnectionActor *)self delegate];
        v27 = [p_isa data];
        v38 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [v26 sendRemoteReplies:v28];
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v22 = [v5 connection];
          *buf = 136446466;
          v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
          v41 = 2114;
          v42 = v22;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s No path for %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_27;
  }

  v29 = __nwlog_obj();
  *buf = 136446210;
  v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
  v30 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v36 = 0;
  if (__nwlog_fault(v30, &type, &v36))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
        v33 = "%{public}s called with null wrapper";
LABEL_41:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
      }
    }

    else
    {
      if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v31 = __nwlog_obj();
        v32 = type;
        v35 = os_log_type_enabled(v31, type);
        if (backtrace_string)
        {
          if (v35)
          {
            *buf = 136446466;
            v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_43;
        }

        if (!v35)
        {
          goto LABEL_42;
        }

        *buf = 136446210;
        v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
        v33 = "%{public}s called with null wrapper, no backtrace";
        goto LABEL_41;
      }

      v31 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v31, type))
      {
        *buf = 136446210;
        v40 = "[NWRemoteConnectionActor updatePathForConnection:]";
        v33 = "%{public}s called with null wrapper, backtrace limit exceeded";
        goto LABEL_41;
      }
    }

LABEL_42:
  }

LABEL_43:
  if (v30)
  {
    free(v30);
  }

LABEL_27:
}

- (NWRemoteConnectionActor)initWithDelegate:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v26.receiver = self;
    v26.super_class = NWRemoteConnectionActor;
    v5 = [(NWRemoteConnectionActor *)&v26 init];
    if (v5)
    {
      v6 = v5;
      objc_storeWeak(&v5->_delegate, v4);
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      connections = v6->_connections;
      v6->_connections = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      browsers = v6->_browsers;
      v6->_browsers = v9;

      goto LABEL_4;
    }

    v17 = __nwlog_obj();
    *buf = 136446210;
    v30 = "[NWRemoteConnectionActor initWithDelegate:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v18, &type, &v27))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v21 = "%{public}s [super init] failed";
LABEL_36:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v20 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v30 = "[NWRemoteConnectionActor initWithDelegate:]";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v25)
      {
        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v21 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v21 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_38:
    if (v18)
    {
      free(v18);
    }

    v6 = 0;
    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v30 = "[NWRemoteConnectionActor initWithDelegate:]";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v13, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v16 = "%{public}s called with null delegate";
LABEL_29:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v27 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v23 = os_log_type_enabled(v14, type);
        if (v22)
        {
          if (v23)
          {
            *buf = 136446466;
            v30 = "[NWRemoteConnectionActor initWithDelegate:]";
            v31 = 2082;
            v32 = v22;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null delegate, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_31;
        }

        if (!v23)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v16 = "%{public}s called with null delegate, no backtrace";
        goto LABEL_29;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v30 = "[NWRemoteConnectionActor initWithDelegate:]";
        v16 = "%{public}s called with null delegate, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v13)
  {
    free(v13);
  }

  v6 = 0;
LABEL_4:

  return v6;
}

@end