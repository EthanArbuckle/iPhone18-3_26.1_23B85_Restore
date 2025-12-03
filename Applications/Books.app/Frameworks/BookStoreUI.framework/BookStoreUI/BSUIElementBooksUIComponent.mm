@interface BSUIElementBooksUIComponent
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation BSUIElementBooksUIComponent

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  v10 = [attributes objectForAttribute:217 node:var0];
  objc_opt_class();
  v9 = TUIDynamicCast();
  [boxCopy setRawComponentModel:v9];
}

@end