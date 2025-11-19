@interface TUIElementTextField
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6;
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
@end

@implementation TUIElementTextField

+ (id)supportedAttributes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15189C;
  block[3] = &unk_25F0F0;
  block[4] = a1;
  if (qword_2E6648 != -1)
  {
    dispatch_once(&qword_2E6648, block);
  }

  v2 = qword_2E6640;

  return v2;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6658 != -1)
  {
    sub_19BD60();
  }

  v3 = qword_2E6650;

  return v3;
}

+ (id)builderWithNode:(id)a3 object:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = objc_alloc_init(_TUIElementTextFieldBuilder);
  v11 = [v9 bindingNameForAttribute:36 node:a3.var0];
  v12 = [v9 stringForAttribute:202 node:a3.var0];
  [(_TUIElementTextFieldBuilder *)v10 setText:v12];

  [v9 insetsForAttribute:112 node:a3.var0];
  [(_TUIElementTextFieldBuilder *)v10 setEditingInsets:?];
  v13 = [v9 fontSpecForNode:a3.var0];
  v14 = [v13 attributesForAttributedString];

  v15 = [v9 stringForAttribute:138 node:a3.var0];
  [(_TUIElementTextFieldBuilder *)v10 setName:v15];

  v16 = [v9 stringForAttribute:177 node:a3.var0];
  [(_TUIElementTextFieldBuilder *)v10 setReturnKeyType:v16];

  v17 = [v8 viewStateForNode:a3.var0 binding:v11];

  [(_TUIElementTextFieldBuilder *)v10 setViewState:v17];
  v18 = objc_alloc_init(TUITextContentStyler);
  v19 = [v9 colorForAttribute:30 node:a3.var0];
  [(TUIBackgroundColorStyler *)v18 setBackgroundColor:v19];

  v20 = [v9 colorForAttribute:51 node:a3.var0];

  [(TUITextContentStyler *)v18 setTextColor:v20];
  v21 = [v14 font];
  [(TUITextContentStyler *)v18 setFont:v21];

  [(_TUIElementTextFieldBuilder *)v10 setStyle:v18];
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
  [v15 setIsEditableControl:1];
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

  v39 = v18;
  v19 = [v18 placeholderString];
  v20 = [v8 viewState];
  v42 = [v8 text];
  v21 = [v8 name];
  v41 = [v8 returnKeyType];
  [v8 editingInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v8 style];
  v31 = [v9 environment];
  v40 = TUIKeyboardAppearanceFromEnvironmentStyle([v31 style]);

  objc_initWeak(location, v7);
  [v7 setTriggerHandler:v15];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1520E4;
  v43[3] = &unk_25F8B0;
  v32 = v15;
  v44 = v32;
  v33 = v20;
  v45 = v33;
  objc_copyWeak(v51, location);
  v34 = v21;
  v46 = v34;
  v51[1] = v23;
  v51[2] = v25;
  v51[3] = v27;
  v51[4] = v29;
  v35 = v30;
  v47 = v35;
  v36 = v19;
  v48 = v36;
  v37 = v42;
  v49 = v37;
  v38 = v41;
  v50 = v38;
  v51[5] = v40;
  [v7 setRenderModelBlock:v43];

  objc_destroyWeak(v51);
  objc_destroyWeak(location);
}

@end