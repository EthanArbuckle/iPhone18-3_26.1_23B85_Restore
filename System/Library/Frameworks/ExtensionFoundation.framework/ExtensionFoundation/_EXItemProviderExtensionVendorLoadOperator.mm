@interface _EXItemProviderExtensionVendorLoadOperator
- (_EXItemProviderExtensionVendorLoadOperator)initWithCoder:(id)a3;
- (_EXItemProviderExtensionVendorLoadOperator)initWithExtensionContextIdentifier:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6;
- (void)loadPreviewImageWithCompletionHandler:(id)a3 expectedValueClass:(Class)a4 options:(id)a5;
@end

@implementation _EXItemProviderExtensionVendorLoadOperator

- (_EXItemProviderExtensionVendorLoadOperator)initWithExtensionContextIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EXItemProviderExtensionVendorLoadOperator;
  v5 = [(_EXItemProviderExtensionVendorLoadOperator *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setIdentifier:v6];

    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setExtensionContextIdentifier:v4];
    v7 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(_EXItemProviderExtensionVendorLoadOperator *)self setExtensionContextIdentifier:0];
  [(_EXItemProviderExtensionVendorLoadOperator *)self setIdentifier:0];
  v3.receiver = self;
  v3.super_class = _EXItemProviderExtensionVendorLoadOperator;
  [(_EXItemProviderExtensionVendorLoadOperator *)&v3 dealloc];
}

- (_EXItemProviderExtensionVendorLoadOperator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderExtensionVendorLoadOperator *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionContextIdentifier"];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setExtensionContextIdentifier:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  [v4 encodeObject:v6 forKey:@"extensionContextIdentifier"];
}

- (void)loadItemForTypeIdentifier:(id)a3 completionHandler:(id)a4 expectedValueClass:(Class)a5 options:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  v14 = [EXExtensionContextImplementation _extensionContextForIdentifier:v13];

  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v15 setObject:v12 forKeyedSubscript:0x1EF28A830];

  v16 = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [v15 setObject:v16 forKeyedSubscript:0x1EF28A810];

  if (a5)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithCString:class_getName(a5) encoding:4];
    [v15 setObject:v17 forKeyedSubscript:0x1EF28A850];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:0x1EF28A870];
  }

  v18 = [v14 internalImplementation];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117___EXItemProviderExtensionVendorLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke;
  v20[3] = &unk_1E6E4DD90;
  v21 = v10;
  v19 = v10;
  [v18 _loadItemForPayload:v15 completionHandler:v20];
}

- (void)loadPreviewImageWithCompletionHandler:(id)a3 expectedValueClass:(Class)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  v11 = [EXExtensionContextImplementation _extensionContextForIdentifier:v10];

  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v13 = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [v12 setObject:v13 forKeyedSubscript:0x1EF28A810];

  if (a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:class_getName(a4) encoding:4];
    [v12 setObject:v14 forKeyedSubscript:0x1EF28A850];
  }

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:0x1EF28A870];
  }

  v15 = [v11 internalImplementation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __111___EXItemProviderExtensionVendorLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke;
  v17[3] = &unk_1E6E4DD90;
  v18 = v8;
  v16 = v8;
  [v15 _loadPreviewImageForPayload:v12 completionHandler:v17];
}

@end