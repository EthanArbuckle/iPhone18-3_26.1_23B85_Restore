@interface TUIElementStyledBox
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementStyledBox

+ (id)supportedAttributes
{
  if (qword_2E66F8 != -1)
  {
    sub_19BE28();
  }

  v3 = qword_2E66F0;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  [attributesCopy insetsForAttribute:112 node:node.var0];
  [boxCopy setInsets:?];
  [attributesCopy floatForAttribute:60 node:node.var0];
  [boxCopy setCornerRadius:?];
  [boxCopy setContinuousCorners:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 59, 1, node.var0)}];
  v12 = [attributesCopy colorForAttribute:30 node:node.var0];
  [boxCopy setBackgroundColor:v12];

  [attributesCopy floatForAttribute:190 node:node.var0];
  [boxCopy setShadowRadius:?];
  [attributesCopy sizeForAttribute:188 node:node.var0];
  [boxCopy setShadowOffset:?];
  v13 = [attributesCopy colorForAttribute:187 node:node.var0];
  [boxCopy setShadowColor:v13];

  [attributesCopy floatForAttribute:189 node:node.var0];
  [boxCopy setShadowOpacity:?];
  v14 = [attributesCopy colorForAttribute:41 node:node.var0];
  [boxCopy setBorderColor:v14];

  [attributesCopy floatForAttribute:42 node:node.var0];
  [boxCopy setBorderWidth:?];
  [boxCopy setClipsToBounds:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 50, node.var0)}];
  [boxCopy setAllowsGroupBlending:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 5, 0, node.var0)}];
  v15 = [attributesCopy stringForAttribute:37 node:node.var0];
  v16 = [(TUIBox *)TUIStyledBox blendModeFromString:v15];
  [boxCopy setBlendMode:v16];

  [boxCopy setGrouped:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 93, node.var0)}];
  v17 = objc_opt_class();
  v18 = [attributesCopy objectForAttribute:146 node:node.var0];
  v19 = TUIDynamicCast(v17, v18);

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = v19 != 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_15F6A8;
  v22[3] = &unk_25DD08;
  v22[4] = &v23;
  [v19 enumerateKeysAndObjectsUsingBlock:v22];
  if (*(v24 + 24) == 1)
  {
    [boxCopy setOpacityTriggers:v19];
    [boxCopy setOpacity:1.0];
  }

  else
  {
    [attributesCopy floatForAttribute:146 withDefault:node.var0 node:1.0];
    v21 = fmin(v20, 1.0);
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    [boxCopy setOpacity:v21];
  }

  _Block_object_dispose(&v23, 8);
}

@end