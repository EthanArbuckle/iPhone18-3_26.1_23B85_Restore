@interface TUIElementTriggerBehaviorMap
- (BOOL)isEqual:(id)equal;
- (TUIElementTriggerBehaviorMap)initWithMap:(id)map refIdMap:(id)idMap;
@end

@implementation TUIElementTriggerBehaviorMap

- (TUIElementTriggerBehaviorMap)initWithMap:(id)map refIdMap:(id)idMap
{
  mapCopy = map;
  idMapCopy = idMap;
  v12.receiver = self;
  v12.super_class = TUIElementTriggerBehaviorMap;
  v9 = [(TUIElementTriggerBehaviorMap *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_triggerBehaviorMap, map);
    objc_storeStrong(&v10->_triggerRefIdMap, idMap);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = equalCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (v7)
    {
      triggerBehaviorMap = [(TUIElementTriggerBehaviorMap *)self triggerBehaviorMap];
      triggerBehaviorMap2 = [(TUIElementTriggerBehaviorMap *)v7 triggerBehaviorMap];

      if (triggerBehaviorMap == triggerBehaviorMap2)
      {
        v12 = 1;
      }

      else
      {
        triggerBehaviorMap3 = [(TUIElementTriggerBehaviorMap *)self triggerBehaviorMap];
        triggerBehaviorMap4 = [(TUIElementTriggerBehaviorMap *)v7 triggerBehaviorMap];
        v12 = [triggerBehaviorMap3 isEqualToDictionary:triggerBehaviorMap4];
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