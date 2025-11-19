@interface TUIAnimationGroupCollection
- (id)copyWithZone:(_NSZone *)a3;
- (id)generateAllGroupRenderModelsFromSource:(id)a3;
@end

@implementation TUIAnimationGroupCollection

- (id)copyWithZone:(_NSZone *)a3
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

- (id)generateAllGroupRenderModelsFromSource:(id)a3
{
  v4 = a3;
  v17 = objc_alloc_init(NSMutableDictionary);
  v5 = [(TUIAnimationGroupCollection *)self groups];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 generateAnimationRenderModelsForAllPhasesFromSource:v4];
        v13 = [v12 phaseRenderModels];
        v14 = [v13 count];

        if (v14)
        {
          [v17 setObject:v12 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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