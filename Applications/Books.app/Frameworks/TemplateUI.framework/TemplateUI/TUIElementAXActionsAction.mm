@interface TUIElementAXActionsAction
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAXActionsAction

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  v9 = [attributesCopy stringForAttribute:211 node:var0];
  [objectCopy setTrigger:v9];

  v10 = [attributesCopy stringForAttribute:35 node:var0];
  [objectCopy setBehavior:v10];

  v11 = [attributesCopy stringForAttribute:165 node:var0];
  [objectCopy setRefId:v11];

  v12 = [attributesCopy stringForAttribute:26 node:var0];
  [objectCopy setLabel:v12];

  v13 = [attributesCopy BOOLForAttribute:19 node:var0];
  [objectCopy setIsDefault:v13];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  refId = [objectCopy refId];

  if (refId)
  {
    v10 = [TUIAXCustomAction alloc];
    refId2 = [objectCopy refId];
    trigger = [objectCopy trigger];
    v13 = [(TUIAXCustomAction *)v10 initWithRefId:refId2 trigger:trigger];
  }

  else
  {
    behavior = [objectCopy behavior];

    if (!behavior)
    {
      goto LABEL_10;
    }

    v15 = [TUIElementBehaviorArgumentsMap alloc];
    behavior2 = [objectCopy behavior];
    arguments = [objectCopy arguments];
    v18 = arguments;
    if (arguments)
    {
      v19 = arguments;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }

    refId2 = [(TUIElementBehaviorArgumentsMap *)v15 initWithBehavior:behavior2 arguments:v19];

    v20 = [TUIAXCustomAction alloc];
    trigger = [objectCopy trigger];
    actionObject = [contextCopy actionObject];
    actionDelegate = [contextCopy actionDelegate];
    v13 = [(TUIAXCustomAction *)v20 initWithTrigger:trigger actionData:refId2 actionObject:actionObject actionDelegate:actionDelegate controlIdentifier:0];
  }

  if (v13)
  {
    label = [objectCopy label];
    [(TUIAXCustomAction *)v13 setLabel:label];

    -[TUIAXCustomAction setIsDefault:](v13, "setIsDefault:", [objectCopy isDefault]);
    [builderCopy addAXAction:v13];

    goto LABEL_11;
  }

LABEL_10:
  [contextCopy reportError:1030];
LABEL_11:
}

@end