@interface TUIElementTBox
+ (id)builderProtocols;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
+ (void)preconfigureBox:(id)a3 context:(id)a4;
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

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a5;
  v10 = a6;
  var0 = a3.var0;
  v12 = a4;
  v34 = [v9 colorForAttribute:51 node:a3.var0];
  v33 = [v9 fontSpecForNode:a3.var0];
  v13 = [v9 BOOLForAttribute:122 node:a3.var0];
  v14 = [v9 stringForAttribute:203 node:a3.var0];
  v15 = [TUIBox textAlignmentFromString:v14];

  v16 = [v10 serviceConformingToProtocol:&OBJC_PROTOCOL___TUIWPService];
  v17 = [v10 environment];
  v18 = [v17 layoutDirection];

  v19 = [v9 BOOLForAttribute:191 node:a3.var0];
  v20 = [v12 role];

  if (v20 == &dword_4 + 2)
  {
    v22 = v33;
    v21 = v34;
    v23 = [[TUIAttributedStringBuilder alloc] initWithFontSpec:v33 style:0 color:v34 textAlignment:v15];
  }

  else
  {
    v32 = v18 == &dword_0 + 2;
    if (v13)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    v25 = [v10 environment];
    [v25 language];
    v27 = v26 = v16;
    LOBYTE(v31) = v19;
    v22 = v33;
    v28 = v24;
    v21 = v34;
    v23 = [TUIWPBox textModelBuilderWithFontSpec:v33 style:v28 color:v34 alignment:v15 writingDirection:v32 language:v27 shouldHyphenate:v31 service:v26];

    v16 = v26;
  }

  v29 = [v9 stringForAttribute:102 node:var0];
  [(TUIAttributedStringBuilder *)v23 setOptions:sub_5E5B8(v29, 2uLL)];

  return v23;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  [v9 setMaxLines:{fmax(objc_msgSend(v8, "integerForAttribute:withDefault:node:", 129, 0, var0), 0.0)}];
  [v9 setHideEllipses:{objc_msgSend(v8, "BOOLForAttribute:node:", 100, var0)}];
  [v9 setAllowHangingPunctuation:{objc_msgSend(v8, "BOOLForAttribute:node:", 6, var0)}];
  [v9 setAllowShrinkToFit:{objc_msgSend(v8, "BOOLForAttribute:node:", 7, var0)}];
  v11 = [v8 stringForAttribute:37 node:var0];

  v10 = [TUIBox blendModeFromString:v11];
  [v9 setBlendMode:v10];
}

+ (void)preconfigureBox:(id)a3 context:(id)a4
{
  v4 = a3;
  [v4 setAXElement:1];
  [v4 setAxStaticText:1];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 role];
  v10 = [v7 finalizeTextModelWithContext:v8];
  if (v9 == &dword_4 + 2)
  {
    [v14 setPlaceholderString:v10];
  }

  else
  {
    [v14 setTextModel:v10];
  }

  v11 = [v7 finalizeModelsWithParent:v14 box:v14 context:v8];
  if ([v14 isAXElement])
  {
    v12 = [v14 axLabel];

    if (!v12)
    {
      v13 = [v14 string];
      [v14 setAxLabel:v13];
    }
  }
}

+ (void)configureChildBox:(id)a3 withChildNode:(id)a4 attributes:(id)a5 builder:(id)a6 context:(id)a7
{
  var0 = a4.var0;
  v9 = a6;
  [a5 floatForAttribute:34 node:var0];
  [v9 setBaselineOffset:?];
}

@end