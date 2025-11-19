@interface TUIElementActionData
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementActionData

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:137 node:var0];
  [v9 setKey:v10];

  v11 = [v8 objectForAttribute:217 node:var0];

  [v9 setValue:v11];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 key];

  if (v7)
  {
    v8 = [v10 value];
    v9 = [v10 key];
    [v6 setActionData:v8 forKey:v9];
  }
}

@end