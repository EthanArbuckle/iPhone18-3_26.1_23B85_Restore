@interface NEFlowNexus
- (BOOL)setDiscoveredEndpoints:(id)endpoints forClient:(id)client;
- (NEFlowNexus)initWithName:(id)name delegate:(id)delegate;
- (void)dealloc;
- (void)handleAssertFromClient:(id)client;
- (void)handleUnassertFromClient:(id)client;
- (void)setRemoteConnectionDirector:(id)director;
@end

@implementation NEFlowNexus

- (void)handleUnassertFromClient:(id)client
{
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = NEFlowNexus;
  [(NENexus *)&v17 handleUnassertFromClient:clientCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 200, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_sync_enter(v7);
  if (self)
  {
    v9 = objc_getProperty(self, v8, 200, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 containsObject:clientCopy];

  if (v11)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = objc_alloc_init(NENexusBrowse);
      [(NENexusBrowse *)v13 setClientIdentifier:clientCopy];
      [WeakRetained stopBrowse:v13 fromNexus:self];
    }

    [(NEFlowNexus *)self setDiscoveredEndpoints:0 forClient:clientCopy];
    if (self)
    {
      v15 = objc_getProperty(self, v14, 200, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v16 removeObject:clientCopy];
  }

  objc_sync_exit(v7);
}

- (void)handleAssertFromClient:(id)client
{
  v24 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = NEFlowNexus;
  [(NENexus *)&v21 handleAssertFromClient:clientCopy];
  v5 = [MEMORY[0x1E6977E48] pathForClientID:clientCopy];
  v6 = v5;
  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to get path for assert client %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if ([v5 hasBrowseDescriptor])
  {
    if (self)
    {
      Property = objc_getProperty(self, v7, 200, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    objc_sync_enter(v9);
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._delegate);
      v12 = objc_getProperty(self, v11, 200, 1);
    }

    else
    {
      WeakRetained = 0;
      v12 = 0;
    }

    v13 = v12;
    if (([(NENexusBrowse *)v13 containsObject:clientCopy]& 1) == 0)
    {
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
LABEL_13:

        objc_sync_exit(v9);
LABEL_16:

        goto LABEL_17;
      }

      v13 = objc_alloc_init(NENexusBrowse);
      [(NENexusBrowse *)v13 setClientIdentifier:clientCopy];
      browseDescriptor = [v6 browseDescriptor];
      [(NENexusBrowse *)v13 setDescriptor:browseDescriptor];

      parameters = [v6 parameters];
      [(NENexusBrowse *)v13 setParameters:parameters];

      [WeakRetained startBrowse:v13 fromNexus:self];
      if (self)
      {
        v18 = objc_getProperty(self, v17, 200, 1);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [v19 addObject:clientCopy];
    }

    goto LABEL_13;
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)setDiscoveredEndpoints:(id)endpoints forClient:(id)client
{
  v36 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  clientCopy = client;
  if (!clientCopy)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v35 = "[NEFlowNexus setDiscoveredEndpoints:forClient:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null clientID", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (self)
  {
    Property = objc_getProperty(self, v7, 200, 1);
  }

  else
  {
    Property = 0;
  }

  if (([Property containsObject:clientCopy] & 1) == 0)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Client %@ has not asserted browse, cannot assign discovered endpoints", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if ([endpointsCopy count])
  {
    v10 = MEMORY[0x1BFAFAD90]();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = endpointsCopy;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          copyCEndpoint = [*(*(&v29 + 1) + 8 * i) copyCEndpoint];
          nw_array_append();
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = 0;
  }

  browse_result = nw_path_create_browse_result();
  if (!browse_result)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "nw_path_create_browse_result failed", buf, 2u);
    }

    goto LABEL_27;
  }

  v19 = browse_result;
  if (self)
  {
    v20 = objc_getProperty(self, v18, 128, 1);
    self = v20;
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 32, 1);
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = v20;
  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v19 length:0];
  v24 = [(NEFlowNexus *)v22 assignNexusData:v23 toClient:clientCopy];

  free(v19);
  if ((v24 & 1) == 0)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Could not assign browse result to client %@", buf, 0xCu);
    }

LABEL_27:

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  v25 = 1;
LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)setRemoteConnectionDirector:(id)director
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, director, 192);
  }
}

