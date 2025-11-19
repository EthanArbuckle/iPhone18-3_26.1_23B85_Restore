@interface NSObject(AXTrmpoline)
- (AXTrampoline)axSuperTrampoline;
@end

@implementation NSObject(AXTrmpoline)

- (AXTrampoline)axSuperTrampoline
{
  Class = object_getClass(a1);
  isMetaClass = class_isMetaClass(Class);
  v4 = a1;
  if (!isMetaClass)
  {
    v4 = object_getClass(a1);
  }

  Superclass = class_getSuperclass(v4);

  return [AXTrampoline trampolineWithCaller:a1 targetClass:Superclass];
}

@end