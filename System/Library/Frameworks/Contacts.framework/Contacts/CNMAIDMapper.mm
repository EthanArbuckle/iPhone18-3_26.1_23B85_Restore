@interface CNMAIDMapper
+ (id)os_log;
- (CNMAIDMapper)init;
- (CNMAIDMapper)initWithConfiguration:(id)configuration;
- (CNMAIDMapper)initWithDataStore:(id)store environment:(id)environment;
- (NSString)description;
- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error;
- (id)contactObservableForFetchRequest:(id)request;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
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
  mEMORY[0x1E695B4B0] = [MEMORY[0x1E695B4B0] shared];
  v4 = +[CNContactsEnvironment currentEnvironment];
  v5 = [(CNMAIDMapper *)self initWithDataStore:mEMORY[0x1E695B4B0] environment:v4];

  return v5;
}

- (CNMAIDMapper)initWithConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E695B4B0];
  configurationCopy = configuration;
  shared = [v4 shared];
  environment = [configurationCopy environment];

  v8 = [(CNMAIDMapper *)self initWithDataStore:shared environment:environment];
  return v8;
}

- (CNMAIDMapper)initWithDataStore:(id)store environment:(id)environment
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = CNMAIDMapper;
  v7 = [(CNMAIDMapper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, store);
    v9 = v8;
  }

  return v8;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  build = [v2 build];

  return build;
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
  dataStore = [(CNMAIDMapper *)self dataStore];

  if (dataStore)
  {
    predicate = [requestCopy predicate];
    if ([predicate conformsToProtocol:&unk_1F0995B20])
    {
      v7 = predicate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      dataStore2 = [(CNMAIDMapper *)self dataStore];
      v10 = [v8 contactsFromCLSDataStore:dataStore2];

      if ([v10 isFailure])
      {
        error = [v10 error];
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
        {
          [(CNMAIDMapper *)error contactObservableForFetchRequest:os_log];
        }

        emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
      }

      else
      {
        error = [v10 value];
        v15 = [error _cn_filter:&__block_literal_global_52];
        v16 = [v15 _cn_map:&__block_literal_global_58];
        emptyObservable = [MEMORY[0x1E6996798] observableWithResult:v16];
      }
    }

    else
    {
      emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
    }
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      [CNMAIDMapper contactObservableForFetchRequest:os_log2];
    }

    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNMAIDMapper *)self policyWithDescription:v7 error:error];

  return v8;
}

- (id)authorizedKeysForContactKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  selfCopy = self;
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