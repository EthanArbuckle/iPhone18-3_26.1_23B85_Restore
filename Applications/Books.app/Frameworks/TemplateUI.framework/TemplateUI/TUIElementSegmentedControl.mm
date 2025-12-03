@interface TUIElementSegmentedControl
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
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

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  v10 = objc_alloc_init(_TUIElementSegmentControlBuilder);
  v11 = [contextCopy viewStateForNode:node.var0 binding:{objc_msgSend(attributesCopy, "bindingNameForAttribute:node:", 36, node.var0)}];
  [(_TUIElementSegmentControlBuilder *)v10 setViewState:v11];

  v12 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementSegmentControlBuilder *)v10 setName:v12];

  -[_TUIElementSegmentControlBuilder setSelectIndex:](v10, "setSelectIndex:", [attributesCopy integerForAttribute:186 withDefault:0 node:node.var0]);
  v13 = [attributesCopy colorForAttribute:51 node:node.var0];
  [(_TUIElementSegmentControlBuilder *)v10 setTintColor:v13];

  return v10;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  [attributesCopy insetsForAttribute:208 node:node.var0];
  [boxCopy setTouchInsets:{UIEdgeInsetsZero.top - v9, UIEdgeInsetsZero.left - v10, UIEdgeInsetsZero.bottom - v11, UIEdgeInsetsZero.right - v12}];
  [boxCopy setEnabled:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 74, 1, node.var0)}];
  [attributesCopy floatForAttribute:157 withDefault:node.var0 node:1.0];
  [boxCopy setPressedScale:?];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  finalizeSegments = [builderCopy finalizeSegments];
  v9 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  v13 = [(TUIElementActionTriggerHandler *)v9 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  viewState = [builderCopy viewState];
  name = [builderCopy name];
  selectIndex = [builderCopy selectIndex];
  tintColor = [builderCopy tintColor];
  objc_initWeak(&location, objectCopy);
  [objectCopy setTriggerHandler:v13];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_15C060;
  v26[3] = &unk_262D10;
  v18 = v13;
  v27 = v18;
  v19 = viewState;
  v28 = v19;
  objc_copyWeak(v32, &location);
  v20 = name;
  v29 = v20;
  v32[1] = selectIndex;
  v21 = finalizeSegments;
  v30 = v21;
  v22 = tintColor;
  v31 = v22;
  [objectCopy setRenderModelBlock:v26];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

@end