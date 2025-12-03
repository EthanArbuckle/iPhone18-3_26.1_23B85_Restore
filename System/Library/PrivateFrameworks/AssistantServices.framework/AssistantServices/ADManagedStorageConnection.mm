@interface ADManagedStorageConnection
- (id)_defaultStoreSpecificKeyForName:(id)name key:(id)key;
- (id)_defaultStoreSpecificKeyPrefixForName:(id)name;
- (id)_storeWithName:(id)name;
- (void)fetchManagedStoreObjectForKey:(id)key reply:(id)reply;
- (void)getKnowledgeStoreDataForKey:(id)key inStoreWithName:(id)name completion:(id)completion;
- (void)resetKnowledgeStoreWithName:(id)name completion:(id)completion;
- (void)setKnowledgeStoreData:(id)data forKey:(id)key inStoreWithName:(id)name completion:(id)completion;
- (void)setManagedStoreObject:(id)object forKey:(id)key;
@end

@implementation ADManagedStorageConnection

- (void)resetKnowledgeStoreWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = sub_10025176C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002517C0;
  block[3] = &unk_10051E088;
  selfCopy = self;
  v14 = completionCopy;
  v12 = nameCopy;
  v9 = nameCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

- (void)getKnowledgeStoreDataForKey:(id)key inStoreWithName:(id)name completion:(id)completion
{
  keyCopy = key;
  nameCopy = name;
  completionCopy = completion;
  v11 = sub_10025176C();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100251B24;
  v15[3] = &unk_10051E0D8;
  v16 = keyCopy;
  selfCopy = self;
  v18 = nameCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = nameCopy;
  v14 = keyCopy;
  dispatch_async(v11, v15);
}

- (void)setKnowledgeStoreData:(id)data forKey:(id)key inStoreWithName:(id)name completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  nameCopy = name;
  completionCopy = completion;
  v14 = sub_10025176C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100251D70;
  block[3] = &unk_10051D2A0;
  v23 = dataCopy;
  v24 = completionCopy;
  v20 = nameCopy;
  v21 = keyCopy;
  selfCopy = self;
  v15 = dataCopy;
  v16 = keyCopy;
  v17 = nameCopy;
  v18 = completionCopy;
  dispatch_async(v14, block);
}

- (id)_defaultStoreSpecificKeyForName:(id)name key:(id)key
{
  keyCopy = key;
  v7 = [(ADManagedStorageConnection *)self _defaultStoreSpecificKeyPrefixForName:name];
  v8 = [v7 stringByAppendingString:keyCopy];

  return v8;
}

- (id)_defaultStoreSpecificKeyPrefixForName:(id)name
{
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = @"_NULL_STORE";
  }

  return [(__CFString *)nameCopy stringByAppendingString:@" - "];
}

- (id)_storeWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(NSMutableDictionary *)self->_storeMap objectForKey:nameCopy];
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

        [(NSMutableDictionary *)storeMap setObject:v5 forKey:nameCopy];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchManagedStoreObjectForKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 fetchManagedStoreObjectForKey:keyCopy completion:replyCopy];
}

- (void)setManagedStoreObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = +[ADCommandCenter sharedCommandCenter];
  [v7 setManagedStoreObject:objectCopy forKey:keyCopy];
}

@end