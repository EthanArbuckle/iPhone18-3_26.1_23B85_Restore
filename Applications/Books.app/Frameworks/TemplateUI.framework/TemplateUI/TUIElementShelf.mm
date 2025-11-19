@interface TUIElementShelf
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementShelf

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v12 = a3;
  v9 = [v8 lengthForAttribute:58 node:var0];
  [v12 setContentWidth:{v9, v10}];
  v11 = [v8 BOOLForAttribute:176 node:var0];

  [v12 setRespectsSafeArea:v11];
}

@end