@interface _EXLoadOperator
+ (id)allocWithZone:(_NSZone *)zone;
- (_EXLoadOperator)initWithCoder:(id)coder;
- (_EXLoadOperator)initWithItemProvider:(id)provider;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
@end

@implementation _EXLoadOperator

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___EXLoadOperator_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = zone;
    block[5] = self;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__factory;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____EXLoadOperator;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _EXLoadOperator;
  return [(_EXLoadOperator *)&v3 init];
}

- (_EXLoadOperator)initWithItemProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[_EXSourceLoadOperator alloc] initWithItemProvider:providerCopy];

  return &v5->super;
}

- (_EXLoadOperator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315650;
    v7 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v8 = 1024;
    v9 = 78;
    v10 = 2080;
    v11 = "[_EXLoadOperator initWithCoder:]";
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315650;
    v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v7 = 1024;
    v8 = 83;
    v9 = 2080;
    v10 = "[_EXLoadOperator encodeWithCoder:]";
  }

  __break(1u);
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  identifierCopy = identifier;
  handlerCopy = handler;
  optionsCopy = options;
  v12 = _EXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromClass(class);
    v15 = 136315906;
    v16 = "[_EXLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
    v17 = 2112;
    *v18 = identifierCopy;
    *&v18[8] = 2112;
    *&v18[10] = v13;
    v19 = 2112;
    v20 = optionsCopy;
    _os_log_debug_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEBUG, "%s typeIdentifier: %@ expectedValueClass: %@ options: %@", &v15, 0x2Au);
  }

  v14 = _EXDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v15 = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v17 = 1024;
    *v18 = 89;
    *&v18[4] = 2080;
    *&v18[6] = "[_EXLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
  }

  __break(1u);
}

- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  v9 = _EXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromClass(class);
    v12 = 136315650;
    v13 = "[_EXLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
    v14 = 2112;
    *v15 = v10;
    *&v15[8] = 2112;
    *&v15[10] = optionsCopy;
    _os_log_debug_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEBUG, "%s expectedValueClass: %@ options: %@", &v12, 0x20u);
  }

  v11 = _EXDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = 136315650;
    v13 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v14 = 1024;
    *v15 = 94;
    *&v15[4] = 2080;
    *&v15[6] = "[_EXLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
  }

  __break(1u);
}

@end