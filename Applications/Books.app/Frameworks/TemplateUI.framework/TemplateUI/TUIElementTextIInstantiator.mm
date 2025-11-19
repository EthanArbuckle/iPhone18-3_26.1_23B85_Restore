@interface TUIElementTextIInstantiator
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTextIInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___TUIElementTextIInstantiator;
  var0 = a4.var0;
  v9 = a3;
  objc_msgSendSuper2(&v10, "configureObject:withNode:attributes:context:", v9, var0, a5, a6);
  [v9 setStyle:{2, v10.receiver, v10.super_class}];
}

@end