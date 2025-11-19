@interface NEIKEv2PacketTunnelProvider
- (BOOL)NEIKEv2ProviderAuthenticate:(_BYTE *)a1;
- (BOOL)tryAlternateServerAddresses;
- (NEIKEv2PacketTunnelProvider)init;
- (id)description;
- (uint64_t)invokeStartTunnelCompletionHandler:(uint64_t)a1;
- (uint64_t)tunnelBringup;
- (void)configureProxyPathIfNeeded;
- (void)dealloc;
- (void)handleCompanionProxyDatapathFailure:(void *)a1;
- (void)handleInterfaceChange:(uint64_t)a1;
- (void)handleInterfaceDown;
- (void)invalidateCompanionProxyDatapath;
- (void)invokeCancelTunnel:(_BYTE *)a1;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observerHelperHandler:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reset:(uint64_t)a1;
- (void)resolveServerAddressIfNeeded:(void *)a1;
- (void)setInterfaceAvailability;
- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4;
- (void)startIKEv2TunnelWithOptions:(uint64_t)a1;
- (void)startRekeyTimer:(void *)a1;
- (void)startTunnelWithOptions:(id)a3 completionHandler:(id)a4;
- (void)stopIKEv2TunnelWithReason:(void *)a3 completionHandler:;
- (void)stopTunnelWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)wake;
- (void)watchIKESocketChange;
@end

@implementation NEIKEv2PacketTunnelProvider

- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v9 = "(Set)";
    }

    else
    {
      v9 = "(Clear)";
    }

    v10 = [(NEProvider *)self defaultPath];
    v11 = [v10 scopedInterface];
    v12 = [(NEProvider *)self defaultPath];
    v13 = v12;
    if (v11)
    {
      [v12 scopedInterface];
    }

    else
    {
      [v12 interface];
    }
    v14 = ;
    v15 = [v14 interfaceName];
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v26 = v15;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Performing setTunnelNetworkSettings %s (%@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__12503;
  v27 = __Block_byref_object_dispose__12504;
  v16 = self;
  v28 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__NEIKEv2PacketTunnelProvider_setTunnelNetworkSettings_completionHandler___block_invoke;
  v21[3] = &unk_1E7F08850;
  v24 = buf;
  v17 = v6;
  v22 = v17;
  v18 = v7;
  v23 = v18;
  v20.receiver = v16;
  v20.super_class = NEIKEv2PacketTunnelProvider;
  [(NEPacketTunnelProvider *)&v20 setTunnelNetworkSettings:v17 completionHandler:v21];

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x1E69E9840];
}

void __74__NEIKEv2PacketTunnelProvider_setTunnelNetworkSettings_completionHandler___block_invoke(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    v7 = *(*(a1[6] + 8) + 40);
    if (a1[4])
    {
      v8 = "(Set)";
    }

    else
    {
      v8 = "(Clear)";
    }

    if (v7)
    {
      Property = objc_getProperty(*(*(a1[6] + 8) + 40), v6, 208, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = [Property scopedInterface];
    v12 = *(*(a1[6] + 8) + 40);
    if (v11)
    {
      if (v12)
      {
        v12 = objc_getProperty(v12, v10, 208, 1);
      }

      v13 = v12;
      v14 = [v13 scopedInterface];
    }

    else
    {
      if (v12)
      {
        v12 = objc_getProperty(v12, v10, 208, 1);
      }

      v13 = v12;
      v14 = [v13 interface];
    }

    v22 = v14;
    v23 = [v14 interfaceName];
    v27 = 138413058;
    v28 = v7;
    v29 = 2080;
    v30 = v8;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v3;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@: setTunnelNetworkSettings %s failed (%@): %@", &v27, 0x2Au);
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v16 = *(*(a1[6] + 8) + 40);
    if (a1[4])
    {
      v17 = "(Set)";
    }

    else
    {
      v17 = "(Clear)";
    }

    if (v16)
    {
      v18 = objc_getProperty(*(*(a1[6] + 8) + 40), v15, 208, 1);
    }

    else
    {
      v18 = 0;
    }

    v11 = [v18 scopedInterface];
    v20 = *(*(a1[6] + 8) + 40);
    if (v11)
    {
      if (v20)
      {
        v20 = objc_getProperty(v20, v19, 208, 1);
      }

      v13 = v20;
      v21 = [v13 scopedInterface];
    }

    else
    {
      if (v20)
      {
        v20 = objc_getProperty(v20, v19, 208, 1);
      }

      v13 = v20;
      v21 = [v13 interface];
    }

    v22 = v21;
    v23 = [v21 interfaceName];
    v27 = 138412802;
    v28 = v16;
    v29 = 2080;
    v30 = v17;
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: setTunnelNetworkSettings %s completed (%@)", &v27, 0x20u);
  }

LABEL_27:
  if (a1[5])
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(a1[6] + 8) + 40);
      v27 = 138412290;
      v28 = v25;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%@: setTunnelNetworkSettings calling completionHandler", &v27, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (v10 == self)
  {
    if ([v9 isEqualToString:@"protocolConfiguration"])
    {
      queue = self->_queue;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v18[3] = &unk_1E7F0B0E8;
      v18[4] = self;
      v15 = v18;
      goto LABEL_11;
    }

    if ([v9 isEqualToString:@"defaultPath"])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      block[3] = &unk_1E7F0B0E8;
      block[4] = self;
      v15 = block;
      goto LABEL_11;
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v11, 272, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v10 && [v9 isEqualToString:@"path"])
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v16[3] = &unk_1E7F0B0E8;
    v16[4] = self;
    v15 = v16;
LABEL_11:
    dispatch_async(queue, v15);
  }
}

void __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 77) & 1) == 0)
  {
    v2 = *(v1 + 248);
    v3 = *(v1 + 73);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v1;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "%@: handleConfigChange", &buf, 0xCu);
    }

    if (objc_getProperty(v1, v5, 240, 1))
    {
      if (*(v1 + 78))
      {
        *(v1 + 77) = 1;
        objc_initWeak(&v29, v1);
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v1;
          _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel due to config change", &buf, 0xCu);
        }

        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v34 = __49__NEIKEv2PacketTunnelProvider_handleConfigChange__block_invoke;
        v35 = &unk_1E7F0AA58;
        objc_copyWeak(v36, &v29);
        [(NEIKEv2PacketTunnelProvider *)v1 stopIKEv2TunnelWithReason:&buf completionHandler:?];
        objc_destroyWeak(v36);
        objc_destroyWeak(&v29);
      }

      else
      {
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v1;
          _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel due to Config Change", &buf, 0xCu);
        }

        [(NEIKEv2PacketTunnelProvider *)v1 stopIKEv2TunnelWithReason:0 completionHandler:?];
        v9 = objc_alloc_init(NEIKEv2Server);
        objc_setProperty_atomic(v1, v10, v9, 128);

        v11 = [v1 protocolConfiguration];
        v12 = [v11 serverAddress];
        Property = objc_getProperty(v1, v13, 128, 1);
        if (Property)
        {
          objc_setProperty_atomic(Property, v15, v12, 16);
        }

        *(v1 + 248) = v2;
        *(v1 + 73) = v3;
        v16 = [NEIKEv2MOBIKE alloc];
        v18 = objc_getProperty(v1, v17, 264, 1);
        v19 = [(NEIKEv2MOBIKE *)&v16->super.isa initWithQueue:v18 tunnelProvider:v1];
        objc_setProperty_atomic(v1, v20, v19, 168);

        v22 = objc_getProperty(v1, v21, 128, 1);
        if (v22)
        {
          objc_setProperty_atomic(v22, v23, 0, 24);
        }

        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v34 = __49__NEIKEv2PacketTunnelProvider_handleConfigChange__block_invoke_169;
        v35 = &unk_1E7F08740;
        v36[0] = v1;
        [(NEIKEv2PacketTunnelProvider *)v1 resolveServerAddressIfNeeded:?];
        [v1 setReasserting:(~*(v1 + 84) & 0xF) == 0];
        *(v1 + 84) &= 0xFFFFFFF0;
        v24 = *(v1 + 88);
        *(v1 + 88) = 0;

        v25 = *(v1 + 96);
        *(v1 + 96) = 0;

        v26 = *(v1 + 104);
        *(v1 + 104) = 0;

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412546;
          v30 = v1;
          v31 = 2080;
          v32 = "[NEIKEv2PacketTunnelProvider handleConfigChange]";
          _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@: %s: bringing up tunnel", &v29, 0x16u);
        }
      }
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v1;
        _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "%@: No tunnel, ignore config change", &buf, 0xCu);
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1 || (*(v1 + 77) & 1) != 0)
  {
    goto LABEL_91;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v104 = [v1 defaultPath];
    v3 = [v104 scopedInterface];
    v4 = [v1 defaultPath];
    v101 = v4;
    v102 = v3;
    if (v3)
    {
      [v4 scopedInterface];
    }

    else
    {
      [v4 interface];
    }
    v5 = ;
    v6 = [v5 interfaceName];
    v7 = [v1 defaultPath];
    v8 = [v7 scopedInterface];
    v9 = [v1 defaultPath];
    v10 = v9;
    if (v8)
    {
      [v9 scopedInterface];
    }

    else
    {
      [v9 interface];
    }
    v11 = ;
    v12 = [v11 interfaceIndex];
    v13 = [v1 defaultPath];
    *buf = 138413058;
    v107 = v1;
    v108 = 2112;
    *v109 = v6;
    *&v109[8] = 2048;
    v110 = v12;
    v111 = 1024;
    LODWORD(v112) = [v13 status] == 1;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: New scoped interface %@ (%lu) (SATISFIED: %d)", buf, 0x26u);
  }

  v14 = [v1 defaultPath];
  v15 = [v14 scopedInterface];
  v16 = [v1 defaultPath];
  v17 = v16;
  if (v15)
  {
    [v16 scopedInterface];
  }

  else
  {
    [v16 interface];
  }
  v18 = ;
  v19 = [v18 interfaceIndex];
  Property = objc_getProperty(v1, v20, 240, 1);
  if (v19 == [(NEIKEv2Session *)Property interfaceIndex])
  {
    v23 = objc_getProperty(v1, v22, 240, 1);
    v24 = [(NEIKEv2Session *)v23 interfaceIndex];

    if (v24)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *(v1 + 248);
        v27 = [v1 defaultPath];
        v28 = [v27 scopedInterface];
        v29 = [v1 defaultPath];
        v30 = v29;
        if (v28)
        {
          [v29 scopedInterface];
        }

        else
        {
          [v29 interface];
        }
        v78 = ;
        v79 = [v78 interfaceIndex];
        *buf = 138412802;
        v107 = v1;
        v108 = 2048;
        *v109 = v26;
        *&v109[8] = 2048;
        v110 = v79;
        _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_INFO, "%@: Ignoring interface change to: %lu --> %lu\n", buf, 0x20u);
      }

LABEL_87:

      goto LABEL_91;
    }
  }

  else
  {
  }

  v31 = [v1 defaultPath];
  objc_setProperty_atomic(v1, v32, v31, 208);

  v33 = &OBJC_IVAR___NEFilterFlow__direction;
  v34 = *(v1 + 248);
  v103 = *(v1 + 75);
  v105 = *(v1 + 74);
  if ([objc_getProperty(v1 v35] == 1)
  {
    v37 = [objc_getProperty(v1 v36];
    v39 = objc_getProperty(v1, v38, 208, 1);
    if (v37)
    {
      [v39 scopedInterface];
    }

    else
    {
      [v39 interface];
    }
    v40 = ;
    *(v1 + 248) = [v40 interfaceIndex];

    *(v1 + 256) = [objc_getProperty(v1 v41];
    v43 = [objc_getProperty(v1 v42];
    v45 = objc_getProperty(v1, v44, 208, 1);
    v46 = v45;
    if (v43)
    {
      [v45 scopedInterface];
    }

    else
    {
      [v45 interface];
    }
    v47 = ;
    if ([v47 type] == 2)
    {
      *(v1 + 73) = 1;
    }

    else
    {
      *(v1 + 73) = [objc_getProperty(v1 v48];
    }

    v50 = [objc_getProperty(v1 v49];
    v52 = objc_getProperty(v1, v51, 208, 1);
    if (v50)
    {
      [v52 scopedInterface];
    }

    else
    {
      [v52 interface];
    }
    v53 = ;
    *(v1 + 74) = [v53 subtype] == 5001;
  }

  else
  {
    *(v1 + 248) = 0;
    *(v1 + 256) = 2;
    *(v1 + 73) = 0;
    *(v1 + 74) = 0;
  }

  *(v1 + 75) = 0;
  v54 = [objc_getProperty(v1 v36];
  v55 = [v54 subtype];

  if (v55 != 5001)
  {
    goto LABEL_74;
  }

  v57 = 1;
  if (([objc_getProperty(v1 v56] & 1) == 0)
  {
    v57 = 2;
    if (![objc_getProperty(v1 v58])
    {
      v57 = 0;
    }
  }

  if ([objc_getProperty(v1 v58])
  {
    v60 = 3;
  }

  else
  {
    v60 = v57;
  }

  *(v1 + 75) = v60 != 0;
  v61 = objc_getProperty(v1, v59, 128, 1);
  if (!v61 || (v63 = objc_getProperty(v61, v62, 56, 1)) == 0 || (v64 = v63, v65 = objc_getProperty(v1, v62, 232, 1), v66 = [(NEIKEv2CompanionDatapath *)v65 connected], v64, !v66))
  {
    v87 = objc_getProperty(v1, v62, 128, 1);
    if (v87)
    {
      v89 = objc_getProperty(v87, v88, 56, 1);
      v33 = &OBJC_IVAR___NEFilterFlow__direction;
      if (v89)
      {
        v90 = *(v1 + 75);

        if ((v90 & 1) == 0)
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v107 = v1;
            _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "%@: No outbound companion path detected. Ignoring companion path", buf, 0xCu);
          }

          goto LABEL_87;
        }
      }
    }

    else
    {
      v33 = &OBJC_IVAR___NEFilterFlow__direction;
    }

    if ((v105 & 1) != 0 && (*(v1 + 75) & 1) != 0 && (v103 & 1) == 0)
    {
      v91 = ne_log_obj();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v107 = v1;
        _os_log_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_DEFAULT, "%@: outbound companion path detected", buf, 0xCu);
      }

      goto LABEL_88;
    }

    goto LABEL_74;
  }

  if ([objc_getProperty(v1 v62] == 1)
  {
    if ((*(v1 + 75) & 1) == 0)
    {
      v71 = ne_log_obj();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v107 = v1;
        v75 = "%@: No companion outbound path detected. Cancelling companion path";
        v76 = v71;
        v77 = 12;
LABEL_62:
        _os_log_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_DEFAULT, v75, buf, v77);
      }

LABEL_63:

      [(NEIKEv2PacketTunnelProvider *)v1 invalidateCompanionProxyDatapath];
      v83 = objc_getProperty(v1, v82, 128, 1);
      [(NEIKEv2Server *)v83 resetPathProxyState];
      v33 = &OBJC_IVAR___NEFilterFlow__direction;
LABEL_88:
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        v99 = *(v1 + v33[649]);
        *buf = 138412802;
        v107 = v1;
        v108 = 2048;
        *v109 = v34;
        *&v109[8] = 2048;
        v110 = v99;
        _os_log_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_INFO, "%@: Scoped interface changed: %lu --> %lu\n", buf, 0x20u);
      }

      [(NEIKEv2PacketTunnelProvider *)v1 handleInterfaceChange:?];
      goto LABEL_91;
    }

    v68 = objc_getProperty(v1, v67, 232, 1);
    if (v68)
    {
      v70 = v68[3];
    }

    else
    {
      v70 = 0;
    }

    if (v60 != v70 || (*(v1 + 79) & 1) != 0)
    {
      v71 = ne_log_obj();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        v73 = objc_getProperty(v1, v72, 232, 1);
        if (v73)
        {
          v74 = v73[6];
        }

        else
        {
          v74 = 0;
        }

        *buf = 138412802;
        v107 = v1;
        v108 = 1024;
        *v109 = v74;
        *&v109[4] = 1024;
        *&v109[6] = v60;
        v75 = "%@: MOBIKE tunnel due to Companion network path change %u --> %u";
        v76 = v71;
        v77 = 24;
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    v85 = objc_getProperty(v1, v69, 240, 1);
    [v85 sendKeepaliveWithRetries:3 retryIntervalInMilliseconds:1000 callbackQueue:objc_getProperty(v1 callback:{v86, 264, 1), &__block_literal_global_12777}];

    v33 = &OBJC_IVAR___NEFilterFlow__direction;
LABEL_74:
    v92 = ne_log_obj();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v93 = *(v1 + v33[649]);
      if (*(v1 + 256) == 1)
      {
        v94 = "SATISFIED";
      }

      else
      {
        v94 = "UNSATISFIED";
      }

      v95 = *(v1 + 73);
      *buf = 138413058;
      if (v95)
      {
        v96 = " Cellular";
      }

      else
      {
        v96 = "";
      }

      v107 = v1;
      v108 = 2048;
      *v109 = v93;
      *&v109[8] = 2080;
      v110 = v94;
      v111 = 2080;
      v112 = v96;
      _os_log_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_INFO, "%@: Updated scoped ifIndex %lu (%s%s)", buf, 0x2Au);
    }

    if (v34 == *(v1 + v33[649]) && (!v34 || objc_getProperty(v1, v97, 240, 1)))
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v107 = v1;
        _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "%@: Scoped interface unchanged, ignore\n", buf, 0xCu);
      }

      goto LABEL_87;
    }

    goto LABEL_88;
  }

  v80 = ne_log_obj();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v107 = v1;
    _os_log_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_DEFAULT, "%@: tearing down tunnel due to Companion link loss", buf, 0xCu);
  }

  [(NEIKEv2PacketTunnelProvider *)v1 handleInterfaceDown];
