@interface TUIElementStyledBox
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
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

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  [v10 insetsForAttribute:112 node:a4.var0];
  [v9 setInsets:?];
  [v10 floatForAttribute:60 node:a4.var0];
  [v9 setCornerRadius:?];
  [v9 setContinuousCorners:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 59, 1, a4.var0)}];
  v12 = [v10 colorForAttribute:30 node:a4.var0];
  [v9 setBackgroundColor:v12];

  [v10 floatForAttribute:190 node:a4.var0];
  [v9 setShadowRadius:?];
  [v10 sizeForAttribute:188 node:a4.var0];
  [v9 setShadowOffset:?];
  v13 = [v10 colorForAttribute:187 node:a4.var0];
  [v9 setShadowColor:v13];

  [v10 floatForAttribute:189 node:a4.var0];
  [v9 setShadowOpacity:?];
  v14 = [v10 colorForAttribute:41 node:a4.var0];
  [v9 setBorderColor:v14];

  [v10 floatForAttribute:42 node:a4.var0];
  [v9 setBorderWidth:?];
  [v9 setClipsToBounds:{objc_msgSend(v10, "BOOLForAttribute:node:", 50, a4.var0)}];
  [v9 setAllowsGroupBlending:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 5, 0, a4.var0)}];
  v15 = [v10 stringForAttribute:37 node:a4.var0];
  v16 = [(TUIBox *)TUIStyledBox blendModeFromString:v15];
  [v9 setBlendMode:v16];

  [v9 setGrouped:{objc_msgSend(v10, "BOOLForAttribute:node:", 93, a4.var0)}];
  v17 = objc_opt_class();
  v18 = [v10 objectForAttribute:146 node:a4.var0];
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
    [v9 setOpacityTriggers:v19];
    [v9 setOpacity:1.0];
  }

  else
  {
    [v10 floatForAttribute:146 withDefault:a4.var0 node:1.0];
    v21 = fmin(v20, 1.0);
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    [v9 setOpacity:v21];
  }

  _Block_object_dispose(&v23, 8);
}

@end