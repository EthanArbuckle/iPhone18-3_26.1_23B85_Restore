@interface EXExtensionContextImplementation
+ (id)_defaultExtensionContextVendorProtocol;
+ (id)_derivedExtensionAuxiliaryHostProtocolWithContextClass:(Class)a3;
+ (id)_extensionContextForIdentifier:(id)a3;
+ (id)_extensionContextHostProtocolAllowedClassesForItems;
+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)a3;
+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)a3;
- (BOOL)_isHost;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (EXExtensionContextImplementation)initWithCoder:(id)a3;
- (EXExtensionContextImplementation)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 extensionContext:(id)a6;
- (NSExtensionContext)extensionContext;
- (NSString)description;
- (NSUUID)_pkUUID;
- (id)_principalObject;
- (id)_processAssertion;
- (void)_initializeAuxillaryConnectionWithListenerEndpoint:(id)a3;
- (void)_loadItemForPayload:(id)a3 completionHandler:(id)a4;
- (void)_loadPreviewImageForPayload:(id)a3 completionHandler:(id)a4;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_pkUUID;
- (void)_processAssertion;
- (void)_setProcessAssertion:(id)a3;
- (void)_willPerformHostCallback:(id)a3;
- (void)cancelRequestWithError:(id)a3;
- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)set_pkUUID:(id)a3;
@end

@implementation EXExtensionContextImplementation

- (void)dealloc
{
  objc_storeWeak(&self->__principalObject, 0);
  extensionRequest = self->_extensionRequest;
  self->_extensionRequest = 0;

  [(EXExtensionContextImplementation *)self invalidate];
  v4.receiver = self;
  v4.super_class = EXExtensionContextImplementation;
  [(EXExtensionContextImplementation *)&v4 dealloc];
}

- (id)_processAssertion
{
  extensionRequest = self->_extensionRequest;
  if (extensionRequest)
  {

    return [(EXExtensionRequest *)extensionRequest assertion];
  }

  else
  {
    v5 = _EXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [EXExtensionContextImplementation _processAssertion];
    }

    __break(1u);
  }

  return result;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_1847D1000, v0, v1, "invalidated extension context: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (NSUUID)_pkUUID
{
  extensionRequest = self->_extensionRequest;
  if (extensionRequest)
  {

    return [(EXExtensionRequest *)extensionRequest pkUUID];
  }

  else
  {
    v5 = _EXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [EXExtensionContextImplementation _pkUUID];
    }

    __break(1u);
  }

  return result;
}

- (NSExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

+ (id)_defaultExtensionContextVendorProtocol
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A2220];
  v3 = +[_EXDefaults sharedInstance];
  v4 = [v3 extensionItemTypes];
  [v2 setClasses:v4 forSelector:sel__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (BOOL)_isHost
{
  v2 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
  v3 = v2 == 0;

  return v3;
}

- (id)_principalObject
{
  WeakRetained = objc_loadWeakRetained(&self->__principalObject);

  return WeakRetained;
}

- (void)set_pkUUID:(id)a3
{
  v4 = a3;
  extensionRequest = self->_extensionRequest;
  if (extensionRequest)
  {
    v7 = v4;
    [(EXExtensionRequest *)extensionRequest setPkUUID:v4];
  }

  else
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EXExtensionContextImplementation set_pkUUID:];
    }

    __break(1u);
  }
}

- (void)_setProcessAssertion:(id)a3
{
  v4 = a3;
  extensionRequest = self->_extensionRequest;
  if (extensionRequest)
  {
    v7 = v4;
    [(EXExtensionRequest *)extensionRequest setAssertion:v4];
  }

  else
  {
    v6 = _EXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [EXExtensionContextImplementation _setProcessAssertion:];
    }

    __break(1u);
  }
}

+ (id)_extensionContextHostProtocolAllowedClassesForItems
{
  v2 = +[_EXDefaults sharedInstance];
  v3 = [v2 extensionItemTypes];

  return v3;
}

