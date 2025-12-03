@interface CNDonationMapper
+ (id)log;
- (CNDonationMapper)initWithConfiguration:(id)configuration;
- (CNDonationMapper)initWithDonationStore:(id)store environment:(id)environment;
- (id)contactObservableForFetchRequest:(id)request;
- (id)meContactIdentifiers:(id *)identifiers;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation CNDonationMapper

+ (id)log
{
  if (log_cn_once_token_0_21 != -1)
  {
    +[CNDonationMapper log];
  }

  v3 = log_cn_once_object_0_21;

  return v3;
}

uint64_t __23__CNDonationMapper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.donation", "analytics");
  v1 = log_cn_once_object_0_21;
  log_cn_once_object_0_21 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNDonationMapper)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getCNDonationStoreClass_softClass;
  v15 = getCNDonationStoreClass_softClass;
  if (!getCNDonationStoreClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getCNDonationStoreClass_block_invoke;
    v11[3] = &unk_1E7412110;
    v11[4] = &v12;
    __getCNDonationStoreClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  environment = [configurationCopy environment];
  v9 = [(CNDonationMapper *)self initWithDonationStore:v7 environment:environment];

  return v9;
}

- (CNDonationMapper)initWithDonationStore:(id)store environment:(id)environment
{
  storeCopy = store;
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = CNDonationMapper;
  v9 = [(CNDonationMapper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    objc_storeStrong(&v10->_donationStore, store);
    v11 = v10;
  }

  return v10;
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
  predicate = [requestCopy predicate];
  v6 = &unk_1F09899A0;
  if ([predicate conformsToProtocol:v6])
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
    donationStore = [(CNDonationMapper *)self donationStore];
    v10 = [v8 contactsFromDonationStore:donationStore];

    if ([v10 isRight])
    {
      right = [v10 right];
      if ([right code] != 1)
      {
        domain = [right domain];
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v13 = getCNDonationErrorDomainSymbolLoc_ptr;
        v36 = getCNDonationErrorDomainSymbolLoc_ptr;
        if (!getCNDonationErrorDomainSymbolLoc_ptr)
        {
          v28 = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __getCNDonationErrorDomainSymbolLoc_block_invoke;
          v31 = &unk_1E7412110;
          v32 = &v33;
          v14 = ContactsDonationLibrary();
          v34[3] = dlsym(v14, "CNDonationErrorDomain");
          getCNDonationErrorDomainSymbolLoc_ptr = *(v32[1] + 24);
          v13 = v34[3];
        }

        _Block_object_dispose(&v33, 8);
        if (!v13)
        {
          MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
          _Block_object_dispose(&v33, 8);
          _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
        }

        v15 = [domain isEqualToString:*v13];

        if ((v15 & 1) == 0)
        {
          v16 = [objc_opt_class() log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(CNDonationMapper *)right contactObservableForFetchRequest:v16];
          }
        }
      }

      emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
    }

    else
    {
      right = [v10 left];
      v18 = [right _cn_filter:&__block_literal_global_52_1];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __53__CNDonationMapper_contactObservableForFetchRequest___block_invoke;
      v26 = &unk_1E7417538;
      v27 = v8;
      v19 = [v18 _cn_map:&v23];
      v20 = [v19 _cn_map:{&__block_literal_global_58_1, v23, v24, v25, v26}];
      emptyObservable = [MEMORY[0x1E6996798] observableWithResult:v20];
    }
  }

  else
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

- (id)meContactIdentifiers:(id *)identifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"2D0447ED-BB88-45F9-909B-EB36C6920675";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNDonationMapper *)self policyWithDescription:v7 error:error];

  return v8;
}

- (void)contactObservableForFetchRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error retrieving contacts from daemon: %{public}@", &v2, 0xCu);
}

@end