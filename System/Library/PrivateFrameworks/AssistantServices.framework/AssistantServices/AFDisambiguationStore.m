@interface AFDisambiguationStore
- (id)_store;
- (id)infoForIdentifier:(id)a3;
- (void)reset;
- (void)saveInfo:(id)a3 forIdentifier:(id)a4;
@end

@implementation AFDisambiguationStore

- (void)saveInfo:(id)a3 forIdentifier:(id)a4
{
  v9 = a3;
  v6 = [a4 base64EncodedStringWithOptions:0];
  if (v9)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AFDisambiguationStore *)self _store];
  [v8 setData:v7 forKey:v6 inKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];
}

- (id)infoForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AFDisambiguationStore *)self _store];
  v6 = [v4 base64EncodedStringWithOptions:0];

  v7 = [v5 dataForKey:v6 inKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];

  if (v7)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [v8 unarchivedObjectOfClasses:v9 fromData:v7 error:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)reset
{
  v2 = [(AFDisambiguationStore *)self _store];
  [v2 resetKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];
}

- (id)_store
{
  store = self->_store;
  if (!store)
  {
    v4 = objc_alloc_init(AFManagedStorageConnection);
    v5 = self->_store;
    self->_store = v4;

    store = self->_store;
  }

  return store;
}

@end