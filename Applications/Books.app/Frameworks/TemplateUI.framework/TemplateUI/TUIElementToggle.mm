@interface TUIElementToggle
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
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

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  attributesCopy = attributes;
  v10 = objc_alloc_init(_TUIElementToggleBuilder);
  v11 = [contextCopy viewStateForNode:node.var0 binding:{objc_msgSend(attributesCopy, "bindingNameForAttribute:node:", 36, node.var0)}];

  [(_TUIElementToggleBuilder *)v10 setViewState:v11];
  -[_TUIElementToggleBuilder setEnabled:](v10, "setEnabled:", [attributesCopy BOOLForAttribute:74 withDefault:1 node:node.var0]);
  -[_TUIElementToggleBuilder setIsOn:](v10, "setIsOn:", [attributesCopy BOOLForAttribute:145 withDefault:0 node:node.var0]);
  v12 = [attributesCopy stringForAttribute:138 node:node.var0];

  [(_TUIElementToggleBuilder *)v10 setName:v12];
  return v10;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  boxCopy = box;
  v9 = [attributes stringForAttribute:206 node:var0];
  [boxCopy setTitle:v9];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v10 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];
  v14 = [(TUIElementActionTriggerHandler *)v10 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  viewState = [builderCopy viewState];
  enabled = [builderCopy enabled];
  isOn = [builderCopy isOn];
  name = [builderCopy name];
  title = [objectCopy title];
  [objectCopy width];
  if ((v21 & 0x7000000000000) >= 0x2000000000001 && (HIWORD(v21) & 7) - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [contextCopy reportError:1032];
  }

  refId = [objectCopy refId];
  [(TUIElementActionTriggerHandler *)v14 setRefId:refId];

  objc_initWeak(&location, objectCopy);
  [objectCopy setTriggerHandler:v14];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_145130;
  v27[3] = &unk_2628F8;
  v23 = v14;
  v28 = v23;
  v24 = viewState;
  v29 = v24;
  v33 = enabled;
  objc_copyWeak(&v32, &location);
  v25 = name;
  v30 = v25;
  v26 = title;
  v31 = v26;
  v34 = isOn;
  [objectCopy setRenderModelBlock:v27];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

@end