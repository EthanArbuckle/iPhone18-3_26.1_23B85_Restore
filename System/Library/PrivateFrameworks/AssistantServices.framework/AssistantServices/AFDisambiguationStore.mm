@interface AFDisambiguationStore
- (id)_store;
- (id)infoForIdentifier:(id)identifier;
- (void)reset;
- (void)saveInfo:(id)info forIdentifier:(id)identifier;
@end

@implementation AFDisambiguationStore

- (void)saveInfo:(id)info forIdentifier:(id)identifier
{
  infoCopy = info;
  v6 = [identifier base64EncodedStringWithOptions:0];
  if (infoCopy)
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v7 = 0;
  }

  _store = [(AFDisambiguationStore *)self _store];
  [_store setData:v7 forKey:v6 inKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];
}

- (id)infoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _store = [(AFDisambiguationStore *)self _store];
  v6 = [identifierCopy base64EncodedStringWithOptions:0];

  v7 = [_store dataForKey:v6 inKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];

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
  _store = [(AFDisambiguationStore *)self _store];
  [_store resetKnowledgeStoreWithName:@"com.apple.siri.disambiguation"];
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