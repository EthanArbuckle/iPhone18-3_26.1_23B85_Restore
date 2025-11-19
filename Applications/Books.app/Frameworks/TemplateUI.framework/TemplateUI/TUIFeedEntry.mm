@interface TUIFeedEntry
+ (id)defaultStackNames;
+ (id)feedEntryFromDictionary:(id)a3;
+ (id)feedEntryFromTemplateURL:(id)a3 data:(id)a4 behaviors:(id)a5;
- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4;
- (BOOL)handleBehaviorWithName:(id)a3 arguments:(id)a4;
- (NSString)uid;
- (TUIFeedEntry)initWithDictionary:(id)a3;
- (TUIFeedEntryDelegate)delegate;
- (id)description;
- (id)dragItemForFeedEntry:(id)a3 name:(id)a4 arguments:(id)a5 imageResourceBlock:(id)a6;
- (id)requestDataWithPriority:(float)a3 block:(id)a4;
- (void)performDropWithSession:(id)a3 behavior:(id)a4;
- (void)setDictionary:(id)a3;
@end

@implementation TUIFeedEntry

+ (id)feedEntryFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[TUIFeedEntry alloc] initWithDictionary:v3];

  return v4;
}

+ (id)feedEntryFromTemplateURL:(id)a3 data:(id)a4 behaviors:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(TUIFeedEntry);
  [(TUIFeedEntry *)v10 setTemplateURL:v9];

  [(TUIFeedEntry *)v10 setData:v8];
  [(TUIFeedEntry *)v10 setBehaviors:v7];

  return v10;
}

+ (id)defaultStackNames
{
  v2 = [[NSSet alloc] initWithObjects:{@"default", 0}];

  return v2;
}

- (TUIFeedEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TUIFeedEntry;
  v5 = [(TUIFeedEntry *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSUUID);
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [[TUIIdentifierMap alloc] initWithUUID:v5->_uuid];
    identifierMap = v5->_identifierMap;
    v5->_identifierMap = v8;

    v10 = [objc_opt_class() defaultStackNames];
    stackNames = v5->_stackNames;
    v5->_stackNames = v10;

    v5->_stackNamesLock._os_unfair_lock_opaque = 0;
    [(TUIFeedEntry *)v5 setDictionary:v4];
  }

  return v5;
}

- (void)setDictionary:(id)a3
{
  v5 = a3;
  dictionary = self->_dictionary;
  if (dictionary != v5 && ([(NSDictionary *)dictionary isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_dictionary, a3);
    v7 = [(NSDictionary *)v5 objectForKeyedSubscript:@"template"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objc_opt_class();
        v9 = TUIDynamicCast(v8, v7);
        v10 = [NSURL URLWithString:v9];
        templateURL = self->_templateURL;
        self->_templateURL = v10;
      }

      else
      {
        v12 = objc_opt_class();
        v13 = TUIDynamicCast(v12, v7);
        v9 = self->_templateURL;
        self->_templateURL = v13;
      }

      if (!self->_templateURL)
      {
        v14 = TUIDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_199CAC(v7, v14);
        }
      }
    }

    v15 = objc_opt_class();
    v16 = [(NSDictionary *)v5 objectForKeyedSubscript:@"load-delay"];
    v17 = TUIDynamicCast(v15, v16);
    [v17 floatValue];
    self->_loadDelay = v18;

    v19 = [(NSDictionary *)v5 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [TUIFeedData feedDataWithDictionary:v19];
      data = self->_data;
      self->_data = v20;
    }

    v22 = [(NSDictionary *)v5 objectForKeyedSubscript:@"behaviors"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [TUIFeedBehaviors feedBehaviorsWithDictionary:v22];
      behaviors = self->_behaviors;
      self->_behaviors = v23;
    }

    v25 = objc_opt_class();
    v26 = [(NSDictionary *)v5 objectForKeyedSubscript:@"stackNames"];
    v27 = TUIDynamicCast(v25, v26);

    if ([v27 count])
    {
      v41 = v22;
      v42 = v7;
      v28 = objc_alloc_init(NSMutableSet);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v40 = v27;
      v29 = v27;
      v30 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v44;
        do
        {
          v33 = 0;
          do
          {
            if (*v44 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v43 + 1) + 8 * v33);
            v35 = objc_opt_class();
            v36 = TUIDynamicCast(v35, v34);

            if (v36)
            {
              [v28 addObject:v34];
            }

            v33 = v33 + 1;
          }

          while (v31 != v33);
          v31 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v31);
      }

      if ([v28 count])
      {
        [(TUIFeedEntry *)self setStackNames:v28];
      }

      v22 = v41;
      v7 = v42;
      v27 = v40;
    }

    else
    {
      v37 = objc_opt_class();
      v38 = [(NSDictionary *)v5 objectForKeyedSubscript:@"stackName"];
      v28 = TUIDynamicCast(v37, v38);

      if ([v28 length])
      {
        v39 = [NSSet setWithObject:v28];
        [(TUIFeedEntry *)self setStackNames:v39];
      }
    }
  }
}

