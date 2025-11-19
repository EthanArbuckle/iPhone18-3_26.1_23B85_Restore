@interface NMKeepLocalTransientState
- (id)modelObjectsWithEnableState:(int64_t)a3 type:(int64_t)a4;
- (void)_removeEnableStateForModelObject:(id)a3;
- (void)_removeExpiredEnabledStates;
- (void)confirmEnableStateForModelObject:(id)a3 expirationBlock:(id)a4;
- (void)removeEnableStateForModelObject:(id)a3;
- (void)setEnableState:(int64_t)a3 forModelObject:(id)a4;
@end

@implementation NMKeepLocalTransientState

- (id)modelObjectsWithEnableState:(int64_t)a3 type:(int64_t)a4
{
  modelObjects = self->_modelObjects;
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)modelObjects objectForKeyedSubscript:v6];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 copy];

  return v10;
}

- (void)setEnableState:(int64_t)a3 forModelObject:(id)a4
{
  v6 = a4;
  v7 = sub_9AEC(13);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 134218242;
    v32 = a3;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[KeepLocalTransientState] Setting enable state: %ld for model object: %@", &v31, 0x16u);
  }

  [(NMKeepLocalTransientState *)self _removeEnableStateForModelObject:v6];
  modelObjects = self->_modelObjects;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)modelObjects objectForKeyedSubscript:v9];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() genericObjectType]);
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = self->_modelObjects;
    v14 = [NSNumber numberWithInteger:a3];
    v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      if (!self->_modelObjects)
      {
        v16 = +[NSMutableDictionary dictionary];
        v17 = self->_modelObjects;
        self->_modelObjects = v16;
      }

      v18 = +[NSMutableDictionary dictionary];
      v19 = self->_modelObjects;
      v20 = [NSNumber numberWithInteger:a3];
      [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];
    }

    v21 = +[NSMutableSet set];
    v22 = self->_modelObjects;
    v23 = [NSNumber numberWithInteger:a3];
    v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];
    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() genericObjectType]);
    [v24 setObject:v21 forKeyedSubscript:v25];
  }

  v26 = self->_modelObjects;
  v27 = [NSNumber numberWithInteger:a3];
  v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() genericObjectType]);
  v30 = [v28 objectForKeyedSubscript:v29];
  [v30 addObject:v6];
}

- (void)removeEnableStateForModelObject:(id)a3
{
  v4 = a3;
  v5 = sub_9AEC(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[KeepLocalTransientState] Removing enable state for model object: %@", &v6, 0xCu);
  }

  [(NMKeepLocalTransientState *)self _removeEnableStateForModelObject:v4];
}

- (void)confirmEnableStateForModelObject:(id)a3 expirationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_9AEC(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[KeepLocalTransientState] Confirming enable state for model object: %@", buf, 0xCu);
  }

  exirationDates = self->_exirationDates;
  if (!exirationDates)
  {
    v10 = +[NSMapTable weakToStrongObjectsMapTable];
    v11 = self->_exirationDates;
    self->_exirationDates = v10;

    exirationDates = self->_exirationDates;
  }

  v12 = +[NSDate now];
  v13 = [v12 dateByAddingTimeInterval:15.0];
  [(NSMapTable *)exirationDates setObject:v13 forKey:v6];

  objc_initWeak(buf, self);
  v14 = dispatch_walltime(0, 15000000000);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_185C;
  v16[3] = &unk_144E8;
  objc_copyWeak(&v18, buf);
  v17 = v7;
  v15 = v7;
  dispatch_after(v14, &_dispatch_main_q, v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)_removeEnableStateForModelObject:(id)a3
{
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modelObjects;
  v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      v5 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * v5);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [(NSMutableDictionary *)self->_modelObjects objectForKeyedSubscript:v6];
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            v11 = 0;
            do
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * v11);
              v13 = [(NSMutableDictionary *)self->_modelObjects objectForKeyedSubscript:v6];
              v14 = [v13 objectForKeyedSubscript:v12];
              [v14 removeObject:v4];

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }

        v5 = v5 + 1;
      }

      while (v5 != v17);
      v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  [(NSMapTable *)self->_exirationDates removeObjectForKey:v4];
}

- (void)_removeExpiredEnabledStates
{
  v20 = +[NSDate now];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_modelObjects;
  v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v17)
  {
    v16 = *v30;
    do
    {
      v3 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v3;
        v4 = *(*(&v29 + 1) + 8 * v3);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v19 = [(NSMutableDictionary *)self->_modelObjects objectForKeyedSubscript:v4];
        v5 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v5)
        {
          v6 = v5;
          v21 = *v26;
          do
          {
            v7 = 0;
            do
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v8 = *(*(&v25 + 1) + 8 * v7);
              v9 = [(NSMutableDictionary *)self->_modelObjects objectForKeyedSubscript:v4];
              v10 = [v9 objectForKeyedSubscript:v8];
              v11 = [(NSMutableDictionary *)self->_modelObjects objectForKeyedSubscript:v4];
              v12 = [v11 objectForKeyedSubscript:v8];
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v22[2] = sub_1D74;
              v22[3] = &unk_14510;
              v23 = v20;
              v24 = self;
              v13 = [NSPredicate predicateWithBlock:v22];
              v14 = [v12 filteredSetUsingPredicate:v13];
              [v10 minusSet:v14];

              v7 = v7 + 1;
            }

            while (v6 != v7);
            v6 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v6);
        }

        v3 = v18 + 1;
      }

      while ((v18 + 1) != v17);
      v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v17);
  }
}

@end