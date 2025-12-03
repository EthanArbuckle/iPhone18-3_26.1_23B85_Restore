@interface MPModelLibraryResponse
- (MPModelLibraryResponse)initWithRequest:(id)request;
- (id)debugDescription;
- (id)description;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
- (void)dealloc;
@end

@implementation MPModelLibraryResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  handlerCopy = handler;
  request = [(MPModelResponse *)self request];
  sectionKind = [request sectionKind];

  if (!sectionKind)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequest.mm" lineNumber:413 description:@"Detailed keep local status only supported when request is sectioned."];
  }

  if (([request wantsDetailedKeepLocalRequestableResponse] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequest.mm" lineNumber:414 description:@"Detailed keep local status only supported when request wantsDetailedKeepLocalRequestableResponse."];
  }

  results = [(MPModelResponse *)self results];
  v11 = [results sectionAtIndex:index];

  if (objc_opt_respondsToSelector())
  {
    keepLocalEnableState = [v11 keepLocalEnableState];
  }

  else
  {
    keepLocalEnableState = 0;
  }

  v13 = objc_alloc_init(MPModelLibraryKeepLocalStatusRequestOperation);
  v14 = [MPMediaLibraryView alloc];
  mediaLibrary = [request mediaLibrary];
  v16 = -[MPMediaLibraryView initWithLibrary:filteringOptions:](v14, "initWithLibrary:filteringOptions:", mediaLibrary, [request filteringOptions]);

  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setLibraryView:v16];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setEnableState:keepLocalEnableState];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setResponseHandler:handlerCopy];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setIdentifyingModelObject:v11];
  sectionKeepLocalStatusConfigurations = [(MPModelLibraryResponse *)self sectionKeepLocalStatusConfigurations];
  v18 = [sectionKeepLocalStatusConfigurations objectAtIndexedSubscript:index];

  if (v18)
  {
    [v18 downloadableItemsQuery];
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setDownloadableItemsQuery:&v23];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  downloadablePlaylistItemEntityQueryBlock = [v18 downloadablePlaylistItemEntityQueryBlock];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setDownloadablePlaylistItemEntityQueryBlock:downloadablePlaylistItemEntityQueryBlock];

  return v13;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = MPModelLibraryResponse;
  v3 = [(MPModelResponse *)&v11 description];
  v4 = [v3 mutableCopy];

  request = [(MPModelResponse *)self request];
  scopedContainersPropertySet = [request scopedContainersPropertySet];

  if (scopedContainersPropertySet)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(NSArray *)self->_scopedContainers description];
    v9 = [v7 stringWithFormat:@" scopedContainer = %@", v8];;

    [v4 insertString:v9 atIndex:{objc_msgSend(v4, "length") - 2}];
  }

  return v4;
}

- (id)debugDescription
{
  v11.receiver = self;
  v11.super_class = MPModelLibraryResponse;
  v3 = [(MPModelResponse *)&v11 description];
  v4 = [v3 mutableCopy];

  request = [(MPModelResponse *)self request];
  scopedContainersPropertySet = [request scopedContainersPropertySet];

  if (scopedContainersPropertySet)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(NSArray *)self->_scopedContainers debugDescription];
    v9 = [v7 stringWithFormat:@" scopedContainers = %@", v8];;

    [v4 insertString:v9 atIndex:{objc_msgSend(v4, "length") - 2}];
  }

  return v4;
}

- (void)dealloc
{
  request = [(MPModelResponse *)self request];
  mediaLibrary = [request mediaLibrary];
  [mediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = MPModelLibraryResponse;
  [(MPModelLibraryResponse *)&v6 dealloc];
}

- (MPModelLibraryResponse)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MPModelLibraryResponse;
  v5 = [(MPModelResponse *)&v9 initWithRequest:requestCopy];
  if (v5)
  {
    mediaLibrary = [requestCopy mediaLibrary];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDisplayValuesDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDynamicPropertiesDidChangeNotification" object:mediaLibrary];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:0];
    [defaultCenter addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification" object:0];
    [mediaLibrary beginGeneratingLibraryChangeNotifications];
  }

  return v5;
}

@end