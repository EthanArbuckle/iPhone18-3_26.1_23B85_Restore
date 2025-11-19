@interface _ListenerStoreAdapter
- (_ListenerStoreAdapter)init;
- (_ListenerStoreAdapter)initWithStore:(id)a3;
- (void)countForFetchRequest:(id)a3 reply:(id)a4;
- (void)executeCreateRequest:(id)a3 reply:(id)a4;
- (void)executeDeleteRequest:(id)a3 reply:(id)a4;
- (void)executeFetchRequest:(id)a3 reply:(id)a4;
- (void)executeUpdateRequest:(id)a3 reply:(id)a4;
@end

@implementation _ListenerStoreAdapter

- (_ListenerStoreAdapter)init
{
  v3 = objc_opt_new();
  v4 = [(_ListenerStoreAdapter *)self initWithStore:v3];

  return v4;
}

- (_ListenerStoreAdapter)initWithStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _ListenerStoreAdapter;
  v6 = [(_ListenerStoreAdapter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = objc_alloc_init(MEMORY[0x1E6996630]);
    integerGenerator = v7->_integerGenerator;
    v7->_integerGenerator = v8;

    v10 = v7;
  }

  return v7;
}

- (void)countForFetchRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  integerGenerator = self->_integerGenerator;
  v8 = a4;
  [(CNAtomicUnsignedIntegerGenerator *)integerGenerator nextUnsignedInteger];
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v10 = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v11 = [v10 countForFetchRequest:v6 error:&v15];
  v12 = v15;

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v8[2](v8, v11, v12);
  v14 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeCreateRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v9 = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [v9 executeCreateRequest:v6 error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    v7[2](v7, 0);
  }

  else if (v11)
  {
    (v7)[2](v7, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (v7)[2](v7, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeDeleteRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v9 = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [v9 executeDeleteRequest:v6 error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    v7[2](v7, 0);
  }

  else if (v11)
  {
    (v7)[2](v7, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (v7)[2](v7, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeFetchRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  integerGenerator = self->_integerGenerator;
  v8 = a4;
  [(CNAtomicUnsignedIntegerGenerator *)integerGenerator nextUnsignedInteger];
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v10 = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v11 = [v10 executeFetchRequest:v6 error:&v15];
  v12 = v15;

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v8[2](v8, v11, v12);
  v14 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

- (void)executeUpdateRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CNAtomicUnsignedIntegerGenerator *)self->_integerGenerator nextUnsignedInteger];
  v8 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  v9 = [(_ListenerStoreAdapter *)self store];
  v15 = 0;
  v10 = [v9 executeUpdateRequest:v6 error:&v15];
  v11 = v15;

  v12 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }

  if (v10)
  {
    v7[2](v7, 0);
  }

  else if (v11)
  {
    (v7)[2](v7, v11);
  }

  else
  {
    v14 = [CNErrorFactory errorWithCode:1010];
    (v7)[2](v7, v14);
  }

  v13 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [_ListenerStoreAdapter countForFetchRequest:reply:];
  }
}

@end