- (void)dealloc
{
  if (self && self->_flowDivertDirector)
  {
    NEFlowDirectorDestroy();
    self->_flowDivertDirector = 0;
  }

  v3.receiver = self;
  v3.super_class = NEFlowNexus;
  [(NENexus *)&v3 dealloc];
}

- (NEFlowNexus)initWithName:(id)name delegate:(id)delegate
{
  v83 = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = NEFlowNexus;
  v4 = [(NENexus *)&v64 initWithLevel:4 name:name virtualInterfaceType:1 delegate:delegate channelCount:0];
  if (!v4)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v74 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "[super initWithLevel:name:delegate:] failed", v74, 2u);
    }

    goto LABEL_40;
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("FlowDivertDirector", v5);
  objc_setProperty_atomic(v4, v7, v6, 176);

  if (!objc_getProperty(v4, v8, 176, 1))
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "dispatch_queue_create failed";
    goto LABEL_15;
  }

  initFlowDivertControlSocket = [[NEFlowDivertFileHandle alloc] initFlowDivertControlSocket];
  objc_setProperty_atomic(v4, v10, initFlowDivertControlSocket, 168);

  if (!objc_getProperty(v4, v11, 168, 1))
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "[NEFlowDivertFileHandle initFlowDivertControlSocket] failed";
    goto LABEL_15;
  }

  v13 = [objc_getProperty(v4 v12];
  v4->_flowDivertControlUnit = [v13 unsignedIntValue];

  v15 = [objc_getProperty(v4 v14];
  objc_setProperty_atomic(v4, v16, v15, 184);

  v18 = [objc_getProperty(v4 v17];
  [v18 fileDescriptor];
  objc_getProperty(v4, v19, 176, 1);
  v4->_flowDivertDirector = NEFlowDirectorCreate();

  if (!v4->_flowDivertDirector)
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "NEFlowDirectorCreate failed";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, v32, buf, 2u);
LABEL_16:

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v74 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "setupFlowDivertDirector failed", v74, 2u);
    }

    goto LABEL_40;
  }

  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v20 = NEFlowTLVMsgCreate();
  NEFlowTLVAdd();
  v22 = [objc_getProperty(v4 v21];
  fileDescriptor = [v22 fileDescriptor];
  v24 = send(fileDescriptor, v20, v70 - v72, 0);

  if (v24 < 0)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v58 = __error();
      v59 = strerror(*v58);
      *buf = 136315138;
      v80 = v59;
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE message: %s", buf, 0xCu);
    }

    if (v20)
    {
      CFAllocatorDeallocate(*MEMORY[0x1E695E480], v20);
    }
  }

  else
  {
    v25 = *MEMORY[0x1E695E480];
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v20);
    v73 = 1;
    v26 = NEFlowTLVMsgCreate();
    NEFlowTLVAdd();
    NEFlowTLVAdd();
    v28 = [objc_getProperty(v4 v27];
    fileDescriptor2 = [v28 fileDescriptor];
    v30 = send(fileDescriptor2, v26, v70 - v72, 0);

    if (v30 >= 0)
    {
      if (!v26)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v60 = v70;
      v61 = v72;
      v62 = __error();
      v63 = strerror(*v62);
      *buf = 134218242;
      v80 = (v60 - v61);
      v81 = 2080;
      v82 = v63;
      _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE with size %lu bytes: %s", buf, 0x16u);
    }

    if (v26)
    {
LABEL_26:
      CFAllocatorDeallocate(v25, v26);
    }
  }

