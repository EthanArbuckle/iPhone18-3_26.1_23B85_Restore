@interface CNCoreRecentsMapper
+ (id)log;
- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error;
- (CNCoreRecentsMapper)initWithDomains:(id)domains configuration:(id)configuration;
- (CNCoreRecentsMapper)initWithDomains:(id)domains environment:(id)environment recentsLibrary:(id)library;
- (id)contactCountForFetchRequest:(id)request error:(id *)error;
- (id)contactObservableForFetchRequest:(id)request;
- (id)contactPairs:(id)pairs sortedWithOrder:(int64_t)order;
- (id)containersMatchingPredicate:(id)predicate error:(id *)error;
- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error;
@end

@implementation CNCoreRecentsMapper

+ (id)log
{
  if (log_cn_once_token_0_17 != -1)
  {
    +[CNCoreRecentsMapper log];
  }

  v3 = log_cn_once_object_0_17;

  return v3;
}

uint64_t __26__CNCoreRecentsMapper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.corerecents", "datamapper");
  v1 = log_cn_once_object_0_17;
  log_cn_once_object_0_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNCoreRecentsMapper)initWithDomains:(id)domains configuration:(id)configuration
{
  configurationCopy = configuration;
  domainsCopy = domains;
  v8 = [[CNCoreRecentsLibraryFacade alloc] initWithDomains:domainsCopy];
  environment = [configurationCopy environment];

  v10 = [(CNCoreRecentsMapper *)self initWithDomains:domainsCopy environment:environment recentsLibrary:v8];
  return v10;
}

- (CNCoreRecentsMapper)initWithDomains:(id)domains environment:(id)environment recentsLibrary:(id)library
{
  domainsCopy = domains;
  environmentCopy = environment;
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = CNCoreRecentsMapper;
  v11 = [(CNCoreRecentsMapper *)&v16 init];
  if (v11)
  {
    v12 = [domainsCopy copy];
    domains = v11->_domains;
    v11->_domains = v12;

    objc_storeStrong(&v11->_environment, environment);
    objc_storeStrong(&v11->_recentsLibrary, library);
    v14 = v11;
  }

  return v11;
}

- (id)contactObservableForFetchRequest:(id)request
{
  requestCopy = request;
  predicate = [requestCopy predicate];
  if ([predicate conformsToProtocol:&unk_1F098FF70])
  {
    v6 = predicate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (-[CNCoreRecentsMapper recentsLibrary](self, "recentsLibrary"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 canSearchCoreRecentsLibrary:v8], v8, (v9 & 1) != 0))
  {
    recentsLibrary = [(CNCoreRecentsMapper *)self recentsLibrary];
    v11 = [v7 contactsFromRecentsLibrary:recentsLibrary];

    value = [v11 value];

    if (value)
    {
      value2 = [v11 value];
      v14 = -[CNCoreRecentsMapper contactPairs:sortedWithOrder:](self, "contactPairs:sortedWithOrder:", value2, [requestCopy sortOrder]);

      v15 = [v14 _cn_filter:&__block_literal_global_57_0];

      emptyObservable = [MEMORY[0x1E6996798] observableWithResult:v15];
    }

    else
    {
      v17 = [objc_opt_class() log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CNCoreRecentsMapper *)v11 contactObservableForFetchRequest:v17];
      }

      emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
    }
  }

  else
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

- (id)contactPairs:(id)pairs sortedWithOrder:(int64_t)order
{
  pairsCopy = pairs;
  if (order && ((*(*MEMORY[0x1E6996538] + 16))() & 1) != 0)
  {
    v6 = [CNContact comparatorForNameSortOrder:order];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__CNCoreRecentsMapper_contactPairs_sortedWithOrder___block_invoke;
    v10[3] = &unk_1E7417230;
    v11 = v6;
    v7 = v6;
    v8 = [pairsCopy sortedArrayUsingComparator:v10];
  }

  else
  {
    v8 = pairsCopy;
  }

  return v8;
}

uint64_t __52__CNCoreRecentsMapper_contactPairs_sortedWithOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 first];
  v8 = [v6 first];
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8 || v7)
    {
      v11 = *(a1 + 32);
      v12 = [v5 first];
      v13 = [v6 first];
      v10 = (*(v11 + 16))(v11, v12, v13);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)executeSaveRequest:(id)request response:(id *)response authorizationContext:(id)context error:(id *)error
{
  requestCopy = request;
  objc_opt_class();
  v9 = requestCopy;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11 && ([v11 deletedRecentContacts], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
  {
    recentsLibrary = [(CNCoreRecentsMapper *)self recentsLibrary];
    deletedRecentContacts = [v11 deletedRecentContacts];
    allObjects = [deletedRecentContacts allObjects];
    v21 = 0;
    v17 = [recentsLibrary deleteContacts:allObjects error:&v21];
    v18 = v21;

    if (error && (v17 & 1) == 0)
    {
      v19 = v18;
      *error = v18;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)containersMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  if ([predicateCopy conformsToProtocol:&unk_1F09991D0])
  {
    v6 = predicateCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    recentsLibrary = [(CNCoreRecentsMapper *)self recentsLibrary];
    v9 = [v7 containersFromRecentsLibrary:recentsLibrary];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)policyForContainerWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(CNPolicyDescription);
  [(CNPolicyDescription *)v7 setContainerIdentifier:identifierCopy];

  v8 = [(CNCoreRecentsMapper *)self policyWithDescription:v7 error:error];

  return v8;
}

- (id)contactCountForFetchRequest:(id)request error:(id *)error
{
  predicate = [request predicate];
  if ([predicate conformsToProtocol:&unk_1F098FF70])
  {
    v6 = predicate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (-[CNCoreRecentsMapper recentsLibrary](self, "recentsLibrary"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 canSearchCoreRecentsLibrary:v8], v8, v9))
  {
    recentsLibrary = [(CNCoreRecentsMapper *)self recentsLibrary];
    v11 = [v7 countOfContactsFromRecentsLibrary:recentsLibrary];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  }

  else
  {
    v12 = &unk_1F09872A0;
  }

  return v12;
}

- (void)contactObservableForFetchRequest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error retrieving contacts from CoreRecents: %{public}@", &v4, 0xCu);
}

@end