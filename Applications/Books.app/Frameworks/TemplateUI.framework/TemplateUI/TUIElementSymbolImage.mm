@interface TUIElementSymbolImage
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementSymbolImage

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  var0 = node.var0;
  v11 = [attributesCopy fontSpecForNode:node.var0];
  v12 = [attributesCopy stringForAttribute:137 node:var0];
  [boxCopy setName:v12];

  v13 = [attributesCopy stringForAttribute:194 node:var0];
  [boxCopy setScale:{+[TUISymbolImageBox scaleFromString:](TUISymbolImageBox, "scaleFromString:", v13)}];

  v14 = [attributesCopy stringForAttribute:224 node:var0];
  [v11 weight];
  [boxCopy setWeight:{+[TUISymbolImageBox weightFromString:withDefault:](TUISymbolImageBox, "weightFromString:withDefault:", v14, UIImageSymbolWeightForFontWeight(v15))}];

  if (v11)
  {
    [v11 pointSize];
  }

  else
  {
    v16 = 17.0;
  }

  [boxCopy setFontSize:v16];
  v17 = [attributesCopy stringForAttribute:168 node:var0];
  [boxCopy setRenderingMode:{+[TUISymbolImageBox renderingModeFromString:](TUISymbolImageBox, "renderingModeFromString:", v17)}];

  foregroundColor = [v11 foregroundColor];
  if (foregroundColor)
  {
    foregroundColor2 = [v11 foregroundColor];
    v23 = foregroundColor2;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [boxCopy setColors:v20];
  }

  else
  {
    foregroundColor2 = [attributesCopy colorArrayForAttribute:51 node:var0];
    [boxCopy setColors:foregroundColor2];
  }

  [boxCopy setBaseline:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 33, 1, var0)}];
  [attributesCopy insetsForAttribute:112 withDefault:var0 node:{NAN, NAN, NAN, NAN}];
  [boxCopy setInsets:?];
  [boxCopy setHflipForRTL:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 99, var0)}];
  v21 = [attributesCopy stringForAttribute:37 node:var0];
  v22 = [(TUIBox *)TUISymbolImageBox blendModeFromString:v21];
  [boxCopy setBlendMode:v22];
}

@end