LABEL_91:
  v100 = *MEMORY[0x1E69E9840];
}

void __78__NEIKEv2PacketTunnelProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1 && (v1[77] & 1) == 0)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [objc_getProperty(v1 v3];
      v4 = [v31 scopedInterface];
      v29 = objc_getProperty(v1, v5, 272, 1);
      v6 = [v29 path];
      v30 = v4;
      v28 = v6;
      if (v4)
      {
        [v6 scopedInterface];
      }

      else
      {
        [v6 interface];
      }
      v27 = ;
      v7 = [v27 interfaceName];
      v9 = [objc_getProperty(v1 v8];
      v10 = [v9 scopedInterface];
      v12 = objc_getProperty(v1, v11, 272, 1);
      v13 = [v12 path];
      v14 = v13;
      if (v10)
      {
        [v13 scopedInterface];
      }

      else
      {
        [v13 interface];
      }
      v15 = ;
      v16 = [v15 interfaceIndex];
      v18 = [objc_getProperty(v1 v17];
      *buf = 138413058;
      v33 = v1;
      v34 = 2112;
      v35 = v7;
      v36 = 2048;
      v37 = v16;
      v38 = 1024;
      v39 = [v18 status] == 1;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: Scoped path changed %@ (%lu) (SATISFIED: %d)", buf, 0x26u);
    }

    v20 = [objc_getProperty(v1 v19];
    v21 = [v20 status];

    if (v21 != 1)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v1;
        _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_INFO, "%@: Scoped path went UNSATISFIED, flap tunnel", buf, 0xCu);
      }

      if (objc_getProperty(v1, v23, 272, 1))
      {
        [objc_getProperty(v1 v24];
        objc_setProperty_atomic(v1, v25, 0, 272);
      }

      [(NEIKEv2PacketTunnelProvider *)v1 handleInterfaceChange:?];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleInterfaceChange:(uint64_t)a1
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_39:
    v39 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = a2;
  [(NEIKEv2PacketTunnelProvider *)a1 configureProxyPathIfNeeded];
  v5 = objc_getProperty(a1, v4, 240, 1);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v2 == 0;
  }

  if (v7)
  {
  }

  else if ((*(a1 + 78) & 1) == 0)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 248);
      *buf = 138412546;
      v48 = a1;
      v49 = 2048;
      v50 = v29;
      _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEFAULT, "%@: Starting tunnel on scoped interface UP (%lu)", buf, 0x16u);
    }

    if (*(a1 + 256) == 1)
    {
      v30 = [a1 protocolConfiguration];
      if (v30)
      {
        v31 = v30;
        v32 = [a1 protocolConfiguration];
        v33 = [v32 serverAddress];

        if (v33)
        {
          v34 = ne_log_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = *(a1 + 248);
            *buf = 138412546;
            v48 = a1;
            v49 = 2048;
            v50 = v35;
            _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@: Calling startIKEv2TunnelWithOptions on scoped interface UP (%lu)", buf, 0x16u);
          }

          [(NEIKEv2PacketTunnelProvider *)a1 reset:?];
          Property = objc_getProperty(a1, v36, 112, 1);
          [(NEIKEv2PacketTunnelProvider *)a1 startIKEv2TunnelWithOptions:?];
        }
      }
    }

    goto LABEL_39;
  }

  if ((*(a1 + 79) & 1) == 0)
  {
    if (v2)
    {
      if (*(a1 + 78))
      {
        goto LABEL_36;
      }

      if (*(a1 + 256) != 1)
      {
        goto LABEL_36;
      }

      v23 = [a1 protocolConfiguration];
      if (!v23)
      {
        goto LABEL_36;
      }

      v24 = v23;
      v25 = [a1 protocolConfiguration];
      v26 = [v25 serverAddress];

      if (v26)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = a1;
          _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel before reattempting on new path", buf, 0xCu);
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __53__NEIKEv2PacketTunnelProvider_handleInterfaceChange___block_invoke;
        v46[3] = &unk_1E7F0B0E8;
        v46[4] = a1;
        [(NEIKEv2PacketTunnelProvider *)a1 stopIKEv2TunnelWithReason:v46 completionHandler:?];
      }

      else
      {
LABEL_36:
        v38 = ne_log_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = a1;
          _os_log_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_DEFAULT, "%@: Disconnect tunnel: scoped interface changed / status not satisfied", buf, 0xCu);
        }

        [(NEIKEv2PacketTunnelProvider *)a1 handleInterfaceDown];
      }
    }

    goto LABEL_39;
  }

  v8 = objc_getProperty(a1, v6, 128, 1);
  v10 = objc_getProperty(a1, v9, 208, 1);
  v45 = [(NEIKEv2Server *)v8 getViableServerAddressForPath:v10];

  v12 = objc_getProperty(a1, v11, 168, 1);
  if (v12)
  {
    objc_setProperty_atomic(v12, v13, 0, 16);
  }

  v14 = objc_getProperty(a1, v13, 128, 1);
  if (v14 && (v14[8] & 1) != 0)
  {
    if (*(a1 + 75))
    {
      v16 = objc_getProperty(a1, v15, 128, 1);
      if (v16)
      {
        v16 = objc_getProperty(v16, v17, 56, 1);
      }

      v18 = v16;
      v19 = [v18 port];
      v21 = objc_getProperty(a1, v20, 168, 1);
      if (v21)
      {
        objc_setProperty_atomic(v21, v22, v19, 16);
      }
    }

    else
    {
      v18 = v45;
      v45 = 0;
    }
  }

  v40 = objc_getProperty(a1, v15, 168, 1);
  v41 = *(a1 + 248);
  v42 = v40;
  v43 = [a1 defaultPath];
  -[NEIKEv2MOBIKE initiateMOBIKE:pathStatus:serverAddress:earlyDisconnect:](v42, v41, [v43 status], v45, 0);

  v44 = *MEMORY[0x1E69E9840];
}

- (void)configureProxyPathIfNeeded
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [objc_getProperty(a1 a2];
  if ([v3 subtype] != 5001)
  {

    goto LABEL_20;
  }

  v5 = [objc_getProperty(a1 v4];

  if (!v5)
  {
LABEL_20:
    [(NEIKEv2PacketTunnelProvider *)a1 invalidateCompanionProxyDatapath];
    Property = objc_getProperty(a1, v23, 128, 1);
    v26 = *MEMORY[0x1E69E9840];

    [(NEIKEv2Server *)Property resetPathProxyState];
    return;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  self = a1;
  v7 = [objc_getProperty(a1 v6];
  v36 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v36)
  {
    v8 = *v45;
    v9 = *MEMORY[0x1E69826E8];
    v10 = *MEMORY[0x1E69826F0];
    v39 = v7;
    v35 = *v45;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v37 = v11;
        v12 = *(*(&v44 + 1) + 8 * v11);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v40 + 1) + 8 * i);
              v19 = [v18 objectForKeyedSubscript:v9];
              v20 = [v18 objectForKeyedSubscript:v10];
              v21 = [v18 objectForKeyedSubscript:@"kCFStreamPropertySOCKSVersion"];
              if ([v21 isEqualToString:@"shoes"])
              {
                v27 = objc_getProperty(self, v22, 128, 1);
                if (v27)
                {
                  v27[8] = 1;
                }

                v28 = MEMORY[0x1E6977E28];
                v29 = [v19 stringValue];
                v30 = [v28 endpointWithHostname:v20 port:v29];
                v32 = objc_getProperty(self, v31, 128, 1);
                if (v32)
                {
                  objc_setProperty_atomic(v32, v33, v30, 56);
                }

                v7 = v39;
                goto LABEL_28;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v11 = v37 + 1;
        v7 = v39;
        v8 = v35;
      }

      while (v37 + 1 != v36);
      v36 = [v39 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v36);
  }

LABEL_28:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)reset:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = a1;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "%@: Reset", &v24, 0xCu);
    }

    if (a2 && objc_getProperty(a1, v5, 240, 1))
    {
      objc_setProperty_atomic(a1, v6, 0, 240);
    }

    v7 = *(a1 + 88);
    *(a1 + 88) = 0;

    v8 = *(a1 + 96);
    *(a1 + 96) = 0;

    v9 = *(a1 + 104);
    *(a1 + 104) = 0;

    *(a1 + 84) = 0;
    *(a1 + 120) = 0;
    *(a1 + 76) = 0;
    v10 = *(a1 + 192);
    *(a1 + 192) = 0;

    v11 = *(a1 + 160);
    *(a1 + 160) = 0;

    v12 = *(a1 + 168);
    *(a1 + 168) = 0;

    *(a1 + 79) = 0;
    *(a1 + 80) = 0;
    v14 = *(a1 + 152);
    if (v14)
    {
      [(NEIKEv2Rekey *)v14 invalidateTimers];
      v15 = *(a1 + 152);
      *(a1 + 152) = 0;
    }

    v16 = *(a1 + 136);
    if (v16)
    {
      v17 = [a1 context];
      [v16 removeObserver:v17 forKeyPath:@"resolvedEndpoints"];

      v18 = *(a1 + 136);
      *(a1 + 136) = 0;
    }

    v19 = *(a1 + 144);
    if (v19)
    {
      dispatch_source_cancel(v19);
      v20 = *(a1 + 144);
      *(a1 + 144) = 0;
    }

    if (objc_getProperty(a1, v13, 272, 1))
    {
      [objc_getProperty(a1 v21];
      objc_setProperty_atomic(a1, v22, 0, 272);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)startIKEv2TunnelWithOptions:(uint64_t)a1
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    if (*(a1 + 77))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = a1;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Start IKEv2 Tunnel Skipped, provider disposed", buf, 0xCu);
      }

LABEL_31:

      goto LABEL_46;
    }

    if (objc_getProperty(a1, v3, 240, 1))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = a1;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Start IKEv2 Tunnel Skipped, has active ike session", buf, 0xCu);
      }

      goto LABEL_31;
    }

    if (!v4)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v60 = a1;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Start IKEv2 Tunnel Skipped, null options", buf, 0xCu);
      }

      goto LABEL_31;
    }

    v6 = [a1 protocolConfiguration];

    if (v6)
    {
      v8 = [a1 protocolConfiguration];
      *(a1 + 200) = [v8 tunnelKind];
    }

    objc_setProperty_atomic(a1, v7, v4, 112);
    if (!*(a1 + 248) || *(a1 + 256) != 1)
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 248);
        v25 = *(a1 + 256);
        *buf = 138412802;
        v60 = a1;
        v61 = 2048;
        v62 = v24;
        v63 = 2048;
        v64 = v25;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "%@: Start IKEv2 Tunnel Skipped, interface not ready (ifindex %lu, Satisfied %lu)", buf, 0x20u);
      }

      goto LABEL_31;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 248);
      *buf = 138412546;
      v60 = a1;
      v61 = 2048;
      v62 = v10;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Starting IKEv2 Tunnel on scoped ifindex %lu", buf, 0x16u);
    }

    v11 = [a1 protocolConfiguration];
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = [a1 protocolConfiguration];
    v13 = [v12 serverAddress];
    v14 = v13 == 0;

    if (v14)
    {
LABEL_32:
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = a1;
        _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "%@: NULL configuration / serverAddress", buf, 0xCu);
      }

      [(NEIKEv2PacketTunnelProvider *)a1 invokeCancelTunnel:?];
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v54 = [a1 protocolConfiguration];
        *buf = 138412546;
        v60 = a1;
        v61 = 2112;
        v62 = v54;
        _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@: Starting IKEv2 Tunnel with configuration %@", buf, 0x16u);
      }

      if (ne_session_disable_restrictions() && ([a1 protocolConfiguration], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "serverAddress"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"0.0.0.0"), v17, v16, v18))
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v60 = a1;
          _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@: Starting a tunnel to 0.0.0.0, marking connected immediately", buf, 0xCu);
        }

        v20 = [(NETunnelNetworkSettings *)[NEPacketTunnelNetworkSettings alloc] initWithTunnelRemoteAddress:@"0.0.0.0"];
        v21 = [[NEIPv4Settings alloc] initWithAddresses:&unk_1F38BA7D8 subnetMasks:&unk_1F38BA7F0];
        v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v23 = [[NEIPv4Route alloc] initWithDestinationAddress:@"0.0.0.0" subnetMask:@"255.255.255.255"];
        [v22 addObject:v23];

        [(NEIPv4Settings *)v21 setIncludedRoutes:v22];
        [(NEPacketTunnelNetworkSettings *)v20 setIPv4Settings:v21];
        objc_initWeak(buf, a1);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke;
        v57[3] = &unk_1E7F0A2A0;
        objc_copyWeak(&v58, buf);
        [a1 setTunnelNetworkSettings:v20 completionHandler:v57];
        objc_destroyWeak(&v58);
        objc_destroyWeak(buf);
      }

      else
      {
        v27 = [a1 protocolConfiguration];
        if (![v27 useExtendedAuthentication])
        {
          goto LABEL_39;
        }

        v28 = [v27 username];
        v29 = [v28 length] == 0;

        if (v29)
        {
          goto LABEL_39;
        }

        v30 = [v4 objectForKeyedSubscript:@"Password"];
        v31 = v30 == 0;

        if (!v31)
        {
          goto LABEL_39;
        }

        v32 = [v27 passwordKeychainItem];
        v33 = [v32 persistentReference];
        v34 = v33 == 0;

        if (v34)
        {
          if (![(NEIKEv2PacketTunnelProvider *)a1 NEIKEv2ProviderAuthenticate:v4])
          {
            v55 = ne_log_obj();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v60 = a1;
              _os_log_error_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_ERROR, "%@: Cancel IKEv2 tunnel, popping prompt for password failed", buf, 0xCu);
            }

            [(NEIKEv2PacketTunnelProvider *)a1 invokeCancelTunnel:?];
          }
        }

        else
        {
LABEL_39:
          v35 = objc_alloc_init(NEIKEv2Server);
          objc_setProperty_atomic(a1, v36, v35, 128);

          v37 = [NEIKEv2MOBIKE alloc];
          Property = objc_getProperty(a1, v38, 264, 1);
          v40 = [(NEIKEv2MOBIKE *)&v37->super.isa initWithQueue:a1 tunnelProvider:?];
          objc_setProperty_atomic(a1, v41, v40, 168);

          v42 = [a1 protocolConfiguration];
          v43 = [v42 serverAddress];
          v45 = objc_getProperty(a1, v44, 128, 1);
          if (v45)
          {
            objc_setProperty_atomic(v45, v46, v43, 16);
          }

          v48 = [objc_getProperty(a1 v47];
          v50 = objc_getProperty(a1, v49, 208, 1);
          if (v48)
          {
            [v50 scopedInterface];
          }

          else
          {
            [v50 interface];
          }
          v51 = ;
          *(a1 + 248) = [v51 interfaceIndex];

          *(a1 + 256) = [objc_getProperty(a1 v52];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke_114;
          v56[3] = &unk_1E7F08740;
          v56[4] = a1;
          [(NEIKEv2PacketTunnelProvider *)a1 resolveServerAddressIfNeeded:v56];
        }
      }
    }
  }

LABEL_46:

  v53 = *MEMORY[0x1E69E9840];
}

void __53__NEIKEv2PacketTunnelProvider_handleInterfaceChange___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 264, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NEIKEv2PacketTunnelProvider_handleInterfaceChange___block_invoke_2;
  block[3] = &unk_1E7F0B0E8;
  block[4] = v4;
  dispatch_async(Property, block);
}