+ (id)_extensionContextHostProtocolWithAllowedErrorClasses:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1EF2ABF38];
  v6 = +[_EXDefaults sharedInstance];
  v7 = [v6 extensionItemTypes];

  [v5 setClasses:v7 forSelector:sel__completeRequestReturningItems_forExtensionContextWithUUID_completion_ argumentIndex:0 ofReply:0];
  v8 = v4;
  if (!v4)
  {
    v8 = objc_opt_new();
  }

  v9 = [v8 setByAddingObject:objc_opt_class()];

  if (!v4)
  {
  }

  [v5 setClasses:v9 forSelector:sel__cancelRequestWithError_forExtensionContextWithUUID_completion_ argumentIndex:0 ofReply:0];
  v10 = +[_EXDefaults sharedInstance];
  v11 = [v10 useItemProviderXPCConnection];

  if ((v11 & 1) == 0)
  {
    v12 = +[_EXDefaults sharedInstance];
    v13 = [v12 itemProviderTypes];

    v14 = +[_EXDefaults sharedInstance];
    v15 = [v14 plistAndValueTypes];
    v16 = [v15 setByAddingObject:objc_opt_class()];

    [v5 setClasses:v13 forSelector:sel__loadItemForPayload_contextIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [v5 setClasses:v16 forSelector:sel__loadItemForPayload_contextIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [v5 setClasses:v9 forSelector:sel__loadItemForPayload_contextIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
    [v5 setClasses:v13 forSelector:sel__loadPreviewImageForPayload_contextIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [v5 setClasses:v16 forSelector:sel__loadPreviewImageForPayload_contextIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [v5 setClasses:v9 forSelector:sel__loadPreviewImageForPayload_contextIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
  }

  return v5;
}

+ (id)_extensionContextVendorProtocolWithAllowedErrorClasses:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 _defaultExtensionContextVendorProtocol];
    v6 = [v4 setByAddingObject:objc_opt_class()];
    [v5 setClasses:v6 forSelector:sel__beginRequestWithExtensionItems_listenerEndpoint_withContextUUID_completion_ argumentIndex:1 ofReply:1];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__EXExtensionContextImplementation__extensionContextVendorProtocolWithAllowedErrorClasses___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (_extensionContextVendorProtocolWithAllowedErrorClasses__onceToken != -1)
    {
      dispatch_once(&_extensionContextVendorProtocolWithAllowedErrorClasses__onceToken, block);
    }

    v5 = _extensionContextVendorProtocolWithAllowedErrorClasses____xpcInterface;
  }

  return v5;
}

uint64_t __91__EXExtensionContextImplementation__extensionContextVendorProtocolWithAllowedErrorClasses___block_invoke(uint64_t a1)
{
  _extensionContextVendorProtocolWithAllowedErrorClasses____xpcInterface = [*(a1 + 32) _defaultExtensionContextVendorProtocol];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionContextForIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[(_NSExtensionContextVendor *)EXConcreteExtensionContextVendor];
  v5 = [v4 _extensionContextForUUID:v3];

  return v5;
}

+ (id)_derivedExtensionAuxiliaryHostProtocolWithContextClass:(Class)a3
{
  if (_derivedExtensionAuxiliaryHostProtocolWithContextClass__onceToken != -1)
  {
    +[EXExtensionContextImplementation _derivedExtensionAuxiliaryHostProtocolWithContextClass:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__EXExtensionContextImplementation__derivedExtensionAuxiliaryHostProtocolWithContextClass___block_invoke_77;
  v6[3] = &unk_1E6E4DFC8;
  v6[4] = &v7;
  v6[5] = a3;
  dispatch_sync(_derivedExtensionAuxiliaryHostProtocolWithContextClass__protocol_creation_queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __91__EXExtensionContextImplementation__derivedExtensionAuxiliaryHostProtocolWithContextClass___block_invoke()
{
  _derivedExtensionAuxiliaryHostProtocolWithContextClass__protocol_creation_queue = dispatch_queue_create("com.apple.extension.protocol-creation", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __91__EXExtensionContextImplementation__derivedExtensionAuxiliaryHostProtocolWithContextClass___block_invoke_77(uint64_t a1)
{
  v2 = [*(a1 + 40) _extensionAuxiliaryHostProtocol];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (v5)
  {
    v6 = [v5 protocol];
    if (!v6)
    {
      v7 = _EXDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __91__EXExtensionContextImplementation__derivedExtensionAuxiliaryHostProtocolWithContextClass___block_invoke_77_cold_1();
      }
    }

    Name = protocol_getName(v6);
    v9 = strlen(Name);
    v10 = malloc_type_malloc(v9 + 24, 0x64351E41uLL);
    strlcpy(v10, "__NSX__HOST__PROTOCOL__", v9 + 24);
    strlcat(v10, Name, v9 + 24);
    v11 = objc_getProtocol(v10);
    if (!v11)
    {
      v11 = objc_allocateProtocol(v10);
      protocol_addProtocol(v11, v6);
      protocol_addProtocol(v11, &unk_1EF2A04A8);
      objc_registerProtocol(v11);
    }

    free(v10);
    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v11];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (EXExtensionContextImplementation)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 extensionContext:(id)a6
{
  v79 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v65.receiver = self;
  v65.super_class = EXExtensionContextImplementation;
  v14 = [(EXExtensionContextImplementation *)&v65 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_extensionContext, v13);
    v46 = v12;
    v47 = v11;
    if (v12)
    {
      v16 = [v12 copy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    }

    v45 = v13;
    UUID = v15->__UUID;
    v15->__UUID = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v48 = v10;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v61 objects:v78 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v62;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v61 + 1) + 8 * i) copy];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v61 objects:v78 count:16];
      }

      while (v21);
    }

    v43 = v19;

    v44 = v18;
    objc_storeStrong(&v15->_inputItems, v18);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v25 = v15;
    obj = v15->_inputItems;
    v51 = [(NSArray *)obj countByEnumeratingWithState:&v57 objects:v77 count:16];
    if (v51)
    {
      v50 = *v58;
      do
      {
        v26 = 0;
        do
        {
          if (*v58 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = v26;
          v27 = *(*(&v57 + 1) + 8 * v26);
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v28 = [v27 attachments];
          v29 = [v28 countByEnumeratingWithState:&v53 objects:v76 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v54;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v54 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v53 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [v33 _loadOperator];

                  if (!v34)
                  {
                    v35 = +[_EXDefaults sharedInstance];
                    v36 = [v35 useItemProviderXPCConnection];

                    if (v36)
                    {
                      v37 = [[_EXLoadOperator alloc] initWithItemProvider:v33];
                    }

                    else
                    {
                      v37 = [[_EXItemProviderExtensionVendorLoadOperator alloc] initWithExtensionContextIdentifier:v25->__UUID];
                    }

                    v38 = v37;
                    [v33 set_loadOperator:v37];
                  }
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v53 objects:v76 count:16];
            }

            while (v30);
          }

          v26 = v52 + 1;
        }

        while (v52 + 1 != v51);
        v51 = [(NSArray *)obj countByEnumeratingWithState:&v57 objects:v77 count:16];
      }

      while (v51);
    }

    v39 = _EXLegacyLog();
    v12 = v46;
    v11 = v47;
    v15 = v25;
    v13 = v45;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      *buf = 138413314;
      v67 = v42;
      v68 = 2112;
      v69 = v43;
      v70 = 2114;
      v71 = v47;
      v72 = 2114;
      v73 = v46;
      v74 = 2114;
      v75 = v45;
      _os_log_debug_impl(&dword_1847D1000, v39, OS_LOG_TYPE_DEBUG, "%@ initialized with inputItems: %@ endpoint: %{public}@ UUID: %{public}@ extensionContext: %{public}@", buf, 0x34u);
    }

    [(EXExtensionContextImplementation *)v25 _initializeAuxillaryConnectionWithListenerEndpoint:v47];
    v10 = v48;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v15;
}

- (EXExtensionContextImplementation)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  UUID = self->__UUID;
  self->__UUID = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputItems"];

  inputItems = self->_inputItems;
  self->_inputItems = v7;

  v9 = _EXLegacyLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = self->__UUID;
    v12 = self->_inputItems;
    v14 = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_debug_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEBUG, "{public}%@ initialized with inputItems: %@ UUID: %{public}@ ", &v14, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->__UUID;
  v6 = a3;
  [v6 encodeObject:UUID forKey:@"uuid"];
  if (self->_inputItems)
  {
    inputItems = self->_inputItems;
  }

  else
  {
    inputItems = MEMORY[0x1E695E0F0];
  }

  [v6 encodeObject:inputItems forKey:@"inputItems"];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EXExtensionContextImplementation *)self extensionContext];
  v6 = [objc_opt_class() _extensionAuxiliaryVendorProtocol];
  v7 = [objc_opt_class() _extensionAuxiliaryHostProtocol];
  v8 = _EXLegacyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v34 = 138413058;
    v35 = v4;
    v36 = 2112;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v7;
    _os_log_debug_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEBUG, "_initializeAuxillaryConnectionWithListenerEndpoint: %@ - extensionContext: %@ auxVendorProtocol: %@ auxHostProtocol:%@", &v34, 0x2Au);
  }

  if (v4)
  {
    p_auxiliaryConnection = &self->__auxiliaryConnection;
    if (self->__auxiliaryConnection)
    {
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [EXExtensionContextImplementation _initializeAuxillaryConnectionWithListenerEndpoint:];
      }
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
      v12 = *p_auxiliaryConnection;
      *p_auxiliaryConnection = v11;

      if (!v6 || !v7)
      {
        v13 = _EXDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [EXExtensionContextImplementation _initializeAuxillaryConnectionWithListenerEndpoint:];
        }
      }

      [*p_auxiliaryConnection setExportedInterface:v6];
      [*p_auxiliaryConnection setExportedObject:v5];
      v14 = [v5 _derivedExtensionAuxiliaryHostProtocol];
      [*p_auxiliaryConnection setRemoteObjectInterface:v14];

      [*p_auxiliaryConnection resume];
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(EXExtensionContextImplementation *)p_auxiliaryConnection _initializeAuxillaryConnectionWithListenerEndpoint:v10, v15, v16, v17, v18, v19, v20];
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v7 && v6)
  {
    if (self->__auxiliaryListener)
    {
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [EXExtensionContextImplementation _initializeAuxillaryConnectionWithListenerEndpoint:];
      }
    }

    else
    {
      v21 = [(EXExtensionContextImplementation *)self extensionContext];
      v22 = [v7 protocol];
      v23 = [v21 conformsToProtocol:v22];

      if ((v23 & 1) == 0)
      {
        v24 = _EXDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [(EXExtensionContextImplementation *)v5 _initializeAuxillaryConnectionWithListenerEndpoint:v7, v24];
        }
      }

      v25 = [MEMORY[0x1E696B0D8] anonymousListener];
      auxiliaryListener = self->__auxiliaryListener;
      self->__auxiliaryListener = v25;

      [(NSXPCListener *)self->__auxiliaryListener setDelegate:self];
      [(NSXPCListener *)self->__auxiliaryListener resume];
      v10 = _EXLegacyLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(EXExtensionContextImplementation *)&self->__auxiliaryListener _initializeAuxillaryConnectionWithListenerEndpoint:v10, v27, v28, v29, v30, v31, v32];
      }
    }

    goto LABEL_25;
  }

