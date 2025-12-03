@interface CNRefetchingContactIdentifierExpander
- (CNRefetchingContactIdentifierExpander)init;
- (CNRefetchingContactIdentifierExpander)initWithContactStore:(id)store;
- (id)expandIdentifiersForContact:(id)contact;
- (id)expandIdentifiersForContactWithIdentifier:(id)identifier;
- (id)expandIdentifiersForRefetchedContact:(id)contact;
- (id)fetchContactWithIdentifier:(id)identifier;
- (id)preferredIdentifierForContact:(id)contact;
- (id)preferredIdentifierForContactWithIdentifier:(id)identifier;
- (id)refetchContact:(id)contact;
@end

@implementation CNRefetchingContactIdentifierExpander

- (CNRefetchingContactIdentifierExpander)init
{
  v3 = objc_alloc_init(CNContactStore);
  v4 = [(CNRefetchingContactIdentifierExpander *)self initWithContactStore:v3];

  return v4;
}

- (CNRefetchingContactIdentifierExpander)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNRefetchingContactIdentifierExpander;
  v6 = [(CNRefetchingContactIdentifierExpander *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = v7;
  }

  return v7;
}

- (id)expandIdentifiersForContact:(id)contact
{
  v4 = [(CNRefetchingContactIdentifierExpander *)self refetchContact:contact];
  v5 = [(CNRefetchingContactIdentifierExpander *)self expandIdentifiersForRefetchedContact:v4];

  return v5;
}

- (id)expandIdentifiersForContactWithIdentifier:(id)identifier
{
  v9[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(CNRefetchingContactIdentifierExpander *)self fetchContactWithIdentifier:identifierCopy];
  if (v5)
  {
    v6 = [(CNRefetchingContactIdentifierExpander *)self expandIdentifiersForRefetchedContact:v5];
  }

  else
  {
    v9[0] = identifierCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  v7 = v6;

  return v7;
}

- (id)refetchContact:(id)contact
{
  contactCopy = contact;
  identifier = [contactCopy identifier];
  v6 = [(CNRefetchingContactIdentifierExpander *)self fetchContactWithIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = contactCopy;
  }

  v9 = v8;

  return v8;
}

- (id)fetchContactWithIdentifier:(id)identifier
{
  v13[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13[0] = @"linkIdentifier";
  v13[1] = @"preferredForImage";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  store = self->_store;
  v12 = 0;
  v7 = [(CNContactStore *)store unifiedContactWithIdentifier:identifierCopy keysToFetch:v5 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CNRefetchingContactIdentifierExpander *)identifierCopy fetchContactWithIdentifier:v8, v10];
    }
  }

  return v7;
}

- (id)expandIdentifiersForRefetchedContact:(id)contact
{
  v20 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = objc_opt_new();
  v5 = +[CNIntrinsicContactIdentifierExpander sharedExpander];
  v6 = [v5 expandIdentifiersForContact:contactCopy];

  [v4 addObjectsFromArray:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  linkedContacts = [contactCopy linkedContacts];
  v8 = [linkedContacts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(linkedContacts);
        }

        identifier = [*(*(&v15 + 1) + 8 * i) identifier];
        [v4 addObject:identifier];
      }

      v9 = [linkedContacts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  array = [v4 array];

  return array;
}

- (id)preferredIdentifierForContact:(id)contact
{
  v3 = [(CNRefetchingContactIdentifierExpander *)self refetchContact:contact];
  v4 = +[CNIntrinsicContactIdentifierExpander sharedExpander];
  v5 = [v4 preferredIdentifierForContact:v3];

  return v5;
}

- (id)preferredIdentifierForContactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CNRefetchingContactIdentifierExpander *)self fetchContactWithIdentifier:identifierCopy];
  if (v5)
  {
    v6 = +[CNIntrinsicContactIdentifierExpander sharedExpander];
    v7 = [v6 preferredIdentifierForContact:v5];
  }

  else
  {
    v7 = identifierCopy;
  }

  return v7;
}

- (void)fetchContactWithIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1954A0000, log, OS_LOG_TYPE_ERROR, "Could not refetch contact %{public}@ for identifier expansion: %{public}@", &v3, 0x16u);
}

@end