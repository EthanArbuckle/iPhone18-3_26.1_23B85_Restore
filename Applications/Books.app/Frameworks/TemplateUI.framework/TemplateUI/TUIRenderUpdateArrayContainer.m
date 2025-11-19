@interface TUIRenderUpdateArrayContainer
- (BOOL)hasDeletesOrInserts;
- (NSString)description;
- (TUIRenderUpdateArrayContainer)initWithCurrent:(id)a3 from:(id)a4 to:(id)a5 tracker:(id)a6 flags:(unint64_t)a7;
- (id)newCurrentContainerPlusInserted;
- (id)newToContainerPlusDeletedWithInterests:(id)a3 changes:(id *)a4;
- (void)_compute;
@end

@implementation TUIRenderUpdateArrayContainer

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p deleted=%@ inserted=%@ updated=%@>", v4, self, self->_deleted, self->_inserted, self->_updated];

  return v5;
}

- (TUIRenderUpdateArrayContainer)initWithCurrent:(id)a3 from:(id)a4 to:(id)a5 tracker:(id)a6 flags:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = TUIRenderUpdateArrayContainer;
  v17 = [(TUIRenderUpdateArrayContainer *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_current, a3);
    objc_storeStrong(&v18->_from, a4);
    objc_storeStrong(&v18->_to, a5);
    objc_storeStrong(&v18->_tracker, a6);
    v18->_copyingFlags = a7;
    [(TUIRenderUpdateArrayContainer *)v18 _compute];
    if (!v18->_tracker)
    {
      if ([(NSArray *)v18->_deleted count])
      {
        v19 = objc_alloc_init(TUIRenderUpdateArrayTracker);
        tracker = v18->_tracker;
        v18->_tracker = v19;
      }
    }
  }

  return v18;
}

- (BOOL)hasDeletesOrInserts
{
  if ([(NSArray *)self->_deleted count]|| [(NSArray *)self->_inserted count])
  {
    return 1;
  }

  v5 = [(TUIRenderUpdateArrayTracker *)self->_tracker deletedModels];
  v3 = [v5 count] != 0;

  return v3;
}

- (void)_compute
{
  v50 = [(TUIRenderModelArrayContaining *)self->_from identifierToContainedSubmodelMap];
  v52 = [(TUIRenderModelArrayContaining *)self->_current identifierToContainedSubmodelMap];
  v3 = [(TUIRenderModelArrayContaining *)self->_to identifierToContainedSubmodelMap];
  v49 = objc_alloc_init(NSMutableSet);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(TUIRenderModelArrayContaining *)self->_from containedSubmodels];
  v4 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  v46 = v3;
  if (!v4)
  {
    v47 = 0;
    v51 = 0;
    goto LABEL_24;
  }

  v5 = v4;
  v47 = 0;
  v51 = 0;
  v6 = *v58;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v58 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v57 + 1) + 8 * i);
      v9 = [v8 identifier];
      v10 = [v3 objectForKeyedSubscript:v9];

      if (v10)
      {
        if (v8 == v10)
        {
          goto LABEL_20;
        }

        tracker = self->_tracker;
        v12 = [v8 identifier];
        v13 = [(TUIRenderUpdateArrayTracker *)tracker submodelTrackerForIdentifier:v12];

        v14 = [v8 identifier];
        v15 = [v52 objectForKeyedSubscript:v14];

        v16 = [v10 computeContainerUpdateCurrent:v15 from:v8 tracker:v13 flags:0];
        if ([v16 hasDeletesOrInserts])
        {
          v17 = self->_tracker;
          v18 = [v8 identifier];
          [(TUIRenderUpdateArrayTracker *)v17 setSubmodelTracker:v13 forIdentifier:v18];

          v19 = v47;
          if (!v47)
          {
            v19 = objc_opt_new();
          }

          v20 = [v10 identifier];
          v47 = v19;
          [v19 setObject:v16 forKeyedSubscript:v20];

          v3 = v46;
        }
      }

      else
      {
        if (!v51)
        {
          v51 = objc_opt_new();
        }

        v21 = [(TUIRenderModelArrayContaining *)self->_to copySubmodel:v8 forFinalAppearanceWithFlags:self->_copyingFlags];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [v8 copyForFinalAppearanceWithFlags:self->_copyingFlags];
        }

        v13 = v23;

        [v51 addObject:v13];
      }

LABEL_20:
    }

    v5 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v5);