LABEL_26:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v7 = _EXLegacyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    UUID = self->__UUID;
    *buf = 138543362;
    v58 = UUID;
    _os_log_impl(&dword_1847D1000, v7, OS_LOG_TYPE_DEFAULT, "preparing to call _completeRequestReturningItems:forExtensionContextWithUUID: UUID: %{public}@", buf, 0xCu);
  }

  v9 = _os_activity_create(&dword_1847D1000, "completing request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v10 = _os_activity_create(&dword_1847D1000, "completing request - consume items", v9, OS_ACTIVITY_FLAG_DEFAULT);
  v34 = _os_activity_create(&dword_1847D1000, "completing request - completion part 1", v9, OS_ACTIVITY_FLAG_DEFAULT);
  v33 = _os_activity_create(&dword_1847D1000, "completing request - completion part 2", v9, OS_ACTIVITY_FLAG_DEFAULT);
  v36 = v10;
  os_activity_scope_enter(v10, &state);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = v6;
  v39 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v39)
  {
    v38 = *v53;
    do
    {
      v11 = 0;
      do
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v37);
        }

        v40 = v11;
        v12 = *(*(&v52 + 1) + 8 * v11);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v13 = [v12 attachments];
        v14 = [v13 countByEnumeratingWithState:&v48 objects:v59 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v49;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v49 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v48 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = +[_EXDefaults sharedInstance];
                v20 = [v19 useItemProviderXPCConnection];

                if (v20)
                {
                  v21 = _EXCopyingLoadOperator;
                }

                else
                {
                  v21 = _EXItemProviderCopyingLoadOperator;
                }

                v22 = [v21 alloc];
                [(EXExtensionContextImplementation *)self _extensionHostAuditToken];
                v23 = [v22 initWithItemProvider:v18 destinationProcessAuditToken:buf];
                [v18 set_loadOperator:v23];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v48 objects:v59 count:16];
          }

          while (v15);
        }

        v11 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v39);
  }

  os_activity_scope_leave(&state);
  v24 = _EXLegacyLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1847D1000, v24, OS_LOG_TYPE_DEFAULT, "call _completeRequestReturningItems:forExtensionContextWithUUID:", buf, 2u);
  }

  v25 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
  v26 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke;
  block[3] = &unk_1E6E4DFF0;
  v42 = v34;
  v43 = v25;
  v44 = v37;
  v45 = self;
  v46 = v33;
  v47 = v35;
  v27 = v35;
  v28 = v33;
  v29 = v37;
  v30 = v25;
  v31 = v34;
  dispatch_async(v26, block);

  v32 = *MEMORY[0x1E69E9840];
}

