@interface NSObject(BSXPCAutoCoding)
+ (id)supportedCodings;
@end

@implementation NSObject(BSXPCAutoCoding)

+ (id)supportedCodings
{
  if (self)
  {
    selfCopy = self;
    while (selfCopy != objc_opt_class())
    {
      AssociatedObject = objc_getAssociatedObject(selfCopy, sel_supportedCodings);
      Superclass = class_getSuperclass(selfCopy);
      if (!AssociatedObject)
      {
        selfCopy = Superclass;
        if (Superclass)
        {
          continue;
        }
      }

      return AssociatedObject;
    }
  }

  return 0;
}

@end