- (void)stopIKEv2TunnelWithReason:(void *)a3 completionHandler:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: Stopping IKEv2 Tunnel with reason %ld", buf, 0x16u);
    }

    Property = objc_getProperty(a1, v7, 128, 1);
    if (Property)
    {
      objc_setProperty_atomic(Property, v9, 0, 64);
    }

    if (objc_getProperty(a1, v9, 240, 1))
    {
      [(NEIKEv2PacketTunnelProvider *)a1 reset:?];
      if (objc_getProperty(a1, v11, 240, 1))
      {
        if (a1[42])
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEFAULT, "%@: tunnelTeardown (graceful) - Clearing tunnel configuration", buf, 0xCu);
          }

          [a1 setTunnelNetworkSettings:0 completionHandler:0];
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "%@: tunnelTeardown (graceful) - Invalidating session", buf, 0xCu);
          }

          v16 = objc_getProperty(a1, v15, 240, 1);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __45__NEIKEv2PacketTunnelProvider_tunnelTeardown__block_invoke;
          v26 = &unk_1E7F0B0E8;
          v27 = a1;
          [v16 invalidateWithCompletionHandler:1 completionHandler:buf];
        }

        else
        {
          [objc_getProperty(a1 v12];
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_getProperty(a1, v18, 240, 1);
            *buf = 138412546;
            *&buf[4] = a1;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "%@: Invalidated session (%@)", buf, 0x16u);
          }
        }
      }

      if (a1[42])
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __75__NEIKEv2PacketTunnelProvider_stopIKEv2TunnelWithReason_completionHandler___block_invoke;
        v23[3] = &unk_1E7F0B588;
        v23[4] = a1;
        v24 = v5;
        v20 = _Block_copy(v23);
        objc_setProperty_atomic_copy(a1, v21, v20, 184);

        goto LABEL_22;
      }

      objc_setProperty_atomic(a1, v12, 0, 240);
    }

    [(NEIKEv2PacketTunnelProvider *)a1 invalidateCompanionProxyDatapath];
    if (v5)
    {
      v5[2](v5);
    }
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleInterfaceDown
{
  v9 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__12503;
  v5[4] = __Block_byref_object_dispose__12504;
  v1 = a1;
  v6 = v1;
  v1[77] = 1;
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v1;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel since interface is down", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__NEIKEv2PacketTunnelProvider_handleInterfaceDown__block_invoke;
  v4[3] = &unk_1E7F087E0;
  v4[4] = v5;
  [v1 setTunnelNetworkSettings:0 completionHandler:v4];
  _Block_object_dispose(v5, 8);

  v3 = *MEMORY[0x1E69E9840];
}

void __50__NEIKEv2PacketTunnelProvider_handleInterfaceDown__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  Property = *(*(v3 + 8) + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 264, 1);
    v3 = *(a1 + 32);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__NEIKEv2PacketTunnelProvider_handleInterfaceDown__block_invoke_2;
  block[3] = &unk_1E7F087B8;
  block[4] = v3;
  dispatch_async(Property, block);
}

void __50__NEIKEv2PacketTunnelProvider_handleInterfaceDown__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__NEIKEv2PacketTunnelProvider_handleInterfaceDown__block_invoke_3;
  v3[3] = &unk_1E7F087B8;
  v3[4] = v1;
  [(NEIKEv2PacketTunnelProvider *)v2 stopIKEv2TunnelWithReason:v3 completionHandler:?];
}

- (void)invokeCancelTunnel:(_BYTE *)a1
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    a1[77] = 1;
    objc_setProperty_atomic(a1, a2, 0, 216);
    if (a1[81])
    {
      [a1 removeObserver:a1 forKeyPath:@"protocolConfiguration"];
      [a1 removeObserver:a1 forKeyPath:@"defaultPath"];
      a1[81] = 0;
    }

    v4 = NEResourcesCopyLocalizedNSString(@"VPN_HEADER", @"VPN_HEADER");
    v5 = 0;
    v6 = 0;
    switch(v2)
    {
      case 4:
        v7 = @"VPN Error 5";
        goto LABEL_16;
      case 7:
      case 18:
      case 28:
        v7 = @"VPN Error 1";
        goto LABEL_16;
      case 10:
        v7 = @"VPN Error 6";
        goto LABEL_16;
      case 17:
        v7 = @"VPN Error 4";
        goto LABEL_16;
      case 20:
        v7 = @"VPN Error 8";
        goto LABEL_16;
      case 23:
        v7 = @"VPN Error 14";
        goto LABEL_16;
      case 24:
      case 25:
        v7 = @"VPN Error 3";
        goto LABEL_16;
      case 26:
        v7 = @"VPN Error 20";
        goto LABEL_16;
      case 27:
        v7 = @"VPN Error 21";
        goto LABEL_16;
      case 29:
        v7 = @"VPN Error 22";
        goto LABEL_16;
      case 30:
        v7 = @"VPN Error 23";
LABEL_16:
        v8 = NEResourcesCopyLocalizedNSString(v7, v7);
        v5 = v8;
        v6 = 0;
        if (v4 && v8)
        {
          v9 = *MEMORY[0x1E696A578];
          v12[0] = @"LocalizedHeader";
          v12[1] = v9;
          v13[0] = v4;
          v13[1] = v8;
          v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
        }

        break;
      default:
        break;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IKEv2ProviderDisconnectionErrorDomain" code:v2 userInfo:v6];
    if (([(NEIKEv2PacketTunnelProvider *)a1 invokeStartTunnelCompletionHandler:v10]& 1) == 0)
    {
      [a1 cancelTunnelWithError:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (uint64_t)invokeStartTunnelCompletionHandler:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    if (objc_getProperty(a1, v3, 176, 1))
    {
      Property = objc_getProperty(a1, v5, 176, 1);
      Property[2](Property, v4);
      objc_setProperty_atomic_copy(a1, v7, 0, 176);
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = a1;
        v13 = 2080;
        v14 = "[NEIKEv2PacketTunnelProvider invokeStartTunnelCompletionHandler:]";
        _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: %s: Invoked start tunnel completion handler", &v11, 0x16u);
      }

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t __75__NEIKEv2PacketTunnelProvider_stopIKEv2TunnelWithReason_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  [(NEIKEv2PacketTunnelProvider *)*(a1 + 32) invalidateCompanionProxyDatapath];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)invalidateCompanionProxyDatapath
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && objc_getProperty(a1, a2, 232, 1))
  {
    Property = objc_getProperty(a1, v3, 232, 1);
    if (Property)
    {
      v6 = Property;
      os_unfair_lock_lock(Property + 3);
      objc_storeWeak((v6 + 88), 0);
      if (*(v6 + 9) != 3)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412290;
          v11 = v6;
          _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%@: cancel", &v10, 0xCu);
        }

        [(NEIKEv2CompanionDatapath *)v6 cancelLocked];
      }

      os_unfair_lock_unlock((v6 + 12));
    }

    v8 = *MEMORY[0x1E69E9840];

    objc_setProperty_atomic(a1, v5, 0, 232);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void __45__NEIKEv2PacketTunnelProvider_tunnelTeardown__block_invoke(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, a2, 184, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 184, 1);
    }

    Property[2]();
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_setProperty_atomic_copy(v7, v6, 0, 184);
    }
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = objc_getProperty(*(a1 + 32), v9, 240, 1);
    }

    else
    {
      v11 = 0;
    }

    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: tunnelTeardown (graceful) - Invalidated session (%@)", &v15, 0x16u);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    objc_setProperty_atomic(v13, v12, 0, 240);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __53__NEIKEv2PacketTunnelProvider_handleInterfaceChange___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [NEIKEv2MOBIKE alloc];
  v4 = *(a1 + 32);
  if (v4)
  {
    Property = objc_getProperty(v4, v2, 264, 1);
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
    Property = 0;
  }

  v8 = [(NEIKEv2MOBIKE *)&v3->super.isa initWithQueue:v6 tunnelProvider:?];
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic(v9, v7, v8, 168);
  }

  v10 = [(NEIKEv2PacketTunnelProvider *)*(a1 + 32) tunnelBringup];
  if (v10)
  {
    v11 = v10;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138412546;
      v16 = v14;
      v17 = 2080;
      v18 = "[NEIKEv2PacketTunnelProvider handleInterfaceChange:]_block_invoke_2";
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@: %s: Failed tunnel bringup on new path", &v15, 0x16u);
    }

    [(NEIKEv2PacketTunnelProvider *)*(a1 + 32) invokeCancelTunnel:v11];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (uint64_t)tunnelBringup
{
  v282[12] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [a1 packetFlow];
    if (v1)
    {
      v2 = v1[11];
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 120) = v2;

    if (!*(a1 + 120))
    {
      oslog = ne_log_obj();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = a1;
        _os_log_error_impl(&dword_1BA83C000, oslog, OS_LOG_TYPE_ERROR, "%@: null virtualInterface, skip tunnel bringup", buf, 0xCu);
      }

      v20 = 10;
      goto LABEL_305;
    }

    [(NEIKEv2PacketTunnelProvider *)a1 configureProxyPathIfNeeded];
    v4 = [a1 protocolConfiguration];
    Property = objc_getProperty(a1, v5, 208, 1);
    v7 = *(a1 + 248);
    v8 = Property;
    v10 = objc_getProperty(a1, v9, 112, 1);
    v12 = objc_getProperty(a1, v11, 128, 1);
    v13 = v4;
    v245 = v8;
    v251 = v10;
    v14 = v12;
    objc_opt_self();
    if (NEInitCFTypes_onceToken != -1)
    {
      dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
    }

    v246 = v14;
    if (!v13)
    {
      log = ne_log_obj();
      if (os_log_type_enabled(&log->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, &log->super, OS_LOG_TYPE_ERROR, "createIKESAConfigFromProtocol: null protocol", buf, 2u);
      }

      oslog = 0;
LABEL_80:

      if (!oslog)
      {
        v80 = ne_log_obj();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = a1;
          _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%@: failed to create ikeConfig", buf, 0xCu);
        }

        v20 = 10;
        goto LABEL_304;
      }

      if (*(a1 + 224))
      {
        v59 = ne_log_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = a1;
          *&buf[12] = 2080;
          *&buf[14] = "[NEIKEv2PacketTunnelProvider tunnelBringup]";
          _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEFAULT, "%@: %s: Fallback to use random local port", buf, 0x16u);
        }

        [oslog setRandomizeLocalPort:1];
      }

      v60 = ne_log_large_obj();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = oslog;
        _os_log_debug_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_DEBUG, "%@: ikeConfig %@", buf, 0x16u);
      }

      v61 = [a1 protocolConfiguration];
      objc_opt_self();
      if (NEInitCFTypes_onceToken == -1)
      {
        if (v61)
        {
          goto LABEL_89;
        }
      }

      else
      {
        dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
        if (v61)
        {
LABEL_89:
          v252 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
          [(NEIKEv2ChildSAConfiguration *)v252 setMode:2];
          loga = objc_alloc_init(MEMORY[0x1E695DF70]);
          v62 = objc_alloc_init(NEIKEv2TrafficSelector);
          v63 = NECreateAddressStructFromString(@"0.0.0.0", 0, 0);
          v64 = NECreateAddressStructFromString(@"255.255.255.255", 0, 0);
          v65 = [MEMORY[0x1E6977E08] endpointWithAddress:v63];
          [(NEIKEv2TrafficSelector *)v62 setStartAddress:v65];

          v66 = [MEMORY[0x1E6977E08] endpointWithAddress:v64];
          [(NEIKEv2TrafficSelector *)v62 setEndAddress:v66];

          [(NEIKEv2TrafficSelector *)v62 setStartPort:0];
          [(NEIKEv2TrafficSelector *)v62 setEndPort:0xFFFFLL];
          [(NEIKEv2TrafficSelector *)v62 setIpProtocol:0];
          [loga addObject:v62];
          free(v63);
          free(v64);
          v67 = objc_alloc_init(NEIKEv2TrafficSelector);

          v68 = NECreateAddressStructFromString(@"::", 0, 0);
          v69 = NECreateAddressStructFromString(@"ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff", 0, 0);
          v70 = [MEMORY[0x1E6977E08] endpointWithAddress:v68];
          [(NEIKEv2TrafficSelector *)v67 setStartAddress:v70];

          v71 = [MEMORY[0x1E6977E08] endpointWithAddress:v69];
          [(NEIKEv2TrafficSelector *)v67 setEndAddress:v71];

          [(NEIKEv2TrafficSelector *)v67 setStartPort:0];
          [(NEIKEv2TrafficSelector *)v67 setEndPort:0xFFFFLL];
          [(NEIKEv2TrafficSelector *)v67 setIpProtocol:0];
          [loga addObject:v67];
          free(v68);
          free(v69);
          [(NEIKEv2ChildSAConfiguration *)v252 setLocalTrafficSelectors:loga];
          [(NEIKEv2ChildSAConfiguration *)v252 setRemoteTrafficSelectors:loga];
          v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v73 = [v61 childSecurityAssociationParametersArray];
          v74 = [v73 count] == 0;

          if (v74)
          {
            v81 = [v61 childSecurityAssociationParameters];
            v75 = [NEIKEv2Helper createIKEv2ChildSAProposalFromProtocol:v61 saParameters:v81];

            if (v75)
            {
              [v72 addObject:v75];
            }
          }

          else
          {
            v262 = 0u;
            v263 = 0u;
            v260 = 0u;
            v261 = 0u;
            v75 = [v61 childSecurityAssociationParametersArray];
            v76 = [v75 countByEnumeratingWithState:&v260 objects:buf count:16];
            if (v76)
            {
              v77 = *v261;
              do
              {
                for (i = 0; i != v76; ++i)
                {
                  if (*v261 != v77)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v79 = [NEIKEv2Helper createIKEv2ChildSAProposalFromProtocol:v61 saParameters:*(*(&v260 + 1) + 8 * i)];
                  if (v79)
                  {
                    [v72 addObject:v79];
                  }
                }

                v76 = [v75 countByEnumeratingWithState:&v260 objects:buf count:16];
              }

              while (v76);
            }
          }

          if (![v61 enablePFS] || !objc_msgSend(v61, "allowPostQuantumKeyExchangeFallback"))
          {
            goto LABEL_125;
          }

          v258 = 0u;
          v259 = 0u;
          v256 = 0u;
          v257 = 0u;
          v82 = v72;
          v83 = [v82 countByEnumeratingWithState:&v256 objects:v277 count:16];
          if (v83)
          {
            v84 = 0;
            v85 = *v257;
            do
            {
              for (j = 0; j != v83; ++j)
              {
                if (*v257 != v85)
                {
                  objc_enumerationMutation(v82);
                }

                v87 = *(*(&v256 + 1) + 8 * j);
                v88 = [v87 additionalKEMProtocols];
                v89 = v88 == 0;

                if (!v89)
                {
                  v90 = [v87 copy];
                  [v90 setAdditionalKEMProtocols:0];
                  if (([v82 containsObject:v90] & 1) == 0 && (objc_msgSend(v84, "containsObject:", v90) & 1) == 0)
                  {
                    if (!v84)
                    {
                      v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    }

                    [v84 addObject:v90];
                  }
                }
              }

              v83 = [v82 countByEnumeratingWithState:&v256 objects:v277 count:16];
            }

            while (v83);

            if (!v84)
            {
              goto LABEL_125;
            }

            [v82 addObjectsFromArray:v84];
          }

          else
          {
            v84 = v82;
          }

LABEL_125:
          if ([v72 count])
          {
            v91 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v72];
            [(NEIKEv2ChildSAConfiguration *)v252 setProposals:v91];

            -[NEIKEv2ChildSAConfiguration setOpportunisticPFS:](v252, "setOpportunisticPFS:", [v61 opportunisticPFS]);
            v80 = v252;
          }

          else
          {
            v92 = ne_log_obj();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              *v271 = 0;
              _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "empty child proposals array", v271, 2u);
            }

            v80 = 0;
          }

          goto LABEL_135;
        }
      }

      v252 = ne_log_obj();
      if (os_log_type_enabled(&v252->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, &v252->super, OS_LOG_TYPE_ERROR, "createIKEv2ChildSAConfigFromProtocol: null protocol", buf, 2u);
      }

      v80 = 0;
