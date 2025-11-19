@interface TUIElementTriggerBehaviorMap
- (BOOL)isEqual:(id)a3;
- (TUIElementTriggerBehaviorMap)initWithMap:(id)a3 refIdMap:(id)a4;
@end

@implementation TUIElementTriggerBehaviorMap

- (TUIElementTriggerBehaviorMap)initWithMap:(id)a3 refIdMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIElementTriggerBehaviorMap;
  v9 = [(TUIElementTriggerBehaviorMap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_triggerBehaviorMap, a3);
    objc_storeStrong(&v10->_triggerRefIdMap, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      v8 = [(TUIElementTriggerBehaviorMap *)self triggerBehaviorMap];
      v9 = [(TUIElementTriggerBehaviorMap *)v7 triggerBehaviorMap];

      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(TUIElementTriggerBehaviorMap *)self triggerBehaviorMap];
        v11 = [(TUIElementTriggerBehaviorMap *)v7 triggerBehaviorMap];
        v12 = [v10 isEqualToDictionary:v11];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end