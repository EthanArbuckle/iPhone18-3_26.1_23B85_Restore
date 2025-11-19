@interface BSUIElementBooksUIComponent
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation BSUIElementBooksUIComponent

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v10 = [a5 objectForAttribute:217 node:var0];
  objc_opt_class();
  v9 = TUIDynamicCast();
  [v8 setRawComponentModel:v9];
}

@end