LABEL_135:

      if (!v80)
      {
        v102 = ne_log_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = a1;
          _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "%@: failed to create childConfig", buf, 0xCu);
        }

        v20 = 10;
        goto LABEL_303;
      }

      v93 = ne_log_large_obj();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v80;
        _os_log_debug_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_DEBUG, "%@: childConfig %@", buf, 0x16u);
      }

      v94 = [a1 protocolConfiguration];
      v96 = objc_getProperty(a1, v95, 112, 1);
      v97 = *(a1 + 41);
      v98 = v94;
      v99 = v96;
      objc_opt_self();
      if (NEInitCFTypes_onceToken == -1)
      {
        if (v98)
        {
          goto LABEL_140;
        }
      }

      else
      {
        dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
        if (v98)
        {
LABEL_140:
          v100 = objc_alloc_init(NEIKEv2SessionConfiguration);
          if ([v98 minimumTLSVersion] == 1)
          {
            v101 = @"1.0";
          }

          else if ([v98 minimumTLSVersion] == 2)
          {
            v101 = @"1.1";
          }

          else
          {
            if ([v98 minimumTLSVersion] != 3)
            {
              goto LABEL_150;
            }

            v101 = @"1.2";
          }

          [(NEIKEv2SessionConfiguration *)v100 setTlsMinimumVersion:v101];
LABEL_150:
          if ([v98 maximumTLSVersion] == 1)
          {
            v103 = @"1.0";
          }

          else if ([v98 maximumTLSVersion] == 2)
          {
            v103 = @"1.1";
          }

          else
          {
            if ([v98 maximumTLSVersion] != 3)
            {
              goto LABEL_157;
            }

            v103 = @"1.2";
          }

          [(NEIKEv2SessionConfiguration *)v100 setTlsMaximumVersion:v103];
LABEL_157:
          [(NEIKEv2SessionConfiguration *)v100 setBlackholeDetectionEnabled:v97 & 1];
          if ([v98 allowPostQuantumKeyExchangeFallback])
          {
            v104 = [v98 opportunisticPFS] ^ 1;
          }

          else
          {
            v104 = 0;
          }

          [(NEIKEv2SessionConfiguration *)v100 setAllowPostQuantumKeyExchangeFallbackForAnalytics:v104];
          v105 = [v98 localIdentifier];

          if (!v105)
          {
LABEL_171:
            v114 = [v98 remoteIdentifier];

            if (!v114)
            {
              goto LABEL_182;
            }

            v115 = [v98 remoteIdentifier];
            v116 = [NEIKEv2Helper getIdentifierType:v115];

            v117 = [v98 remoteIdentifier];
            v118 = v117;
            if (v116 == 5)
            {
              v119 = NECreateAddressStructFromString(v117, 0, 0);

              if (v119)
              {
                v120 = [MEMORY[0x1E695DEF0] dataWithBytes:v119 + 8 length:16];
                goto LABEL_178;
              }
            }

            else
            {
              if (v116 != 1)
              {
                v121 = [(__CFString *)v117 dataUsingEncoding:4];

                goto LABEL_181;
              }

              v119 = NECreateAddressStructFromString(v117, 0, 0);

              if (v119)
              {
                v120 = [MEMORY[0x1E695DEF0] dataWithBytes:v119 + 4 length:4];
LABEL_178:
                v121 = v120;
                free(v119);
LABEL_181:
                v122 = [NEIKEv2Identifier createIdentifierWithType:v116 data:v121];
                [(NEIKEv2SessionConfiguration *)v100 setRemoteIdentifier:v122];

LABEL_182:
                v123 = [v98 authenticationMethod];
                if (v123 == 2)
                {
                  v126 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:2];
                  goto LABEL_191;
                }

                if (v123 != 1)
                {
                  v126 = [[NEIKEv2AuthenticationProtocol alloc] initWithMethod:0];
                  goto LABEL_191;
                }

                v124 = [v98 certificateType];
                v125 = [NEIKEv2AuthenticationProtocol alloc];
                if (v124 > 4)
                {
                  if (v124 == 5)
                  {
                    v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithDigitalSignature:3];
                    goto LABEL_191;
                  }

                  if (v124 != 6)
                  {
                    if (v124 == 7)
                    {
                      v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithDigitalSignature:4];
                      goto LABEL_191;
                    }

                    goto LABEL_253;
                  }

                  v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithMethod:245];
                }

                else
                {
                  if (v124 == 2)
                  {
                    v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithMethod:9];
                    goto LABEL_191;
                  }

                  if (v124 != 3)
                  {
                    if (v124 == 4)
                    {
                      v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithMethod:11];
                      goto LABEL_191;
                    }

LABEL_253:
                    v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithMethod:1];
                    goto LABEL_191;
                  }

                  v126 = [(NEIKEv2AuthenticationProtocol *)v125 initWithMethod:10];
                }

LABEL_191:
                v127 = v126;
                [(NEIKEv2SessionConfiguration *)v100 setAuthenticationProtocol:v126];

                v128 = [(NEIKEv2SessionConfiguration *)v100 authenticationProtocol];
                v129 = [v128 copy];
                [(NEIKEv2SessionConfiguration *)v100 setRemoteAuthentication:v129];

                v130 = [v98 sharedSecretKeychainItem];
                v131 = [v130 persistentReference];
                v132 = v131 == 0;

                if (!v132)
                {
                  v133 = [v98 sharedSecretKeychainItem];
                  v134 = [v133 persistentReference];
                  [(NEIKEv2SessionConfiguration *)v100 setSharedSecretReference:v134];
                }

                v135 = [v98 identityReferenceInternal];
                v136 = v135 == 0;

                if (!v136)
                {
                  v138 = [v98 identityReferenceInternal];
                  [(NEIKEv2SessionConfiguration *)v100 setLocalCertificateReference:v138];
                }

                v139 = objc_getProperty(v98, v137, 96, 1);
                v140 = [v139 keyPersistentReference];
                v141 = v140 == 0;

                if (!v141)
                {
                  v143 = objc_getProperty(v98, v142, 96, 1);
                  v144 = [v143 keyPersistentReference];
                  [(NEIKEv2SessionConfiguration *)v100 setLocalCertificateKeyReference:v144];
                }

                v145 = objc_getProperty(v98, v142, 96, 1);
                -[NEIKEv2SessionConfiguration setLocalCertificateIsModernSystem:](v100, "setLocalCertificateIsModernSystem:", [v145 isModernSystem]);

                if ([v98 natKeepAliveOffloadEnable] == 2)
                {
                  [(NEIKEv2SessionConfiguration *)v100 setNatTraversalKeepaliveOffloadEnabled:1];
                  if ([v98 natKeepAliveOffloadInterval])
                  {
                    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveOffloadInterval:](v100, "setNatTraversalKeepaliveOffloadInterval:", [v98 natKeepAliveOffloadInterval]);
                  }
                }

                if ([v98 deadPeerDetectionRate])
                {
                  v146 = [v98 deadPeerDetectionRate];
                  objc_opt_self();
                  v147 = v146 - 1;
                  if ((v146 - 1) <= 2)
                  {
                    v148 = qword_1BAA4F950[v147];
                    v149 = dword_1BAA4F968[v147];
                    [(NEIKEv2SessionConfiguration *)v100 setDeadPeerDetectionEnabled:1];
                    [(NEIKEv2SessionConfiguration *)v100 setDeadPeerDetectionMaxRetryCount:v149];
                    [(NEIKEv2SessionConfiguration *)v100 setDeadPeerDetectionRetryIntervalMilliseconds:1000];
                    [(NEIKEv2SessionConfiguration *)v100 setDeadPeerDetectionInterval:v148];
                  }
                }

                if ([v98 disconnectOnIdle] && objc_msgSend(v98, "disconnectOnIdleTimeout"))
                {
                  [(NEIKEv2SessionConfiguration *)v100 setIdleTimeoutEnabled:1];
                  v150 = [v98 disconnectOnIdleTimeout];
                }

                else
                {
                  if ((v97 & 1) == 0 && [v98 tunnelKind] != 2)
                  {
LABEL_212:
                    if (([v98 disableMOBIKE] & 1) == 0)
                    {
                      [(NEIKEv2SessionConfiguration *)v100 setNegotiateMOBIKE:1];
                    }

                    if ([v98 enableRevocationCheck])
                    {
                      [(NEIKEv2SessionConfiguration *)v100 setEnableCertificateRevocationCheck:1];
                      if ([v98 strictRevocationCheck])
                      {
                        [(NEIKEv2SessionConfiguration *)v100 setStrictCertificateRevocationCheck:1];
                      }
                    }

                    v152 = [v99 objectForKeyedSubscript:@"AccountName"];
                    v153 = v152 == 0;

                    if (v153)
                    {
                      v155 = [v98 username];
                      v156 = v155 == 0;

                      if (v156)
                      {
                        goto LABEL_222;
                      }

                      v154 = [v98 username];
                    }

                    else
                    {
                      v154 = [v99 objectForKeyedSubscript:@"AccountName"];
                    }

                    v157 = v154;
                    [(NEIKEv2SessionConfiguration *)v100 setUsername:v154];

LABEL_222:
                    v158 = [v99 objectForKeyedSubscript:@"Password"];
                    v159 = v158 == 0;

                    if (v159)
                    {
                      v199 = [v98 passwordKeychainItem];
                      if (!v199)
                      {
                        goto LABEL_225;
                      }

                      v200 = [v98 passwordKeychainItem];
                      v201 = [v200 persistentReference];
                      v202 = v201 == 0;

                      if (v202)
                      {
                        goto LABEL_225;
                      }

                      v160 = [v98 passwordKeychainItem];
                      v203 = [v160 persistentReference];
                      [(NEIKEv2SessionConfiguration *)v100 setPasswordReference:v203];
                    }

                    else
                    {
                      v160 = [v99 objectForKeyedSubscript:@"Password"];
                      [(NEIKEv2SessionConfiguration *)v100 setPassword:v160];
                    }

LABEL_225:
                    v161 = [v98 serverCertificateCommonName];
                    v162 = v161 == 0;

                    if (!v162)
                    {
                      v163 = [v98 serverCertificateCommonName];
                      [(NEIKEv2SessionConfiguration *)v100 setRemoteCertificateHostname:v163];
                    }

                    v164 = [v98 serverCertificateIssuerCommonName];
                    v165 = v164 == 0;

                    if (!v165)
                    {
                      v166 = [v98 serverCertificateIssuerCommonName];
                      [(NEIKEv2SessionConfiguration *)v100 setRemoteCertificateAuthorityName:v166];
                    }

                    if ([v98 disableInitialContact])
                    {
                      [(NEIKEv2SessionConfiguration *)v100 setInitialContactDisabled:1];
                    }

                    v167 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v168 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv4AddressAttribute alloc] initEmptyRequest];
                    [v167 addObject:v168];

                    if ([v98 useConfigurationAttributeInternalIPSubnet])
                    {
                      v169 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv4SubnetAttribute alloc] initEmptyRequest];
                      [v167 addObject:v169];
                    }

                    v170 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv4NetmaskAttribute alloc] initEmptyRequest];
                    [v167 addObject:v170];

                    v171 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv4DHCPAttribute alloc] initEmptyRequest];
                    [v167 addObject:v171];

                    v172 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv4DNSAttribute alloc] initEmptyRequest];
                    [v167 addObject:v172];

                    v173 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv6AddressAttribute alloc] initEmptyRequest];
                    [v167 addObject:v173];

                    if ([v98 useConfigurationAttributeInternalIPSubnet])
                    {
                      v174 = [[NEIKEv2IPv6SubnetAttribute alloc] initEmptyRequest];
                      [v167 addObject:v174];
                    }

                    v175 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv6DHCPAttribute alloc] initEmptyRequest];
                    [v167 addObject:v175];

                    v176 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2IPv6DNSAttribute alloc] initEmptyRequest];
                    [v167 addObject:v176];

                    v177 = [(NEIKEv2ConfigurationAttribute *)[NEIKEv2DNSDomainAttribute alloc] initEmptyRequest];
                    [v167 addObject:v177];

                    v178 = objc_alloc_init(NEIKEv2ConfigurationMessage);
                    v180 = v178;
                    if (v178)
                    {
                      v178->_configurationType = 1;
                      objc_setProperty_atomic(v178, v179, v167, 16);
                    }

                    [(NEIKEv2SessionConfiguration *)v100 setConfigurationRequest:v180];
                    v181 = [v98 ppkConfiguration];
                    v183 = v181;
                    if (v181)
                    {
                      v184 = objc_getProperty(v181, v182, 32, 1);
                    }

                    else
                    {
                      v184 = 0;
                    }

                    v185 = v184;
                    v186 = [v185 persistentReference];
                    v187 = v186 == 0;

                    if (!v187)
                    {
                      v188 = [v98 ppkConfiguration];
                      v190 = v188;
                      if (v188)
                      {
                        v191 = objc_getProperty(v188, v189, 32, 1);
                      }

                      else
                      {
                        v191 = 0;
                      }

                      v192 = v191;
                      v193 = [v192 persistentReference];
                      [(NEIKEv2SessionConfiguration *)v100 setPpkReference:v193];

                      v194 = [v98 ppkConfiguration];
                      v195 = [v194 identifier];
                      v196 = [v195 dataUsingEncoding:4];
                      [(NEIKEv2SessionConfiguration *)v100 setPpkID:v196];

                      [(NEIKEv2SessionConfiguration *)v100 setPpkIDType:2];
                      v197 = [v98 ppkConfiguration];
                      -[NEIKEv2SessionConfiguration setPpkMandatory:](v100, "setPpkMandatory:", [v197 isMandatory]);
                    }

                    objc_opt_self();
                    v198 = v100;

                    v102 = v198;
                    goto LABEL_260;
                  }

                  v151 = ne_log_obj();
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1BA83C000, v151, OS_LOG_TYPE_INFO, "setting idle timeout", buf, 2u);
                  }

                  [(NEIKEv2SessionConfiguration *)v100 setIdleTimeoutEnabled:1];
                  v150 = 120;
                }

                [(NEIKEv2SessionConfiguration *)v100 setIdleTimeoutSeconds:v150];
                goto LABEL_212;
              }
            }

            v121 = 0;
            goto LABEL_181;
          }

          v106 = [v98 localIdentifier];
          v107 = [NEIKEv2Helper getIdentifierType:v106];

          v108 = [v98 localIdentifier];
          v109 = v108;
          if (v107 == 5)
          {
            v110 = NECreateAddressStructFromString(v108, 0, 0);

            if (v110)
            {
              v111 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v110 + 8 length:16];
              goto LABEL_167;
            }
          }

          else
          {
            if (v107 != 1)
            {
              v112 = [(__CFString *)v108 dataUsingEncoding:4];

              goto LABEL_170;
            }

            v110 = NECreateAddressStructFromString(v108, 0, 0);

            if (v110)
            {
              v111 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v110 + 4 length:4];
LABEL_167:
              v112 = v111;
              free(v110);
LABEL_170:
              v113 = [NEIKEv2Identifier createIdentifierWithType:v107 data:v112];
              [(NEIKEv2SessionConfiguration *)v100 setLocalIdentifier:v113];

              goto LABEL_171;
            }
          }

          v112 = 0;
          goto LABEL_170;
        }
      }

      v198 = ne_log_obj();
      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v198, OS_LOG_TYPE_ERROR, "createIKEv2SessionConfigFromProtocol: null protocol", buf, 2u);
      }

      v102 = 0;
