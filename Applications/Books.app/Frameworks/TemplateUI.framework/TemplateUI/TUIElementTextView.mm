@interface TUIElementTextView
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementTextView

+ (id)supportedAttributes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_70468;
  block[3] = &unk_25F0F0;
  block[4] = self;
  if (qword_2E6260 != -1)
  {
    dispatch_once(&qword_2E6260, block);
  }

  v2 = qword_2E6258;

  return v2;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6270 != -1)
  {
    sub_199DD0();
  }

  v3 = qword_2E6268;

  return v3;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v10 = objc_alloc_init(_TUIElementTextViewBuilder);
  v11 = [attributesCopy bindingNameForAttribute:36 node:node.var0];
  v12 = [attributesCopy stringForAttribute:202 node:node.var0];
  [(_TUIElementTextViewBuilder *)v10 setText:v12];

  [attributesCopy insetsForAttribute:112 node:node.var0];
  [(_TUIElementTextViewBuilder *)v10 setEditingInsets:?];
  v13 = [attributesCopy fontSpecForNode:node.var0];
  attributesForAttributedString = [v13 attributesForAttributedString];

  v15 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementTextViewBuilder *)v10 setName:v15];

  v16 = [attributesCopy stringForAttribute:177 node:node.var0];
  [(_TUIElementTextViewBuilder *)v10 setReturnKeyType:v16];

  v17 = [contextCopy viewStateForNode:node.var0 binding:v11];

  [(_TUIElementTextViewBuilder *)v10 setViewState:v17];
  v18 = objc_alloc_init(TUITextContentStyler);
  v19 = [attributesCopy colorForAttribute:30 node:node.var0];
  [(TUIBackgroundColorStyler *)v18 setBackgroundColor:v19];

  v20 = [attributesCopy colorForAttribute:51 node:node.var0];

  [(TUITextContentStyler *)v18 setTextColor:v20];
  font = [attributesForAttributedString font];
  [(TUITextContentStyler *)v18 setFont:font];

  [(_TUIElementTextViewBuilder *)v10 setStyle:v18];
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

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  v12 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  v16 = [(TUIElementActionTriggerHandler *)v12 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];

  finalizeAnimationGroups2 = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups2];

  v18 = TUIBoxChildrenWithProtocolAndRole(objectCopy, &OBJC_PROTOCOL___TUIPlaceholderTextBox, 6);
  firstObject = [v18 firstObject];

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
  v39 = contextCopy;
  environment = [contextCopy environment];
  v40 = TUIKeyboardAppearanceFromEnvironmentStyle([environment style]);

  objc_initWeak(location, objectCopy);
  [objectCopy setTriggerHandler:v16];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_70CD4;
  v44[3] = &unk_25F8B0;
  v32 = v16;
  v45 = v32;
  v33 = viewState;
  v46 = v33;
  objc_copyWeak(v52, location);
  v34 = name;
  v47 = v34;
  v52[1] = v23;
  v52[2] = v25;
  v52[3] = v27;
  v52[4] = v29;
  v35 = style;
  v48 = v35;
  v36 = placeholderString;
  v49 = v36;
  v37 = text;
  v50 = v37;
  v38 = returnKeyType;
  v51 = v38;
  v52[5] = v40;
  [objectCopy setRenderModelBlock:v44];

  objc_destroyWeak(v52);
  objc_destroyWeak(location);
}

@end