void __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke_2;
  v9[3] = &unk_1E6E4DC78;
  v8 = *(a1 + 48);
  v3 = *(v8.i64[1] + 80);
  v4 = v8.i64[0];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v7;
  [v2 _completeRequestReturningItems:v4 forExtensionContextWithUUID:v3 completion:v9];

  os_activity_scope_leave(&state);
}

void __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = _EXLegacyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "calling out to _completeRequestReturningItemsSecondHalf", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke_105;
  v8[3] = &unk_1E6E4DC78;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v7 _completeRequestReturningItemsSecondHalf:v8];
}

void __84__EXExtensionContextImplementation_completeRequestReturningItems_completionHandler___block_invoke_105(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 56) copy];
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7 = _EXLegacyLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_1847D1000, v7, OS_LOG_TYPE_DEFAULT, "in _NSExtensionCompleteRequestReturningItemsContinuation", v12, 2u);
  }

  v8 = _EXExtensionGetGlobalStateQueue(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __EXExtensionCompleteRequestReturningItemsContinuation_block_invoke;
  v12[3] = &unk_1E6E4DE58;
  v14 = v4;
  v15 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  v11 = v4;
  dispatch_async(v8, v12);
}

- (void)cancelRequestWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _EXLegacyLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    UUID = self->__UUID;
    LODWORD(buf.opaque[0]) = 138543362;
    *(buf.opaque + 4) = UUID;
    _os_log_impl(&dword_1847D1000, v5, OS_LOG_TYPE_DEFAULT, "preparing to call _cancelRequestWithError:forExtensionContextWithUUID: UUID: %{public}@", &buf, 0xCu);
  }

  v7 = _os_activity_create(&dword_1847D1000, "cancelling request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8 = _os_activity_create(&dword_1847D1000, "cancelling request - teardown", v7, OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v7, &buf);
  v9 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
  v10 = self->__UUID;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__EXExtensionContextImplementation_cancelRequestWithError___block_invoke;
  v13[3] = &unk_1E6E4DB10;
  v11 = v8;
  v14 = v11;
  v15 = self;
  [v9 _cancelRequestWithError:v4 forExtensionContextWithUUID:v10 completion:v13];

  os_activity_scope_leave(&buf);
  v12 = *MEMORY[0x1E69E9840];
}

