@interface TUIElementTextBInstantiator
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextBInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TUIElementTextBInstantiator;
  var0 = node.var0;
  objectCopy = object;
  objc_msgSendSuper2(&v10, "configureObject:withNode:attributes:context:", objectCopy, var0, attributes, context);
  [objectCopy setStyle:{1, v10.receiver, v10.super_class}];
}

@end