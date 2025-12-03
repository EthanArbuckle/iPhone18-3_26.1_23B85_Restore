@interface MusicKit_SoftLinking_MPModelLibrarySearchRequest
- (MusicKit_SoftLinking_MPModelLibrarySearchRequest)initWithSearchTerm:(id)term scopes:(id)scopes limit:(int64_t)limit;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibrarySearchRequest

- (MusicKit_SoftLinking_MPModelLibrarySearchRequest)initWithSearchTerm:(id)term scopes:(id)scopes limit:(int64_t)limit
{
  termCopy = term;
  scopesCopy = scopes;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v11 = getMPModelLibrarySearchRequestClass_softClass;
  v25 = getMPModelLibrarySearchRequestClass_softClass;
  if (!getMPModelLibrarySearchRequestClass_softClass)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __getMPModelLibrarySearchRequestClass_block_invoke;
    v21[3] = &unk_278229610;
    v21[4] = &v22;
    __getMPModelLibrarySearchRequestClass_block_invoke(v21);
    v11 = v23[3];
  }

  v12 = v11;
  _Block_object_dispose(&v22, 8);
  v13 = objc_alloc_init(v11);
  [v13 setSearchString:termCopy];
  v14 = [scopesCopy msv_map:&__block_literal_global];
  [v13 setScopes:v14];
  [v13 setMaximumResultsPerScope:limit];
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelLibrarySearchRequest;
  v15 = [(MusicKit_SoftLinking_MPModelRequest *)&v20 _initWithUnderlyingRequest:v13];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 2, term);
    v17 = [scopesCopy copy];
    scopes = v16->_scopes;
    v16->_scopes = v17;

    v16->_limit = limit;
  }

  return v16;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (MRMediaRemoteIsMusicAppInstalled())
  {
    _underlyingRequest = [(MusicKit_SoftLinking_MPModelRequest *)self _underlyingRequest];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__MusicKit_SoftLinking_MPModelLibrarySearchRequest_performWithCompletionHandler___block_invoke;
    v7[3] = &unk_2782296B0;
    v8 = handlerCopy;
    [_underlyingRequest performWithResponseHandler:v7];
  }

  else
  {
    v6 = MusicKit_Logging_Library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MusicKit_SoftLinking_MPModelLibrarySearchRequest performWithCompletionHandler:v6];
    }

    _underlyingRequest = [MEMORY[0x277CCA9B8] musicKit_defaultLibraryError];
    (*(handlerCopy + 2))(handlerCopy, 0, _underlyingRequest);
  }
}

@end