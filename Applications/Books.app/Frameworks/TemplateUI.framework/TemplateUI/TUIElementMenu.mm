@interface TUIElementMenu
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementMenu

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v7 = a5;
  v8 = objc_alloc_init(_TUIElementMenuBuilder);
  v9 = [v7 stringForAttribute:206 node:a3.var0];
  [(_TUIElementMenuBuilder *)v8 setTitle:v9];

  v10 = [v7 BOOLForAttribute:107 node:a3.var0];
  [(_TUIElementMenuBuilder *)v8 setIsInline:v10];
  return v8;
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = [a3 finalizeMenuItem];
  [v6 addMenuContainer:v7];
}

@end