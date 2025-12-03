@interface TUIElementTextField
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementTextField

+ (id)supportedAttributes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15189C;
  block[3] = &unk_25F0F0;
  block[4] = self;
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

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v10 = objc_alloc_init(_TUIElementTextFieldBuilder);
  v11 = [attributesCopy bindingNameForAttribute:36 node:node.var0];
  v12 = [attributesCopy stringForAttribute:202 node:node.var0];
  [(_TUIElementTextFieldBuilder *)v10 setText:v12];

  [attributesCopy insetsForAttribute:112 node:node.var0];
  [(_TUIElementTextFieldBuilder *)v10 setEditingInsets:?];
  v13 = [attributesCopy fontSpecForNode:node.var0];
  attributesForAttributedString = [v13 attributesForAttributedString];

  v15 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementTextFieldBuilder *)v10 setName:v15];

  v16 = [attributesCopy stringForAttribute:177 node:node.var0];
  [(_TUIElementTextFieldBuilder *)v10 setReturnKeyType:v16];

  v17 = [contextCopy viewStateForNode:node.var0 binding:v11];

  [(_TUIElementTextFieldBuilder *)v10 setViewState:v17];
  v18 = objc_alloc_init(TUITextContentStyler);
  v19 = [attributesCopy colorForAttribute:30 node:node.var0];
  [(TUIBackgroundColorStyler *)v18 setBackgroundColor:v19];

  v20 = [attributesCopy colorForAttribute:51 node:node.var0];

  [(TUITextContentStyler *)v18 setTextColor:v20];
  font = [attributesForAttributedString font];
  [(TUITextContentStyler *)v18 setFont:font];

  [(_TUIElementTextFieldBuilder *)v10 setStyle:v18];
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
  [boxCopy setIsEditableControl:1];
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

  v39 = firstObject;
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
  environment = [contextCopy environment];
  v40 = TUIKeyboardAppearanceFromEnvironmentStyle([environment style]);

  objc_initWeak(location, objectCopy);
  [objectCopy setTriggerHandler:v15];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1520E4;
  v43[3] = &unk_25F8B0;
  v32 = v15;
  v44 = v32;
  v33 = viewState;
  v45 = v33;
  objc_copyWeak(v51, location);
  v34 = name;
  v46 = v34;
  v51[1] = v23;
  v51[2] = v25;
  v51[3] = v27;
  v51[4] = v29;
  v35 = style;
  v47 = v35;
  v36 = placeholderString;
  v48 = v36;
  v37 = text;
  v49 = v37;
  v38 = returnKeyType;
  v50 = v38;
  v51[5] = v40;
  [objectCopy setRenderModelBlock:v43];

  objc_destroyWeak(v51);
  objc_destroyWeak(location);
}

@end