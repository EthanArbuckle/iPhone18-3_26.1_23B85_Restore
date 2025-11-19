@interface SHMediaLibraryTask
- (SHMediaLibrarySyncDelegate)delegate;
- (SHMediaLibraryTask)init;
- (void)_initWithRemoteLibrary:(id)a3;
- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4;
- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5;
- (void)_libraryDidCompleteSync:(id)a3;
- (void)_libraryInfoWithCompletionHandler:(id)a3;
- (void)_libraryWillBeginSync:(id)a3;
- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4;
- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4;
@end

@implementation SHMediaLibraryTask

- (SHMediaLibraryTask)init
{
  v7.receiver = self;
  v7.super_class = SHMediaLibraryTask;
  v2 = [(SHMediaLibraryTask *)&v7 init];
  if (v2)
  {
    v3 = [SHShazamKitServiceConnection alloc];
    v4 = objc_opt_new();
    v5 = [(SHShazamKitServiceConnection *)v3 initWithConnectionProvider:v4];
    [(SHMediaLibraryTask *)v2 _initWithRemoteLibrary:v5];
  }

  return v2;
}

- (void)_initWithRemoteLibrary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  identifier = self->_identifier;
  self->_identifier = v5;

  remoteLibrary = self->_remoteLibrary;
  self->_remoteLibrary = v4;
  v8 = v4;

  [(SHRemoteMediaLibrary *)self->_remoteLibrary setDelegate:self];
}

- (void)_synchronizeSnapshot:(id)a3 startCondition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHMediaLibraryTask *)self remoteLibrary];
  [v8 _synchronizeSnapshot:v7 startCondition:v6];
}

- (void)_libraryInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHMediaLibraryTask *)self remoteLibrary];
  [v5 _libraryInfoWithCompletionHandler:v4];
}

- (void)_queryLibraryWithParameters:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHMediaLibraryTask *)self remoteLibrary];
  [v8 _queryLibraryWithParameters:v7 completionHandler:v6];
}

- (void)_libraryWillBeginSync:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SHMediaLibraryTask *)self identifier];
    v6 = [v5 UUIDString];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> will begin", &v11, 0xCu);
  }

  v7 = [(SHMediaLibraryTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHMediaLibraryTask *)self delegate];
    [v9 _libraryWillBeginSync:self];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SHMediaLibraryTask *)self identifier];
    v8 = [v7 UUIDString];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> produced changes %@", &v13, 0x16u);
  }

  v9 = [(SHMediaLibraryTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SHMediaLibraryTask *)self delegate];
    [v11 _library:self didChangeWithSnapshot:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [(SHMediaLibraryTask *)self identifier];
    v11 = [v10 UUIDString];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_ERROR, "Library sync task <ID:%@> produced error %@", &v16, 0x16u);
  }

  [(SHMediaLibraryTask *)self setSyncError:v7];
  v12 = [(SHMediaLibraryTask *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(SHMediaLibraryTask *)self delegate];
    [v14 _library:self didProduceError:v7 failedItemIdentifiers:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_libraryDidCompleteSync:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sh_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SHMediaLibraryTask *)self identifier];
    v6 = [v5 UUIDString];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> execution complete", &v14, 0xCu);
  }

  v7 = [(SHMediaLibraryTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHMediaLibraryTask *)self delegate];
    [v9 _libraryDidCompleteSync:self];
  }

  v10 = [(SHMediaLibraryTask *)self syncCompletionBlock];

  if (v10)
  {
    v11 = [(SHMediaLibraryTask *)self syncCompletionBlock];
    v12 = [(SHMediaLibraryTask *)self syncError];
    (v11)[2](v11, v12);

    [(SHMediaLibraryTask *)self setSyncCompletionBlock:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end