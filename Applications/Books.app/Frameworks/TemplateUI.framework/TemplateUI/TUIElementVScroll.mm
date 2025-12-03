@interface TUIElementVScroll
+ (id)supportedAttributes;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementVScroll

+ (id)supportedAttributes
{
  if (qword_2E5FB8 != -1)
  {
    sub_199704();
  }

  v3 = qword_2E5FB0;

  return v3;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  contextCopy = context;
  attributesCopy = attributes;
  boxCopy = box;
  [attributesCopy floatForAttribute:9 node:var0];
  [boxCopy setAnchorOffset:?];
  [boxCopy setAcceptsDrop:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 2, 0, var0)}];
  v12 = [attributesCopy stringForAttribute:65 node:var0];

  [boxCopy setDecelerationRate:TUIBoxDecelerationRateFromString(v12)];
  v13 = [contextCopy modelIdentifierWithNode:var0];

  [boxCopy setModelIdentifierForScrollable:v13];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v9 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:contextCopy];
  if ([objectCopy acceptsDrop])
  {
    finalizeTriggers = [builderCopy finalizeTriggers];
    v11 = [finalizeTriggers behaviorDataForTrigger:@"drop"];

    if (v11)
    {
      v12 = [TUIElementActionTriggerHandler alloc];
      actionObject = [contextCopy actionObject];
      actionDelegate = [contextCopy actionDelegate];
      v15 = [(TUIElementActionTriggerHandler *)v12 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];
      [objectCopy setDropHandler:v15];
    }
  }
}

@end