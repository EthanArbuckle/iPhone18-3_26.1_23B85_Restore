@interface TUIElementTextAttributed
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextAttributed

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  v8 = [attributesCopy colorForAttribute:51 node:var0];
  v9 = [attributesCopy fontSpecForNode:var0];
  v10 = [attributesCopy stringForAttribute:203 node:var0];
  v11 = [TUIBox textAlignmentFromString:v10];

  v12 = [[TUIAttributedStringBuilder alloc] initWithFontSpec:v9 style:0 color:v8 textAlignment:v11];
  v13 = [attributesCopy stringForAttribute:102 node:var0];

  [(TUIAttributedStringBuilder *)v12 setOptions:sub_5E5B8(v13, 2uLL)];
  return v12;
}

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  objectCopy = object;
  v9 = [attributes stringForAttribute:178 node:var0];
  [objectCopy setRole:v9];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  v8 = [builder finalizeTextModelWithContext:context];
  [objectCopy setString:v8];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  string = [objectCopy string];
  role = [objectCopy role];

  [builderCopy addAttributedString:string forRole:role];
}

@end