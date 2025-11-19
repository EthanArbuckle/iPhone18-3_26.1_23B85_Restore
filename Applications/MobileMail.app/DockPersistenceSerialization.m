@interface DockPersistenceSerialization
+ (id)_loadFromLegacyData:(id)a3;
+ (id)_loadFromV1Data:(id)a3;
+ (id)_loadFromV2Data:(id)a3;
+ (id)dictionaryFromDockedStates:(id)a3;
+ (id)dockedStatesFromDictionary:(id)a3;
+ (id)log;
@end

@implementation DockPersistenceSerialization

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1BD8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCE98 != -1)
  {
    dispatch_once(&qword_1006DCE98, block);
  }

  v2 = qword_1006DCE90;

  return v2;
}

+ (id)dockedStatesFromDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = &__NSArray0__struct;
    goto LABEL_25;
  }

  objc_opt_class();
  v5 = &__NSArray0__struct;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = [v4 ef_objectOfClass:objc_opt_class() forKey:@"RestorationCompatabilityVersion"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[DockPersistenceSerialization log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = v8;
    v20 = 2048;
    v21 = 2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deserializing docked states from version %ld to version %ld.", &v18, 0x16u);
  }

  if (v8 == 2)
  {
    v10 = [a1 _loadFromV2Data:v4];
  }

  else if (v8 == 1)
  {
    v10 = [a1 _loadFromV1Data:v4];
  }

  else
  {
    if (v8)
    {
      v12 = +[DockPersistenceSerialization log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100485D34(v8, v12, v13);
      }

      v11 = 0;
      goto LABEL_19;
    }

    v10 = [a1 _loadFromLegacyData:v4];
  }

  v11 = v10;
LABEL_19:
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v5 = v14;

  v15 = +[DockPersistenceSerialization log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v5 count];
    v18 = 134217984;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Deserialization finished with %lu states.", &v18, 0xCu);
  }

LABEL_25:

  return v5;
}

+ (id)dictionaryFromDockedStates:(id)a3
{
  v3 = a3;
  v4 = +[DockPersistenceSerialization log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = [v3 count];
    v15 = 2048;
    v16 = 2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Serializing %lu docked states with version %ld.", buf, 0x16u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_100673F40 forKey:@"RestorationCompatabilityVersion"];
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 ef_publicDescription];
      sub_100485DA4(v9, buf, v8);
    }
  }

  else
  {
    [v5 ef_setOptionalObject:v6 forKey:@"DockedStates"];
  }

  v10 = [v5 copy];

  return v10;
}

+ (id)_loadFromLegacyData:(id)a3
{
  v17 = a3;
  v20 = objc_alloc_init(NSMutableArray);
  v18 = [v17 objectForKey:@"actorItems"];
  v3 = +[DockPersistenceSerialization log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v30 = [v18 count];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Found %lu legacy serialized states.", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v18;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"identificationString", v17}];
        v9 = [v7 objectForKey:@"resurrectionIdentifier"];
        if ([v9 length])
        {
          v10 = objc_opt_class();
          v27 = 0;
          v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v9 error:&v27];
          v12 = v27;
          if (v12)
          {
            v13 = +[DockPersistenceSerialization log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v12 ef_publicDescription];
              sub_100485DF4(v14, buf, &v30, v13);
            }
          }
        }

        else
        {
          v12 = +[DockPersistenceSerialization log];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100485E48(&v25, v26, v12);
          }

          v11 = 0;
        }

        v15 = [DockedViewControllerState withID:v11 title:v8];
        [v20 ef_addOptionalObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v4);
  }

  return v20;
}

+ (id)_loadFromV1Data:(id)a3
{
  v4 = a3;
  v5 = [a1 _loadFromV2Data:v4];
  v6 = [v5 mutableCopy];

  v7 = [v4 objectForKey:@"PresentedState"];
  if ([v7 length])
  {
    v8 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Serialized state has previously presented state. Adding to docked states...", buf, 2u);
    }

    v18 = 0;
    v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
    v10 = v18;
    if (v9)
    {
      [v6 insertObject:v9 atIndex:0];
      v11 = +[DockPersistenceSerialization log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Previously presented state was added to docked states.", buf, 2u);
      }
    }

    if (v10)
    {
      v12 = +[DockPersistenceSerialization log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v10 ef_publicDescription];
        sub_100485E88(v13, buf, v12);
      }
    }
  }

  v14 = +[DockPersistenceSerialization log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v6 count];
    *v19 = 134217984;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found %lu serialized docked states. Updating identifiers and filtering...", v19, 0xCu);
  }

  v16 = [v6 ef_filter:&stru_10064E900];

  return v16;
}

+ (id)_loadFromV2Data:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"DockedStates"];
  if ([v4 length])
  {
    v5 = [NSSet alloc];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v14 count:2];
    v7 = [v5 initWithArray:v6];

    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v4 error:0];
    v9 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = [v8 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Found %lu serialized docked states. Checking for missing identifiers...", &v12, 0xCu);
    }

    v10 = [v8 ef_filter:&stru_10064E920];
  }

  else
  {
    v7 = +[DockPersistenceSerialization log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100485F0C();
    }

    v10 = &__NSArray0__struct;
  }

  return v10;
}

@end