- (NSString)uid
{
  v3 = [(TUIFeedEntry *)self dictionary];
  v4 = [v3 objectForKeyedSubscript:@"entryID"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NSUUID *)self->_uuid UUIDString];
  }

  v7 = v6;

  return v7;
}

- (id)requestDataWithPriority:(float)a3 block:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(TUIFeedEntry *)self delegate];

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [(TUIFeedEntry *)self delegate];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_59FF0;
      v12[3] = &unk_25F500;
      objc_copyWeak(&v14, &location);
      v13 = v6;
      *&v9 = a3;
      v10 = [v8 feedEntry:self requestDataWithPriority:v12 block:v9];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    (*(v6 + 2))(v6, 0, 0);
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (BOOL)handleBehaviorWithName:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIFeedBehaviors *)self->_behaviors behaviorWithName:v6];
  if (v8 && ([(TUIFeedEntry *)self delegate], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, [(TUIFeedEntry *)self delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
  {
    v13 = TUIDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Feed handling behavior '%@' : %@", &v17, 0x16u);
    }

    v14 = [(TUIFeedEntry *)self delegate];
    v15 = [v14 feedEntry:self handleBehavior:v8 name:v6 arguments:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dragItemForFeedEntry:(id)a3 name:(id)a4 arguments:(id)a5 imageResourceBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TUIFeedEntry *)self delegate];
  if (v14 && (v15 = v14, [(TUIFeedEntry *)self delegate], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
  {
    v18 = TUIDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "Feed handling drag behavior '%@' : %@", &v22, 0x16u);
    }

    v19 = [(TUIFeedEntry *)self delegate];
    v20 = [v19 dragItemForFeedEntry:v10 name:v11 arguments:v12 imageResourceBlock:v13];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)performDropWithSession:(id)a3 behavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIFeedEntry *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(TUIFeedEntry *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = TUIDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Feed handling drop behavior '%@", &v14, 0xCu);
      }

      v13 = [(TUIFeedEntry *)self delegate];
      [v13 performDropWithSession:v6 behavior:v7];
    }
  }
}

- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIFeedEntry *)self delegate];
  if (v8 && (v9 = v8, [(TUIFeedEntry *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(TUIFeedEntry *)self delegate];
    v13 = [v12 canHandleDropSession:v6 behavior:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = [(TUIFeedEntry *)self stackNames];
  v4 = [objc_opt_class() defaultStackNames];
  v5 = [v3 isEqualToSet:v4];

  if (v5)
  {
    v6 = &stru_264550;
  }

  else
  {
    v7 = [v3 allObjects];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v6 = [NSString stringWithFormat:@" stackNames=%@", v8];
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(TUIFeedEntry *)self uid];
  v12 = [(NSURL *)self->_templateURL lastPathComponent];
  v13 = [NSString stringWithFormat:@"<%@ %p uid=%@ template=%@%@>", v10, self, v11, v12, v6];

  return v13;
}

- (TUIFeedEntryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end