LABEL_27:
  objc_initWeak(buf, v4);
  flowDivertDirector = v4->_flowDivertDirector;
  *v74 = MEMORY[0x1E69E9820];
  v75 = 3221225472;
  v76 = __38__NEFlowNexus_setupFlowDivertDirector__block_invoke;
  v77 = &unk_1E7F078E8;
  objc_copyWeak(v78, buf);
  NEFlowDirectorSetNewFlowCallback();
  v37 = v4->_flowDivertDirector;
  *v65 = MEMORY[0x1E69E9820];
  v66 = 3221225472;
  v67 = __38__NEFlowNexus_setupFlowDivertDirector__block_invoke_2;
  v68 = &unk_1E7F07910;
  objc_copyWeak(v69, buf);
  NEFlowDirectorSetMatchRulesCallback();
  v38 = v4->_flowDivertDirector;
  NEFlowDirectorStart();
  objc_destroyWeak(v69);
  objc_destroyWeak(v78);
  objc_destroyWeak(buf);
  v39 = [NEPolicy alloc];
  v40 = [NEPolicyResult divertSocketToControlUnit:v4->_flowDivertControlUnit];
  interfaceName = [(NENexus *)v4 interfaceName];
  v42 = [NEPolicyCondition scopedInterface:interfaceName];
  *v74 = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  v44 = [(NEPolicy *)v39 initWithOrder:0 result:v40 conditions:v43];

  if (!v44)
  {
    v54 = ne_log_obj();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v65 = 0;
    v55 = "[NEPolicy initWithOrder:result:conditions:] failed";
    goto LABEL_37;
  }

  v46 = objc_getProperty(v4, v45, 120, 1);
  v47 = [v46 addPolicy:v44] == 0;

  if (v47)
  {
    v54 = ne_log_obj();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v65 = 0;
    v55 = "[NEPolicySession addPolicy:] failed";
    goto LABEL_37;
  }

  v49 = objc_getProperty(v4, v48, 120, 1);
  apply = [v49 apply];

  if ((apply & 1) == 0)
  {
    v54 = ne_log_obj();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v65 = 0;
    v55 = "[NEPolicySession apply] failed";
LABEL_37:
    _os_log_fault_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_FAULT, v55, v65, 2u);
LABEL_38:

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v74 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "setupFlowDivertDirector failed", v74, 2u);
    }

LABEL_40:

    v53 = 0;
    goto LABEL_41;
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  browseAssertions = v4->_browseAssertions;
  v4->_browseAssertions = v51;

  v53 = v4;
LABEL_41:

  v56 = *MEMORY[0x1E69E9840];
  return v53;
}

void __38__NEFlowNexus_setupFlowDivertDirector__block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (!self)
  {
    goto LABEL_26;
  }

  v7 = [NENexusFlowDivertFlow alloc];
  if (!v7)
  {
    p_isa = 0;
    goto LABEL_23;
  }

  p_super = &v7->super.super;
  if (a2)
  {
    v41.receiver = v7;
    v41.super_class = NENexusFlowDivertFlow;
    v9 = objc_msgSendSuper2(&v41, sel_init);
    if (v9)
    {
      v10 = v9;
      v9[8] = CFRetain(a2);
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = *(v10 + 5);
      *(v10 + 5) = v11;

      [(NENexusFlow *)v10 setupFlowProtocolWithUUID:?];
      v13 = *MEMORY[0x1E69E5890];
      v14 = NEFlowCopyProperty();
      v15 = *MEMORY[0x1E69E5898];
      v16 = NEFlowCopyProperty();
      v17 = isa_nsstring(v16);
      v18 = isa_nsdata(v14);
      if (v17)
      {
        if (v18 && (v19 = [v14 bytes]) != 0)
        {
          v20 = *(v19 + 1);
          if (v20 == 30 || v20 == 2)
          {
            v21 = *(v19 + 2);
          }

          else
          {
            v21 = 0;
          }

          v24 = __rev16(v21);
        }

        else
        {
          v24 = 0;
        }

        v25 = MEMORY[0x1E6977E28];
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v24];
        v26 = [v23 stringValue];
        v27 = [v25 endpointWithHostname:v16 port:v26];
        v28 = *(v10 + 6);
        *(v10 + 6) = v27;
      }

      else
      {
        if (!v18)
        {
LABEL_18:
          v29 = objc_alloc_init(MEMORY[0x1E6977E40]);
          v30 = *(v10 + 7);
          *(v10 + 7) = v29;

          if (NEFlowGetFlowType() == 1)
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          [*(v10 + 7) setDataMode:v31];
          p_super = v10;

          p_isa = &p_super->isa;
          goto LABEL_22;
        }

        v22 = [MEMORY[0x1E6977E08] endpointWithAddress:{objc_msgSend(v14, "bytes")}];
        v23 = *(v10 + 6);
        *(v10 + 6) = v22;
      }

      goto LABEL_18;
    }

    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v38 = ne_log_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v41.receiver) = 136315138;
      *(&v41.receiver + 4) = "[NENexusFlowDivertFlow initWithFlowDivertFlow:]";
      _os_log_fault_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_FAULT, "%s called with null flowDivertFlow", &v41, 0xCu);
    }
  }

  p_isa = 0;
LABEL_22:

