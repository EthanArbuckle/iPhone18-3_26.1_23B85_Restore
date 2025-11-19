@interface NSObject(BSXPCAutoCoding)
+ (id)supportedCodings;
@end

@implementation NSObject(BSXPCAutoCoding)

+ (id)supportedCodings
{
  if (a1)
  {
    v1 = a1;
    while (v1 != objc_opt_class())
    {
      AssociatedObject = objc_getAssociatedObject(v1, sel_supportedCodings);
      Superclass = class_getSuperclass(v1);
      if (!AssociatedObject)
      {
        v1 = Superclass;
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