@interface CNHandleExpander
+ (id)contactStoreForFetchingContacts;
- (CNHandleExpander)initWithHandles:(id)a3;
- (id)expandedHandles;
- (void)expandHandles;
@end

@implementation CNHandleExpander

- (CNHandleExpander)initWithHandles:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNHandleExpander;
  v6 = [(CNHandleExpander *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_incomingAddresses, a3);
    v8 = v7;
  }

  return v7;
}

- (id)expandedHandles
{
  expandedAddresses = self->_expandedAddresses;
  if (!expandedAddresses)
  {
    [(CNHandleExpander *)self expandHandles];
    expandedAddresses = self->_expandedAddresses;
  }

  return expandedAddresses;
}

- (void)expandHandles
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    expandedAddresses = self->_expandedAddresses;
    self->_expandedAddresses = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [objc_opt_class() contactStoreForFetchingContacts];
    v5 = [CNContact predicateForContactsMatchingHandleStrings:self->_incomingAddresses];
    v16[0] = @"emailAddresses";
    v16[1] = @"phoneNumbers";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v6];
    [(CNContactFetchRequest *)v7 setPredicate:v5];
    v8 = [MEMORY[0x1E695DF70] array];
    v15 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __33__CNHandleExpander_expandHandles__block_invoke;
    v13[3] = &unk_1E7414AA8;
    v9 = v8;
    v14 = v9;
    [v4 enumerateContactsWithFetchRequest:v7 error:&v15 usingBlock:v13];
    v10 = v15;
    v11 = self->_expandedAddresses;
    self->_expandedAddresses = v9;
    v12 = v9;
  }
}

void __33__CNHandleExpander_expandHandles__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 emailAddresses];
  v6 = [v5 _cn_map:&__block_literal_global_8_2];
  [v3 addObjectsFromArray:v6];

  v7 = *(a1 + 32);
  v9 = [v4 phoneNumbers];

  v8 = [v9 _cn_map:&__block_literal_global_10_0];
  [v7 addObjectsFromArray:v8];
}

+ (id)contactStoreForFetchingContacts
{
  if (contactStoreForFetchingContacts_cn_once_token_0 != -1)
  {
    +[CNHandleExpander contactStoreForFetchingContacts];
  }

  v3 = contactStoreForFetchingContacts_cn_once_object_0;

  return v3;
}

uint64_t __51__CNHandleExpander_contactStoreForFetchingContacts__block_invoke()
{
  v0 = objc_alloc_init(CNContactStore);
  v1 = contactStoreForFetchingContacts_cn_once_object_0;
  contactStoreForFetchingContacts_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end