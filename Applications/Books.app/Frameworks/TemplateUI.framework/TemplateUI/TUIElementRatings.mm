@interface TUIElementRatings
+ (id)attributesToIgnoreWhenResolving;
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
+ (void)preconfigureBox:(id)box context:(id)context;
@end

@implementation TUIElementRatings

+ (id)supportedAttributes
{
  if (qword_2E6418 != -1)
  {
    sub_19B39C();
  }

  v3 = qword_2E6410;

  return v3;
}

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E6428 != -1)
  {
    sub_19B3B0();
  }

  v3 = qword_2E6420;

  return v3;
}

+ (void)preconfigureBox:(id)box context:(id)context
{
  boxCopy = box;
  [boxCopy setAXElement:1];
  [boxCopy setAxAdjustable:1];
}

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  v10 = objc_alloc_init(_TUIElementRatingsBuilder);
  v11 = [contextCopy childCountForNode:node.var0];
  v12 = [contextCopy viewStateForNode:node.var0 binding:{objc_msgSend(attributesCopy, "bindingNameForAttribute:node:", 36, node.var0)}];

  [(_TUIElementRatingsBuilder *)v10 setViewState:v12];
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    contextCopy = [(_TUIElementRatingsBuilder *)v10 viewState];
    v13 = contextCopy != 0;
  }

  -[_TUIElementRatingsBuilder setEnabled:](v10, "setEnabled:", [attributesCopy BOOLForAttribute:74 withDefault:v13 node:node.var0]);
  if (!v11)
  {
  }

  v14 = [attributesCopy colorForAttribute:51 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setColor:v14];

  v15 = [attributesCopy colorForAttribute:198 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setStartColor:v15];

  v16 = [attributesCopy colorForAttribute:30 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setBackgroundColor:v16];

  v17 = [attributesCopy stringForAttribute:116 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setBackgroundKind:[TUIRatingsBox backgroundKindFromString:v17]];

  v18 = [attributesCopy stringForAttribute:138 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setName:v18];

  [attributesCopy floatForAttribute:164 node:node.var0];
  [(_TUIElementRatingsBuilder *)v10 setRating:?];

  return v10;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  v9 = [attributesCopy lengthForAttribute:225 node:node.var0];
  [boxCopy setSize:{+[TUIRatingsBox sizeFromWidth:](TUIRatingsBox, "sizeFromWidth:", v9, v10)}];
  v11 = [attributesCopy lengthForAttribute:225 node:node.var0];
  [boxCopy setWidth:{v11, v12}];
  v13 = [attributesCopy lengthForAttribute:98 node:node.var0];
  [boxCopy setHeight:{v13, v14}];
  axLabel = [boxCopy axLabel];

  if (!axLabel)
  {
    [attributesCopy floatForAttribute:164 node:node.var0];
    v17 = v16;
    v18 = TUIBundle();
    v19 = [v18 localizedStringForKey:@"Rating" value:&stru_264550 table:@"TemplateUILocalizable"];

    v20 = TUIBundle();
    v21 = [v20 localizedStringForKey:@"%lu stars" value:&stru_264550 table:@"TemplateUILocalizable"];
    v22 = v17 / 0.2;
    v23 = [NSString localizedStringWithFormat:v21, vcvtas_u32_f32(v22)];

    [boxCopy setAxLabel:v19];
    [boxCopy setAxValue:v23];
  }
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  axActions = [builderCopy axActions];
  [objectCopy setAxCustomActions:axActions];

  v11 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  v31 = contextCopy;
  actionDelegate = [contextCopy actionDelegate];
  v15 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  [objectCopy setTriggerHandler:v15];
  refId = [objectCopy refId];
  [(TUIElementActionTriggerHandler *)v15 setRefId:refId];

  viewState = [builderCopy viewState];
  name = [builderCopy name];
  color = [builderCopy color];
  startColor = [builderCopy startColor];
  backgroundColor = [builderCopy backgroundColor];
  backgroundKind = [builderCopy backgroundKind];
  LOBYTE(contextCopy) = [builderCopy enabled];
  [builderCopy rating];
  v24 = v23;
  objc_initWeak(location, objectCopy);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_CDDAC;
  v33[3] = &unk_261540;
  v25 = v15;
  v34 = v25;
  v26 = viewState;
  v35 = v26;
  objc_copyWeak(v40, location);
  v27 = name;
  v36 = v27;
  v40[1] = v24;
  v41 = contextCopy;
  v28 = color;
  v37 = v28;
  v29 = startColor;
  v38 = v29;
  v30 = backgroundColor;
  v39 = v30;
  v40[2] = backgroundKind;
  [objectCopy setRenderModelBlock:v33];

  objc_destroyWeak(v40);
  objc_destroyWeak(location);
}

@end