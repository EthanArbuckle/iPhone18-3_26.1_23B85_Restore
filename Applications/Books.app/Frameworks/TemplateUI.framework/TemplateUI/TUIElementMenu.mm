@interface TUIElementMenu
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementMenu

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  v8 = objc_alloc_init(_TUIElementMenuBuilder);
  v9 = [attributesCopy stringForAttribute:206 node:node.var0];
  [(_TUIElementMenuBuilder *)v8 setTitle:v9];

  v10 = [attributesCopy BOOLForAttribute:107 node:node.var0];
  [(_TUIElementMenuBuilder *)v8 setIsInline:v10];
  return v8;
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  finalizeMenuItem = [object finalizeMenuItem];
  [builderCopy addMenuContainer:finalizeMenuItem];
}

@end