@interface TUIAnimationGroup
- (id)_generateModelsForPhase:(id)phase sourceRenderModel:(id)model;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateAnimationRenderModelsForAllPhasesFromSource:(id)source;
@end

@implementation TUIAnimationGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIAnimationGroup allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_phases copy];
    phases = v4->_phases;
    v4->_phases = v5;
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:@"<"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 addObject:v5];

  v6 = [NSString stringWithFormat:@" %p", self];
  [v3 addObject:v6];

  [v3 addObject:@" phases: { "];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  phases = self->_phases;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_796F0;
  v11[3] = &unk_260328;
  v13 = &v14;
  v8 = v3;
  v12 = v8;
  [(NSDictionary *)phases enumerateKeysAndObjectsUsingBlock:v11];
  if (*(v15 + 24) == 1)
  {
    [v8 addObject:@" "];
  }

  [v8 addObject:@"}>"];
  v9 = [v8 componentsJoinedByString:&stru_264550];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_generateModelsForPhase:(id)phase sourceRenderModel:(id)model
{
  phaseCopy = phase;
  modelCopy = model;
  v8 = objc_alloc_init(NSMutableArray);
  phases = [(TUIAnimationGroup *)self phases];
  v10 = [phases objectForKeyedSubscript:phaseCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  animations = [v10 animations];
  v12 = [animations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(animations);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) generateRenderModelsFromSource:modelCopy];
        if (v16)
        {
          [v10 delay];
          [v10 delay];
          [v16 setDelay:?];
          [v10 duration];
          [v10 duration];
          [v16 setDuration:?];
          [v16 setOptions:{objc_msgSend(v16, "options") | objc_msgSend(v10, "options")}];
          [v8 addObject:v16];
        }
      }

      v13 = [animations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if (![v8 count])
  {

    v8 = 0;
  }

  return v8;
}

- (id)generateAnimationRenderModelsForAllPhasesFromSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  phases = [(TUIAnimationGroup *)self phases];
  v7 = [phases countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(phases);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(TUIAnimationGroup *)self _generateModelsForPhase:v11 sourceRenderModel:sourceCopy];
        if ([v12 count])
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [phases countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = objc_alloc_init(TUIAnimationGroupPhaseRenderModelCollection);
    [(TUIAnimationGroupPhaseRenderModelCollection *)v13 setPhaseRenderModels:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end