LABEL_260:

      if (v102)
      {
        v204 = ne_log_large_obj();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = v102;
          _os_log_debug_impl(&dword_1BA83C000, v204, OS_LOG_TYPE_DEBUG, "%@: sessionConfig %@", buf, 0x16u);
        }

        Socket = NEIKEv2PacketTunnelProviderGetSocket(a1, 0, 0, 0, 0);
        if ((Socket & 0x80000000) == 0)
        {
          v206 = [[NEIPSecSAKernelSession alloc] initWithName:@"IKEv2 Session Database" delegate:0 pfkeySocket:Socket];
          if (v206)
          {
            objc_initWeak(&location, a1);
            v207 = [NEIKEv2Session alloc];
            v208 = *(a1 + 264);
            v209 = *(a1 + 120);
            v253[0] = MEMORY[0x1E69E9820];
            v253[1] = 3221225472;
            v253[2] = __44__NEIKEv2PacketTunnelProvider_tunnelBringup__block_invoke;
            v253[3] = &unk_1E7F08790;
            objc_copyWeak(&v254, &location);
            v210 = [(NEIKEv2Session *)v207 initWithIKEConfig:oslog firstChildConfig:v80 sessionConfig:v102 queue:v208 ipsecInterface:v209 ikeSocketHandler:v253 saSession:v206 packetDelegate:0];
            objc_setProperty_atomic(a1, v211, v210, 240);

            if (!objc_getProperty(a1, v212, 240, 1))
            {
              v239 = ne_log_obj();
              if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = a1;
                _os_log_error_impl(&dword_1BA83C000, v239, OS_LOG_TYPE_ERROR, "%@: Could not create session", buf, 0xCu);
              }

              v20 = 10;
              goto LABEL_301;
            }

            v213 = ne_log_obj();
            if (os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
            {
              v215 = objc_getProperty(a1, v214, 240, 1);
              *buf = 138412546;
              *&buf[4] = a1;
              *&buf[12] = 2112;
              *&buf[14] = v215;
              _os_log_impl(&dword_1BA83C000, v213, OS_LOG_TYPE_INFO, "%@: Created session (%@)", buf, 0x16u);
            }

            v217 = objc_getProperty(a1, v216, 240, 1);
            [v217 setClientCallbackInfo:a1];

            v218 = *(a1 + 264);
            v220 = objc_getProperty(a1, v219, 240, 1);
            [v220 setClientQueue:v218];

            objc_initWeak(&from, a1);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke;
            v280 = &unk_1E7F08768;
            objc_copyWeak(v282, &from);
            v281 = a1;
            [*(a1 + 240) setStateUpdateBlock:buf];
            v277[0] = MEMORY[0x1E69E9820];
            v277[1] = 3221225472;
            v277[2] = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_132;
            v277[3] = &unk_1E7F09358;
            objc_copyWeak(v278, &from);
            [*(a1 + 240) setChildStateUpdateBlock:v277];
            *&v260 = MEMORY[0x1E69E9820];
            *(&v260 + 1) = 3221225472;
            *&v261 = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_135;
            *(&v261 + 1) = &unk_1E7F09380;
            objc_copyWeak(&v262, &from);
            [*(a1 + 240) setConfigurationUpdateBlock:&v260];
            *&v256 = MEMORY[0x1E69E9820];
            *(&v256 + 1) = 3221225472;
            *&v257 = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_137;
            *(&v257 + 1) = &unk_1E7F093A8;
            objc_copyWeak(&v258, &from);
            [*(a1 + 240) setTrafficSelectorUpdateBlock:&v256];
            *v271 = MEMORY[0x1E69E9820];
            v272 = 3221225472;
            v273 = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_139;
            v274 = &unk_1E7F0ABE0;
            objc_copyWeak(&v275, &from);
            [*(a1 + 240) setAdditionalAddressesUpdateBlock:v271];
            *v266 = MEMORY[0x1E69E9820];
            v267 = 3221225472;
            v268 = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_141;
            v269 = &unk_1E7F0AA58;
            objc_copyWeak(v270, &from);
            [*(a1 + 240) setShortDPDEventBlock:v266];
            v264[0] = MEMORY[0x1E69E9820];
            v264[1] = 3221225472;
            v264[2] = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_142;
            v264[3] = &unk_1E7F093D0;
            objc_copyWeak(&v265, &from);
            [*(a1 + 240) setRedirectEventBlock:v264];
            objc_destroyWeak(&v265);
            objc_destroyWeak(v270);
            objc_destroyWeak(&v275);
            objc_destroyWeak(&v258);
            objc_destroyWeak(&v262);
            objc_destroyWeak(v278);
            objc_destroyWeak(v282);
            objc_destroyWeak(&from);
            v222 = objc_getProperty(a1, v221, 240, 1);
            [v222 connect];

            v224 = objc_getProperty(a1, v223, 240, 1);
            v226 = [(NEIKEv2Session *)v224 firstChildSA];
            if (v226)
            {
              v227 = v226[4] == 0;

              if (!v227)
              {
                v228 = ne_log_obj();
                if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
                {
                  v230 = objc_getProperty(a1, v229, 240, 1);
                  v232 = [(NEIKEv2Session *)v230 firstChildSA];
                  v233 = v232;
                  if (v232)
                  {
                    v234 = *(v232 + 16);
                  }

                  else
                  {
                    v234 = 0;
                  }

                  *buf = 138412546;
                  *&buf[4] = a1;
                  *&buf[12] = 1024;
                  *&buf[14] = v234;
                  _os_log_impl(&dword_1BA83C000, v228, OS_LOG_TYPE_INFO, "%@: Started Child Connection %X", buf, 0x12u);
                }

                v235 = [a1 protocolConfiguration];
                v236 = [v235 disableRedirect];

                if ((v236 & 1) == 0)
                {
                  v238 = objc_getProperty(a1, v237, 128, 1);
                  [(NEIKEv2Server *)v238 startRedirectTimer];
                }

                v239 = ne_log_obj();
                if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = a1;
                  _os_log_impl(&dword_1BA83C000, v239, OS_LOG_TYPE_DEFAULT, "%@ tunnel bringup requested", buf, 0xCu);
                }

                v20 = 0;
LABEL_301:

                objc_destroyWeak(&v254);
                objc_destroyWeak(&location);
                goto LABEL_302;
              }
            }

            else
            {
            }

            v239 = ne_log_obj();
            if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = a1;
              _os_log_error_impl(&dword_1BA83C000, v239, OS_LOG_TYPE_ERROR, "%@: Could not start child", buf, 0xCu);
            }

            v20 = 7;
            goto LABEL_301;
          }

          v241 = ne_log_obj();
          if (os_log_type_enabled(v241, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            *&buf[4] = Socket;
            _os_log_fault_impl(&dword_1BA83C000, v241, OS_LOG_TYPE_FAULT, "[NEIPSecSAKernelSession init pfkeySocket=%d] failed", buf, 8u);
          }

          v206 = 0;
LABEL_287:
          v20 = 10;
LABEL_302:

LABEL_303:
LABEL_304:

LABEL_305:
          goto LABEL_306;
        }

        v206 = ne_log_obj();
        if (!os_log_type_enabled(&v206->super.super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_287;
        }

        *buf = 138412290;
        *&buf[4] = a1;
        v240 = "%@ failed to get pfkey socket";
      }

      else
      {
        v206 = ne_log_obj();
        if (!os_log_type_enabled(&v206->super.super, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_287;
        }

        *buf = 138412290;
        *&buf[4] = a1;
        v240 = "%@: failed to create sessionConfig";
      }

      _os_log_error_impl(&dword_1BA83C000, &v206->super.super, OS_LOG_TYPE_ERROR, v240, buf, 0xCu);
      goto LABEL_287;
    }

    log = objc_alloc_init(NEIKEv2IKESAConfiguration);
    if (v7 && if_indextoname(v7, buf))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
      [(NEIKEv2IKESAConfiguration *)log setOutgoingInterfaceName:v15];
    }

    if ([v13 tunnelKind] == 2)
    {
      [(NEIKEv2IKESAConfiguration *)log setRandomizeLocalPort:1];
    }

    v17 = v14;
    if (v14)
    {
      if (objc_getProperty(v14, v16, 56, 1))
      {
        v19 = [objc_getProperty(v14 v18];
        v244 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "intValue")}];
      }

      else
      {
        v244 = 0;
      }

      v17 = v14;
    }

    else
    {
      v244 = 0;
    }

    v21 = [(NEIKEv2Server *)v17 getViableServerAddressForPath:v245];
    v22 = NECreateAddressStructFromString(v21, v244, 0);
    if (!v22)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v245;
        _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "no viable server address found for path %@", buf, 0xCu);
      }

      oslog = 0;
      goto LABEL_79;
    }

    v23 = v22;
    v24 = [MEMORY[0x1E6977E08] endpointWithAddress:v22];
    [(NEIKEv2IKESAConfiguration *)log setRemoteEndpoint:v24];

    free(v23);
    if (([v13 disableRedirect] & 1) == 0)
    {
      if (v14 && objc_getProperty(v14, v25, 32, 1))
      {
        v27 = objc_getProperty(v14, v26, 32, 1);
        v28 = NECreateAddressStructFromString(v27, 0, 0);
        if (v28)
        {
          v29 = v28;
          v30 = [MEMORY[0x1E6977E08] endpointWithAddress:v28];
          [(NEIKEv2IKESAConfiguration *)log setRedirectedFromServer:v30];

          free(v29);
        }
      }

      else
      {
        [(NEIKEv2IKESAConfiguration *)log setAllowRedirect:1];
      }
    }

    *v271 = 0;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = [v13 IKESecurityAssociationParametersArray];
    v34 = [v33 count] == 0;

    if (v34)
    {
      v40 = [v13 IKESecurityAssociationParameters];
      v35 = [NEIKEv2Helper createIKESAProposalFromProtocol:v13 saParameters:v40 options:v251 nonceSize:v271];

      if (v35)
      {
        [v32 addObject:v35];
      }
    }

    else
    {
      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v35 = [v13 IKESecurityAssociationParametersArray];
      v36 = [v35 countByEnumeratingWithState:&v260 objects:buf count:16];
      if (v36)
      {
        v37 = *v261;
        do
        {
          for (k = 0; k != v36; ++k)
          {
            if (*v261 != v37)
            {
              objc_enumerationMutation(v35);
            }

            v39 = [NEIKEv2Helper createIKESAProposalFromProtocol:v13 saParameters:*(*(&v260 + 1) + 8 * k) options:v251 nonceSize:v271];
            if (v39)
            {
              [v32 addObject:v39];
            }
          }

          v36 = [v35 countByEnumeratingWithState:&v260 objects:buf count:16];
        }

        while (v36);
      }
    }

    if ([v13 allowPostQuantumKeyExchangeFallback])
    {
      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v41 = v32;
      v42 = [v41 countByEnumeratingWithState:&v256 objects:v277 count:16];
      if (v42)
      {
        v43 = 0;
        v44 = *v257;
        do
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v257 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v256 + 1) + 8 * m);
            v47 = [v46 additionalKEMProtocols];
            v48 = v47 == 0;

            if (!v48)
            {
              v49 = [v46 copy];
              [v49 setAdditionalKEMProtocols:0];
              if (([v41 containsObject:v49] & 1) == 0 && (objc_msgSend(v43, "containsObject:", v49) & 1) == 0)
              {
                if (!v43)
                {
                  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v43 addObject:v49];
              }
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v256 objects:v277 count:16];
        }

        while (v42);

        if (!v43)
        {
          goto LABEL_66;
        }

        [v41 addObjectsFromArray:v43];
      }

      else
      {
        v43 = v41;
      }
    }

LABEL_66:
    if ([v32 count])
    {
      [(NEIKEv2IKESAConfiguration *)log setNonceSize:*v271];
      [(NEIKEv2IKESAConfiguration *)log setStrictNonceSizeChecks:1];
      v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v32];
      [(NEIKEv2IKESAConfiguration *)log setProposals:v50];

      v51 = [v13 ppkConfiguration];
      v53 = v51;
      if (v51)
      {
        v54 = objc_getProperty(v51, v52, 32, 1);
      }

      else
      {
        v54 = 0;
      }

      v55 = v54;
      v56 = [v55 persistentReference];
      v57 = v56 == 0;

      if (!v57)
      {
        [(NEIKEv2IKESAConfiguration *)log setRequestPPK:1];
      }

      if ([v13 mtu] >= 0x3E8 && objc_msgSend(v13, "mtu") <= 0x5DC)
      {
        -[NEIKEv2IKESAConfiguration setMaximumPacketSize:](log, "setMaximumPacketSize:", [v13 mtu]);
      }

      objc_opt_self();
      oslog = log;
    }

    else
    {
      v58 = ne_log_obj();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *v266 = 0;
        _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, "empty ike proposals array", v266, 2u);
      }

      oslog = 0;
    }

LABEL_79:
    goto LABEL_80;
  }

  v20 = 0;
LABEL_306:
  v242 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __44__NEIKEv2PacketTunnelProvider_tunnelBringup__block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5)
{
  v100 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3)
    {
      v88 = [MEMORY[0x1E6977E08] endpointWithAddress:a3];
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v88 = 0;
      if (a4)
      {
LABEL_4:
        v86 = [MEMORY[0x1E6977E08] endpointWithAddress:a4];
        if (a5)
        {
LABEL_5:
          v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
          goto LABEL_10;
        }

LABEL_9:
        v87 = 0;
LABEL_10:
        Property = objc_getProperty(WeakRetained, v8, 128, 1);
        if (Property)
        {
          Property = objc_getProperty(Property, v11, 56, 1);
        }

        v12 = Property;

        if (!v12)
        {
          Socket = NEIKEv2PacketTunnelProviderGetSocket(WeakRetained, 1, a3, a4, a5);
          goto LABEL_76;
        }

        if (!v88)
        {
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = WeakRetained;
            _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%@: No local endpoint for proxy path", buf, 0xCu);
          }

          Socket = -1;
          goto LABEL_78;
        }

        v13 = [v88 port];
        v15 = objc_getProperty(WeakRetained, v14, 128, 1);
        if (!v15 || (v15[8] & 1) == 0)
        {
          Socket = -1;
LABEL_75:

LABEL_76:
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413314;
            *&buf[4] = WeakRetained;
            *&buf[12] = 1024;
            *&buf[14] = Socket;
            *&buf[18] = 2112;
            *&buf[20] = v88;
            v96 = 2112;
            v97 = v86;
            v98 = 2112;
            v99 = v87;
            _os_log_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEFAULT, "%@: got socket (%d) for local %@ remote %@ interface %@", buf, 0x30u);
          }

LABEL_78:

          goto LABEL_79;
        }

        v17 = objc_getProperty(WeakRetained, v16, 128, 1);
        if (v17)
        {
          v17 = objc_getProperty(v17, v18, 16, 1);
        }

        v82 = v13;
        v83 = v17;
        v19 = [MEMORY[0x1E6977E28] endpointWithHostname:? port:?];
        v20 = dispatch_semaphore_create(0);
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = WeakRetained;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEFAULT, "%@: setting up companion proxy datapath to %@", buf, 0x16u);
        }

        [(NEIKEv2PacketTunnelProvider *)WeakRetained invalidateCompanionProxyDatapath];
        v23 = [NEIKEv2CompanionDatapath alloc];
        v84 = v19;
        dsema = v20;
        objc_initWeak(location, WeakRetained);
        if (v23)
        {
          *buf = v23;
          *&buf[8] = NEIKEv2CompanionDatapath;
          v24 = objc_msgSendSuper2(buf, sel_init);
          if (v24)
          {
            if (NEIKEv2CompanionDatapathCopyQueue_onceToken != -1)
            {
              dispatch_once(&NEIKEv2CompanionDatapathCopyQueue_onceToken, &__block_literal_global_323);
            }

            objc_storeStrong(v24 + 9, NEIKEv2CompanionDatapathCopyQueue_queue);
            v24[2] = atomic_fetch_add_explicit(&initWithRemoteEndpoint_completionSemaphore_provider__sNEIKEv2CmpnDatapathID, 1uLL, memory_order_relaxed);
            *(v24 + 3) = 0;
            objc_storeStrong(v24 + 7, v19);
            v25 = MEMORY[0x1E6977E28];
            v26 = v24[7];
            v27 = [v26 port];
            v28 = [v25 endpointWithHostname:@"::" port:v27];
            v29 = v24[8];
            v24[8] = v28;

            objc_storeStrong(v24 + 10, v20);
            v30 = objc_loadWeakRetained(location);
            objc_storeWeak(v24 + 11, v30);
          }

          else
          {
            v30 = ne_log_obj();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              *v94 = 0;
              _os_log_fault_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_FAULT, "[super init] failed", v94, 2u);
            }

            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        objc_destroyWeak(location);

        objc_setProperty_atomic(WeakRetained, v31, v24, 232);
        v33 = objc_getProperty(WeakRetained, v32, 232, 1);
        v34 = v33;
        if (v33)
        {
          os_unfair_lock_lock(v33 + 3);
          if (*(v34 + 56))
          {
            if (!*(v34 + 9))
            {
              *(v34 + 9) = 1;
              [(NEIKEv2CompanionDatapath *)v34 setupConnectionLocked];
            }
          }

          else
          {
            v36 = ne_log_obj();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_FAULT, "invalid remote endpoint", buf, 2u);
            }
          }

          os_unfair_lock_unlock((v34 + 12));
        }

        v37 = dispatch_time(0x8000000000000000, 10000000000);
        if (dispatch_semaphore_wait(dsema, v37))
        {
          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v80 = objc_getProperty(WeakRetained, v40, 232, 1);
            *buf = 138412546;
            *&buf[4] = WeakRetained;
            *&buf[12] = 2112;
            *&buf[14] = v80;
            _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@: timed out waiting for socket from %@", buf, 0x16u);
          }

          Socket = -1;
LABEL_74:

          v13 = v82;
          goto LABEL_75;
        }

        v41 = objc_getProperty(WeakRetained, v38, 232, 1);
        v43 = v41;
        if (v41)
        {
          os_unfair_lock_lock(v41 + 3);
          if (BYTE1(v43[2]._os_unfair_lock_opaque) == 2)
          {
            v44 = *&v43[8]._os_unfair_lock_opaque;
            connected_socket = nw_connection_get_connected_socket();
            Socket = dup(connected_socket);
            os_unfair_lock_unlock(v43 + 3);
            if ((Socket & 0x80000000) == 0)
            {
LABEL_46:
              v46 = objc_getProperty(WeakRetained, v42, 232, 1);
              v48 = v46;
              if (v46)
              {
                os_unfair_lock_lock(v46 + 3);
                v49 = *&v48[10]._os_unfair_lock_opaque;
                v50 = v49;
                if (BYTE1(v48[2]._os_unfair_lock_opaque) == 3)
                {

                  v50 = 0;
                }

                os_unfair_lock_unlock(v48 + 3);
              }

              else
              {
                v50 = 0;
              }

              v51 = objc_getProperty(WeakRetained, v47, 128, 1);
              if (v51)
              {
                objc_setProperty_atomic(v51, v52, v50, 64);
              }

              v54 = objc_getProperty(WeakRetained, v53, 128, 1);
              v56 = objc_getProperty(WeakRetained, v55, 128, 1);
              if (v56)
              {
                v56 = objc_getProperty(v56, v57, 64, 1);
              }

              v58 = v56;
              v60 = objc_getProperty(WeakRetained, v59, 208, 1);
              [(NEIKEv2Server *)v54 setServerResolvedAddress:v58 path:v60];

              v62 = objc_getProperty(WeakRetained, v61, 232, 1);
              v63 = v62;
              if (v62)
              {
                os_unfair_lock_lock(v62 + 3);
                v64 = *&v63[12]._os_unfair_lock_opaque;
                v39 = v64;
                if (BYTE1(v63[2]._os_unfair_lock_opaque) == 3)
                {

                  v39 = 0;
                }

                os_unfair_lock_unlock(v63 + 3);
              }

              else
              {
                v39 = 0;
              }

              if ([v39 count])
              {
                v92 = 0u;
                v93 = 0u;
                *location = 0u;
                v91 = 0u;
                v39 = v39;
                v66 = [v39 countByEnumeratingWithState:location objects:buf count:16];
                if (v66)
                {
                  v67 = *v91;
                  do
                  {
                    for (i = 0; i != v66; ++i)
                    {
                      if (*v91 != v67)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v69 = *(location[1] + i);
                      v70 = objc_getProperty(WeakRetained, v65, 128, 1);
                      if (v70)
                      {
                        v70 = objc_getProperty(v70, v71, 64, 1);
                      }

                      v72 = v70;
                      v73 = [v69 isEqualToString:v72];

                      if ((v73 & 1) == 0)
                      {
                        v74 = objc_getProperty(WeakRetained, v65, 128, 1);
                        v76 = objc_getProperty(WeakRetained, v75, 208, 1);
                        [(NEIKEv2Server *)v74 setServerResolvedAddress:v69 path:v76];
                      }
                    }

                    v66 = [v39 countByEnumeratingWithState:location objects:buf count:16];
                  }

                  while (v66);
                }
              }

              goto LABEL_74;
            }
          }

          else
          {
            os_unfair_lock_unlock(v43 + 3);
            Socket = -1;
          }

          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v81 = objc_getProperty(WeakRetained, v77, 232, 1);
            *buf = 138412546;
            *&buf[4] = WeakRetained;
            *&buf[12] = 2112;
            *&buf[14] = v81;
            _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@: invalid socket from %@", buf, 0x16u);
          }

          goto LABEL_74;
        }

        Socket = 0;
        goto LABEL_46;
      }
    }

    v86 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  Socket = -1;
