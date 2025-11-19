@interface TUIElementRatings
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
+ (void)preconfigureBox:(id)a3 context:(id)a4;
@end

@implementation TUIElementRatings

+ (id)supportedAttributes
{
  if (qword_2E6418 != -1)
  {
    sub_19B39C();
  }

  v3 = qword_2E6410;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6428 != -1)
  {
    sub_19B3B0();
  }

  v3 = qword_2E6420;

  return v3;
}

+ (void)preconfigureBox:(id)a3 context:(id)a4
{
  v4 = a3;
  [v4 setAXElement:1];
  [v4 setAxAdjustable:1];
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = objc_alloc_init(_TUIElementRatingsBuilder);
  v11 = [v9 childCountForNode:a3.var0];
  v12 = [v9 viewStateForNode:a3.var0 binding:{objc_msgSend(v8, "bindingNameForAttribute:node:", 36, a3.var0)}];

  [(_TUIElementRatingsBuilder *)v10 setViewState:v12];
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v9 = [(_TUIElementRatingsBuilder *)v10 viewState];
    v13 = v9 != 0;
  }

  -[_TUIElementRatingsBuilder setEnabled:](v10, "setEnabled:", [v8 BOOLForAttribute:74 withDefault:v13 node:a3.var0]);
  if (!v11)
  {
  }

  v14 = [v8 colorForAttribute:51 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setColor:v14];

  v15 = [v8 colorForAttribute:198 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setStartColor:v15];

  v16 = [v8 colorForAttribute:30 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setBackgroundColor:v16];

  v17 = [v8 stringForAttribute:116 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setBackgroundKind:[TUIRatingsBox backgroundKindFromString:v17]];

  v18 = [v8 stringForAttribute:138 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setName:v18];

  [v8 floatForAttribute:164 node:a3.var0];
  [(_TUIElementRatingsBuilder *)v10 setRating:?];

  return v10;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v24 = a3;
  v8 = a5;
  v9 = [v8 lengthForAttribute:225 node:a4.var0];
  [v24 setSize:{+[TUIRatingsBox sizeFromWidth:](TUIRatingsBox, "sizeFromWidth:", v9, v10)}];
  v11 = [v8 lengthForAttribute:225 node:a4.var0];
  [v24 setWidth:{v11, v12}];
  v13 = [v8 lengthForAttribute:98 node:a4.var0];
  [v24 setHeight:{v13, v14}];
  v15 = [v24 axLabel];

  if (!v15)
  {
    [v8 floatForAttribute:164 node:a4.var0];
    v17 = v16;
    v18 = TUIBundle();
    v19 = [v18 localizedStringForKey:@"Rating" value:&stru_264550 table:@"TemplateUILocalizable"];

    v20 = TUIBundle();
    v21 = [v20 localizedStringForKey:@"%lu stars" value:&stru_264550 table:@"TemplateUILocalizable"];
    v22 = v17 / 0.2;
    v23 = [NSString localizedStringWithFormat:v21, vcvtas_u32_f32(v22)];

    [v24 setAxLabel:v19];
    [v24 setAxValue:v23];
  }
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 axActions];
  [v7 setAxCustomActions:v10];

  v11 = [TUIElementActionTriggerHandler alloc];
  v12 = [v8 finalizeTriggers];
  v13 = [v9 actionObject];
  v31 = v9;
  v14 = [v9 actionDelegate];
  v15 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:v12 actionObject:v13 actionDelegate:v14];

  v16 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v16];

  [v7 setTriggerHandler:v15];
  v17 = [v7 refId];
  [(TUIElementActionTriggerHandler *)v15 setRefId:v17];

  v18 = [v8 viewState];
  v19 = [v8 name];
  v20 = [v8 color];
  v21 = [v8 startColor];
  v32 = [v8 backgroundColor];
  v22 = [v8 backgroundKind];
  LOBYTE(v9) = [v8 enabled];
  [v8 rating];
  v24 = v23;
  objc_initWeak(location, v7);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_CDDAC;
  v33[3] = &unk_261540;
  v25 = v15;
  v34 = v25;
  v26 = v18;
  v35 = v26;
  objc_copyWeak(v40, location);
  v27 = v19;
  v36 = v27;
  v40[1] = v24;
  v41 = v9;
  v28 = v20;
  v37 = v28;
  v29 = v21;
  v38 = v29;
  v30 = v32;
  v39 = v30;
  v40[2] = v22;
  [v7 setRenderModelBlock:v33];

  objc_destroyWeak(v40);
  objc_destroyWeak(location);
}

@end