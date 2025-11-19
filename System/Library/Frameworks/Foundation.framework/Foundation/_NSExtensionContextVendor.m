@interface _NSExtensionContextVendor
+ (Class)_extensionContextClass;
+ (Class)_extensionPrincipalClass;
+ (id)_extensionDictionary;
+ (id)_extensionMainStoryboard;
+ (id)_sharedExtensionContextVendor;
+ (id)allocWithZone:(_NSZone *)a3;
+ (void)_startListening;
+ (void)_startListening:(BOOL)a3;
- (_NSExtensionContextVendor)init;
- (id)_init;
- (void)_setPrincipalObject:(id)a3 forUUID:(id)a4;
- (void)_tearDownContextWithUUID:(id)a3;
@end

@implementation _NSExtensionContextVendor

+ (id)_sharedExtensionContextVendor
{
  if (qword_1ED43F778 != -1)
  {
    dispatch_once(&qword_1ED43F778, &__block_literal_global_4_0);
  }

  return qword_1ED43F770;
}

+ (void)_startListening
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_105;

  [v3 _startListening];
}

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSExtensionContextVendor;
  return [(_NSExtensionContextVendor *)&v3 init];
}

+ (void)_startListening:(BOOL)a3
{
  v3 = a3;
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v4 = _MergedGlobals_105;

  [v4 _startListening:v3];
}

+ (id)_extensionDictionary
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_105;

  return [v3 _extensionDictionary];
}

+ (Class)_extensionPrincipalClass
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_105;

  return [v3 _extensionPrincipalClass];
}

+ (id)_extensionMainStoryboard
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_105;

  return [v3 _extensionMainStoryboard];
}

+ (Class)_extensionContextClass
{
  if (qword_1ED43F758 != -1)
  {
    dispatch_once(&qword_1ED43F758, &__block_literal_global_22);
  }

  v3 = _MergedGlobals_105;

  return [v3 _extensionContextClass];
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (_NSExtensionContextVendor == a1)
  {
    v6 = NSClassFromString(@"_NSExtensionContextVendor");
    NSRequestConcreteImplementation(a1, a2, v6);
  }

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS____NSExtensionContextVendor;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
}

- (_NSExtensionContextVendor)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSExtensionContextVendor;
  return [(_NSExtensionContextVendor *)&v3 init];
}

- (void)_tearDownContextWithUUID:(id)a3
{
  v5 = NSClassFromString(@"_NSExtensionContextVendor");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)_setPrincipalObject:(id)a3 forUUID:(id)a4
{
  v6 = NSClassFromString(@"_NSExtensionContextVendor");

  NSRequestConcreteImplementation(self, a2, v6);
}

@end