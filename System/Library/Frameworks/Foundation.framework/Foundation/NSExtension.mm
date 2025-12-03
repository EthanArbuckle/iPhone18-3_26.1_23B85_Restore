@interface NSExtension
+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)workarounds withExtensionItemsRepresentation:(id)representation;
+ (BOOL)_shouldLogExtensionDiscovery;
+ (BOOL)evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)beginMatchingExtensionsWithAttributes:(id)attributes completion:(id)completion;
+ (id)extensionWithIdentifier:(id)identifier error:(id *)error;
+ (id)extensionWithIdentifier:(id)identifier excludingDisabledExtensions:(BOOL)extensions error:(id *)error;
+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error;
+ (id)globalStateQueueForExtension:(id)extension;
+ (id)predicateForActivationRule:(id)rule;
+ (void)endMatchingExtensions:(id)extensions;
+ (void)extensionWithURL:(id)l completion:(id)completion;
+ (void)extensionWithUUID:(id)d completion:(id)completion;
+ (void)extensionsWithMatchingAttributes:(id)attributes completion:(id)completion;
- (id)_init;
- (id)_initWithPKPlugin:(id)plugin;
- (void)_dropAssertion;
- (void)_hostDidBecomeActiveNote:(id)note;
- (void)_hostDidEnterBackgroundNote:(id)note;
- (void)_hostWillEnterForegroundNote:(id)note;
- (void)_hostWillResignActiveNote:(id)note;
- (void)_kill:(int)_kill;
- (void)_setAllowedErrorClasses:(id)classes;
- (void)cancelExtensionRequestWithIdentifier:(id)identifier;
@end

@implementation NSExtension

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSExtension;
  return [(NSExtension *)&v3 init];
}

+ (id)extensionsWithMatchingAttributes:(id)attributes error:(id *)error
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  result = [_MergedGlobals_119 extensionsWithMatchingAttributes:attributes error:error];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

+ (void)extensionsWithMatchingAttributes:(id)attributes completion:(id)completion
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  [v6 extensionsWithMatchingAttributes:attributes completion:completion];
}

+ (id)beginMatchingExtensionsWithAttributes:(id)attributes completion:(id)completion
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  return [v6 beginMatchingExtensionsWithAttributes:attributes completion:completion];
}

+ (void)endMatchingExtensions:(id)extensions
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v4 = _MergedGlobals_119;

  [v4 endMatchingExtensions:extensions];
}

+ (id)extensionWithIdentifier:(id)identifier error:(id *)error
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  return [v6 extensionWithIdentifier:identifier error:error];
}

+ (id)extensionWithIdentifier:(id)identifier excludingDisabledExtensions:(BOOL)extensions error:(id *)error
{
  extensionsCopy = extensions;
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v8 = _MergedGlobals_119;

  return [v8 extensionWithIdentifier:identifier excludingDisabledExtensions:extensionsCopy error:error];
}

+ (void)extensionWithUUID:(id)d completion:(id)completion
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  if (_MergedGlobals_119)
  {
    v6 = _MergedGlobals_119;

    [v6 extensionWithUUID:d completion:completion];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSOSStatusErrorDomain" code:-4 userInfo:0];
    v8 = *(completion + 2);

    v8(completion, 0, v7);
  }
}

+ (void)extensionWithURL:(id)l completion:(id)completion
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  if (_MergedGlobals_119)
  {
    v6 = _MergedGlobals_119;

    [v6 extensionWithURL:l completion:completion];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSOSStatusErrorDomain" code:-4 userInfo:0];
    v8 = *(completion + 2);

    v8(completion, 0, v7);
  }
}

+ (BOOL)_shouldLogExtensionDiscovery
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v3 = _MergedGlobals_119;

  return [v3 _shouldLogExtensionDiscovery];
}

+ (id)globalStateQueueForExtension:(id)extension
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  result = [_MergedGlobals_119 globalStateQueueForExtension:extension];
  if (!result)
  {
    if (qword_1ED43FB70 != -1)
    {
      dispatch_once(&qword_1ED43FB70, &__block_literal_global_2_1);
    }

    return qword_1ED43FB68;
  }

  return result;
}

dispatch_queue_t __44__NSExtension_globalStateQueueForExtension___block_invoke()
{
  result = dispatch_queue_create("NSExtension global state queue", 0);
  qword_1ED43FB68 = result;
  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  block[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__NSExtension_allocWithZone___block_invoke;
    block[3] = &unk_1E69F4618;
    block[4] = self;
    block[5] = zone;
    if (qword_1ED43FB80 != -1)
    {
      dispatch_once(&qword_1ED43FB80, block);
    }

    return qword_1ED43FB78;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NSExtension;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

id __29__NSExtension_allocWithZone___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___NSExtension;
  result = objc_msgSendSuper2(&v3, sel_allocWithZone_, v1);
  qword_1ED43FB78 = result;
  return result;
}

- (id)_initWithPKPlugin:(id)plugin
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v4 = [_MergedGlobals_119 alloc];

  return [v4 _initWithPKPlugin:plugin];
}

- (void)cancelExtensionRequestWithIdentifier:(id)identifier
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_setAllowedErrorClasses:(id)classes
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_kill:(int)_kill
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostWillEnterForegroundNote:(id)note
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostDidEnterBackgroundNote:(id)note
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostWillResignActiveNote:(id)note
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostDidBecomeActiveNote:(id)note
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_dropAssertion
{
  v4 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v4);
}

+ (BOOL)evaluateActivationRule:(id)rule withExtensionItemsRepresentation:(id)representation
{
  v6 = _NSExtensionClass();

  return [v6 evaluateActivationRule:rule withExtensionItemsRepresentation:representation];
}

+ (id)predicateForActivationRule:(id)rule
{
  v4 = _NSExtensionClass();

  return [v4 predicateForActivationRule:rule];
}

+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)workarounds withExtensionItemsRepresentation:(id)representation
{
  v6 = _NSExtensionClass();

  return [v6 _evaluateActivationRuleWithoutWorkarounds:workarounds withExtensionItemsRepresentation:representation];
}

@end