@interface TUIElementColumn
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementColumn

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v12 = a3;
  v9 = [v8 objectForAttribute:55 node:var0];
  [v12 setColumnSpan:v9];

  [v8 floatForAttribute:57 withDefault:var0 node:NAN];
  v11 = v10;

  [v12 setContainerFraction:v11];
}

@end