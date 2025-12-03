@interface _ListenerStoreAdapter
- (_ListenerStoreAdapter)init;
- (_ListenerStoreAdapter)initWithStore:(id)store;
- (void)countForFetchRequest:(id)request reply:(id)reply;
- (void)executeCreateRequest:(id)request reply:(id)reply;
- (void)executeDeleteRequest:(id)request reply:(id)reply;
- (void)executeFetchRequest:(id)request reply:(id)reply;
- (void)executeUpdateRequest:(id)request reply:(id)reply;
@end

@implementation _ListenerStoreAdapter

- (_ListenerStoreAdapter)init
{
  v3 = objc_opt_new();
  v4 = [(_ListenerStoreAdapter *)self initWithStore:v3];

  return v4;
}

- (_ListenerStoreAdapter)initWithStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = _ListenerStoreAdapter;
  v6 = [(_ListenerStoreAdapter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_alloc_init(MEMORY[0x1E6996630]);
    integerGenerator = v7->_integerGenerator;
    v7->_integerGenerator = v8;

    v10 = v7;
  }

  return v7;
}

- (void)countForFetchRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  integerGenerator = self->_integerGenerator;
  replyCopy = reply;
  [(CNAtomicUnsignedIntegerGenerator *)integerGenerator nextUnsignedInteger];
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  store = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v11 = [store countForFetchRequest:requestCopy error:&v15];
  v12 = v15;

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  replyCopy[2](replyCopy, v11, v12);
  v14 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeCreateRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  store = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [store executeCreateRequest:requestCopy error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    replyCopy[2](replyCopy, 0);
  }

  else if (v11)
  {
    (replyCopy)[2](replyCopy, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (replyCopy)[2](replyCopy, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeDeleteRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  store = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [store executeDeleteRequest:requestCopy error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    replyCopy[2](replyCopy, 0);
  }

  else if (v11)
  {
    (replyCopy)[2](replyCopy, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (replyCopy)[2](replyCopy, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeFetchRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  integerGenerator = self->_integerGenerator;
  replyCopy = reply;
  [(CNAtomicUnsignedIntegerGenerator *)integerGenerator nextUnsignedInteger];
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  store = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v11 = [store executeFetchRequest:requestCopy error:&v15];
  v12 = v15;

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  replyCopy[2](replyCopy, v11, v12);
  v14 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeUpdateRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  store = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [store executeUpdateRequest:requestCopy error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    replyCopy[2](replyCopy, 0);
  }

  else if (v11)
  {
    (replyCopy)[2](replyCopy, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (replyCopy)[2](replyCopy, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

@end