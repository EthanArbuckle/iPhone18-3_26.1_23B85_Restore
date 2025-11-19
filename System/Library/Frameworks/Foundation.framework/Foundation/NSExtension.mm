@interface NSExtension
+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)a3 withExtensionItemsRepresentation:(id)a4;
+ (BOOL)_shouldLogExtensionDiscovery;
+ (BOOL)evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)beginMatchingExtensionsWithAttributes:(id)a3 completion:(id)a4;
+ (id)extensionWithIdentifier:(id)a3 error:(id *)a4;
+ (id)extensionWithIdentifier:(id)a3 excludingDisabledExtensions:(BOOL)a4 error:(id *)a5;
+ (id)extensionsWithMatchingAttributes:(id)a3 error:(id *)a4;
+ (id)globalStateQueueForExtension:(id)a3;
+ (id)predicateForActivationRule:(id)a3;
+ (void)endMatchingExtensions:(id)a3;
+ (void)extensionWithURL:(id)a3 completion:(id)a4;
+ (void)extensionWithUUID:(id)a3 completion:(id)a4;
+ (void)extensionsWithMatchingAttributes:(id)a3 completion:(id)a4;
- (id)_init;
- (id)_initWithPKPlugin:(id)a3;
- (void)_dropAssertion;
- (void)_hostDidBecomeActiveNote:(id)a3;
- (void)_hostDidEnterBackgroundNote:(id)a3;
- (void)_hostWillEnterForegroundNote:(id)a3;
- (void)_hostWillResignActiveNote:(id)a3;
- (void)_kill:(int)a3;
- (void)_setAllowedErrorClasses:(id)a3;
- (void)cancelExtensionRequestWithIdentifier:(id)a3;
@end

@implementation NSExtension

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSExtension;
  return [(NSExtension *)&v3 init];
}

+ (id)extensionsWithMatchingAttributes:(id)a3 error:(id *)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  result = [_MergedGlobals_119 extensionsWithMatchingAttributes:a3 error:a4];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

+ (void)extensionsWithMatchingAttributes:(id)a3 completion:(id)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  [v6 extensionsWithMatchingAttributes:a3 completion:a4];
}

+ (id)beginMatchingExtensionsWithAttributes:(id)a3 completion:(id)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  return [v6 beginMatchingExtensionsWithAttributes:a3 completion:a4];
}

+ (void)endMatchingExtensions:(id)a3
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v4 = _MergedGlobals_119;

  [v4 endMatchingExtensions:a3];
}

+ (id)extensionWithIdentifier:(id)a3 error:(id *)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v6 = _MergedGlobals_119;

  return [v6 extensionWithIdentifier:a3 error:a4];
}

+ (id)extensionWithIdentifier:(id)a3 excludingDisabledExtensions:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v8 = _MergedGlobals_119;

  return [v8 extensionWithIdentifier:a3 excludingDisabledExtensions:v6 error:a5];
}

+ (void)extensionWithUUID:(id)a3 completion:(id)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  if (_MergedGlobals_119)
  {
    v6 = _MergedGlobals_119;

    [v6 extensionWithUUID:a3 completion:a4];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSOSStatusErrorDomain" code:-4 userInfo:0];
    v8 = *(a4 + 2);

    v8(a4, 0, v7);
  }
}

+ (void)extensionWithURL:(id)a3 completion:(id)a4
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  if (_MergedGlobals_119)
  {
    v6 = _MergedGlobals_119;

    [v6 extensionWithURL:a3 completion:a4];
  }

  else
  {
    v7 = [NSError errorWithDomain:@"NSOSStatusErrorDomain" code:-4 userInfo:0];
    v8 = *(a4 + 2);

    v8(a4, 0, v7);
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

+ (id)globalStateQueueForExtension:(id)a3
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  result = [_MergedGlobals_119 globalStateQueueForExtension:a3];
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

+ (id)allocWithZone:(_NSZone *)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__NSExtension_allocWithZone___block_invoke;
    block[3] = &unk_1E69F4618;
    block[4] = a1;
    block[5] = a3;
    if (qword_1ED43FB80 != -1)
    {
      dispatch_once(&qword_1ED43FB80, block);
    }

    return qword_1ED43FB78;
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NSExtension;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
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

- (id)_initWithPKPlugin:(id)a3
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  v4 = [_MergedGlobals_119 alloc];

  return [v4 _initWithPKPlugin:a3];
}

- (void)cancelExtensionRequestWithIdentifier:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_setAllowedErrorClasses:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_kill:(int)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostWillEnterForegroundNote:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostDidEnterBackgroundNote:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostWillResignActiveNote:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_hostDidBecomeActiveNote:(id)a3
{
  v5 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_dropAssertion
{
  v4 = NSClassFromString(@"NSExtension");

  NSRequestConcreteImplementation(self, a2, v4);
}

+ (BOOL)evaluateActivationRule:(id)a3 withExtensionItemsRepresentation:(id)a4
{
  v6 = _NSExtensionClass();

  return [v6 evaluateActivationRule:a3 withExtensionItemsRepresentation:a4];
}

+ (id)predicateForActivationRule:(id)a3
{
  v4 = _NSExtensionClass();

  return [v4 predicateForActivationRule:a3];
}

+ (BOOL)_evaluateActivationRuleWithoutWorkarounds:(id)a3 withExtensionItemsRepresentation:(id)a4
{
  v6 = _NSExtensionClass();

  return [v6 _evaluateActivationRuleWithoutWorkarounds:a3 withExtensionItemsRepresentation:a4];
}

@end