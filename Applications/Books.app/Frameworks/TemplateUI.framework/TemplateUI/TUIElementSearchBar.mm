@interface TUIElementSearchBar
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementSearchBar

+ (id)supportedAttributes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A184;
  block[3] = &unk_25F0F0;
  block[4] = self;
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

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v10 = objc_alloc_init(_TUIElementSearchBarBuilder);
  v11 = [attributesCopy bindingNameForAttribute:36 node:node.var0];
  v12 = [attributesCopy stringForAttribute:202 node:node.var0];
  [(_TUIElementSearchBarBuilder *)v10 setText:v12];

  [attributesCopy insetsForAttribute:112 node:node.var0];
  [(_TUIElementSearchBarBuilder *)v10 setEditingInsets:?];
  v13 = [attributesCopy fontSpecForNode:node.var0];
  attributesForAttributedString = [v13 attributesForAttributedString];

  v15 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementSearchBarBuilder *)v10 setName:v15];

  v16 = [attributesCopy stringForAttribute:177 node:node.var0];
  [(_TUIElementSearchBarBuilder *)v10 setReturnKeyType:v16];

  v17 = [contextCopy viewStateForNode:node.var0 binding:v11];

  [(_TUIElementSearchBarBuilder *)v10 setViewState:v17];
  v18 = [attributesCopy stringForAttribute:47 node:node.var0];
  [(_TUIElementSearchBarBuilder *)v10 setCancelText:v18];

  -[_TUIElementSearchBarBuilder setShowCancel:](v10, "setShowCancel:", [attributesCopy BOOLForAttribute:192 node:node.var0]);
  v19 = objc_alloc_init(TUITextContentStyler);
  v20 = [attributesCopy colorForAttribute:30 node:node.var0];
  [(TUIBackgroundColorStyler *)v19 setBackgroundColor:v20];

  v21 = [attributesCopy colorForAttribute:51 node:node.var0];
  [(TUITextContentStyler *)v19 setTextColor:v21];

  font = [attributesForAttributedString font];
  [(TUITextContentStyler *)v19 setFont:font];

  v23 = [attributesCopy colorForAttribute:205 node:node.var0];

  [(TUITextContentStyler *)v19 setTintColor:v23];
  [(_TUIElementSearchBarBuilder *)v10 setStyle:v19];

  return v10;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy insetsForAttribute:208 node:var0];
  [boxCopy setTouchInsets:{UIEdgeInsetsZero.top - v9, UIEdgeInsetsZero.left - v10, UIEdgeInsetsZero.bottom - v11, UIEdgeInsetsZero.right - v12}];
  [boxCopy setEnabled:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 74, 1, var0)}];
  [attributesCopy floatForAttribute:157 withDefault:var0 node:1.0];
  v14 = v13;

  [boxCopy setPressedScale:v14];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v10 = [builderCopy finalizeStateMapWithContext:contextCopy];
  [objectCopy setStateMap:v10];

  v11 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  v15 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  v17 = TUIBoxChildrenWithProtocolAndRole(objectCopy, &OBJC_PROTOCOL___TUIPlaceholderTextBox, 6);
  firstObject = [v17 firstObject];

  v41 = firstObject;
  placeholderString = [firstObject placeholderString];
  viewState = [builderCopy viewState];
  text = [builderCopy text];
  name = [builderCopy name];
  returnKeyType = [builderCopy returnKeyType];
  [builderCopy editingInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  style = [builderCopy style];
  v42 = contextCopy;
  environment = [contextCopy environment];
  v44 = TUIKeyboardAppearanceFromEnvironmentStyle([environment style]);

  showCancel = [builderCopy showCancel];
  cancelText = [builderCopy cancelText];
  objc_initWeak(location, objectCopy);
  [objectCopy setTriggerHandler:v15];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_4AA98;
  v47[3] = &unk_25F138;
  v33 = v15;
  v48 = v33;
  v34 = viewState;
  v49 = v34;
  objc_copyWeak(v56, location);
  v35 = name;
  v50 = v35;
  v56[1] = v23;
  v56[2] = v25;
  v56[3] = v27;
  v56[4] = v29;
  v36 = placeholderString;
  v51 = v36;
  v37 = style;
  v52 = v37;
  v38 = text;
  v53 = v38;
  v39 = returnKeyType;
  v54 = v39;
  v56[5] = v44;
  v40 = cancelText;
  v55 = v40;
  v57 = showCancel;
  [objectCopy setRenderModelBlock:v47];

  objc_destroyWeak(v56);
  objc_destroyWeak(location);
}

@end