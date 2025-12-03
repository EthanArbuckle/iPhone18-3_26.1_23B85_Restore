@interface TUIElementAction
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAction

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  v10 = [attributesCopy stringForAttribute:211 node:var0];
  [objectCopy setTrigger:v10];

  v11 = [attributesCopy stringForAttribute:35 node:var0];
  [objectCopy setBehavior:v11];

  v12 = [attributesCopy stringForAttribute:165 node:var0];

  [objectCopy setRefId:v12];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  trigger = [objectCopy trigger];
  if (trigger && (v8 = trigger, [objectCopy behavior], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [TUIElementBehaviorArgumentsMap alloc];
    behavior = [objectCopy behavior];
    arguments = [objectCopy arguments];
    v13 = arguments;
    if (arguments)
    {
      v14 = arguments;
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    trigger4 = [(TUIElementBehaviorArgumentsMap *)v10 initWithBehavior:behavior arguments:v14];

    trigger2 = [objectCopy trigger];
    [builderCopy addTrigger:trigger2 withBehavior:trigger4];
  }

  else
  {
    trigger3 = [objectCopy trigger];
    if (!trigger3)
    {
      goto LABEL_13;
    }

    trigger4 = trigger3;
    refId = [objectCopy refId];
    if (!refId)
    {
      goto LABEL_12;
    }

    v19 = refId;
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

    trigger4 = [objectCopy trigger];
    trigger2 = [objectCopy refId];
    [builderCopy addTrigger:trigger4 withRefId:trigger2];
  }

LABEL_12:
LABEL_13:
}

@end