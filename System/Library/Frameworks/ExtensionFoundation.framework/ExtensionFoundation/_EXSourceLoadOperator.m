@interface _EXSourceLoadOperator
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSItemProvider)itemProvider;
- (_EXSourceLoadOperator)initWithCoder:(id)a3;
- (_EXSourceLoadOperator)initWithItemProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)previewImageWithClassName:(id)a3 options:(id)a4 reply:(id)a5;
- (void)resolveWithIdentifier:(id)a3 className:(id)a4 options:(id)a5 reply:(id)a6;
@end

@implementation _EXSourceLoadOperator

- (_EXSourceLoadOperator)initWithItemProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _EXSourceLoadOperator;
  v5 = [(_EXLoadOperator *)&v10 _init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 1, v4);
    v7 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (_EXSourceLoadOperator)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 136315650;
    v9 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v10 = 1024;
    v11 = 122;
    v12 = 2112;
    v13 = v6;
    _os_log_fault_impl(&dword_1847D1000, v4, OS_LOG_TYPE_FAULT, "%s - %d: %@ cannot be decoded", &v8, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  listener = self->_listener;
  v4 = a3;
  v5 = [(NSXPCListener *)listener endpoint];
  [v4 encodeObject:v5 forKey:@"endpoint"];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1EF2A5190];
  v8 = +[_EXDefaults sharedInstance];
  v9 = [v8 plistAndValueTypes];
  [v7 setClasses:v9 forSelector:sel_resolveWithIdentifier_className_options_reply_ argumentIndex:2 ofReply:0];

  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (void)resolveWithIdentifier:(id)a3 className:(id)a4 options:(id)a5 reply:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35 = 0u;
  v36 = 0u;
  v14 = [MEMORY[0x1E696B0B8] currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v16 = NSClassFromString(v11);
  v17 = v16;
  if (v11 && !v16)
  {
    v18 = _EXDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v11;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __71___EXSourceLoadOperator_resolveWithIdentifier_className_options_reply___block_invoke;
  v26[3] = &unk_1E6E4E698;
  v27 = WeakRetained;
  v28 = v10;
  v33 = v35;
  v34 = v36;
  v29 = v12;
  v30 = v11;
  v31 = v13;
  v32 = v17;
  v20 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v10;
  v24 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v26);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)previewImageWithClassName:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);
  v12 = NSClassFromString(v10);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___EXSourceLoadOperator_previewImageWithClassName_options_reply___block_invoke;
  v16[3] = &unk_1E6E4E6C0;
  v17 = WeakRetained;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v13 = v9;
  v14 = v8;
  v15 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

- (NSItemProvider)itemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_itemProvider);

  return WeakRetained;
}

@end