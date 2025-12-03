@interface SHMediaLibrary
+ (SHMediaLibrary)defaultLibrary;
- (SHMediaLibrarySyncDelegate)delegate;
- (id)_init;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)_libraryDidCompleteSync:(id)sync;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_libraryWillBeginSync:(id)sync;
- (void)_queryLibraryWithCompletionHandler:(id)handler;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronize;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
- (void)addMediaItems:(NSArray *)mediaItems completionHandler:(void *)completionHandler;
@end

@implementation SHMediaLibrary

void __75___SHMediaLibrary_Presentation___presentMediaLibraryWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SHError remapErrorToClientError:a2];
  (*(*(a1 + 32) + 16))();
}

void __54___SHMediaLibrary_Presentation__sh_uiServerConnection__block_invoke()
{
  v0 = [SHShazamKitUIServiceConnection alloc];
  v3 = objc_opt_new();
  v1 = [(SHShazamKitUIServiceConnection *)v0 initWithConnectionProvider:v3];
  v2 = sh_uiServerConnection_serverConnection;
  sh_uiServerConnection_serverConnection = v1;
}

void __34___SHMediaLibrary__defaultLibrary__block_invoke()
{
  v0 = objc_alloc_init(_SHMediaLibrary);
  v1 = _defaultLibrary_library;
  _defaultLibrary_library = v0;
}

void __70___SHMediaLibrary__queryLibraryWithTask_parameters_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeInflightTask:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void __58___SHMediaLibrary__libraryInfoWithTask_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeInflightTask:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

+ (SHMediaLibrary)defaultLibrary
{
  if (defaultLibrary_onceToken[0] != -1)
  {
    +[SHMediaLibrary defaultLibrary];
  }

  v3 = defaultLibrary_library;

  return v3;
}

void __32__SHMediaLibrary_defaultLibrary__block_invoke()
{
  v0 = [[SHMediaLibrary alloc] _init];
  v1 = defaultLibrary_library;
  defaultLibrary_library = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SHMediaLibrary;
  v2 = [(SHMediaLibrary *)&v6 init];
  if (v2)
  {
    v3 = +[_SHMediaLibrary _defaultLibrary];
    underlyingLibrary = v2->_underlyingLibrary;
    v2->_underlyingLibrary = v3;

    [(_SHMediaLibrary *)v2->_underlyingLibrary setDelegate:v2];
  }

  return v2;
}

- (void)addMediaItems:(NSArray *)mediaItems completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = mediaItems;
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _addMediaItems:v7 completionHandler:v6];
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _libraryInfoWithCompletionHandler:handlerCopy];
}

- (void)_queryLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _queryLibraryWithCompletionHandler:handlerCopy];
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _queryLibraryWithParameters:parametersCopy completionHandler:handlerCopy];
}

- (void)_synchronize
{
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _synchronize];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  conditionCopy = condition;
  snapshotCopy = snapshot;
  underlyingLibrary = [(SHMediaLibrary *)self underlyingLibrary];
  [underlyingLibrary _synchronizeSnapshot:snapshotCopy startCondition:conditionCopy];
}

- (void)_libraryWillBeginSync:(id)sync
{
  delegate = [(SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHMediaLibrary *)self delegate];
    [delegate2 _libraryWillBeginSync:self];
  }
}

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  delegate = [(SHMediaLibrary *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SHMediaLibrary *)self delegate];
    [delegate2 _library:self didChangeWithSnapshot:snapshotCopy];
  }
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  errorCopy = error;
  identifiersCopy = identifiers;
  delegate = [(SHMediaLibrary *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHMediaLibrary *)self delegate];
    [delegate2 _library:self didProduceError:errorCopy failedItemIdentifiers:identifiersCopy];
  }
}

- (void)_libraryDidCompleteSync:(id)sync
{
  delegate = [(SHMediaLibrary *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHMediaLibrary *)self delegate];
    [delegate2 _libraryDidCompleteSync:self];
  }
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end