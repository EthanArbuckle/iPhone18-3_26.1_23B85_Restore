@interface NSObject(AXTrmpoline)
- (AXTrampoline)axSuperTrampoline;
@end

@implementation NSObject(AXTrmpoline)

- (AXTrampoline)axSuperTrampoline
{
  Class = object_getClass(self);
  isMetaClass = class_isMetaClass(Class);
  selfCopy = self;
  if (!isMetaClass)
  {
    selfCopy = object_getClass(self);
  }

  Superclass = class_getSuperclass(selfCopy);

  return [AXTrampoline trampolineWithCaller:self targetClass:Superclass];
}

@end