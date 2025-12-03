@interface _EXItemProviderExtensionVendorLoadOperator
- (_EXItemProviderExtensionVendorLoadOperator)initWithCoder:(id)coder;
- (_EXItemProviderExtensionVendorLoadOperator)initWithExtensionContextIdentifier:(id)identifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
@end

@implementation _EXItemProviderExtensionVendorLoadOperator

- (_EXItemProviderExtensionVendorLoadOperator)initWithExtensionContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _EXItemProviderExtensionVendorLoadOperator;
  v5 = [(_EXItemProviderExtensionVendorLoadOperator *)&v9 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setIdentifier:uUID];

    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setExtensionContextIdentifier:identifierCopy];
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

- (_EXItemProviderExtensionVendorLoadOperator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_EXItemProviderExtensionVendorLoadOperator *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionContextIdentifier"];
    [(_EXItemProviderExtensionVendorLoadOperator *)v5 setExtensionContextIdentifier:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  extensionContextIdentifier = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  [coderCopy encodeObject:extensionContextIdentifier forKey:@"extensionContextIdentifier"];
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  identifierCopy = identifier;
  extensionContextIdentifier = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  v14 = [EXExtensionContextImplementation _extensionContextForIdentifier:extensionContextIdentifier];

  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v15 setObject:identifierCopy forKeyedSubscript:0x1EF28A830];

  identifier = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [v15 setObject:identifier forKeyedSubscript:0x1EF28A810];

  if (class)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithCString:class_getName(class) encoding:4];
    [v15 setObject:v17 forKeyedSubscript:0x1EF28A850];
  }

  if (optionsCopy)
  {
    [v15 setObject:optionsCopy forKeyedSubscript:0x1EF28A870];
  }

  internalImplementation = [v14 internalImplementation];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117___EXItemProviderExtensionVendorLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke;
  v20[3] = &unk_1E6E4DD90;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [internalImplementation _loadItemForPayload:v15 completionHandler:v20];
}

- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  extensionContextIdentifier = [(_EXItemProviderExtensionVendorLoadOperator *)self extensionContextIdentifier];
  v11 = [EXExtensionContextImplementation _extensionContextForIdentifier:extensionContextIdentifier];

  v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  identifier = [(_EXItemProviderExtensionVendorLoadOperator *)self identifier];
  [v12 setObject:identifier forKeyedSubscript:0x1EF28A810];

  if (class)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithCString:class_getName(class) encoding:4];
    [v12 setObject:v14 forKeyedSubscript:0x1EF28A850];
  }

  if (optionsCopy)
  {
    [v12 setObject:optionsCopy forKeyedSubscript:0x1EF28A870];
  }

  internalImplementation = [v11 internalImplementation];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __111___EXItemProviderExtensionVendorLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke;
  v17[3] = &unk_1E6E4DD90;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [internalImplementation _loadPreviewImageForPayload:v12 completionHandler:v17];
}

@end