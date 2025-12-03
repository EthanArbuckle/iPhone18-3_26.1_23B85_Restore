@interface _MPModelLibraryDownloadQueueDataSource
- (_MPModelLibraryDownloadQueueDataSource)initWithRequest:(id)request;
- (id).cxx_construct;
- (id)identifiersForItemAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
@end

@implementation _MPModelLibraryDownloadQueueDataSource

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (id)identifiersForItemAtIndexPath:(id)path
{
  pathCopy = path;
  ptr = self->_entityQueryResult.__ptr_;
  [pathCopy item];
  v6 = mlcore::EntityQueryResult::persistentIDAtIndex(ptr);
  v7 = [MPIdentifierSet alloc];
  mediaLibrary = [(MPMediaLibraryEntityTranslationContext *)self->_entityTranslationContext mediaLibrary];
  uniqueIdentifier = [mediaLibrary uniqueIdentifier];
  v10 = [@"LibraryDownload-" stringByAppendingString:uniqueIdentifier];
  itemKind = [(MPModelRequest *)self->_request itemKind];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___MPModelLibraryDownloadQueueDataSource_identifiersForItemAtIndexPath___block_invoke;
  v14[3] = &unk_1E767CDA0;
  v14[4] = self;
  v14[5] = v6;
  v12 = [(MPIdentifierSet *)v7 initWithSource:v10 modelKind:itemKind block:v14];

  return v12;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  ptr = self->_entityQueryResult.__ptr_;
  [pathCopy item];
  mlcore::EntityQueryResult::entityAtIndex(ptr);
  +[MPMediaLibrary logDatabaseAccess];
  if (v11)
  {
    entityTranslator = self->_entityTranslator;
    itemProperties = [(MPModelRequest *)self->_request itemProperties];
    v8 = (*(*v11 + 48))();
    v9 = [(MPMediaLibraryEntityTranslator *)entityTranslator objectForPropertySet:itemProperties entityClass:v8 propertyCache:mlcore::Entity::propertyCache(v11) context:self->_entityTranslationContext];
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

- (_MPModelLibraryDownloadQueueDataSource)initWithRequest:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = _MPModelLibraryDownloadQueueDataSource;
  v4 = [(_MPModelLibraryDownloadQueueDataSource *)&v21 init];
  p_isa = &v4->super.isa;
  if (v4)
  {
    v5 = v4;
    v6 = [requestCopy copy];
    request = v5->_request;
    v5->_request = v6;

    itemKind = [(MPModelRequest *)v5->_request itemKind];
    v9 = +[MPMediaLibraryEntityTranslator translatorForMPModelClass:](MPMediaLibraryEntityTranslator, "translatorForMPModelClass:", [itemKind modelClass]);
    v10 = p_isa[2];
    p_isa[2] = v9;

    v11 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
    v12 = p_isa[3];
    p_isa[3] = v11;

    [p_isa[3] setIdentifierSourcePrefix:@"Downloads-"];
    itemKind2 = [p_isa[1] itemKind];
    [p_isa[3] setModelKind:itemKind2];

    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v18 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:activeAccount];

    [p_isa[3] setMediaLibrary:v18];
    userIdentity = [v18 userIdentity];
    accountDSID = [userIdentity accountDSID];
    [p_isa[3] setPersonID:accountDSID];

    [p_isa[2] entityClass];
    operator new();
  }

  return 0;
}

@end