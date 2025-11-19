@interface LSObserver
+ (void)initialize;
- (LSObserverDelegate)delegate;
- (NSOperationQueue)queue;
- (id)debugDescription;
- (id)description;
- (void)_configureCallbacks;
- (void)_tearDownCallbacks;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setQueue:(id)a3;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation LSObserver

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.launchservices", "observer");
    v3 = _LSObserverLog;
    _LSObserverLog = v2;
  }
}

- (void)startObserving
{
  os_unfair_recursive_lock_lock_with_options();
  if (*(self + 32))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"LSObserver.mm" lineNumber:95 description:@"Already invoked -startObserving on this observer."];
  }

  [(LSObserver *)self _configureCallbacks];
  *(self + 32) |= 1u;

  os_unfair_recursive_lock_unlock();
}

- (void)_configureCallbacks
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Delegate %@ does not respond to -observerDidObserveDatabaseChange:, will not notify it of anything.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (LSObserverDelegate)delegate
{
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_recursive_lock_unlock();

  return WeakRetained;
}

- (NSOperationQueue)queue
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_queue;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)dealloc
{
  [(LSObserver *)self _tearDownCallbacks];
  v3.receiver = self;
  v3.super_class = LSObserver;
  [(LSObserver *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (*(self + 32))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"LSObserver.mm" lineNumber:68 description:@"Attempting to set an observer's delegate while it is already observing."];
  }

  objc_storeWeak(&self->_delegate, obj);
  os_unfair_recursive_lock_unlock();
}

- (void)setQueue:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (*(self + 32))
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"LSObserver.mm" lineNumber:87 description:@"Attempting to set an observer's queue while it is already observing."];
  }

  queue = self->_queue;
  self->_queue = v5;

  os_unfair_recursive_lock_unlock();
}

- (void)stopObserving
{
  os_unfair_recursive_lock_lock_with_options();
  if ((*(self + 32) & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"LSObserver.mm" lineNumber:106 description:@"Invoked -stopObserving on this observer without first invoking -startObserving."];
  }

  [(LSObserver *)self _tearDownCallbacks];
  *(self + 32) &= ~1u;

  os_unfair_recursive_lock_unlock();
}

void __33__LSObserver__configureCallbacks__block_invoke(uint64_t a1, id *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__LSObserver__configureCallbacks__block_invoke_2;
  v12[3] = &unk_1E6A1D378;
  objc_copyWeak(&v13, (a1 + 40));
  objc_copyWeak(&v14, (a1 + 48));
  v4 = MEMORY[0x1865D71B0](v12);
  v5 = v4;
  if (*(a1 + 32))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3812000000;
    v10[3] = __Block_byref_object_copy__36;
    v10[4] = __Block_byref_object_dispose__36;
    v10[5] = 256;
    v11 = *a2;
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__LSObserver__configureCallbacks__block_invoke_21;
    v7[3] = &unk_1E6A1D3A0;
    v8 = v5;
    v9 = v10;
    [v6 addOperationWithBlock:v7];

    _Block_object_dispose(v10, 8);
  }

  else
  {
    (*(v4 + 16))(v4, a2);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
}

void __33__LSObserver__configureCallbacks__block_invoke_2(uint64_t a1, LaunchServices::DatabaseContext *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__LSObserver__configureCallbacks__block_invoke_3;
    v7[3] = &unk_1E6A1ABE8;
    v8 = v5;
    v9 = WeakRetained;
    _LSDatabaseContextAccessContextUsingBlock(a2, v7);
  }
}

- (void)_tearDownCallbacks
{
  changeObserver = self->_changeObserver;
  if (changeObserver)
  {
    _LSContextRemoveChangeObserver(changeObserver);
    v4 = self->_changeObserver;
    self->_changeObserver = 0;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];

  return v2;
}

- (id)debugDescription
{
  v3 = [(LSObserver *)self name];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> %@", objc_opt_class(), self, v3];
  }

  else
  {
    v4 = [(LSObserver *)self description];
  }

  v5 = v4;

  return v5;
}

@end