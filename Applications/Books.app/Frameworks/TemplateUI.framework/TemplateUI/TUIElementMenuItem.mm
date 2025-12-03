@interface TUIElementMenuItem
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementMenuItem

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  v8 = objc_alloc_init(_TUIElementMenuItemBuilder);
  -[_TUIElementMenuItemBuilder setIsEnabled:](v8, "setIsEnabled:", [attributesCopy BOOLForAttribute:74 withDefault:1 node:node.var0]);
  v9 = [attributesCopy BOOLForAttribute:145 node:node.var0];

  [(_TUIElementMenuItemBuilder *)v8 setIsOn:v9];
  return v8;
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  finalizeMenuItem = [object finalizeMenuItem];
  [builderCopy addModel:finalizeMenuItem];
}

@end