@interface TUIElementGradient
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
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

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 colorForAttribute:198 node:a4.var0];
  [v9 setGradientStartColor:v12];

  v13 = [v10 colorForAttribute:75 node:a4.var0];
  [v9 setGradientEndColor:v13];

  [v10 floatForAttribute:199 withDefault:a4.var0 node:0.0];
  [v9 setGradientStartPosition:?];
  [v10 floatForAttribute:76 withDefault:a4.var0 node:1.0];
  [v9 setGradientEndPosition:?];
  v14 = [v10 stringForAttribute:68 node:a4.var0];
  [v9 setGradientDirection:{+[TUIGradient directionFromString:](TUIGradient, "directionFromString:", v14)}];

  v15 = [v10 stringForAttribute:37 node:a4.var0];
  v16 = [(TUIBox *)TUIGradient blendModeFromString:v15];
  [v9 setBlendMode:v16];

  [v9 setContinuousCorners:{objc_msgSend(v10, "BOOLForAttribute:withDefault:node:", 59, 1, a4.var0)}];
  [v10 floatForAttribute:38 withDefault:a4.var0 node:0.0];
  [v9 setGradientBlurOffset:?];
  [v10 floatForAttribute:39 withDefault:a4.var0 node:0.0];
  [v9 setGradientBlurRadius:?];
  v17 = [v9 gradientStartColor];

  if (!v17)
  {
    [v11 reportError:1022];
  }

  v18 = [v9 gradientEndColor];

  if (!v18)
  {
    [v11 reportError:1023];
  }

  v19 = objc_opt_class();
  v20 = [v10 objectForAttribute:146 node:a4.var0];
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
    [v9 setOpacityTriggers:v21];
    [v9 setOpacity:1.0];
  }

  else
  {
    [v10 floatForAttribute:146 withDefault:a4.var0 node:1.0];
    v23 = fmin(v22, 1.0);
    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    [v9 setOpacity:v23];
  }

  _Block_object_dispose(&v25, 8);
}

@end