void __59__EXExtensionContextImplementation_cancelRequestWithError___block_invoke(uint64_t a1)
{
  v2 = _EXExtensionGetGlobalStateQueue(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__EXExtensionContextImplementation_cancelRequestWithError___block_invoke_2;
  v5[3] = &unk_1E6E4DB10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __59__EXExtensionContextImplementation_cancelRequestWithError___block_invoke_2(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v3);
  v2 = [MEMORY[0x1E696B0F8] _sharedExtensionContextVendor];
  [v2 _tearDownContextWithUUID:*(*(a1 + 40) + 80)];

  os_activity_scope_leave(&v3);
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1847D1000, "opening URL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9 = _os_activity_create(&dword_1847D1000, "opening URL completion", v8, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v10 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__EXExtensionContextImplementation_openURL_completionHandler___block_invoke;
  v13[3] = &unk_1E6E4E040;
  v11 = v7;
  v15 = v11;
  v12 = v9;
  v14 = v12;
  [v10 _openURL:v6 completion:v13];

  os_activity_scope_leave(&state);
}

void __62__EXExtensionContextImplementation_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (*(a1 + 40))
  {
    v4 = _EXExtensionGetGlobalStateQueue(0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__EXExtensionContextImplementation_openURL_completionHandler___block_invoke_2;
    block[3] = &unk_1E6E4E018;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = a2;
    dispatch_async(v4, block);
  }

  else
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(a1 + 32), &state);
    os_activity_scope_leave(&state);
  }
}