LABEL_79:

  v78 = *MEMORY[0x1E69E9840];
  return Socket;
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = ne_log_obj();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (WeakRetained)
  {
    if (v8)
    {
      *buf = 138412546;
      *&buf[4] = WeakRetained;
      *&buf[12] = 1024;
      *&buf[14] = objc_getProperty(WeakRetained, v9, 240, 1);
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: stateUpdateBlock callback: session (%X)", buf, 0x12u);
    }

    if (a2 == 2)
    {
      [(NEIKEv2PacketTunnelProvider *)WeakRetained setInterfaceAvailability];
      [(NEIKEv2PacketTunnelProvider *)WeakRetained watchIKESocketChange];
      if ((*(WeakRetained + 21) & 1) == 0)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = WeakRetained;
          _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_INFO, "%@: stateUpdateBlock callback: got IKE Connected", buf, 0xCu);
        }

        *(WeakRetained + 21) |= 1u;
        [(NEIKEv2PacketTunnelProvider *)WeakRetained startRekeyTimer:?];
        NEIKEv2PacketTunnelHandleConnected(WeakRetained);
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_46;
      }

      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = WeakRetained;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@: stateUpdateBlock callback: got IKE Disconnected (%@)", buf, 0x16u);
      }

      v11 = *(a1 + 32);
      v12 = &OBJC_IVAR___NEFilterFlow__direction;
      if (v11 && (*(v11 + 78) & 1) != 0)
      {
        goto LABEL_43;
      }

      [v5 code];
      v13 = [v5 code];
      v14 = objc_alloc_init(MEMORY[0x1E696AEC0]);
      v16 = [objc_getProperty(WeakRetained v15];
      v17 = [v16 type];

      if (v17 <= 4)
      {
        v18 = off_1E7F08908[v17];

        v14 = v18;
      }

      v19 = objc_alloc_init(MEMORY[0x1E696AEC0]);
      v12 = &OBJC_IVAR___NEFilterFlow__direction;
      v20 = (v13 - 3) > 0xA ? @"PluginFailed" : off_1E7F08930[v13 - 3];

      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __64__NEIKEv2PacketTunnelProvider_sendAnalyticsWithDisconnectError___block_invoke;
      v43 = &unk_1E7F088A0;
      v44 = WeakRetained;
      v45 = v14;
      v46 = v20;
      v23 = v14;
      AnalyticsSendEventLazy();

      v25 = *(a1 + 32);
      if (v25)
      {
        if (*(v25 + 78))
        {
          goto LABEL_43;
        }
      }

      if (WeakRetained[77])
      {
        goto LABEL_43;
      }

      if ([(NEIKEv2PacketTunnelProvider *)WeakRetained tryAlternateServerAddresses])
      {
        goto LABEL_46;
      }

      v26 = v5;
      v27 = v26;
      if (*(WeakRetained + 28))
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = WeakRetained;
          _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEFAULT, "%@: Random Port Fallback counter exceeded max retry count", buf, 0xCu);
        }

        goto LABEL_42;
      }

      if ((WeakRetained[78] & 1) != 0 || [v26 code] != 3)
      {
LABEL_42:

LABEL_43:
        WeakRetained[v12[654]] = 1;
        v37 = ne_log_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = WeakRetained;
          *&buf[12] = 2048;
          *&buf[14] = 14;
          _os_log_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_DEFAULT, "%@: stopping tunnel since IKE disconnected %ld", buf, 0x16u);
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_130;
        v39[3] = &unk_1E7F0A0E8;
        v40 = WeakRetained;
        v41 = v5;
        [(NEIKEv2PacketTunnelProvider *)v40 stopIKEv2TunnelWithReason:v39 completionHandler:?];

        goto LABEL_46;
      }

      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = WeakRetained;
        _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEFAULT, "%@: Random Port Fallback is enabled, bringing up tunnel with random local port", buf, 0xCu);
      }

      ++*(WeakRetained + 28);
      Property = objc_getProperty(WeakRetained, v30, 128, 1);
      if (Property)
      {
        v33 = objc_getProperty(Property, v32, 24, 1);
        if (v33)
        {
          v33[3] = 0;
          v33[4] = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = [(NEIKEv2PacketTunnelProvider *)WeakRetained tunnelBringup];
      if (v34)
      {
        v35 = v34;
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = WeakRetained;
          *&buf[12] = 1024;
          *&buf[14] = v35;
          _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "%@: Random Port Fallback failed to bringup tunnel, error %d", buf, 0x12u);
        }

        [(NEIKEv2PacketTunnelProvider *)WeakRetained invokeCancelTunnel:v35];
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "stateUpdateBlock callback: provider is nil", buf, 2u);
    }
  }

LABEL_46:

  v38 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_132(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  *&v37[5] = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 && ((v11 = objc_getProperty(WeakRetained, v9, 240, 1), [(NEIKEv2Session *)v11 firstChildSA], (v13 = objc_claimAutoreleasedReturnValue()) == 0) ? (v14 = 0) : (v14 = v13[4]), v13, v14 != a2))
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        Property = objc_getProperty(v10, v22, 240, 1);
        v25 = [(NEIKEv2Session *)Property firstChildSA];
        v26 = v25;
        if (v25)
        {
          v27 = *(v25 + 16);
        }

        else
        {
          v27 = 0;
        }

        *buf = 138412802;
        v35 = v10;
        v36 = 1024;
        *v37 = a2;
        v37[2] = 1024;
        *&v37[3] = v27;
        _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "%@: childStateUpdateBlock callback: childID (%X) mismatched provider childID (%X)", buf, 0x18u);
      }
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v35 = v10;
        v36 = 1024;
        *v37 = a2;
        _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_INFO, "%@: childStateUpdateBlock callback: childID (%X)", buf, 0x12u);
      }

      if (a3 == 2)
      {
        [(NEIKEv2PacketTunnelProvider *)v10 setInterfaceAvailability];
        [(NEIKEv2PacketTunnelProvider *)v10 watchIKESocketChange];
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v10;
          _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "%@: childStateUpdateBlock callback: got Child Connected", buf, 0xCu);
        }

        *(v10 + 84) |= 2u;
        [(NEIKEv2PacketTunnelProvider *)v10 startRekeyTimer:?];
        NEIKEv2PacketTunnelHandleConnected(v10);
        *(v10 + 78) = 1;
      }

      else if (a3 == 3)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v35 = v10;
          v36 = 2112;
          *v37 = v7;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "%@: childStateUpdateBlock callback: got Child Disconnected (%@)", buf, 0x16u);
        }

        if ((~*(v10 + 84) & 0xF) == 0 || ![(NEIKEv2PacketTunnelProvider *)v10 tryAlternateServerAddresses])
        {
          *(v10 + 77) = 1;
          v18 = ne_log_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v35 = v10;
            v36 = 2112;
            *v37 = v7;
            _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "%@: stopping tunnel since Child disconnected %@", buf, 0x16u);
          }

          v19 = [v7 code];
          if ((v19 - 3) > 0xC)
          {
            v20 = 3;
          }

          else
          {
            v20 = dword_1BAA4F8F0[v19 - 3];
          }

          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_133;
          v31[3] = &unk_1E7F086C0;
          v32 = v10;
          v33 = v20;
          [(NEIKEv2PacketTunnelProvider *)v32 stopIKEv2TunnelWithReason:v20 completionHandler:v31];
        }
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_135(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = WeakRetained;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: configurationUpdateBlock callback: %@", &v11, 0x16u);
    }

    WeakRetained[21] |= 4u;
    if (v3)
    {
      Property = objc_getProperty(v3, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    objc_setProperty_atomic(WeakRetained, v9, v8, 88);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_137(uint64_t a1, int a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 && ((v12 = objc_getProperty(WeakRetained, v10, 240, 1), [(NEIKEv2Session *)v12 firstChildSA], (v14 = objc_claimAutoreleasedReturnValue()) == 0) ? (v15 = 0) : (v15 = v14[4]), v14, v15 != a2))
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        Property = objc_getProperty(v11, v20, 240, 1);
        v23 = [(NEIKEv2Session *)Property firstChildSA];
        v24 = v23;
        if (v23)
        {
          v25 = *(v23 + 16);
        }

        else
        {
          v25 = 0;
        }

        v27 = 138412802;
        v28 = v11;
        v29 = 1024;
        v30 = a2;
        v31 = 1024;
        LODWORD(v32) = v25;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "%@: trafficSelectorUpdateBlock callback: childID (%X) mismatched provider childID (%X)", &v27, 0x18u);
      }
    }

    else
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v27 = 138413058;
        v28 = v11;
        v29 = 1024;
        v30 = a2;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "%@: trafficSelectorUpdateBlock callback: childID (%X) - localTrafficSelectors %@ remoteTrafficSelectors %@", &v27, 0x26u);
      }

      v11[21] |= 8u;
      objc_setProperty_atomic(v11, v17, v7, 96);
      objc_setProperty_atomic(v11, v18, v8, 104);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_139(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = WeakRetained;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: additionalAddressesUpdateBlock callback: %@", buf, 0x16u);
    }

    v6 = v3;
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = v7;
            if ([v14 addressFamily] != 2)
            {
              v15 = v8;
              if ([v14 addressFamily] != 30)
              {
                continue;
              }
            }

            v16 = [v14 hostname];
            [v15 addObject:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:buf count:16];
        }

        while (v11);
      }

      v17 = [v7 count];
      Property = objc_getProperty(WeakRetained, v18, 128, 1);
      if (Property)
      {
        if (v17)
        {
          v21 = v7;
        }

        else
        {
          v21 = 0;
        }

        objc_setProperty_atomic(Property, v20, v21, 40);
      }

      v22 = [v8 count];
      v24 = objc_getProperty(WeakRetained, v23, 128, 1);
      if (v24)
      {
        if (v22)
        {
          v26 = v8;
        }

        else
        {
          v26 = 0;
        }

        objc_setProperty_atomic(v24, v25, v26, 48);
      }

      v6 = v28;
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v34 = WeakRetained;
        v35 = 2080;
        v36 = "[NEIKEv2PacketTunnelProvider handleAdditionalServerAddressesNotification:]";
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: %s: Empty address array", buf, 0x16u);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_141(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@: shortDPDEventBlock callback:", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_142(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v55 = 138412546;
      *&v55[4] = WeakRetained;
      *&v55[12] = 2112;
      *&v55[14] = v3;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: redirectEventBlock callback: %@", v55, 0x16u);
    }

    v6 = [WeakRetained protocolConfiguration];
    if (v6)
    {
      v7 = v6;
      v8 = [WeakRetained protocolConfiguration];
      v9 = [v8 disableRedirect];

      if (v9)
      {
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v55 = 138412290;
          *&v55[4] = WeakRetained;
          _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@: redirectEventBlock callback: received redirect but redirect is disabled", v55, 0xCu);
        }

        goto LABEL_42;
      }
    }

    v10 = v3;
    if (!v10)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v59 = WeakRetained;
        v60 = 2080;
        v61 = "[NEIKEv2PacketTunnelProvider handleRedirectNotification:]";
        _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_INFO, "%@: %s: No redirectServer received", buf, 0x16u);
      }

      goto LABEL_41;
    }

    Property = objc_getProperty(WeakRetained, v11, 128, 1);
    if (!Property)
    {
LABEL_42:

      [(NEIKEv2PacketTunnelProvider *)WeakRetained invokeCancelTunnel:?];
      goto LABEL_43;
    }

    v14 = Property[3] + 1;
    Property[3] = v14;
    if (v14 >= 6)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Exceeded max redirects in a specific time period", buf, 2u);
      }

LABEL_41:

      goto LABEL_42;
    }

    v16 = objc_getProperty(WeakRetained, v13, 128, 1);
    if (v16)
    {
      v16 = objc_getProperty(v16, v17, 64, 1);
    }

    v15 = v16;
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = WeakRetained;
      _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel due to Server Redirect", buf, 0xCu);
    }

    [(NEIKEv2PacketTunnelProvider *)WeakRetained stopIKEv2TunnelWithReason:0 completionHandler:?];
    v20 = objc_getProperty(WeakRetained, v19, 128, 1);
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 16, 1);
    }

    v22 = v20;
    v24 = objc_getProperty(WeakRetained, v23, 128, 1);
    if (v24)
    {
      objc_setProperty_atomic(v24, v25, v22, 32);
    }

    v27 = objc_getProperty(WeakRetained, v26, 128, 1);
    if (v27)
    {
      v27 = objc_getProperty(v27, v28, 56, 1);
    }

    v29 = v27;

    if (v29)
    {
      v31 = objc_getProperty(WeakRetained, v30, 128, 1);
      if (v31)
      {
        objc_setProperty_atomic(v31, v32, v15, 32);
      }
    }

    v33 = [v10 hostname];
    v35 = objc_getProperty(WeakRetained, v34, 128, 1);
    if (v35)
    {
      objc_setProperty_atomic(v35, v36, v33, 16);
    }

    v38 = objc_getProperty(WeakRetained, v37, 128, 1);
    if (v38)
    {
      v38 = objc_getProperty(v38, v39, 16, 1);
    }

    v40 = v38;

    if (!v40)
    {
      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = WeakRetained;
        _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "%@: Missing redirect information in notification", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v41 = [NEIKEv2MOBIKE alloc];
    v43 = objc_getProperty(WeakRetained, v42, 264, 1);
    v44 = [(NEIKEv2MOBIKE *)&v41->super.isa initWithQueue:v43 tunnelProvider:WeakRetained];
    objc_setProperty_atomic(WeakRetained, v45, v44, 168);

    v47 = objc_getProperty(WeakRetained, v46, 128, 1);
    if (v47)
    {
      objc_setProperty_atomic(v47, v48, 0, 24);
    }

    *v55 = MEMORY[0x1E69E9820];
    *&v55[8] = 3221225472;
    *&v55[16] = __58__NEIKEv2PacketTunnelProvider_handleRedirectNotification___block_invoke;
    v56 = &unk_1E7F08740;
    v57 = WeakRetained;
    [(NEIKEv2PacketTunnelProvider *)WeakRetained resolveServerAddressIfNeeded:v55];
    v49 = *(WeakRetained + 21);
    if ((~v49 & 0xF) == 0)
    {
      [WeakRetained setReasserting:1];
      v49 = *(WeakRetained + 21);
    }

    *(WeakRetained + 21) = v49 & 0xFFFFFFF0;
    v50 = *(WeakRetained + 11);
    *(WeakRetained + 11) = 0;

    v51 = *(WeakRetained + 12);
    *(WeakRetained + 12) = 0;

    v52 = *(WeakRetained + 13);
    *(WeakRetained + 13) = 0;
  }

LABEL_43:

  v54 = *MEMORY[0x1E69E9840];
}

void __58__NEIKEv2PacketTunnelProvider_handleRedirectNotification___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [(NEIKEv2PacketTunnelProvider *)v3 tunnelBringup];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 17;
  }

  [(NEIKEv2PacketTunnelProvider *)v3 invokeCancelTunnel:v5];
}

- (void)resolveServerAddressIfNeeded:(void *)a1
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(NEIKEv2PacketTunnelProvider *)a1 configureProxyPathIfNeeded];
  Property = objc_getProperty(a1, v5, 128, 1);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 56, 1);
  }

  v8 = Property;

  if (v8)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = objc_getProperty(a1, v11, 128, 1);
      if (v12)
      {
        v12 = objc_getProperty(v12, v13, 16, 1);
      }

      v14 = v12;
      v16 = objc_getProperty(a1, v15, 128, 1);
      if (v16)
      {
        v16 = objc_getProperty(v16, v17, 56, 1);
      }

      v18 = v16;
      v68 = 138412802;
      v69 = a1;
      v70 = 2112;
      v71 = v14;
      v72 = 2112;
      v73 = v18;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@: skipping resolution as server %@ uses proxy %@", &v68, 0x20u);
    }

