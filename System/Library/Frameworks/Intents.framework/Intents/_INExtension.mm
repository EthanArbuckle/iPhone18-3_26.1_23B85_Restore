@interface _INExtension
+ (void)initialize;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation _INExtension

- (void)beginRequestWithExtensionContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_INExtension beginRequestWithExtensionContext:]";
    _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s Extension bring-up", &v9, 0xCu);
  }

  v6 = _INExtensionContextWithContext(contextCopy);
  extensionContext = self->_extensionContext;
  self->_extensionContext = v6;

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (INLogInitIfNeeded_once != -1)
    {
      dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
    }

    v3 = objc_opt_class();

    __INExtensionInitialize(self, v3);
  }
}

@end