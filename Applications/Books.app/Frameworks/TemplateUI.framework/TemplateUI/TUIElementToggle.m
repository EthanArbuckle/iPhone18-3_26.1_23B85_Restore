@interface TUIElementToggle
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementToggle

+ (id)supportedAttributes
{
  if (qword_2E65F8 != -1)
  {
    sub_19BCFC();
  }

  v3 = qword_2E65F0;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6608 != -1)
  {
    sub_19BD10();
  }

  v3 = qword_2E6600;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = objc_alloc_init(_TUIElementToggleBuilder);
  v11 = [v8 viewStateForNode:a3.var0 binding:{objc_msgSend(v9, "bindingNameForAttribute:node:", 36, a3.var0)}];

  [(_TUIElementToggleBuilder *)v10 setViewState:v11];
  -[_TUIElementToggleBuilder setEnabled:](v10, "setEnabled:", [v9 BOOLForAttribute:74 withDefault:1 node:a3.var0]);
  -[_TUIElementToggleBuilder setIsOn:](v10, "setIsOn:", [v9 BOOLForAttribute:145 withDefault:0 node:a3.var0]);
  v12 = [v9 stringForAttribute:138 node:a3.var0];

  [(_TUIElementToggleBuilder *)v10 setName:v12];
  return v10;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a3;
  v9 = [a5 stringForAttribute:206 node:var0];
  [v8 setTitle:v9];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [TUIElementActionTriggerHandler alloc];
  v11 = [v8 finalizeTriggers];
  v12 = [v9 actionObject];
  v13 = [v9 actionDelegate];
  v14 = [(TUIElementActionTriggerHandler *)v10 initWithActionsData:v11 actionObject:v12 actionDelegate:v13];

  v15 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v15];

  v16 = [v8 viewState];
  v17 = [v8 enabled];
  v18 = [v8 isOn];
  v19 = [v8 name];
  v20 = [v7 title];
  [v7 width];
  if ((v21 & 0x7000000000000) >= 0x2000000000001 && (HIWORD(v21) & 7) - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [v9 reportError:1032];
  }

  v22 = [v7 refId];
  [(TUIElementActionTriggerHandler *)v14 setRefId:v22];

  objc_initWeak(&location, v7);
  [v7 setTriggerHandler:v14];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_145130;
  v27[3] = &unk_2628F8;
  v23 = v14;
  v28 = v23;
  v24 = v16;
  v29 = v24;
  v33 = v17;
  objc_copyWeak(&v32, &location);
  v25 = v19;
  v30 = v25;
  v26 = v20;
  v31 = v26;
  v34 = v18;
  [v7 setRenderModelBlock:v27];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

@end