LABEL_24:

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = [(TUIRenderModelArrayContaining *)self->_to containedSubmodels];
  v25 = [v24 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v54;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v53 + 1) + 8 * j);
        v31 = [v30 identifier];
        v32 = [v52 objectForKeyedSubscript:v31];
        if (v32)
        {
          v33 = [v50 objectForKeyedSubscript:v31];

          if (!v33)
          {
            [v49 addObject:v31];
          }
        }

        else
        {
          if (!v27)
          {
            v27 = objc_opt_new();
          }

          v34 = [(TUIRenderModelArrayContaining *)self->_to copySubmodel:v30 forInitialAppearanceWithFlags:self->_copyingFlags];
          v35 = v34;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = [v30 copyForInitialAppearanceWithFlags:self->_copyingFlags];
          }

          v37 = v36;

          [v27 addObject:v37];
          [v49 addObject:v31];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
  }

  v38 = [v51 copy];
  deleted = self->_deleted;
  self->_deleted = v38;

  v40 = [v27 copy];
  inserted = self->_inserted;
  self->_inserted = v40;

  v42 = [v49 copy];
  insertedForAnimations = self->_insertedForAnimations;
  self->_insertedForAnimations = v42;

  v44 = [v47 copy];
  updated = self->_updated;
  self->_updated = v44;
}

- (id)newToContainerPlusDeletedWithInterests:(id)a3 changes:(id *)a4
{
  v5 = a3;
  v6 = [(TUIRenderModelArrayContaining *)self->_to identifierToContainedSubmodelMap];
  if ([(NSArray *)self->_deleted count])
  {
    v7 = [(TUIRenderUpdateArrayTracker *)self->_tracker addDeletedInterestInDeletedModels:self->_deleted];
    [v5 addObject:v7];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_AFF38;
  v50 = sub_AFF48;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_AFF38;
  v44 = sub_AFF48;
  v45 = 0;
  v8 = [(TUIRenderUpdateArrayTracker *)self->_tracker deletedModels];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_AFF50;
  v35[3] = &unk_260CF0;
  v9 = v6;
  v36 = v9;
  v37 = self;
  v38 = &v46;
  v39 = &v40;
  [v8 enumerateKeysAndObjectsUsingBlock:v35];

  if ([(NSDictionary *)self->_updated count])
  {
    if (!v41[5])
    {
      v10 = [(TUIRenderModelArrayContaining *)self->_to containedSubmodels];
      v11 = [v10 mutableCopy];
      v12 = v11;
      if (!v11)
      {
        v12 = objc_opt_new();
      }

      objc_storeStrong(v41 + 5, v12);
      if (!v11)
      {
      }
    }

    updated = self->_updated;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_B00A8;
    v32[3] = &unk_260D40;
    v34 = &v40;
    v32[4] = self;
    v33 = v5;
    [(NSDictionary *)updated enumerateKeysAndObjectsUsingBlock:v32];
  }

  if (v47[5])
  {
    [(TUIRenderUpdateArrayTracker *)self->_tracker setDeletedModels:?];
  }

  if (v31)
  {
    v14 = objc_alloc_init(TUIRenderUpdateChanges);
    [(TUIRenderUpdateChanges *)v14 setInserts:self->_insertedForAnimations];
    v15 = [(TUIRenderUpdateArrayContainer *)self updated];
    v16 = [v15 allKeys];
    v17 = [NSSet setWithArray:v16];

    if (![v17 count])
    {

      v17 = 0;
    }

    [(TUIRenderUpdateChanges *)v14 setUpdates:v17];

    v18 = [(TUIRenderUpdateArrayContainer *)self deleted];
    v19 = objc_alloc_init(NSMutableSet);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v21)
    {
      v22 = *v53;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [*(*(&v52 + 1) + 8 * i) identifier];
          if (v24)
          {
            [v19 addObject:v24];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v21);
    }

    if (![v19 count])
    {

      v19 = 0;
    }

    [(TUIRenderUpdateChanges *)v14 setDeletes:v19];
    v25 = v14;
    *v31 = v14;
  }

  to = self->_to;
  if (v41[5])
  {
    v27 = [(TUIRenderModelArrayContaining *)to copyWithContainedSubmodels:?];
  }

  else
  {
    v27 = to;
  }

  v28 = v27;

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v28;
}

- (id)newCurrentContainerPlusInserted
{
  v3 = self->_current;
  if ([(NSArray *)self->_inserted count])
  {
    v4 = [(TUIRenderModelArrayContaining *)self->_current containedSubmodels];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = objc_opt_new();
    }

    v8 = v7;

    [v8 addObjectsFromArray:self->_inserted];
  }

  else
  {
    v8 = 0;
  }

  if ([(NSDictionary *)self->_updated count])
  {
    if (!v8)
    {
      v9 = [(TUIRenderModelArrayContaining *)self->_current containedSubmodels];
      v10 = [v9 mutableCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_opt_new();
      }

      v8 = v12;
    }

    updated = self->_updated;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_B0394;
    v16[3] = &unk_260D68;
    v8 = v8;
    v17 = v8;
    v18 = self;
    [(NSDictionary *)updated enumerateKeysAndObjectsUsingBlock:v16];
  }

  if (v8)
  {
    v14 = [(TUIRenderModelArrayContaining *)self->_current copyWithContainedSubmodels:v8];

    v3 = v14;
  }

  return v3;
}

@end