void __62__EXExtensionContextImplementation_openURL_completionHandler___block_invoke_2(uint64_t a1)
{
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v3);
  v2 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  os_activity_scope_leave(&v3);
}

- (void)_loadItemForPayload:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_EXDefaults sharedInstance];
  v9 = [v8 useItemProviderXPCConnection];

  if (v9)
  {
    v15 = _EXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(EXExtensionContextImplementation *)v15 _loadItemForPayload:v16 completionHandler:v17, v18, v19, v20, v21, v22];
    }

    __break(1u);
  }

  else
  {
    v10 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
    v11 = dispatch_get_global_queue(25, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__EXExtensionContextImplementation__loadItemForPayload_completionHandler___block_invoke;
    v23[3] = &unk_1E6E4DC78;
    v24 = v10;
    v25 = v6;
    v26 = self;
    v27 = v7;
    v12 = v7;
    v13 = v6;
    v14 = v10;
    dispatch_async(v11, v23);
  }
}

void __74__EXExtensionContextImplementation__loadItemForPayload_completionHandler___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v5 = *(v4 + 80);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__EXExtensionContextImplementation__loadItemForPayload_completionHandler___block_invoke_2;
  v6[3] = &unk_1E6E4E068;
  v6[4] = v4;
  v7 = v3;
  [v1 _loadItemForPayload:v2 contextIdentifier:v5 completionHandler:v6];
}

void __74__EXExtensionContextImplementation__loadItemForPayload_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 extensionContext];
  _NSExtensionContextCompleteItemLoading(v8, v7, v6, *(a1 + 40));
}

- (void)_loadPreviewImageForPayload:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_EXDefaults sharedInstance];
  v9 = [v8 useItemProviderXPCConnection];

  if (v9)
  {
    v13 = _EXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(EXExtensionContextImplementation *)v13 _loadPreviewImageForPayload:v14 completionHandler:v15, v16, v17, v18, v19, v20];
    }

    __break(1u);
  }

  else
  {
    v10 = [(EXExtensionContextImplementation *)self _extensionHostProxy];
    UUID = self->__UUID;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __82__EXExtensionContextImplementation__loadPreviewImageForPayload_completionHandler___block_invoke;
    v21[3] = &unk_1E6E4E068;
    v21[4] = self;
    v22 = v7;
    v12 = v7;
    [v10 _loadPreviewImageForPayload:v6 contextIdentifier:UUID completionHandler:v21];
  }
}

