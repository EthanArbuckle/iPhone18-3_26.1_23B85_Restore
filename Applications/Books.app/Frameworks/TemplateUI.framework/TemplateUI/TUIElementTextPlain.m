@interface TUIElementTextPlain
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTextPlain

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:178 node:var0];
  [v8 setRole:v9];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 text];
  v8 = [v7 role];

  [v6 addText:v9 forRole:v8];
}

@end