@interface ADManagedStorageConnection
- (id)_defaultStoreSpecificKeyForName:(id)a3 key:(id)a4;
- (id)_defaultStoreSpecificKeyPrefixForName:(id)a3;
- (id)_storeWithName:(id)a3;
- (void)fetchManagedStoreObjectForKey:(id)a3 reply:(id)a4;
- (void)getKnowledgeStoreDataForKey:(id)a3 inStoreWithName:(id)a4 completion:(id)a5;
- (void)resetKnowledgeStoreWithName:(id)a3 completion:(id)a4;
- (void)setKnowledgeStoreData:(id)a3 forKey:(id)a4 inStoreWithName:(id)a5 completion:(id)a6;
- (void)setManagedStoreObject:(id)a3 forKey:(id)a4;
@end

@implementation ADManagedStorageConnection

- (void)resetKnowledgeStoreWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10025176C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002517C0;
  block[3] = &unk_10051E088;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)getKnowledgeStoreDataForKey:(id)a3 inStoreWithName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10025176C();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100251B24;
  v15[3] = &unk_10051E0D8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)setKnowledgeStoreData:(id)a3 forKey:(id)a4 inStoreWithName:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_10025176C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100251D70;
  block[3] = &unk_10051D2A0;
  v23 = v10;
  v24 = v13;
  v20 = v12;
  v21 = v11;
  v22 = self;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  dispatch_async(v14, block);
}

- (id)_defaultStoreSpecificKeyForName:(id)a3 key:(id)a4
{
  v6 = a4;
  v7 = [(ADManagedStorageConnection *)self _defaultStoreSpecificKeyPrefixForName:a3];
  v8 = [v7 stringByAppendingString:v6];

  return v8;
}

- (id)_defaultStoreSpecificKeyPrefixForName:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"_NULL_STORE";
  }

  return [(__CFString *)v3 stringByAppendingString:@" - "];
}

- (id)_storeWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_storeMap objectForKey:v4];
    if (!v5)
    {
      v5 = +[CKKnowledgeStore defaultSynchedKnowledgeStore];
      if (v5)
      {
        storeMap = self->_storeMap;
        if (!storeMap)
        {
          v7 = objc_alloc_init(NSMutableDictionary);
          v8 = self->_storeMap;
          self->_storeMap = v7;

          storeMap = self->_storeMap;
        }

        [(NSMutableDictionary *)storeMap setObject:v5 forKey:v4];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchManagedStoreObjectForKey:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 fetchManagedStoreObjectForKey:v6 completion:v5];
}

- (void)setManagedStoreObject:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 setManagedStoreObject:v6 forKey:v5];
}

@end