LABEL_23:
  [p_isa setState:1];
  v34 = objc_getProperty(self, v33, 112, 1);
  if (p_isa)
  {
    objc_storeWeak(p_isa + 4, v34);
  }

  WeakRetained = objc_loadWeakRetained(self + 17);
  v41.receiver = MEMORY[0x1E69E9820];
  v41.super_class = 3221225472;
  v42 = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke;
  v43 = &unk_1E7F078C0;
  v44 = p_isa;
  v46 = v6;
  v45 = self;
  v36 = p_isa;
  [WeakRetained acceptNewFlow:v36 fromNexus:self completionHandler:&v41];

LABEL_26:
  v37 = *MEMORY[0x1E69E9840];
}

void __38__NEFlowNexus_setupFlowDivertDirector__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = a4;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "Allowing flow from %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 20);
  }

  NEFlowDirectorHandleMatchRulesResult();

  v10 = *MEMORY[0x1E69E9840];
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 64);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      objc_getProperty(v7, v3, 176, 1);
    }

    NEFlowSetDispatchQueue();
    v8 = [v4 localEndpoint];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([v4 localEndpoint], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "addressData"), v11 = objc_claimAutoreleasedReturnValue(), v12 = NEFlowSetProperty(), v11, v10, v12))
    {
      objc_initWeak(location, *(a1 + 40));
      v41[1] = MEMORY[0x1E69E9820];
      v41[2] = 3221225472;
      v41[3] = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_26;
      v41[4] = &unk_1E7F07870;
      v42 = *(a1 + 32);
      v13 = NEFlowSetEventHandler();
      v39[1] = MEMORY[0x1E69E9820];
      v39[2] = 3221225472;
      v39[3] = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_2;
      v39[4] = &unk_1E7F07898;
      v40 = *(a1 + 32);
      objc_copyWeak(v41, location);
      v14 = NEFlowSetEventHandler();
      v38 = *(a1 + 32);
      objc_copyWeak(v39, location);
      v15 = NEFlowSetEventHandler();
      if (v13)
      {
        if (v15)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        v17 = !v16;
        objc_destroyWeak(v39);

        objc_destroyWeak(v41);
        objc_destroyWeak(location);
        if (v17)
        {
          if (NEFlowOpen())
          {
            v20 = *(a1 + 32);
            Property = *(a1 + 40);
            if (Property)
            {
              Property = objc_getProperty(Property, v18, 144, 1);
            }

            v22 = Property;
            v23 = *(a1 + 32);
            if (v23)
            {
              v24 = objc_getProperty(v23, v21, 40, 1);
            }

            else
            {
              v24 = 0;
            }

            [v22 setObject:v20 forKeyedSubscript:v24];

            goto LABEL_34;
          }

          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a1 + 32);
            if (v37)
            {
              v37 = objc_getProperty(v37, v28, 40, 1);
            }

            LODWORD(location[0]) = 138412290;
            *(location + 4) = v37;
            _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "NEFlowOpen failed for client %@", location, 0xCu);
          }
        }
      }

      else
      {
        objc_destroyWeak(v39);

        objc_destroyWeak(v41);
        objc_destroyWeak(location);
      }
    }

    [*(a1 + 32) setState:3];
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = *(v29 + 64);
    }

    NEFlowSetEventHandler();
    v31 = *(a1 + 32);
    if (v31)
    {
      v32 = *(v31 + 64);
    }

    NEFlowSetEventHandler();
    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 64);
    }

    NEFlowSetEventHandler();
  }

  else
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 32);
      if (v36)
      {
        v36 = objc_getProperty(v36, v26, 40, 1);
      }

      LODWORD(location[0]) = 138412290;
      *(location + 4) = v36;
      _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "Rejecting new flow for client %@", location, 0xCu);
    }

    [*(a1 + 32) setState:3];
  }

LABEL_34:
  (*(*(a1 + 48) + 16))();

  v35 = *MEMORY[0x1E69E9840];
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  NEFlowSetEventHandler();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 64);
  }

  NEFlowSetEventHandler();
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  NEFlowSetEventHandler();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v9, 144, 1);
  }

  v11 = WeakRetained;
  v12 = *(a1 + 32);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [v11 setObject:0 forKeyedSubscript:Property];
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  NEFlowSetEventHandler();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 64);
  }

  NEFlowSetEventHandler();
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 64);
  }

  NEFlowSetEventHandler();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v9, 144, 1);
  }

  v11 = WeakRetained;
  v12 = *(a1 + 32);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [v11 setObject:0 forKeyedSubscript:Property];
}

@end