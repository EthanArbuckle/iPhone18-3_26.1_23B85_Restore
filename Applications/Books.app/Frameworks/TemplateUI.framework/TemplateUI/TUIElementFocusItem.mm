@interface TUIElementFocusItem
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementFocusItem

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  boxCopy = box;
  [boxCopy setGrouped:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 93, var0)}];
  v10 = [attributesCopy focusStyleForAttribute:88 node:var0];

  [boxCopy setFocusStyle:v10];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  contextCopy = context;
  builderCopy = builder;
  objectCopy = object;
  v10 = [builderCopy finalizeModelsWithParent:objectCopy box:objectCopy context:contextCopy];
  v11 = [TUIElementActionTriggerHandler alloc];
  finalizeTriggers = [builderCopy finalizeTriggers];
  actionObject = [contextCopy actionObject];
  actionDelegate = [contextCopy actionDelegate];

  v15 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];
  [objectCopy setActionHandler:v15];

  finalizeLinkEntities = [builderCopy finalizeLinkEntities];

  [objectCopy setLinkEntities:finalizeLinkEntities];
}

@end