LABEL_19:
    v3[2](v3, 1);
    goto LABEL_20;
  }

  v19 = objc_getProperty(a1, v9, 128, 1);
  if (v19)
  {
    v19 = objc_getProperty(v19, v20, 16, 1);
  }

  v21 = v19;
  v22 = [NEIKEv2Helper getIdentifierType:v21];

  if ((v22 & 3) == 1)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v68 = 138412290;
      v69 = a1;
      _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_INFO, "%@: serverAddress IP address available", &v68, 0xCu);
    }

    v25 = objc_getProperty(a1, v24, 128, 1);
    v27 = objc_getProperty(a1, v26, 128, 1);
    if (v27)
    {
      v27 = objc_getProperty(v27, v28, 16, 1);
    }

    v29 = v27;
    v31 = objc_getProperty(a1, v30, 208, 1);
    [(NEIKEv2Server *)v25 setServerResolvedAddress:v29 path:v31];

    goto LABEL_19;
  }

  v33 = _Block_copy(v3);
  v34 = a1[24];
  a1[24] = v33;

  v35 = MEMORY[0x1E6977E28];
  v37 = objc_getProperty(a1, v36, 128, 1);
  if (v37)
  {
    v37 = objc_getProperty(v37, v38, 16, 1);
  }

  v39 = v37;
  v40 = [v35 endpointWithHostname:v39 port:@"500"];

  if (v40)
  {
    v42 = [objc_getProperty(a1 v41];
    v44 = objc_getProperty(a1, v43, 208, 1);
    if (v42)
    {
      [v44 scopedInterface];
    }

    else
    {
      [v44 interface];
    }
    v47 = ;
    v48 = [v47 interfaceName];

    if (v48)
    {
      v49 = objc_alloc_init(MEMORY[0x1E6977E40]);
      v50 = objc_alloc(MEMORY[0x1E6977E30]);
      v52 = [objc_getProperty(a1 v51];
      v54 = objc_getProperty(a1, v53, 208, 1);
      v55 = v54;
      if (v52)
      {
        [v54 scopedInterface];
      }

      else
      {
        [v54 interface];
      }
      v56 = ;
      v57 = [v56 interfaceName];
      v58 = [v50 initWithInterfaceName:v57];
      [v49 setRequiredInterface:v58];
    }

    else
    {
      v49 = 0;
    }

    [v49 setIgnoreResolverStats:1];
    v59 = ne_log_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v68 = 138412802;
      v69 = a1;
      v70 = 2112;
      v71 = v40;
      v72 = 2112;
      v73 = v49;
      _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEFAULT, "%@: Resolving %@ (%@)", &v68, 0x20u);
    }

    v60 = [objc_alloc(MEMORY[0x1E6977E58]) initWithEndpoint:v40 parameters:v49];
    v61 = a1[17];
    a1[17] = v60;

    v62 = a1[17];
    if (v62)
    {
      v63 = [a1 context];
      [v62 addObserver:v63 forKeyPath:@"resolvedEndpoints" options:5 context:0];
    }

    else
    {
      v64 = ne_log_obj();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v68 = 138412290;
        v69 = a1;
        _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "%@: Failed to create NWResolver", &v68, 0xCu);
      }

      v3[2](v3, 0);
    }
  }

  else
  {
    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v65 = objc_getProperty(a1, v46, 128, 1);
      if (v65)
      {
        v65 = objc_getProperty(v65, v66, 16, 1);
      }

      v67 = v65;
      v68 = 138412546;
      v69 = a1;
      v70 = 2112;
      v71 = v67;
      _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, "%@: Failed to create endpoint for resolution, serverAddress %@", &v68, 0x16u);
    }

    v3[2](v3, 0);
  }

LABEL_20:
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)tryAlternateServerAddresses
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_getProperty(a1, a2, 128, 1);
  Property = objc_getProperty(a1, v4, 208, 1);
  v6 = [(NEIKEv2Server *)v3 getNextViableServerAddressForPath:?];

  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v13 = a1;
      v14 = 2080;
      v15 = "[NEIKEv2PacketTunnelProvider tryAlternateServerAddresses]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: %s: Alternate server address available (%@), connect again", buf, 0x20u);
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = a1;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Stopping tunnel before attempting alternate server address", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__NEIKEv2PacketTunnelProvider_tryAlternateServerAddresses__block_invoke;
    v11[3] = &unk_1E7F0B0E8;
    v11[4] = a1;
    [(NEIKEv2PacketTunnelProvider *)a1 stopIKEv2TunnelWithReason:v11 completionHandler:?];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (void)setInterfaceAvailability
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 120))
  {
    v2 = socket(30, 2, 0);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      v4 = *(a1 + 120);
      if (v4)
      {
        v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v4 + 265), 0x600u);
      }

      else
      {
        v5 = 0;
      }

      v16 = 0u;
      v17 = 0u;
      [(__CFString *)v5 UTF8String];
      __strlcpy_chk();
      LOBYTE(v17) = 4;
      BYTE3(v17) = 0;
      v6 = ioctl(v3, 0xC02069A9uLL, &v16);
      v7 = ne_log_obj();
      v8 = v7;
      if (v6 < 0)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v11 = a1;
          v12 = 2112;
          v13 = v5;
          _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: Failed to set interface availability for %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v11 = a1;
        v12 = 2112;
        v13 = v5;
        v14 = 1024;
        v15 = 0;
        _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Set interface availability on interface %@ to %u (0 implies 'available')", buf, 0x1Cu);
      }

      close(v3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)watchIKESocketChange
{
  v41 = *MEMORY[0x1E69E9840];
  Property = objc_getProperty(a1, a2, 240, 1);
  if (Property)
  {
    v5 = objc_getProperty(Property, v4, 352, 1);
    v7 = v5;
    if (v5)
    {
      v5 = objc_getProperty(v5, v6, 64, 1);
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = v5;

  v10 = objc_getProperty(a1, v9, 240, 1);
  if (v10)
  {
    v12 = objc_getProperty(v10, v11, 352, 1);
    v14 = v12;
    if (v12)
    {
      v12 = objc_getProperty(v12, v13, 72, 1);
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  v15 = v12;

  if (objc_getProperty(a1, v16, 272, 1))
  {
    [objc_getProperty(a1 v17];
    objc_setProperty_atomic(a1, v18, 0, 272);
  }

  if (*(a1 + 248))
  {
    if (v8)
    {
      if (v15)
      {
        if ((*(a1 + 74) & 1) == 0 || (v19 = objc_getProperty(a1, v17, 232, 1), ![(NEIKEv2CompanionDatapath *)v19 connected]))
        {
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v28 = [objc_getProperty(a1 v21];
            v30 = objc_getProperty(a1, v29, 208, 1);
            v31 = v30;
            if (v28)
            {
              [v30 scopedInterface];
            }

            else
            {
              [v30 interface];
            }
            v32 = ;
            v33 = 136315906;
            v34 = "[NEIKEv2PacketTunnelProvider watchIKESocketChange]";
            v35 = 2048;
            v36 = [v32 interfaceIndex];
            v37 = 2112;
            v38 = v8;
            v39 = 2112;
            v40 = v15;
            _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "%s: IKE is scoped on ifIndex %ld (local address %@, remote address %@)\n", &v33, 0x2Au);
          }

          v22 = objc_alloc_init(MEMORY[0x1E6977E40]);
          v23 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:*(a1 + 248)];
          [v22 setRequiredInterface:v23];

          [v22 setLocalAddress:v8];
          v24 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:v15 parameters:v22];
          objc_setProperty_atomic(a1, v25, v24, 272);

          [objc_getProperty(a1 v26];
        }
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)startRekeyTimer:(void *)a1
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a1 protocolConfiguration];
  if (v4)
  {
    v5 = v4[248];

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = "CHILD";
        if (a2)
        {
          v7 = "IKE";
        }

        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2080;
        *&buf[14] = v7;
        _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@: startRekeyTimer (%s)", buf, 0x16u);
      }

      v8 = a1[19];
      if (!v8)
      {
        v9 = [NEIKEv2Rekey alloc];
        v10 = [a1 description];
        if (v9)
        {
          *buf = v9;
          *&buf[8] = NEIKEv2Rekey;
          v11 = objc_msgSendSuper2(buf, sel_init);
          if (v11)
          {
            v12 = v11;
            v13 = [v10 copy];
            objc_setProperty_atomic(v12, v14, v13, 32);
          }

          else
          {
            v13 = ne_log_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              *v25 = 0;
              _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v25, 2u);
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v15 = a1[19];
        a1[19] = v12;

        v8 = a1[19];
      }

      v16 = [a1 protocolConfiguration];
      v17 = v16;
      if (a2)
      {
        v18 = [v16 IKESecurityAssociationParameters];
        v19 = [v18 lifetimeMinutes];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke;
        v24[3] = &unk_1E7F0B0E8;
        v24[4] = a1;
        [(NEIKEv2Rekey *)v8 startIKETimer:v19 timeoutHandler:v24];
      }

      else
      {
        v18 = [v16 childSecurityAssociationParameters];
        v20 = [v18 lifetimeMinutes];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_176;
        v23[3] = &unk_1E7F0B0E8;
        v23[4] = a1;
        [(NEIKEv2Rekey *)v8 startChildTimer:v20 timeoutHandler:v23];
      }
    }

    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v22 = *MEMORY[0x1E69E9840];
  }
}

void __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 264, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_2;
  block[3] = &unk_1E7F0B0E8;
  block[4] = v4;
  dispatch_async(Property, block);
}

void __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_176(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 264, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_2_177;
  block[3] = &unk_1E7F0B0E8;
  block[4] = v4;
  dispatch_async(Property, block);
}

void __47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_2_177(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 77) & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: REKEYING CHILD", &v21, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = objc_getProperty(v6, v5, 240, 1);
      if (v7)
      {
        v9 = v7;
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v8, 240, 1);
        }

        v11 = [(NEIKEv2Session *)Property firstChildSA];
        if (!v11)
        {
          v18 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v12 = v11[4];

        if (v12)
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            v14 = objc_getProperty(v14, v13, 240, 1);
          }

          v9 = v14;
          v16 = *(a1 + 32);
          if (v16)
          {
            v16 = objc_getProperty(v16, v15, 240, 1);
          }

          v17 = [(NEIKEv2Session *)v16 firstChildSA];
          v18 = v17;
          if (v17)
          {
            v19 = *(v17 + 16);
          }

          else
          {
            v19 = 0;
          }

          [v9 forceRekeyChild:v19];
          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
}

void *__47__NEIKEv2PacketTunnelProvider_startRekeyTimer___block_invoke_2(void *result)
{
  v1 = result;
  v11 = *MEMORY[0x1E69E9840];
  v2 = result[4];
  if (!v2 || (*(v2 + 77) & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v1[4];
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: REKEYING IKE", &v9, 0xCu);
    }

    result = v1[4];
    if (result)
    {
      result = objc_getProperty(result, v5, 240, 1);
      if (result)
      {
        Property = v1[4];
        if (Property)
        {
          Property = objc_getProperty(Property, v6, 240, 1);
        }

        result = [Property forceRekeyIKE];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __58__NEIKEv2PacketTunnelProvider_tryAlternateServerAddresses__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 264, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NEIKEv2PacketTunnelProvider_tryAlternateServerAddresses__block_invoke_2;
  block[3] = &unk_1E7F0B0E8;
  block[4] = v4;
  dispatch_async(Property, block);
}

void __58__NEIKEv2PacketTunnelProvider_tryAlternateServerAddresses__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: Bringing up tunnel with alternate server address", &v17, 0xCu);
  }

  v5 = [NEIKEv2MOBIKE alloc];
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 264, 1);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
    Property = 0;
  }

  v10 = [(NEIKEv2MOBIKE *)&v5->super.isa initWithQueue:v8 tunnelProvider:?];
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic(v11, v9, v10, 168);
  }

  v12 = [(NEIKEv2PacketTunnelProvider *)*(a1 + 32) tunnelBringup];
  if (v12)
  {
    v13 = v12;
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 138412546;
      v18 = v16;
      v19 = 2080;
      v20 = "[NEIKEv2PacketTunnelProvider tryAlternateServerAddresses]_block_invoke";
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@: %s: Failed tunnel Bringup with alternate server address", &v17, 0x16u);
    }

    [(NEIKEv2PacketTunnelProvider *)*(a1 + 32) invokeCancelTunnel:v13];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55__NEIKEv2PacketTunnelProvider_setupIKEv2CallbackBlocks__block_invoke_130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) code] - 3;
  if (v2 > 0xC)
  {
    v3 = 3;
  }

  else
  {
    v3 = dword_1BAA4F8F0[v2];
  }

  [(NEIKEv2PacketTunnelProvider *)v1 invokeCancelTunnel:v3];
}

id __64__NEIKEv2PacketTunnelProvider_sendAnalyticsWithDisconnectError___block_invoke(void *a1)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"tunnelType";
  v2 = a1[4];
  if (v2)
  {
    info = v2[6].info;
    v4 = &stru_1F3880810;
    if (info == 2)
    {
      v4 = @"Fallback Tunnel";
    }

    if (info == 1)
    {
      v2 = @"Primary Tunnel";
    }

    else
    {
      v2 = v4;
    }
  }

  v6 = v2;
  v16[0] = v6;
  v15[1] = @"serverAddress";
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 128, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 16, 1);
    }
  }

  v9 = Property;
  v10 = a1[5];
  v11 = a1[6];
  v16[1] = v9;
  v16[2] = v10;
  v15[2] = @"interface";
  v15[3] = @"failReason";
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)handleCompanionProxyDatapathFailure:(void *)a1
{
  Property = objc_getProperty(a1, a2, 264, 1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__NEIKEv2PacketTunnelProvider_handleCompanionProxyDatapathFailure___block_invoke;
  v5[3] = &unk_1E7F08808;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_async(Property, v5);
}

void __67__NEIKEv2PacketTunnelProvider_handleCompanionProxyDatapathFailure___block_invoke(uint64_t a1, const char *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3 || !objc_getProperty(v3, a2, 232, 1))
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v32 = "no companion proxy path present, ignoring";
LABEL_41:
    _os_log_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_INFO, v32, buf, 2u);
    goto LABEL_42;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5 && (v7 = objc_getProperty(v5, v4, 232, 1)) != 0)
  {
    v8 = v7[2];
  }

  else
  {
    v8 = 0;
  }

  if (v6 != v8)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      if (v35 && (v37 = objc_getProperty(v35, v34, 232, 1)) != 0)
      {
        v38 = v37[2];
      }

      else
      {
        v38 = 0;
      }

      *buf = 134218240;
      v44 = v36;
      v45 = 2048;
      v46 = v38;
      _os_log_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_INFO, "companion proxy datapath don't match %llu != %llu, ignoring", buf, 0x16u);
    }

    goto LABEL_43;
  }

  v9 = *(a1 + 32);
  if (!v9 || (Property = objc_getProperty(v9, v4, 128, 1)) == 0 || (Property[8] & 1) == 0)
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    *buf = 0;
    v32 = "no companion proxy present, ignoring";
    goto LABEL_41;
  }

  v12 = *(a1 + 32);
  if (!v12 || (v12[75] & 1) == 0)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v32 = "no companion outbound datapath detected, ignoring";
      goto LABEL_41;
    }

LABEL_42:

LABEL_43:
    v39 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = objc_getProperty(v12, v11, 232, 1);
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = objc_getProperty(v15, v13, 232, 1);
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 12);
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 0;
LABEL_15:
  v19 = [(NEIKEv2CompanionDatapath *)v14 getStopReasonFromConnectionError:v18];

  v21 = *(a1 + 32);
  if (v21)
  {
    v21 = objc_getProperty(v21, v20, 240, 1);
  }

  v23 = [v21 state];
  v24 = *(a1 + 32);
  if (v23 != 2 || !v24 || (v24[79] & 1) == 0)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __67__NEIKEv2PacketTunnelProvider_handleCompanionProxyDatapathFailure___block_invoke_160;
    v41[3] = &unk_1E7F086C0;
    v41[4] = v24;
    v42 = v19;
    [v24 stopTunnelWithReason:14 completionHandler:v41];
    goto LABEL_43;
  }

  v25 = objc_getProperty(v24, v22, 168, 1);
  if (v25 && (v25[8] & 1) != 0)
  {
    goto LABEL_43;
  }

  v27 = *(a1 + 32);
  if (v19 == 4)
  {
    if (v27 && (v27 = objc_getProperty(v27, v26, 168, 1), (v28 = *(a1 + 32)) != 0))
    {
      v29 = *(v28 + 248);
    }

    else
    {
      v29 = 0;
    }

    v30 = *MEMORY[0x1E69E9840];

    [(NEIKEv2MOBIKE *)v27 initiateMOBIKE:v29 pathStatus:2 serverAddress:0 earlyDisconnect:0];
  }

  else
  {
    v40 = *MEMORY[0x1E69E9840];

    [(NEIKEv2PacketTunnelProvider *)v27 handleInterfaceChange:?];
  }
}

