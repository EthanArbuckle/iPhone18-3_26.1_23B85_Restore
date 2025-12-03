@interface CNReputationCoreRecentsAdapter
- (CNReputationCoreRecentsAdapter)init;
- (CNReputationCoreRecentsAdapter)initWithRecentContactsLibrary:(id)library;
- (id)recentContactsForHandle:(id)handle;
@end

@implementation CNReputationCoreRecentsAdapter

- (CNReputationCoreRecentsAdapter)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getCRRecentContactsLibraryClass_softClass_0;
  v12 = getCRRecentContactsLibraryClass_softClass_0;
  if (!getCRRecentContactsLibraryClass_softClass_0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getCRRecentContactsLibraryClass_block_invoke_0;
    v8[3] = &unk_1E7412110;
    v8[4] = &v9;
    __getCRRecentContactsLibraryClass_block_invoke_0(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  defaultInstance = [v3 defaultInstance];
  v6 = [(CNReputationCoreRecentsAdapter *)self initWithRecentContactsLibrary:defaultInstance];

  return v6;
}

- (CNReputationCoreRecentsAdapter)initWithRecentContactsLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = CNReputationCoreRecentsAdapter;
  v6 = [(CNReputationCoreRecentsAdapter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
    v8 = v7;
  }

  return v7;
}

- (id)recentContactsForHandle:(id)handle
{
  v48 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v5 = getCRSearchQueryClass_softClass_0;
  v45 = getCRSearchQueryClass_softClass_0;
  if (!getCRSearchQueryClass_softClass_0)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRSearchQueryClass_block_invoke_0;
    v40 = &unk_1E7412110;
    v41 = &v42;
    __getCRSearchQueryClass_block_invoke_0(&v37);
    v5 = v43[3];
  }

  v6 = v5;
  _Block_object_dispose(&v42, 8);
  v7 = objc_alloc_init(v5);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v8 = getCRSearchPredicateClass_softClass_0;
  v45 = getCRSearchPredicateClass_softClass_0;
  if (!getCRSearchPredicateClass_softClass_0)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRSearchPredicateClass_block_invoke_0;
    v40 = &unk_1E7412110;
    v41 = &v42;
    __getCRSearchPredicateClass_block_invoke_0(&v37);
    v8 = v43[3];
  }

  v9 = v8;
  _Block_object_dispose(&v42, 8);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v10 = getCRRecentContactKeyAddressSymbolLoc_ptr_0;
  v45 = getCRRecentContactKeyAddressSymbolLoc_ptr_0;
  if (!getCRRecentContactKeyAddressSymbolLoc_ptr_0)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRRecentContactKeyAddressSymbolLoc_block_invoke_0;
    v40 = &unk_1E7412110;
    v41 = &v42;
    v11 = CoreRecentsLibrary_1();
    v12 = dlsym(v11, "CRRecentContactKeyAddress");
    *(v41[1] + 24) = v12;
    getCRRecentContactKeyAddressSymbolLoc_ptr_0 = *(v41[1] + 24);
    v10 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v10)
  {
    goto LABEL_20;
  }

  v13 = *MEMORY[0x1E69964A8];
  v14 = *(*MEMORY[0x1E69964A8] + 16);
  v15 = *v10;
  v16 = v14(v13, handleCopy);
  v17 = [v8 predicateForKey:v15 inCollection:v16];

  [v7 setSearchPredicate:v17];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v18 = getCRRecentsDomainCalendarSymbolLoc_ptr;
  v45 = getCRRecentsDomainCalendarSymbolLoc_ptr;
  if (!getCRRecentsDomainCalendarSymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRRecentsDomainCalendarSymbolLoc_block_invoke;
    v40 = &unk_1E7412110;
    v41 = &v42;
    v19 = CoreRecentsLibrary_1();
    v20 = dlsym(v19, "CRRecentsDomainCalendar");
    *(v41[1] + 24) = v20;
    getCRRecentsDomainCalendarSymbolLoc_ptr = *(v41[1] + 24);
    v18 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v18)
  {
    goto LABEL_20;
  }

  v21 = *v18;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v22 = getCRRecentsDomainMailSymbolLoc_ptr;
  v45 = getCRRecentsDomainMailSymbolLoc_ptr;
  v46[0] = v21;
  if (!getCRRecentsDomainMailSymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRRecentsDomainMailSymbolLoc_block_invoke;
    v40 = &unk_1E7412110;
    v41 = &v42;
    v23 = CoreRecentsLibrary_1();
    v24 = dlsym(v23, "CRRecentsDomainMail");
    *(v41[1] + 24) = v24;
    getCRRecentsDomainMailSymbolLoc_ptr = *(v41[1] + 24);
    v22 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v22)
  {
    goto LABEL_20;
  }

  v25 = *v22;
  v46[1] = v25;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v26 = getCRRecentsDomainMessagesSymbolLoc_ptr;
  v45 = getCRRecentsDomainMessagesSymbolLoc_ptr;
  if (!getCRRecentsDomainMessagesSymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getCRRecentsDomainMessagesSymbolLoc_block_invoke;
    v40 = &unk_1E7412110;
    v41 = &v42;
    v27 = CoreRecentsLibrary_1();
    v28 = dlsym(v27, "CRRecentsDomainMessages");
    *(v41[1] + 24) = v28;
    getCRRecentsDomainMessagesSymbolLoc_ptr = *(v41[1] + 24);
    v26 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v26)
  {
LABEL_20:
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v47 = *v26;
  v29 = MEMORY[0x1E695DEC8];
  v30 = v47;
  v31 = [v29 arrayWithObjects:v46 count:3];

  [v7 setDomains:v31];
  v32 = objc_alloc_init(MEMORY[0x1E69967D0]);
  library = [(CNReputationCoreRecentsAdapter *)self library];
  v34 = [v32 completionHandlerAdapterWithDefaultValue:MEMORY[0x1E695E0F0]];
  [library performRecentsSearch:v7 queue:0 completion:v34];

  future = [v32 future];

  return future;
}

@end