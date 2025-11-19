@interface CNiOSABSaveContext
- (CNiOSABSaveContext)initWithSaveRequest:(id)a3 response:(id)a4 addressBook:(void *)a5 posterDataStore:(id)a6;
- (void)_populateSaveRequestIndexTables;
- (void)addressBook;
- (void)dealloc;
@end

@implementation CNiOSABSaveContext

- (CNiOSABSaveContext)initWithSaveRequest:(id)a3 response:(id)a4 addressBook:(void *)a5 posterDataStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v37.receiver = self;
  v37.super_class = CNiOSABSaveContext;
  v14 = [(CNiOSABSaveContext *)&v37 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_saveRequest, a3);
    objc_storeStrong(&v15->_saveResponse, a4);
    if (a5)
    {
      v16 = CFRetain(a5);
    }

    else
    {
      v16 = 0;
    }

    v15->_addressBook = v16;
    objc_storeStrong(&v15->_posterDataStore, a6);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    abPersonsByIdentifier = v15->_abPersonsByIdentifier;
    v15->_abPersonsByIdentifier = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    abGroupsByIdentifier = v15->_abGroupsByIdentifier;
    v15->_abGroupsByIdentifier = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    abSourcesByIdentifier = v15->_abSourcesByIdentifier;
    v15->_abSourcesByIdentifier = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    abAccountsByIdentifier = v15->_abAccountsByIdentifier;
    v15->_abAccountsByIdentifier = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactIdentifiersNeedingMetadataPurge = v15->_contactIdentifiersNeedingMetadataPurge;
    v15->_contactIdentifiersNeedingMetadataPurge = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    posterDataChangeRequests = v15->_posterDataChangeRequests;
    v15->_posterDataChangeRequests = v27;

    v29 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    contactIndicesByInstance = v15->_contactIndicesByInstance;
    v15->_contactIndicesByInstance = v29;

    v31 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    groupIndicesByInstance = v15->_groupIndicesByInstance;
    v15->_groupIndicesByInstance = v31;

    v33 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    containerIndicesByInstance = v15->_containerIndicesByInstance;
    v15->_containerIndicesByInstance = v33;

    [(CNiOSABSaveContext *)v15 _populateSaveRequestIndexTables];
    v35 = v15;
  }

  return v15;
}

- (void)addressBook
{
  addressBook = self->_addressBook;
  if (!addressBook)
  {
    return 0;
  }

  v3 = CFRetain(addressBook);
  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = CNiOSABSaveContext;
  [(CNiOSABSaveContext *)&v4 dealloc];
}

- (void)_populateSaveRequestIndexTables
{
  v3 = [(CNSaveRequest *)self->_saveRequest allContacts];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke;
  v8[3] = &unk_1E7413B00;
  v8[4] = self;
  [v3 enumerateObjectsUsingBlock:v8];
  v4 = [(CNSaveRequest *)self->_saveRequest allGroups];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_3;
  v7[3] = &unk_1E7413B28;
  v7[4] = self;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = [(CNSaveRequest *)self->_saveRequest allContainers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_4;
  v6[3] = &unk_1E7413B50;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 contactIndicesByInstance];
  v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  [v7 setObject:v8 forKey:v6];

  v9 = [v6 linkedContacts];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_2;
  v10[3] = &unk_1E7413AD8;
  v10[4] = *(a1 + 32);
  v10[5] = a3;
  [v9 enumerateObjectsUsingBlock:v10];
}

void __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v7[1] = a3;
  v4 = a2;
  v5 = [v3 contactIndicesByInstance];
  v6 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v7 length:2];
  [v5 setObject:v6 forKey:v4];
}

void __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 groupIndicesByInstance];
  v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  [v7 setObject:v6 forKey:v5];
}

void __53__CNiOSABSaveContext__populateSaveRequestIndexTables__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 containerIndicesByInstance];
  v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  [v7 setObject:v6 forKey:v5];
}

@end