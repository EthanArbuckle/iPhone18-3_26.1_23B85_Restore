@interface TUIElementSymbolImagePlain
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementSymbolImagePlain

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a5;
  v10 = a6;
  var0 = a4.var0;
  v12 = a3;
  v13 = v10;
  v49 = v12;
  v14 = [v9 fontSpecForNode:a4.var0];
  v15 = [v10 environment];
  v16 = [v14 mappedSpecIfNeededWithEnvironment:v15];

  v50 = [v9 stringForAttribute:137 node:var0];
  v17 = [v9 stringForAttribute:194 node:var0];
  v18 = [TUISymbolImageBox scaleFromString:v17];

  v19 = [v9 stringForAttribute:224 node:var0];
  [v16 weight];
  v21 = [TUISymbolImageBox weightFromString:v19 withDefault:UIImageSymbolWeightForFontWeight(v20)];

  v22 = [v9 stringForAttribute:168 node:var0];
  v23 = [TUISymbolImageBox renderingModeFromString:v22];

  v24 = [v9 colorForAttribute:51 node:var0];
  v48 = v24;
  if (v24)
  {
    v51 = v24;
    v25 = [NSArray arrayWithObjects:&v51 count:1];
  }

  else
  {
    v25 = [v9 colorArrayForAttribute:51 node:var0];
  }

  v26 = v25;
  [v16 pointSize];
  v27 = [UIImageSymbolConfiguration tui_configurationWithPointSize:v21 weight:v18 scale:v23 renderingMode:v26 colors:?];
  v28 = [UIImage _systemImageNamed:v50 withConfiguration:v27];
  if (!v28)
  {
    [v10 manager];
    v29 = v47 = v16;
    v30 = [v29 imageResourceCache];
    v31 = [v30 customImageBundle];
    v28 = [UIImage imageNamed:v50 inBundle:v31 withConfiguration:v27];

    v13 = v10;
    v16 = v47;
  }

  if (([v28 tui_isMulticolorSymbolWithSymbolRenderingMode:v23] & 1) == 0 && objc_msgSend(v26, "count"))
  {
    v32 = [v26 firstObject];
    [v28 imageWithTintColor:v32];
    v34 = v33 = v16;

    v28 = v34;
    v16 = v33;
  }

  if ([v9 BOOLForAttribute:99 node:var0])
  {
    v35 = [v28 imageFlippedForRightToLeftLayoutDirection];

    v28 = v35;
  }

  if (v28)
  {
    v36 = [v13 identifierWithNode:var0];
    v37 = v16;
    v38 = [TUIImageModel alloc];
    [v28 size];
    v40 = v39;
    v42 = v41;
    v43 = [v28 renderingMode];
    v44 = v38;
    v16 = v37;
    v45 = [(TUIImageModel *)v44 initWithIdentifier:v36 image:v28 size:v43 renderMode:v40 alignmentRectInsets:v42, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  else
  {
    v45 = 0;
  }

  [v49 setImageModel:v45];
  v46 = [v9 stringForAttribute:178 node:var0];
  [v49 setRole:v46];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 imageModel];
  v8 = [v7 role];

  [v6 addImageModel:v9 forRole:v8];
}

@end