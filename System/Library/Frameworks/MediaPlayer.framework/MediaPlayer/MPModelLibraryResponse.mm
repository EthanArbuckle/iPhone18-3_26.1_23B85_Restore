@interface MPModelLibraryResponse
- (MPModelLibraryResponse)initWithRequest:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
- (void)dealloc;
@end

@implementation MPModelLibraryResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v7 = a4;
  v8 = [(MPModelResponse *)self request];
  v9 = [v8 sectionKind];

  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequest.mm" lineNumber:413 description:@"Detailed keep local status only supported when request is sectioned."];
  }

  if (([v8 wantsDetailedKeepLocalRequestableResponse] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MPModelLibraryRequest.mm" lineNumber:414 description:@"Detailed keep local status only supported when request wantsDetailedKeepLocalRequestableResponse."];
  }

  v10 = [(MPModelResponse *)self results];
  v11 = [v10 sectionAtIndex:a3];

  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 keepLocalEnableState];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MPModelLibraryKeepLocalStatusRequestOperation);
  v14 = [MPMediaLibraryView alloc];
  v15 = [v8 mediaLibrary];
  v16 = -[MPMediaLibraryView initWithLibrary:filteringOptions:](v14, "initWithLibrary:filteringOptions:", v15, [v8 filteringOptions]);

  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setLibraryView:v16];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setEnableState:v12];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setResponseHandler:v7];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setIdentifyingModelObject:v11];
  v17 = [(MPModelLibraryResponse *)self sectionKeepLocalStatusConfigurations];
  v18 = [v17 objectAtIndexedSubscript:a3];

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

  v19 = [v18 downloadablePlaylistItemEntityQueryBlock];
  [(MPModelLibraryKeepLocalStatusRequestOperation *)v13 setDownloadablePlaylistItemEntityQueryBlock:v19];

  return v13;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = MPModelLibraryResponse;
  v3 = [(MPModelResponse *)&v11 description];
  v4 = [v3 mutableCopy];

  v5 = [(MPModelResponse *)self request];
  v6 = [v5 scopedContainersPropertySet];

  if (v6)
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

  v5 = [(MPModelResponse *)self request];
  v6 = [v5 scopedContainersPropertySet];

  if (v6)
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
  v3 = [(MPModelResponse *)self request];
  v4 = [v3 mediaLibrary];
  [v4 endGeneratingLibraryChangeNotifications];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = MPModelLibraryResponse;
  [(MPModelLibraryResponse *)&v6 dealloc];
}

- (MPModelLibraryResponse)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPModelLibraryResponse;
  v5 = [(MPModelResponse *)&v9 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 mediaLibrary];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDisplayValuesDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPMediaLibraryDynamicPropertiesDidChangeNotification" object:v6];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification" object:0];
    [v7 addObserver:v5 selector:sel__mediaLibraryDidChangeNotification_ name:@"MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification" object:0];
    [v6 beginGeneratingLibraryChangeNotifications];
  }

  return v5;
}

@end