@interface TUIElementSymbolImagePlain
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementSymbolImagePlain

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  objectCopy = object;
  v13 = contextCopy;
  v49 = objectCopy;
  v14 = [attributesCopy fontSpecForNode:node.var0];
  environment = [contextCopy environment];
  v16 = [v14 mappedSpecIfNeededWithEnvironment:environment];

  v50 = [attributesCopy stringForAttribute:137 node:var0];
  v17 = [attributesCopy stringForAttribute:194 node:var0];
  v18 = [TUISymbolImageBox scaleFromString:v17];

  v19 = [attributesCopy stringForAttribute:224 node:var0];
  [v16 weight];
  v21 = [TUISymbolImageBox weightFromString:v19 withDefault:UIImageSymbolWeightForFontWeight(v20)];

  v22 = [attributesCopy stringForAttribute:168 node:var0];
  v23 = [TUISymbolImageBox renderingModeFromString:v22];

  v24 = [attributesCopy colorForAttribute:51 node:var0];
  v48 = v24;
  if (v24)
  {
    v51 = v24;
    v25 = [NSArray arrayWithObjects:&v51 count:1];
  }

  else
  {
    v25 = [attributesCopy colorArrayForAttribute:51 node:var0];
  }

  v26 = v25;
  [v16 pointSize];
  v27 = [UIImageSymbolConfiguration tui_configurationWithPointSize:v21 weight:v18 scale:v23 renderingMode:v26 colors:?];
  v28 = [UIImage _systemImageNamed:v50 withConfiguration:v27];
  if (!v28)
  {
    [contextCopy manager];
    v29 = v47 = v16;
    imageResourceCache = [v29 imageResourceCache];
    customImageBundle = [imageResourceCache customImageBundle];
    v28 = [UIImage imageNamed:v50 inBundle:customImageBundle withConfiguration:v27];

    v13 = contextCopy;
    v16 = v47;
  }

  if (([v28 tui_isMulticolorSymbolWithSymbolRenderingMode:v23] & 1) == 0 && objc_msgSend(v26, "count"))
  {
    firstObject = [v26 firstObject];
    [v28 imageWithTintColor:firstObject];
    v34 = v33 = v16;

    v28 = v34;
    v16 = v33;
  }

  if ([attributesCopy BOOLForAttribute:99 node:var0])
  {
    imageFlippedForRightToLeftLayoutDirection = [v28 imageFlippedForRightToLeftLayoutDirection];

    v28 = imageFlippedForRightToLeftLayoutDirection;
  }

  if (v28)
  {
    v36 = [v13 identifierWithNode:var0];
    v37 = v16;
    v38 = [TUIImageModel alloc];
    [v28 size];
    v40 = v39;
    v42 = v41;
    renderingMode = [v28 renderingMode];
    v44 = v38;
    v16 = v37;
    v45 = [(TUIImageModel *)v44 initWithIdentifier:v36 image:v28 size:renderingMode renderMode:v40 alignmentRectInsets:v42, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  else
  {
    v45 = 0;
  }

  [v49 setImageModel:v45];
  v46 = [attributesCopy stringForAttribute:178 node:var0];
  [v49 setRole:v46];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  imageModel = [objectCopy imageModel];
  role = [objectCopy role];

  [builderCopy addImageModel:imageModel forRole:role];
}

@end