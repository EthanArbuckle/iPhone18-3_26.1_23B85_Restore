@interface TUIElementSegmentedControl
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementSegmentedControl

+ (id)supportedAttributes
{
  if (qword_2E66D8 != -1)
  {
    sub_19BE00();
  }

  v3 = qword_2E66D0;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E66E8 != -1)
  {
    sub_19BE14();
  }

  v3 = qword_2E66E0;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = objc_alloc_init(_TUIElementSegmentControlBuilder);
  v11 = [v9 viewStateForNode:a3.var0 binding:{objc_msgSend(v8, "bindingNameForAttribute:node:", 36, a3.var0)}];
  [(_TUIElementSegmentControlBuilder *)v10 setViewState:v11];

  v12 = [v8 stringForAttribute:138 node:a3.var0];
  [(_TUIElementSegmentControlBuilder *)v10 setName:v12];

  -[_TUIElementSegmentControlBuilder setSelectIndex:](v10, "setSelectIndex:", [v8 integerForAttribute:186 withDefault:0 node:a3.var0]);
  v13 = [v8 colorForAttribute:51 node:a3.var0];
  [(_TUIElementSegmentControlBuilder *)v10 setTintColor:v13];

  return v10;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v13 = a3;
  v8 = a5;
  [v8 insetsForAttribute:208 node:a4.var0];
  [v13 setTouchInsets:{UIEdgeInsetsZero.top - v9, UIEdgeInsetsZero.left - v10, UIEdgeInsetsZero.bottom - v11, UIEdgeInsetsZero.right - v12}];
  [v13 setEnabled:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 74, 1, a4.var0)}];
  [v8 floatForAttribute:157 withDefault:a4.var0 node:1.0];
  [v13 setPressedScale:?];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v25 = a5;
  v24 = [v8 finalizeSegments];
  v9 = [TUIElementActionTriggerHandler alloc];
  v10 = [v8 finalizeTriggers];
  v11 = [v25 actionObject];
  v12 = [v25 actionDelegate];
  v13 = [(TUIElementActionTriggerHandler *)v9 initWithActionsData:v10 actionObject:v11 actionDelegate:v12];

  v14 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v14];

  v15 = [v8 viewState];
  v16 = [v8 name];
  v17 = [v8 selectIndex];
  v23 = [v8 tintColor];
  objc_initWeak(&location, v7);
  [v7 setTriggerHandler:v13];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_15C060;
  v26[3] = &unk_262D10;
  v18 = v13;
  v27 = v18;
  v19 = v15;
  v28 = v19;
  objc_copyWeak(v32, &location);
  v20 = v16;
  v29 = v20;
  v32[1] = v17;
  v21 = v24;
  v30 = v21;
  v22 = v23;
  v31 = v22;
  [v7 setRenderModelBlock:v26];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

@end