void __82__EXExtensionContextImplementation__loadPreviewImageForPayload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 extensionContext];
  _NSExtensionContextCompleteItemLoading(v8, v7, v6, *(a1 + 40));
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EXExtensionContextImplementation *)self extensionContext];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__EXExtensionContextImplementation__openURL_completion___block_invoke;
    block[3] = &unk_1E6E4DC50;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __56__EXExtensionContextImplementation__openURL_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) extensionContext];
  v2 = *(a1 + 40);
  v3 = _Block_copy(*(a1 + 48));
  [v4 performSelector:sel___UI_upcall_openURL_completion_ withObject:v2 withObject:v3];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = EXExtensionContextImplementation;
  v4 = [(EXExtensionContextImplementation *)&v10 description];
  UUID = self->__UUID;
  if ([(EXExtensionContextImplementation *)self _isHost])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(EXExtensionContextImplementation *)self _isDummyExtension])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"%@ - UUID: %@ - _isHost: %@\n_isDummyExtension:%@\ninputItems:\n%@", v4, UUID, v6, v7, self->_inputItems];

  return v8;
}

- (void)_willPerformHostCallback:(id)a3
{
  v4 = a3;
  if (self->__auxiliaryConnection && ![(EXExtensionContextImplementation *)self _isHost])
  {
    v5 = [(NSXPCConnection *)self->__auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_124];
    if (objc_opt_respondsToSelector())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __61__EXExtensionContextImplementation__willPerformHostCallback___block_invoke_126;
      v6[3] = &unk_1E6E4E0B0;
      v7 = v4;
      [v5 ___nsx_pingHost:v6];
    }

    else
    {
      v4[2](v4);
    }
  }

  else
  {
    v4[2](v4);
  }
}

void __61__EXExtensionContextImplementation__willPerformHostCallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _EXLegacyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__EXExtensionContextImplementation__willPerformHostCallback___block_invoke_cold_1(v2, v3);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(EXExtensionContextImplementation *)self extensionContext];
  v9 = [v8 _derivedExtensionAuxiliaryHostProtocol];
  v10 = [objc_opt_class() _extensionAuxiliaryVendorProtocol];
  [v7 setRemoteObjectInterface:v10];

  [v7 setExportedInterface:v9];
  [v7 setExportedObject:v8];
  if (self->__auxiliaryConnection)
  {
    v11 = _EXDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [EXExtensionContextImplementation listener:shouldAcceptNewConnection:];
    }
  }

  objc_storeStrong(&self->__auxiliaryConnection, a4);
  [v7 resume];
  v12 = _EXLegacyLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412802;
    v19 = v7;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    _os_log_debug_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEBUG, "New connection: %@ for listener: %{public}@ interface: %{public}@", &v18, 0x20u);
  }

  v13 = [(EXExtensionContextImplementation *)self extensionContext];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(EXExtensionContextImplementation *)self extensionContext];
    [v15 didConnectToVendor:v7];
  }

  v16 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)set_pkUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_pkUUID
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setProcessAssertion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processAssertion
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

void __91__EXExtensionContextImplementation__derivedExtensionAuxiliaryHostProtocolWithContextClass___block_invoke_77_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: unexpected nil subclass aux host protocol!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1847D1000, v1, OS_LOG_TYPE_ERROR, "%{public}@ : AUX connectino has already been created for endpoint '%{public}@'.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: must define both host and vendor aux protocols!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:(uint64_t)a3 .cold.3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_3(&dword_1847D1000, a2, a3, "AUX connection created: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, v0, OS_LOG_TYPE_ERROR, "%{public}@ : AUX Listener has already been created.", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:(NSObject *)a3 .cold.5(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 protocol];
  v8 = NSStringFromProtocol(v7);
  v10 = 136316162;
  v11 = "[self.extensionContext conformsToProtocol:auxHostProtocol.protocol]";
  v12 = 2080;
  v13 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/EXExtensionContextImplementation.m";
  v14 = 1024;
  v15 = 283;
  v16 = 2112;
  v17 = v5;
  v18 = 2112;
  v19 = v8;
  _os_log_fault_impl(&dword_1847D1000, a3, OS_LOG_TYPE_FAULT, "%s - %s:%d: Class %@ does not conform to aux host protocol: %@", &v10, 0x30u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_initializeAuxillaryConnectionWithListenerEndpoint:(uint64_t)a3 .cold.6(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_3(&dword_1847D1000, a2, a3, "AUX Listener created: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_loadItemForPayload:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_loadPreviewImageForPayload:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_willPerformHostCallback:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x1E69E9840];
}

void __61__EXExtensionContextImplementation__willPerformHostCallback___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "failed to ping host: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: listener is one-shot!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end