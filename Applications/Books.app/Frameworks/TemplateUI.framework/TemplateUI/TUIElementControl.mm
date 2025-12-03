@interface TUIElementControl
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementControl

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E62D0 != -1)
  {
    sub_199E48();
  }

  v3 = qword_2E62C8;

  return v3;
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v10 = objc_alloc_init(_TUIElementControlBuilder);
  v11 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementControlBuilder *)v10 setName:v11];

  v12 = [attributesCopy colorForAttribute:30 node:node.var0];
  [(_TUIElementControlBuilder *)v10 setBackgroundColor:v12];

  v13 = [contextCopy viewStateForNode:node.var0 binding:{objc_msgSend(attributesCopy, "bindingNameForAttribute:node:", 36, node.var0)}];

  [(_TUIElementControlBuilder *)v10 setViewState:v13];
  v14 = [attributesCopy BOOLForAttribute:139 node:node.var0];

  [(_TUIElementControlBuilder *)v10 setMenuIsPrimary:v14];
  return v10;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [boxCopy setEnabled:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 74, 1, var0)}];
  [attributesCopy floatForAttribute:157 withDefault:var0 node:1.0];
  [boxCopy setPressedScale:?];
  v9 = [attributesCopy pointerForNode:var0];
  [boxCopy setPointer:v9];

  [boxCopy setGrouped:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 93, var0)}];
  v10 = [attributesCopy focusStyleForAttribute:88 node:var0];
  [boxCopy setFocusStyle:v10];

  [attributesCopy insetsForAttribute:208 node:var0];
  [boxCopy setTouchInsets:{UIEdgeInsetsZero.top - v11, UIEdgeInsetsZero.left - v12, UIEdgeInsetsZero.bottom - v13, UIEdgeInsetsZero.right - v14}];
  [boxCopy setEnableBackgroundForHighlightPreview:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 72, var0)}];
  v15 = [attributesCopy BOOLForAttribute:73 node:var0];

  [boxCopy setEnableShadowForHighlightPreview:v15];
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

  menuContainer = [builderCopy menuContainer];
  [objectCopy setMenuContainer:menuContainer];

  [objectCopy setMenuIsPrimary:{objc_msgSend(builderCopy, "menuIsPrimary")}];
  finalizeLinkEntities = [builderCopy finalizeLinkEntities];
  [objectCopy setLinkEntities:finalizeLinkEntities];

  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  objc_initWeak(&location, actionDelegate);

  v16 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  v18 = objc_loadWeakRetained(&location);
  v19 = [(TUIElementActionTriggerHandler *)v16 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:v18];

  [objectCopy setTriggerHandler:v19];
  refId = [objectCopy refId];
  [(TUIElementActionTriggerHandler *)v19 setRefId:refId];

  v21 = objc_alloc_init(TUIBackgroundColorStyler);
  name = [builderCopy name];
  backgroundColor = [builderCopy backgroundColor];
  [(TUIBackgroundColorStyler *)v21 setBackgroundColor:backgroundColor];

  viewState = [builderCopy viewState];
  environment = [contextCopy environment];
  if ([environment accessibilityElementsNeeded] && objc_msgSend(objectCopy, "axHasNonDefaultAttributess"))
  {
    v26 = [[TUIAXAttributes alloc] initWithAXAttributes:objectCopy];
  }

  else
  {
    v26 = 0;
  }

  objc_initWeak(&from, objectCopy);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_7E4DC;
  v33[3] = &unk_25E928;
  objc_copyWeak(&v40, &from);
  v27 = actionObject;
  v34 = v27;
  objc_copyWeak(&v41, &location);
  v28 = v19;
  v35 = v28;
  v29 = viewState;
  v36 = v29;
  v30 = v21;
  v37 = v30;
  v31 = name;
  v38 = v31;
  v32 = v26;
  v39 = v32;
  [objectCopy setRenderModelBlock:v33];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

@end