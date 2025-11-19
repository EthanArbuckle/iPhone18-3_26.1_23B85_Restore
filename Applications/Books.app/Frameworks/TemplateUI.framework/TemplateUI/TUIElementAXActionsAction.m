@interface TUIElementAXActionsAction
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAXActionsAction

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v14 = a3;
  v9 = [v8 stringForAttribute:211 node:var0];
  [v14 setTrigger:v9];

  v10 = [v8 stringForAttribute:35 node:var0];
  [v14 setBehavior:v10];

  v11 = [v8 stringForAttribute:165 node:var0];
  [v14 setRefId:v11];

  v12 = [v8 stringForAttribute:26 node:var0];
  [v14 setLabel:v12];

  v13 = [v8 BOOLForAttribute:19 node:var0];
  [v14 setIsDefault:v13];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v24 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v24 refId];

  if (v9)
  {
    v10 = [TUIAXCustomAction alloc];
    v11 = [v24 refId];
    v12 = [v24 trigger];
    v13 = [(TUIAXCustomAction *)v10 initWithRefId:v11 trigger:v12];
  }

  else
  {
    v14 = [v24 behavior];

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = [TUIElementBehaviorArgumentsMap alloc];
    v16 = [v24 behavior];
    v17 = [v24 arguments];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }

    v11 = [(TUIElementBehaviorArgumentsMap *)v15 initWithBehavior:v16 arguments:v19];

    v20 = [TUIAXCustomAction alloc];
    v12 = [v24 trigger];
    v21 = [v8 actionObject];
    v22 = [v8 actionDelegate];
    v13 = [(TUIAXCustomAction *)v20 initWithTrigger:v12 actionData:v11 actionObject:v21 actionDelegate:v22 controlIdentifier:0];
  }

  if (v13)
  {
    v23 = [v24 label];
    [(TUIAXCustomAction *)v13 setLabel:v23];

    -[TUIAXCustomAction setIsDefault:](v13, "setIsDefault:", [v24 isDefault]);
    [v7 addAXAction:v13];

    goto LABEL_11;
  }

LABEL_10:
  [v8 reportError:1030];
LABEL_11:
}

@end