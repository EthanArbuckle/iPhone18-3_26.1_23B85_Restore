@interface TUIAnimationGroupCollection
- (id)copyWithZone:(_NSZone *)zone;
- (id)generateAllGroupRenderModelsFromSource:(id)source;
@end

@implementation TUIAnimationGroupCollection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIAnimationGroupCollection allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_groups copy];
    groups = v4->_groups;
    v4->_groups = v5;
  }

  return v4;
}

- (id)generateAllGroupRenderModelsFromSource:(id)source
{
  sourceCopy = source;
  v17 = objc_alloc_init(NSMutableDictionary);
  groups = [(TUIAnimationGroupCollection *)self groups];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [groups countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(groups);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [groups objectForKeyedSubscript:v10];
        v12 = [v11 generateAnimationRenderModelsForAllPhasesFromSource:sourceCopy];
        phaseRenderModels = [v12 phaseRenderModels];
        v14 = [phaseRenderModels count];

        if (v14)
        {
          [v17 setObject:v12 forKey:v10];
        }
      }

      v7 = [groups countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v17 count])
  {
    v15 = objc_alloc_init(TUIAnimationGroupRenderModelCollection);
    [(TUIAnimationGroupRenderModelCollection *)v15 setGroupPhases:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end