void __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v5, 264, 1);
    }

    else
    {
      Property = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke_2;
    block[3] = &unk_1E7F0AA58;
    v8 = Property;
    objc_copyWeak(&v12, (a1 + 32));
    dispatch_async(v8, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    [WeakRetained setReasserting:0];
    [(NEIKEv2PacketTunnelProvider *)v6 invokeStartTunnelCompletionHandler:?];
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "%@: Tunnel Status: UP", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)NEIKEv2ProviderAuthenticate:(_BYTE *)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 1;
  if ((a1[80] & 1) == 0)
  {
    a1[80] = 1;
    if (isa_nsdictionary(v3))
    {
      v6 = NEResourcesCopyLocalizedNSString(@"VPN_HEADER", @"VPN_HEADER");
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = NEResourcesCopyLocalizedNSString(@"PROMPT_REQUEST_AUTH", @"PROMPT_REQUEST_AUTH");
      [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695EE60]];

      v9 = NEResourcesCopyLocalizedNSString(@"PASSWORD", @"PASSWORD");
      v23 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EEA0]];

      [v7 setObject:&unk_1F38BA808 forKeyedSubscript:*MEMORY[0x1E695EEA8]];
      [v7 setObject:&unk_1F38BA820 forKeyedSubscript:@"SBUserNotificationTextAutocapitalizationType"];
      [v7 setObject:&unk_1F38BA838 forKeyedSubscript:@"SBUserNotificationTextAutocorrectionType"];
      [objc_getProperty(a1 v11];
      v12 = [NEUserNotification alloc];
      Property = objc_getProperty(a1, v13, 264, 1);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __59__NEIKEv2PacketTunnelProvider_NEIKEv2ProviderAuthenticate___block_invoke;
      v20[3] = &unk_1E7F08878;
      v21 = v4;
      v22 = a1;
      v15 = [(NEUserNotification *)v12 initAndShowAuthenticationWithHeader:v6 options:v7 flags:0x10000 callbackQueue:Property callbackHandler:v20];
      objc_setProperty_atomic(a1, v16, v15, 216);

      v5 = objc_getProperty(a1, v17, 216, 1) != 0;
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = a1;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@: Calling NEIKEv2ProviderAuthenticate with non-nsdictionary tunnelOptions", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke_114(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [(NEIKEv2PacketTunnelProvider *)v3 tunnelBringup];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 10;
  }

  [(NEIKEv2PacketTunnelProvider *)v3 invokeCancelTunnel:v5];
}

void __59__NEIKEv2PacketTunnelProvider_NEIKEv2ProviderAuthenticate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 initWithString:v6];

    [*(a1 + 32) setValue:v7 forKey:@"Password"];
    [(NEIKEv2PacketTunnelProvider *)*(a1 + 40) startIKEv2TunnelWithOptions:?];
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@: Cancel IKEv2 tunnel, no password entered", &v12, 0xCu);
    }

    [(NEIKEv2PacketTunnelProvider *)*(a1 + 40) invokeCancelTunnel:?];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(v9 + 80) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@: Stopping tunnel due to set tunnel network settings failed", buf, 0xCu);
  }

  if (WeakRetained)
  {
    WeakRetained[77] = 1;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NEIKEv2PacketTunnelProvider_startIKEv2TunnelWithOptions___block_invoke_107;
  v5[3] = &unk_1E7F0B0E8;
  v6 = WeakRetained;
  v3 = WeakRetained;
  [(NEIKEv2PacketTunnelProvider *)v3 stopIKEv2TunnelWithReason:v5 completionHandler:?];

  v4 = *MEMORY[0x1E69E9840];
}

void __54__NEIKEv2PacketTunnelProvider_handleDefaultPathChange__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "received keepalive response", v3, 2u);
    }
  }
}

void __49__NEIKEv2PacketTunnelProvider_handleConfigChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(NEIKEv2PacketTunnelProvider *)WeakRetained invokeCancelTunnel:?];
    WeakRetained = v2;
  }
}

void __49__NEIKEv2PacketTunnelProvider_handleConfigChange__block_invoke_169(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [(NEIKEv2PacketTunnelProvider *)v3 tunnelBringup];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 17;
  }

  [(NEIKEv2PacketTunnelProvider *)v3 invokeCancelTunnel:v5];
}

- (void)observerHelperHandler:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = NEIKEv2PacketTunnelProvider;
  [(NEProvider *)&v15 observerHelperHandler:a3 ofObject:v10 change:a5 context:a6];
  if (self)
  {
    Property = objc_getProperty(self, v11, 136, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v10)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NEIKEv2PacketTunnelProvider_observerHelperHandler_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7F0B0E8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __77__NEIKEv2PacketTunnelProvider_observerHelperHandler_ofObject_change_context___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 77) & 1) == 0 && *(v1 + 136))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(v1 + 136) resolvedEndpoints];
      v4 = [v3 count];
      v5 = [*(v1 + 136) status];
      v6 = "In progress";
      *buf = 138412802;
      v70 = v1;
      if (v5 == 2)
      {
        v6 = "Complete";
      }

      v71 = 2048;
      v72 = v4;
      v73 = 2080;
      v74 = v6;
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: handleDNSResolution (resolvedEndpoints count %lu) (query status %s)", buf, 0x20u);
    }

    v7 = [*(v1 + 136) resolvedEndpoints];
    v8 = [v7 count];

    if (v8)
    {
      v10 = &OBJC_IVAR___NEFilterFlow__direction;
      Property = objc_getProperty(v1, v9, 128, 1);
      if (Property)
      {
        Property = objc_getProperty(Property, v12, 16, 1);
      }

      v56 = Property;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = [*(v1 + 136) resolvedEndpoints];
      v13 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
      if (v13)
      {
        v15 = v13;
        v16 = 0;
        v17 = *v61;
        *&v14 = 138413314;
        v55 = v14;
        v18 = &OBJC_IVAR___NEFilterFlow__direction;
        do
        {
          v19 = 0;
          v58 = v15;
          do
          {
            if (*v61 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v60 + 1) + 8 * v19);
            v21 = ne_log_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = v17;
              v23 = v10;
              if ([v20 addressFamily] == 2)
              {
                v24 = "IPv4";
              }

              else
              {
                v24 = "IPv6";
              }

              v25 = [v20 hostname];
              v26 = [v20 port];
              *v64 = v55;
              *&v64[4] = v1;
              *&v64[12] = 2112;
              *&v64[14] = v56;
              *&v64[22] = 2080;
              v65 = v24;
              v10 = v23;
              v17 = v22;
              v15 = v58;
              *v66 = 2112;
              *&v66[2] = v25;
              v67 = 2112;
              v68 = v26;
              _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "%@: Resolved %@: %s address %@:%@", v64, 0x34u);

              v18 = &OBJC_IVAR___NEFilterFlow__direction;
            }

            v27 = *(v1 + v10[645]);
            v28 = [v20 hostname];
            v30 = objc_getProperty(v1, v29, v18[657], 1);
            [(NEIKEv2Server *)v27 setServerResolvedAddress:v28 path:v30];

            v16 |= [v20 addressFamily] == 30;
            ++v19;
          }

          while (v15 != v19);
          v15 = [obj countByEnumeratingWithState:&v60 objects:buf count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      if (objc_getProperty(v1, v37, 192, 1))
      {
        if ((v16 & 1) != 0 || [*(v1 + 136) status] == 2)
        {
          if (objc_getProperty(v1, v38, 144, 1))
          {
            v40 = objc_getProperty(v1, v39, 144, 1);
            dispatch_source_cancel(v40);
            objc_setProperty_atomic(v1, v41, 0, 144);
          }

          v42 = objc_getProperty(v1, v39, 192, 1);
          v42[2](v42, 1);
          objc_setProperty_atomic_copy(v1, v43, 0, 192);
        }

        else if (!objc_getProperty(v1, v38, 144, 1))
        {
          v49 = objc_getProperty(v1, v48, 264, 1);
          *v64 = MEMORY[0x1E69E9820];
          *&v64[8] = 3221225472;
          *&v64[16] = __50__NEIKEv2PacketTunnelProvider_handleDNSResolution__block_invoke;
          v65 = &unk_1E7F0B0E8;
          *v66 = v1;
          v50 = NECreateTimerSource(v49, 1, v64);
          objc_setProperty_atomic(v1, v51, v50, 144);
        }
      }

      if ([*(v1 + 136) status] == 2)
      {
        v44 = *(v1 + 136);
        v45 = [v1 context];
        [v44 removeObserver:v45 forKeyPath:@"resolvedEndpoints"];

        v46 = *(v1 + 136);
        *(v1 + 136) = 0;
      }
    }

    else if ([*(v1 + 136) status] == 2)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_getProperty(v1, v32, 128, 1);
        if (v52)
        {
          v52 = objc_getProperty(v52, v53, 16, 1);
        }

        v54 = v52;
        *buf = 138412546;
        v70 = v1;
        v71 = 2112;
        v72 = v54;
        _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@: Failed to resolve %@", buf, 0x16u);
      }

      v33 = *(v1 + 136);
      v34 = [v1 context];
      [v33 removeObserver:v34 forKeyPath:@"resolvedEndpoints"];

      v35 = *(v1 + 136);
      *(v1 + 136) = 0;

      v36 = *(v1 + 192);
      if (v36)
      {
        (*(v36 + 16))(v36, 0);
        v57 = *(v1 + 192);
        *(v1 + 192) = 0;
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __50__NEIKEv2PacketTunnelProvider_handleDNSResolution__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return;
  }

  if (!objc_getProperty(v3, a2, 144, 1))
  {
    goto LABEL_7;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 144, 1);
  }

  dispatch_source_cancel(Property);
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_setProperty_atomic(v7, v6, 0, 144);
LABEL_7:
    v8 = *(a1 + 32);
    if (v8 && objc_getProperty(v8, v4, 192, 1))
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = objc_getProperty(v10, v9, 192, 1);
      }

      (*(v10 + 2))(v10, 1);
      v12 = *(a1 + 32);
      if (v12)
      {

        objc_setProperty_atomic_copy(v12, v11, 0, 192);
      }
    }
  }
}

- (void)wake
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: wake Invoked", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NEIKEv2PacketTunnelProvider_wake__block_invoke;
  block[3] = &unk_1E7F0B0E8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

void __35__NEIKEv2PacketTunnelProvider_wake__block_invoke(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 77) & 1) == 0)
  {
    if (!objc_getProperty(*(a1 + 32), a2, 240, 1))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(v30) = 138412290;
        *(&v30 + 4) = v2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Wake_up: Session down, ignore WakeUp", &v30, 0xCu);
      }

      goto LABEL_29;
    }

    v4 = objc_getProperty(v2, v3, 128, 1);
    Property = objc_getProperty(v2, v5, 208, 1);
    v7 = [(NEIKEv2Server *)v4 getViableServerAddressForPath:?];

    if (*(v2 + 79))
    {
      v8 = [v2 protocolConfiguration];
      v9 = [v8 disableMOBIKERetryOnWake] != 0;

      v11 = objc_getProperty(v2, v10, 168, 1);
      v12 = *(v2 + 248);
      v13 = v11;
      v15 = [objc_getProperty(v2 v14];
      [(NEIKEv2MOBIKE *)v13 initiateMOBIKE:v12 pathStatus:v15 serverAddress:v7 earlyDisconnect:v9];

      v16 = ne_log_obj();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_8:

LABEL_29:
        goto LABEL_30;
      }

      LODWORD(v30) = 138412290;
      *(&v30 + 4) = v2;
      v17 = "%@: Waking, kick off MOBIKE";
LABEL_7:
      _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, v17, &v30, 0xCu);
      goto LABEL_8;
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(v30) = 138412290;
      *(&v30 + 4) = v2;
      _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_INFO, "%@: Waking, kick off DPD", &v30, 0xCu);
    }

    v19 = [v2 protocolConfiguration];
    v20 = [v19 deadPeerDetectionRate];
    v21 = *(v2 + 76);
    objc_opt_self();
    if (v20 < 2)
    {
      v23 = 5;
      v25 = 1000;
    }

    else
    {
      if (v20 == 3)
      {
        v22 = (v21 & 1) == 0;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = 3;
        }

        v24 = 3000;
      }

      else
      {
        if (v20 != 2)
        {

          v16 = ne_log_obj();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            goto LABEL_8;
          }

          LODWORD(v30) = 138412290;
          *(&v30 + 4) = v2;
          v17 = "%@: Wake_up: failed to get DPD attributes";
          goto LABEL_7;
        }

        v22 = (v21 & 1) == 0;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = 5;
        }

        v24 = 5000;
      }

      if (v22)
      {
        v25 = 1000;
      }

      else
      {
        v25 = v24;
      }
    }

    v27 = objc_getProperty(v2, v26, 240, 1);
    v28 = *(v2 + 264);
    *&v30 = MEMORY[0x1E69E9820];
    *(&v30 + 1) = 3221225472;
    v31 = __40__NEIKEv2PacketTunnelProvider_wakeIKEv2__block_invoke;
    v32 = &unk_1E7F08740;
    v33 = v2;
    [v27 sendKeepaliveWithRetries:v23 retryIntervalInMilliseconds:v25 callbackQueue:v28 callback:&v30];
    goto LABEL_29;
  }

LABEL_30:
  v29 = *MEMORY[0x1E69E9840];
}

void __40__NEIKEv2PacketTunnelProvider_wakeIKEv2__block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 248);
      }

      else
      {
        v7 = 0;
      }

      v12 = 138412546;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v8 = "%@: Wake_up: [%lu] WakeUP: DPD succeeded";
LABEL_10:
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, v8, &v12, 0x16u);
    }
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 248);
    }

    else
    {
      v10 = 0;
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    v8 = "%@: Wake_up: [%lu] WakeUP: DPD failed";
    goto LABEL_10;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopTunnelWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%@: stopTunnelWithReason Invoked", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NEIKEv2PacketTunnelProvider_stopTunnelWithReason_completionHandler___block_invoke;
  block[3] = &unk_1E7F0AB90;
  v12 = v6;
  v13 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __70__NEIKEv2PacketTunnelProvider_stopTunnelWithReason_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 77) = 1;
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__NEIKEv2PacketTunnelProvider_stopTunnelWithReason_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7F0B588;
  v4[4] = v2;
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  [(NEIKEv2PacketTunnelProvider *)v2 stopIKEv2TunnelWithReason:v3 completionHandler:v4];
}

uint64_t __70__NEIKEv2PacketTunnelProvider_stopTunnelWithReason_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (v2[81] & 1) != 0)
  {
    [*(a1 + 32) removeObserver:v2 forKeyPath:@"protocolConfiguration"];
    [v2 removeObserver:v2 forKeyPath:@"defaultPath"];
    v2[81] = 0;
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)startTunnelWithOptions:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: startTunnelWithOptions Invoked", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NEIKEv2PacketTunnelProvider_startTunnelWithOptions_completionHandler___block_invoke;
  block[3] = &unk_1E7F0AAA0;
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __72__NEIKEv2PacketTunnelProvider_startTunnelWithOptions_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 77) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_setProperty_atomic_copy(v4, a2, *(a1 + 48), 176);
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);

  [(NEIKEv2PacketTunnelProvider *)v4 startIKEv2TunnelWithOptions:v5];
}

- (void)dealloc
{
  [(NEIKEv2PacketTunnelProvider *)self reset:?];
  server = self->_server;
  self->_server = 0;

  queue = self->_queue;
  self->_queue = 0;

  startTunnelCompletionHandler = self->_startTunnelCompletionHandler;
  self->_startTunnelCompletionHandler = 0;

  stopTunnelCompletionHandler = self->_stopTunnelCompletionHandler;
  self->_stopTunnelCompletionHandler = 0;

  v7 = [(NEPacketTunnelProvider *)self packetFlow];
  [(NEPacketTunnelFlow *)v7 closeVirtualInterface];

  exit(0);
}

- (NEIKEv2PacketTunnelProvider)init
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(NEPacketTunnelProvider *)self initWithVirtualInterfaceType:2];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(v8.__sigaction_u.__sa_handler) = 138412290;
    *(&v8.__sigaction_u.__sa_sigaction + 4) = v2;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Init with IPSec virtual interface type", &v8, 0xCu);
  }

  if (NEIKEv2PacketTunnelProviderCopyQueue_onceToken != -1)
  {
    dispatch_once(&NEIKEv2PacketTunnelProviderCopyQueue_onceToken, &__block_literal_global_326);
  }

  objc_storeStrong(&v2->_queue, NEIKEv2PacketTunnelProviderCopyQueue_queue);
  [(NEIKEv2PacketTunnelProvider *)v2 addObserver:v2 forKeyPath:@"protocolConfiguration" options:5 context:0];
  [(NEIKEv2PacketTunnelProvider *)v2 addObserver:v2 forKeyPath:@"defaultPath" options:5 context:0];
  *(&v2->_isObserving + 1) = 1;
  v4 = [(NEProvider *)v2 defaultPath];
  objc_setProperty_atomic(v2, v5, v4, 208);

  v2->_randomLocalPortFallbackRetryCount = 0;
  v8.__sigaction_u.__sa_handler = 1;
  *&v8.sa_mask = 0;
  sigaction(13, &v8, 0);
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    tunnelKind = self->_tunnelKind;
    v5 = &stru_1F3880810;
    if (tunnelKind == 2)
    {
      v5 = @"Fallback Tunnel";
    }

    if (tunnelKind == 1)
    {
      v6 = @"Primary Tunnel";
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
    ifIndex = self->_ifIndex;
  }

  else
  {
    v7 = 0;
    ifIndex = 0;
  }

  v9 = [v3 initWithFormat:@"<NEIKEv2Provider: %@ (ifIndex %lu)>: ", v7, ifIndex];

  return v9;
}

@end