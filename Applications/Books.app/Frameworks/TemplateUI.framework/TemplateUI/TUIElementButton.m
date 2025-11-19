@interface TUIElementButton
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
+ (void)preconfigureBox:(id)a3 context:(id)a4;
@end

@implementation TUIElementButton

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6070 != -1)
  {
    sub_1999FC();
  }

  v3 = qword_2E6068;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = objc_alloc_init(_TUIElementButtonBuilder);
  v11 = [v9 stringForAttribute:138 node:a3.var0];
  [(_TUIElementButtonBuilder *)v10 setName:v11];

  v12 = [v9 colorForAttribute:30 node:a3.var0];
  [(_TUIElementButtonBuilder *)v10 setBackgroundColor:v12];

  v13 = [v8 viewStateForNode:a3.var0 binding:{objc_msgSend(v9, "bindingNameForAttribute:node:", 36, a3.var0)}];

  [(_TUIElementButtonBuilder *)v10 setViewState:v13];
  v14 = [v9 stringForAttribute:116 node:a3.var0];
  [(_TUIElementButtonBuilder *)v10 setButtonType:[TUIButtonBox buttonTypeFromString:v14]];

  v15 = [v9 stringForAttribute:44 node:a3.var0];
  [(_TUIElementButtonBuilder *)v10 setButtonRole:[TUIButtonBox buttonRoleFromString:v15]];

  v16 = [v9 BOOLForAttribute:139 node:a3.var0];
  [(_TUIElementButtonBuilder *)v10 setMenuIsPrimary:v16];
  return v10;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v20 = a3;
  [v20 setEnabled:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 74, 1, var0)}];
  [v8 floatForAttribute:157 withDefault:var0 node:1.0];
  [v20 setPressedScale:?];
  v9 = [v8 pointerForNode:var0];
  [v20 setPointer:v9];

  v10 = [v8 stringForAttribute:216 node:var0];
  [v20 setUserInterfaceStyle:{+[TUIBox userInterfaceStyleFromString:](TUIBox, "userInterfaceStyleFromString:", v10)}];

  v11 = [v8 focusStyleForAttribute:88 node:var0];
  [v20 setFocusStyle:v11];

  [v8 insetsForAttribute:208 node:var0];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v20 setTouchInsets:{UIEdgeInsetsZero.top - v13, UIEdgeInsetsZero.left - v15, UIEdgeInsetsZero.bottom - v17, UIEdgeInsetsZero.right - v19}];
}

+ (void)preconfigureBox:(id)a3 context:(id)a4
{
  v4 = a3;
  [v4 setAXElement:1];
  [v4 setAxButton:1];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 setButtonType:{objc_msgSend(v8, "buttonType")}];
  [v7 setButtonRole:{objc_msgSend(v8, "buttonRole")}];
  v10 = [v8 finalizeStateMapWithContext:v9];
  [v7 setStateMap:v10];

  v11 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v11];

  v12 = [v8 menuContainer];
  [v7 setMenuContainer:v12];

  [v7 setMenuIsPrimary:{objc_msgSend(v8, "menuIsPrimary")}];
  v13 = [v8 finalizeLinkEntities];
  [v7 setLinkEntities:v13];

  v14 = [v9 actionObject];
  v15 = [v9 actionDelegate];
  objc_initWeak(&location, v15);

  v16 = [TUIElementActionTriggerHandler alloc];
  v17 = [v8 finalizeTriggers];
  v18 = objc_loadWeakRetained(&location);
  v19 = [(TUIElementActionTriggerHandler *)v16 initWithActionsData:v17 actionObject:v14 actionDelegate:v18];

  [v7 setTriggerHandler:v19];
  v20 = [v7 refId];
  [(TUIElementActionTriggerHandler *)v19 setRefId:v20];

  v21 = objc_alloc_init(TUIBackgroundColorStyler);
  v22 = [v8 name];
  v23 = [v8 backgroundColor];
  [(TUIBackgroundColorStyler *)v21 setBackgroundColor:v23];

  v24 = [v8 viewState];
  v25 = [v9 environment];
  if ([v25 accessibilityElementsNeeded] && objc_msgSend(v7, "axHasNonDefaultAttributess"))
  {
    v26 = [[TUIAXAttributes alloc] initWithAXAttributes:v7];
  }

  else
  {
    v26 = 0;
  }

  objc_initWeak(&from, v7);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_2ECAC;
  v33[3] = &unk_25E928;
  objc_copyWeak(&v40, &from);
  v27 = v14;
  v34 = v27;
  objc_copyWeak(&v41, &location);
  v28 = v19;
  v35 = v28;
  v29 = v24;
  v36 = v29;
  v30 = v21;
  v37 = v30;
  v31 = v22;
  v38 = v31;
  v32 = v26;
  v39 = v32;
  [v7 setRenderModelBlock:v33];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

@end