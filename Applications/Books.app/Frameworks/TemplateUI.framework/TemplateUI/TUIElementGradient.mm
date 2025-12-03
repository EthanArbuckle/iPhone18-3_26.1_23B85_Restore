@interface TUIElementGradient
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementGradient

+ (id)supportedAttributes
{
  if (qword_2E5F88 != -1)
  {
    sub_1992F8();
  }

  v3 = qword_2E5F80;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  v12 = [attributesCopy colorForAttribute:198 node:node.var0];
  [boxCopy setGradientStartColor:v12];

  v13 = [attributesCopy colorForAttribute:75 node:node.var0];
  [boxCopy setGradientEndColor:v13];

  [attributesCopy floatForAttribute:199 withDefault:node.var0 node:0.0];
  [boxCopy setGradientStartPosition:?];
  [attributesCopy floatForAttribute:76 withDefault:node.var0 node:1.0];
  [boxCopy setGradientEndPosition:?];
  v14 = [attributesCopy stringForAttribute:68 node:node.var0];
  [boxCopy setGradientDirection:{+[TUIGradient directionFromString:](TUIGradient, "directionFromString:", v14)}];

  v15 = [attributesCopy stringForAttribute:37 node:node.var0];
  v16 = [(TUIBox *)TUIGradient blendModeFromString:v15];
  [boxCopy setBlendMode:v16];

  [boxCopy setContinuousCorners:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 59, 1, node.var0)}];
  [attributesCopy floatForAttribute:38 withDefault:node.var0 node:0.0];
  [boxCopy setGradientBlurOffset:?];
  [attributesCopy floatForAttribute:39 withDefault:node.var0 node:0.0];
  [boxCopy setGradientBlurRadius:?];
  gradientStartColor = [boxCopy gradientStartColor];

  if (!gradientStartColor)
  {
    [contextCopy reportError:1022];
  }

  gradientEndColor = [boxCopy gradientEndColor];

  if (!gradientEndColor)
  {
    [contextCopy reportError:1023];
  }

  v19 = objc_opt_class();
  v20 = [attributesCopy objectForAttribute:146 node:node.var0];
  v21 = TUIDynamicCast(v19, v20);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = v21 != 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_7C28;
  v24[3] = &unk_25DD08;
  v24[4] = &v25;
  [v21 enumerateKeysAndObjectsUsingBlock:v24];
  if (*(v26 + 24) == 1)
  {
    [boxCopy setOpacityTriggers:v21];
    [boxCopy setOpacity:1.0];
  }

  else
  {
    [attributesCopy floatForAttribute:146 withDefault:node.var0 node:1.0];
    v23 = fmin(v22, 1.0);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    [boxCopy setOpacity:v23];
  }

  _Block_object_dispose(&v25, 8);
}

@end