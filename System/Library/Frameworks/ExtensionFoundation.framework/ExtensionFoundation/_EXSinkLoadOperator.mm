@interface _EXSinkLoadOperator
- (_EXSinkLoadOperator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6;
- (void)loadPreviewImageWithCompletionHandler:(id)a3 expectedValueClass:(Class)a4 options:(id)a5;
@end

@implementation _EXSinkLoadOperator

- (_EXSinkLoadOperator)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EXSinkLoadOperator;
  v5 = [(_EXLoadOperator *)&v9 _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315650;
    v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v7 = 1024;
    v8 = 229;
    v9 = 2080;
    v10 = "[_EXSinkLoadOperator encodeWithCoder:]";
    _os_log_fault_impl(&dword_1847D1000, v4, OS_LOG_TYPE_FAULT, "%s - %d: %s unexpected call in destination process", &v5, 0x1Cu);
  }

  __break(1u);
}

- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v32 = NSStringFromClass(a5);
    *buf = 136446978;
    v43 = "[_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
    v44 = 2114;
    v45 = v10;
    v46 = 2114;
    v47 = v32;
    v48 = 2114;
    v49 = v12;
    _os_log_debug_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEBUG, "%{public}s typeIdentifier: %{public}@ expectedValueClass: %{public}@ options: %{public}@", buf, 0x2Au);
  }

  if (!a5)
  {
    v16 = +[_EXDefaults sharedInstance];
    v17 = [v16 itemProviderTypes];

    v14 = _EXDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:];
    }

    goto LABEL_15;
  }

  if (objc_opt_class() == a5)
  {
    v18 = +[_EXDefaults sharedInstance];
    v17 = [v18 itemProviderTypes];

    v14 = _EXDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:];
    }

    goto LABEL_15;
  }

  if (objc_opt_class() == a5)
  {
    v19 = MEMORY[0x1E695DFD8];
    v41[0] = a5;
    v41[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v15 = [v19 setWithArray:v14];
    goto LABEL_14;
  }

  if (([(objc_class *)a5 isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v14 = +[_EXDefaults sharedInstance];
    v15 = [v14 plistAndValueTypes];
LABEL_14:
    v17 = v15;
LABEL_15:

    goto LABEL_16;
  }

  v17 = [MEMORY[0x1E695DFD8] setWithObject:a5];
LABEL_16:
  v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A5190];
  [v20 setClasses:v17 forSelector:sel_resolveWithIdentifier_className_options_reply_ argumentIndex:0 ofReply:1];
  v21 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
  [v21 setRemoteObjectInterface:v20];
  [v21 resume];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke;
  v37[3] = &unk_1E6E4DB38;
  v22 = v11;
  v38 = v22;
  v23 = [v21 remoteObjectProxyWithErrorHandler:v37];
  v24 = NSStringFromClass(a5);
  if (v24)
  {
    v25 = [v12 objectForKeyedSubscript:@"com.apple.Foundation.NSItemProviderExpectedClass"];
    v26 = v25;
    if (!v25 || ![v25 length])
    {
      v39 = @"com.apple.Foundation.NSItemProviderExpectedClass";
      v40 = v24;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

      v12 = v27;
    }
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126;
  v33[3] = &unk_1E6E4E6E8;
  v34 = v24;
  v35 = v10;
  v36 = v22;
  v28 = v22;
  v29 = v10;
  v30 = v24;
  [v23 resolveWithIdentifier:v29 className:v30 options:v12 reply:v33];

  v31 = *MEMORY[0x1E69E9840];
}

- (void)loadPreviewImageWithCompletionHandler:(id)a3 expectedValueClass:(Class)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _EXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_EXSinkLoadOperator loadPreviewImageWithCompletionHandler:a4 expectedValueClass:v9 options:v10];
  }

  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A5190];
  v12 = +[_EXDefaults sharedInstance];
  v13 = [v12 plistTypes];
  [v11 setClasses:v13 forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:2 ofReply:0];

  v14 = +[_EXDefaults sharedInstance];
  v15 = [v14 imageTypes];
  [v11 setClasses:v15 forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:0 ofReply:1];

  v16 = +[_EXDefaults sharedInstance];
  v17 = [v16 errorTypes];
  [v11 setClasses:v17 forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:1 ofReply:1];

  v18 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
  [v18 setRemoteObjectInterface:v11];
  [v18 resume];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke;
  v25[3] = &unk_1E6E4DB38;
  v19 = v8;
  v26 = v19;
  v20 = [v18 remoteObjectProxyWithErrorHandler:v25];
  v21 = NSStringFromClass(a4);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke_129;
  v23[3] = &unk_1E6E4E710;
  v24 = v19;
  v22 = v19;
  [v20 previewImageWithClassName:v21 options:v9 reply:v23];
}

- (void)loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136446466;
  OUTLINED_FUNCTION_0_6();
  v4 = v0;
  v2 = *MEMORY[0x1E69E9840];
}

- (void)loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 136446466;
  OUTLINED_FUNCTION_0_6();
  v4 = v0;
  _os_log_fault_impl(&dword_1847D1000, v1, OS_LOG_TYPE_FAULT, "%{public}s nil expectedValueClass allowing %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)loadPreviewImageWithCompletionHandler:(objc_class *)a1 expectedValueClass:(uint64_t)a2 options:(NSObject *)a3 .cold.1(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(a1);
  v7 = 136315650;
  v8 = "[_EXSinkLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "%s expectedValueClass: %@ options: %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end