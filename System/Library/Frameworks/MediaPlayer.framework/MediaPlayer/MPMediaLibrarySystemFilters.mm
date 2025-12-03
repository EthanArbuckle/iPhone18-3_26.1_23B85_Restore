@interface MPMediaLibrarySystemFilters
+ (NSMutableDictionary)systemFiltersPerLibrary;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)filtersForLibrary:(id)library;
- (BOOL)shouldExcludePurchaseHistoryContent;
- (id)_initWithLibrary:(id)library;
- (void)_updateFilters;
@end

@implementation MPMediaLibrarySystemFilters

- (void)_updateFilters
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  library = [(MPMediaLibraryView *)self->_libraryView library];
  sagaOnDiskDatabaseRevision = [library sagaOnDiskDatabaseRevision];

  if (sagaOnDiskDatabaseRevision)
  {
    v5 = MEMORY[0x1A58E1100]();
    *&v15 = mlcore::ItemPropertyRemoteLocationID(v5);
    v14 = 0;
    std::allocate_shared[abi:ne200100]<mlcore::ComparisonPredicate<long long>,std::allocator<mlcore::ComparisonPredicate<long long>>,mlcore::ModelProperty<long long> *&,mlcore::ComparisonOperator,long long const&,0>();
  }

  self->_shouldExcludePurchaseHistoryContent = *(v11 + 24);
  v6 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    library2 = [(MPMediaLibraryView *)self->_libraryView library];
    uniqueIdentifier = [library2 uniqueIdentifier];
    shouldExcludePurchaseHistoryContent = self->_shouldExcludePurchaseHistoryContent;
    *buf = 134218754;
    selfCopy = self;
    v18 = 2112;
    v19 = uniqueIdentifier;
    v20 = 1024;
    v21 = 0;
    v22 = 1024;
    v23 = shouldExcludePurchaseHistoryContent;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "MPMediaLibrarySystemFilters %p - Updating filters - Library: %@ - has cloud library revision: %{BOOL}u - purchase history excluded: %{BOOL}u", buf, 0x22u);
  }

  _Block_object_dispose(&v10, 8);
}

void __45__MPMediaLibrarySystemFilters__updateFilters__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = mlcore::PropertiesQueryResult::allResults(v3);
  if (v5[1] != *v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

- (BOOL)shouldExcludePurchaseHistoryContent
{
  library = [(MPMediaLibraryView *)self->_libraryView library];
  isHomeSharingLibrary = [library isHomeSharingLibrary];

  return (isHomeSharingLibrary & 1) == 0 && self->_shouldExcludePurchaseHistoryContent;
}

- (id)_initWithLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = MPMediaLibrarySystemFilters;
  v5 = [(MPMediaLibrarySystemFilters *)&v13 init];
  if (v5)
  {
    v6 = [[MPMediaLibraryView alloc] initWithLibrary:libraryCopy filteringOptions:0];
    libraryView = v5->_libraryView;
    v5->_libraryView = v6;

    v8 = os_log_create("com.apple.amp.mediaplayer", "Library");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      library = [(MPMediaLibraryView *)v5->_libraryView library];
      uniqueIdentifier = [library uniqueIdentifier];
      *buf = 134218242;
      v15 = v5;
      v16 = 2112;
      v17 = uniqueIdentifier;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "MPMediaLibrarySystemFilters %p - Init with library: %@", buf, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__cloudLibraryAvailabilityDidChange_ name:@"MPMediaLibraryCloudLibraryAvailabilityDidChangeNotification" object:libraryCopy];

    [(MPMediaLibrarySystemFilters *)v5 _updateFilters];
  }

  return v5;
}

+ (id)filtersForLibrary:(id)library
{
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8890;
  v19 = __Block_byref_object_dispose__8891;
  v20 = 0;
  globalSerialQueue = [self globalSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MPMediaLibrarySystemFilters_filtersForLibrary___block_invoke;
  v10[3] = &unk_1E76799F8;
  selfCopy = self;
  v14 = a2;
  v11 = libraryCopy;
  v12 = &v15;
  v7 = libraryCopy;
  dispatch_sync(globalSerialQueue, v10);

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __49__MPMediaLibrarySystemFilters_filtersForLibrary___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 48) systemFiltersPerLibrary];
  v2 = [*(a1 + 32) uniqueIdentifier];
  if (!v2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"MPMediaLibrarySystemFilters.mm" lineNumber:60 description:@"Given library has no library identifier"];
  }

  v3 = [v9 objectForKeyedSubscript:v2];

  if (!v3)
  {
    v4 = [[MPMediaLibrarySystemFilters alloc] _initWithLibrary:*(a1 + 32)];
    [v9 setObject:v4 forKeyedSubscript:v2];
  }

  v5 = [v9 objectForKeyedSubscript:v2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (NSMutableDictionary)systemFiltersPerLibrary
{
  if (+[MPMediaLibrarySystemFilters systemFiltersPerLibrary]::onceToken != -1)
  {
    dispatch_once(&+[MPMediaLibrarySystemFilters systemFiltersPerLibrary]::onceToken, &__block_literal_global_8901);
  }

  v3 = +[MPMediaLibrarySystemFilters systemFiltersPerLibrary]::__systemFiltersPerLibrary;

  return v3;
}

void __54__MPMediaLibrarySystemFilters_systemFiltersPerLibrary__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = +[MPMediaLibrarySystemFilters systemFiltersPerLibrary]::__systemFiltersPerLibrary;
  +[MPMediaLibrarySystemFilters systemFiltersPerLibrary]::__systemFiltersPerLibrary = v0;
}

+ (OS_dispatch_queue)globalSerialQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPMediaLibrarySystemFilters_globalSerialQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MPMediaLibrarySystemFilters globalSerialQueue]::onceToken != -1)
  {
    dispatch_once(&+[MPMediaLibrarySystemFilters globalSerialQueue]::onceToken, block);
  }

  v2 = +[MPMediaLibrarySystemFilters globalSerialQueue]::__globalSerialQueue;

  return v2;
}

void __48__MPMediaLibrarySystemFilters_globalSerialQueue__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v7 = NSStringFromClass(*(a1 + 32));
  v2 = [v1 stringWithFormat:@"com.apple.%@.global.serial.queue", v7];

  v8 = v2;
  v3 = [v2 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  v6 = +[MPMediaLibrarySystemFilters globalSerialQueue]::__globalSerialQueue;
  +[MPMediaLibrarySystemFilters globalSerialQueue]::__globalSerialQueue = v5;
}

@end