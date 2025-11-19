@interface TUIElementSearchBar
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementSearchBar

+ (id)supportedAttributes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A184;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6130 != -1)
  {
    dispatch_once(&qword_2E6130, block);
  }

  v2 = qword_2E6128;

  return v2;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6140 != -1)
  {
    sub_199BD4();
  }

  v3 = qword_2E6138;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = objc_alloc_init(_TUIElementSearchBarBuilder);
  v11 = [v9 bindingNameForAttribute:36 node:a3.var0];
  v12 = [v9 stringForAttribute:202 node:a3.var0];
  [(_TUIElementSearchBarBuilder *)v10 setText:v12];

  [v9 insetsForAttribute:112 node:a3.var0];
  [(_TUIElementSearchBarBuilder *)v10 setEditingInsets:?];
  v13 = [v9 fontSpecForNode:a3.var0];
  v14 = [v13 attributesForAttributedString];

  v15 = [v9 stringForAttribute:138 node:a3.var0];
  [(_TUIElementSearchBarBuilder *)v10 setName:v15];

  v16 = [v9 stringForAttribute:177 node:a3.var0];
  [(_TUIElementSearchBarBuilder *)v10 setReturnKeyType:v16];

  v17 = [v8 viewStateForNode:a3.var0 binding:v11];

  [(_TUIElementSearchBarBuilder *)v10 setViewState:v17];
  v18 = [v9 stringForAttribute:47 node:a3.var0];
  [(_TUIElementSearchBarBuilder *)v10 setCancelText:v18];

  -[_TUIElementSearchBarBuilder setShowCancel:](v10, "setShowCancel:", [v9 BOOLForAttribute:192 node:a3.var0]);
  v19 = objc_alloc_init(TUITextContentStyler);
  v20 = [v9 colorForAttribute:30 node:a3.var0];
  [(TUIBackgroundColorStyler *)v19 setBackgroundColor:v20];

  v21 = [v9 colorForAttribute:51 node:a3.var0];
  [(TUITextContentStyler *)v19 setTextColor:v21];

  v22 = [v14 font];
  [(TUITextContentStyler *)v19 setFont:v22];

  v23 = [v9 colorForAttribute:205 node:a3.var0];

  [(TUITextContentStyler *)v19 setTintColor:v23];
  [(_TUIElementSearchBarBuilder *)v10 setStyle:v19];

  return v10;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v15 = a3;
  [v8 insetsForAttribute:208 node:var0];
  [v15 setTouchInsets:{UIEdgeInsetsZero.top - v9, UIEdgeInsetsZero.left - v10, UIEdgeInsetsZero.bottom - v11, UIEdgeInsetsZero.right - v12}];
  [v15 setEnabled:{objc_msgSend(v8, "BOOLForAttribute:withDefault:node:", 74, 1, var0)}];
  [v8 floatForAttribute:157 withDefault:var0 node:1.0];
  v14 = v13;

  [v15 setPressedScale:v14];
}

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 finalizeStateMapWithContext:v9];
  [v7 setStateMap:v10];

  v11 = [TUIElementActionTriggerHandler alloc];
  v12 = [v8 finalizeTriggers];
  v13 = [v9 actionObject];
  v14 = [v9 actionDelegate];
  v15 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:v12 actionObject:v13 actionDelegate:v14];

  v16 = [v8 finalizeAnimationGroups];
  [v7 setAnimationGroups:v16];

  v17 = TUIBoxChildrenWithProtocolAndRole(v7, &OBJC_PROTOCOL___TUIPlaceholderTextBox, 6);
  v18 = [v17 firstObject];

  v41 = v18;
  v19 = [v18 placeholderString];
  v20 = [v8 viewState];
  v46 = [v8 text];
  v21 = [v8 name];
  v45 = [v8 returnKeyType];
  [v8 editingInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v8 style];
  v42 = v9;
  v31 = [v9 environment];
  v44 = TUIKeyboardAppearanceFromEnvironmentStyle([v31 style]);

  v43 = [v8 showCancel];
  v32 = [v8 cancelText];
  objc_initWeak(location, v7);
  [v7 setTriggerHandler:v15];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_4AA98;
  v47[3] = &unk_25F138;
  v33 = v15;
  v48 = v33;
  v34 = v20;
  v49 = v34;
  objc_copyWeak(v56, location);
  v35 = v21;
  v50 = v35;
  v56[1] = v23;
  v56[2] = v25;
  v56[3] = v27;
  v56[4] = v29;
  v36 = v19;
  v51 = v36;
  v37 = v30;
  v52 = v37;
  v38 = v46;
  v53 = v38;
  v39 = v45;
  v54 = v39;
  v56[5] = v44;
  v40 = v32;
  v55 = v40;
  v57 = v43;
  [v7 setRenderModelBlock:v47];

  objc_destroyWeak(v56);
  objc_destroyWeak(location);
}

@end