@interface TUIElementTBox
+ (id)builderProtocols;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)preconfigureBox:(id)box context:(id)context;
@end

@implementation TUIElementTBox

+ (id)supportedAttributes
{
  if (qword_2E6240 != -1)
  {
    sub_199D4C();
  }

  v3 = qword_2E6238;

  return v3;
}

+ (id)builderProtocols
{
  v4[0] = &OBJC_PROTOCOL___TUITextModelBuilding;
  v4[1] = &OBJC_PROTOCOL___TUIModelBuilding;
  v4[2] = &OBJC_PROTOCOL___TUIBoxBuilding;
  v4[3] = &OBJC_PROTOCOL___TUIAXActionsBuilding;
  v4[4] = &OBJC_PROTOCOL___TUIAnimationGroupBuilding;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  var0 = node.var0;
  objectCopy = object;
  v34 = [attributesCopy colorForAttribute:51 node:node.var0];
  v33 = [attributesCopy fontSpecForNode:node.var0];
  v13 = [attributesCopy BOOLForAttribute:122 node:node.var0];
  v14 = [attributesCopy stringForAttribute:203 node:node.var0];
  v15 = [TUIBox textAlignmentFromString:v14];

  v16 = [contextCopy serviceConformingToProtocol:&OBJC_PROTOCOL___TUIWPService];
  environment = [contextCopy environment];
  layoutDirection = [environment layoutDirection];

  v19 = [attributesCopy BOOLForAttribute:191 node:node.var0];
  role = [objectCopy role];

  if (role == &dword_4 + 2)
  {
    v22 = v33;
    v21 = v34;
    v23 = [[TUIAttributedStringBuilder alloc] initWithFontSpec:v33 style:0 color:v34 textAlignment:v15];
  }

  else
  {
    v32 = layoutDirection == &dword_0 + 2;
    if (v13)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    environment2 = [contextCopy environment];
    [environment2 language];
    v27 = v26 = v16;
    LOBYTE(v31) = v19;
    v22 = v33;
    v28 = v24;
    v21 = v34;
    v23 = [TUIWPBox textModelBuilderWithFontSpec:v33 style:v28 color:v34 alignment:v15 writingDirection:v32 language:v27 shouldHyphenate:v31 service:v26];

    v16 = v26;
  }

  v29 = [attributesCopy stringForAttribute:102 node:var0];
  [(TUIAttributedStringBuilder *)v23 setOptions:sub_5E5B8(v29, 2uLL)];

  return v23;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [boxCopy setMaxLines:{fmax(objc_msgSend(attributesCopy, "integerForAttribute:withDefault:node:", 129, 0, var0), 0.0)}];
  [boxCopy setHideEllipses:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 100, var0)}];
  [boxCopy setAllowHangingPunctuation:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 6, var0)}];
  [boxCopy setAllowShrinkToFit:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 7, var0)}];
  v11 = [attributesCopy stringForAttribute:37 node:var0];

  v10 = [TUIBox blendModeFromString:v11];
  [boxCopy setBlendMode:v10];
}

+ (void)preconfigureBox:(id)box context:(id)context
{
  boxCopy = box;
  [boxCopy setAXElement:1];
  [boxCopy setAxStaticText:1];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  role = [objectCopy role];
  v10 = [builderCopy finalizeTextModelWithContext:contextCopy];
  if (role == &dword_4 + 2)
  {
    [objectCopy setPlaceholderString:v10];
  }

  else
  {
    [objectCopy setTextModel:v10];
  }

  v11 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:contextCopy];
  if ([objectCopy isAXElement])
  {
    axLabel = [objectCopy axLabel];

    if (!axLabel)
    {
      string = [objectCopy string];
      [objectCopy setAxLabel:string];
    }
  }
}

+ (void)configureChildBox:(id)box withChildNode:(id)node attributes:(id)attributes builder:(id)builder context:(id)context
{
  var0 = node.var0;
  builderCopy = builder;
  [attributes floatForAttribute:34 node:var0];
  [builderCopy setBaselineOffset:?];
}

@end