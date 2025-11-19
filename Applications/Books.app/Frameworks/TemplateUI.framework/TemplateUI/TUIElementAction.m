@interface TUIElementAction
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAction

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v8 = a5;
  v9 = a3;
  v10 = [v8 stringForAttribute:211 node:var0];
  [v9 setTrigger:v10];

  v11 = [v8 stringForAttribute:35 node:var0];
  [v9 setBehavior:v11];

  v12 = [v8 stringForAttribute:165 node:var0];

  [v9 setRefId:v12];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v21 = a3;
  v6 = a4;
  v7 = [v21 trigger];
  if (v7 && (v8 = v7, [v21 behavior], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [TUIElementBehaviorArgumentsMap alloc];
    v11 = [v21 behavior];
    v12 = [v21 arguments];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    v15 = [(TUIElementBehaviorArgumentsMap *)v10 initWithBehavior:v11 arguments:v14];

    v16 = [v21 trigger];
    [v6 addTrigger:v16 withBehavior:v15];
  }

  else
  {
    v17 = [v21 trigger];
    if (!v17)
    {
      goto LABEL_13;
    }

    v15 = v17;
    v18 = [v21 refId];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = v18;
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = [v21 trigger];
    v16 = [v21 refId];
    [v6 addTrigger:v15 withRefId:v16];
  }

LABEL_12:
LABEL_13:
}

@end