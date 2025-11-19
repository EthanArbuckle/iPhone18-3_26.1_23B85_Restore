@interface _MPModelLibraryDownloadQueueDataSource
- (_MPModelLibraryDownloadQueueDataSource)initWithRequest:(id)a3;
- (id).cxx_construct;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
@end

@implementation _MPModelLibraryDownloadQueueDataSource

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v4 = a3;
  ptr = self->_entityQueryResult.__ptr_;
  [v4 item];
  v6 = mlcore::EntityQueryResult::persistentIDAtIndex(ptr);
  v7 = [MPIdentifierSet alloc];
  v8 = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext mediaLibrary];
  v9 = [v8 uniqueIdentifier];
  v10 = [@"LibraryDownload-" stringByAppendingString:v9];
  v11 = [(MPModelRequest *)self->_request itemKind];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___MPModelLibraryDownloadQueueDataSource_identifiersForItemAtIndexPath___block_invoke;
  v14[3] = &unk_1E767CDA0;
  v14[4] = self;
  v14[5] = v6;
  v12 = [(MPIdentifierSet *)v7 initWithSource:v10 modelKind:v11 block:v14];

  return v12;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  ptr = self->_entityQueryResult.__ptr_;
  [v4 item];
  mlcore::EntityQueryResult::entityAtIndex(ptr);
  +[MPMediaLibrary logDatabaseAccess];
  if (v11)
  {
    entityTranslator = self->_entityTranslator;
    v7 = [(MPModelRequest *)self->_request itemProperties];
    v8 = (*(*v11 + 48))();
    v9 = [(MPMediaLibraryEntityTranslator *)entityTranslator objectForPropertySet:v7 entityClass:v8 propertyCache:mlcore::Entity::propertyCache(v11) context:self->_entityTranslationContext];
  }

  else
  {
    v9 = 0;
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  return v9;
}

- (_MPModelLibraryDownloadQueueDataSource)initWithRequest:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v21.receiver = self;
  v21.super_class = _MPModelLibraryDownloadQueueDataSource;
  v4 = [(_MPModelLibraryDownloadQueueDataSource *)&v21 init];
  p_isa = &v4->super.isa;
  if (v4)
  {
    v5 = v4;
    v6 = [v19 copy];
    request = v5->_request;
    v5->_request = v6;

    v8 = [(MPModelRequest *)v5->_request itemKind];
    v9 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [v8 modelClass]);
    v10 = p_isa[2];
    p_isa[2] = v9;

    v11 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
    v12 = p_isa[3];
    p_isa[3] = v11;

    [p_isa[3] setIdentifierSourcePrefix:@"Downloads-"];
    v13 = [p_isa[1] itemKind];
    [p_isa[3] setModelKind:v13];

    v14 = [MEMORY[0x1E69E4680] activeAccount];
    v18 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v14];

    [p_isa[3] setMediaLibrary:v18];
    v15 = [v18 userIdentity];
    v16 = [v15 accountDSID];
    [p_isa[3] setPersonID:v16];

    [p_isa[2] entityClass];
    operator new();
  }

  return 0;
}

@end