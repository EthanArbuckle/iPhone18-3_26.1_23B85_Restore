@interface MusicKit_SoftLinking_MPModelLibrarySearchRequest
- (MusicKit_SoftLinking_MPModelLibrarySearchRequest)initWithSearchTerm:(id)a3 scopes:(id)a4 limit:(int64_t)a5;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibrarySearchRequest

- (MusicKit_SoftLinking_MPModelLibrarySearchRequest)initWithSearchTerm:(id)a3 scopes:(id)a4 limit:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
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
  [v13 setSearchString:v9];
  v14 = [v10 msv_map:&__block_literal_global];
  [v13 setScopes:v14];
  [v13 setMaximumResultsPerScope:a5];
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelLibrarySearchRequest;
  v15 = [(MusicKit_SoftLinking_MPModelRequest *)&v20 _initWithUnderlyingRequest:v13];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 2, a3);
    v17 = [v10 copy];
    scopes = v16->_scopes;
    v16->_scopes = v17;

    v16->_limit = a5;
  }

  return v16;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (MRMediaRemoteIsMusicAppInstalled())
  {
    v5 = [(MusicKit_SoftLinking_MPModelRequest *)self _underlyingRequest];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__MusicKit_SoftLinking_MPModelLibrarySearchRequest_performWithCompletionHandler___block_invoke;
    v7[3] = &unk_2782296B0;
    v8 = v4;
    [v5 performWithResponseHandler:v7];
  }

  else
  {
    v6 = MusicKit_Logging_Library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MusicKit_SoftLinking_MPModelLibrarySearchRequest performWithCompletionHandler:v6];
    }

    v5 = [MEMORY[0x277CCA9B8] musicKit_defaultLibraryError];
    (*(v4 + 2))(v4, 0, v5);
  }
}

@end