@interface CNMAIDMapper
+ (id)os_log;
- (CNMAIDMapper)init;
- (CNMAIDMapper)initWithConfiguration:(id)a3;
- (CNMAIDMapper)initWithDataStore:(id)a3 environment:(id)a4;
- (NSString)description;
- (id)authorizedKeysForContactKeys:(id)a3 error:(id *)a4;
- (id)contactObservableForFetchRequest:(id)a3;
- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4;
@end

@implementation CNMAIDMapper

+ (id)os_log
{
  if (os_log_cn_once_token_0_11 != -1)
  {
    +[CNMAIDMapper os_log];
  }

  v3 = os_log_cn_once_object_0_11;

  return v3;
}

uint64_t __22__CNMAIDMapper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "maid");
  v1 = os_log_cn_once_object_0_11;
  os_log_cn_once_object_0_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNMAIDMapper)init
{
  v3 = [MEMORY[0x1E695B4B0] shared];
  v4 = +[CNContactsEnvironment currentEnvironment];
  v5 = [(CNMAIDMapper *)self initWithDataStore:v3 environment:v4];

  return v5;
}

- (CNMAIDMapper)initWithConfiguration:(id)a3
{
  v4 = MEMORY[0x1E695B4B0];
  v5 = a3;
  v6 = [v4 shared];
  v7 = [v5 environment];

  v8 = [(CNMAIDMapper *)self initWithDataStore:v6 environment:v7];
  return v8;
}

- (CNMAIDMapper)initWithDataStore:(id)a3 environment:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CNMAIDMapper;
  v7 = [(CNMAIDMapper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, a3);
    v9 = v8;
  }

  return v8;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (id)contactObservableForFetchRequest:(id)a3
{
  v4 = a3;
  v5 = [(CNMAIDMapper *)self dataStore];

  if (v5)
  {
    v6 = [v4 predicate];
    if ([v6 conformsToProtocol:&unk_1F0995B20])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = [(CNMAIDMapper *)self dataStore];
      v10 = [v8 contactsFromCLSDataStore:v9];

      if ([v10 isFailure])
      {
        v11 = [v10 error];
        v12 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(CNMAIDMapper *)v11 contactObservableForFetchRequest:v12];
        }

        v13 = [MEMORY[0x1E6996798] emptyObservable];
      }

      else
      {
        v11 = [v10 value];
        v15 = [v11 _cn_filter:&__block_literal_global_52];
        v16 = [v15 _cn_map:&__block_literal_global_58];
        v13 = [MEMORY[0x1E6996798] observableWithResult:v16];
      }
    }

    else
    {
      v13 = [MEMORY[0x1E6996798] emptyObservable];
    }
  }

  else
  {
    v14 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CNMAIDMapper contactObservableForFetchRequest:v14];
    }

    v13 = [MEMORY[0x1E6996798] emptyObservable];
  }

  return v13;
}

- (id)policyForContainerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:v6];

  v8 = [(CNMAIDMapper *)self policyWithDescription:v7 error:a4];

  return v8;
}

- (id)authorizedKeysForContactKeys:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = CNUnimplementedMethodException();
  objc_exception_throw(v7);
}

- (void)contactObservableForFetchRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error searching for MAID results: %{public}@", &v2, 0xCu);
}

@end