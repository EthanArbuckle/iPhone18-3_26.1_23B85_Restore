@interface TUIElementSymbolImage
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementSymbolImage

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a3;
  v9 = a5;
  var0 = a4.var0;
  v11 = [v9 fontSpecForNode:a4.var0];
  v12 = [v9 stringForAttribute:137 node:var0];
  [v8 setName:v12];

  v13 = [v9 stringForAttribute:194 node:var0];
  [v8 setScale:{+[TUISymbolImageBox scaleFromString:](TUISymbolImageBox, "scaleFromString:", v13)}];

  v14 = [v9 stringForAttribute:224 node:var0];
  [v11 weight];
  [v8 setWeight:{+[TUISymbolImageBox weightFromString:withDefault:](TUISymbolImageBox, "weightFromString:withDefault:", v14, UIImageSymbolWeightForFontWeight(v15))}];

  if (v11)
  {
    [v11 pointSize];
  }

  else
  {
    v16 = 17.0;
  }

  [v8 setFontSize:v16];
  v17 = [v9 stringForAttribute:168 node:var0];
  [v8 setRenderingMode:{+[TUISymbolImageBox renderingModeFromString:](TUISymbolImageBox, "renderingModeFromString:", v17)}];

  v18 = [v11 foregroundColor];
  if (v18)
  {
    v19 = [v11 foregroundColor];
    v23 = v19;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [v8 setColors:v20];
  }

  else
  {
    v19 = [v9 colorArrayForAttribute:51 node:var0];
    [v8 setColors:v19];
  }

  [v8 setBaseline:{objc_msgSend(v9, "BOOLForAttribute:withDefault:node:", 33, 1, var0)}];
  [v9 insetsForAttribute:112 withDefault:var0 node:{NAN, NAN, NAN, NAN}];
  [v8 setInsets:?];
  [v8 setHflipForRTL:{objc_msgSend(v9, "BOOLForAttribute:node:", 99, var0)}];
  v21 = [v9 stringForAttribute:37 node:var0];
  v22 = [(TUIBox *)TUISymbolImageBox blendModeFromString:v21];
  [v8 setBlendMode:v22];
}

@end