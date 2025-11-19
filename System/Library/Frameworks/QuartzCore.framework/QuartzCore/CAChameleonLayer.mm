@interface CAChameleonLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
@end

@implementation CAChameleonLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAChameleonLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

@end