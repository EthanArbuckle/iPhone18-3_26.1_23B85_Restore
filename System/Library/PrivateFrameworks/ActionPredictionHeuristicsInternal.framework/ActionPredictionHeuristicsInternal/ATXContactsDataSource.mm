@interface ATXContactsDataSource
- (ATXContactsDataSource)initWithDevice:(id)device;
- (void)_contactsWithPredicate:(id)predicate callback:(id)callback;
- (void)contactsWithEmail:(id)email callback:(id)callback;
- (void)contactsWithIdentifiers:(id)identifiers callback:(id)callback;
- (void)contactsWithName:(id)name callback:(id)callback;
- (void)contactsWithPhone:(id)phone callback:(id)callback;
@end

@implementation ATXContactsDataSource

- (ATXContactsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXContactsDataSource;
  v6 = [(ATXContactsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)contactsWithIdentifiers:(id)identifiers callback:(id)callback
{
  v6 = MEMORY[0x277CBDA58];
  callbackCopy = callback;
  v8 = [v6 predicateForContactsWithIdentifiers:identifiers];
  [(ATXContactsDataSource *)self _contactsWithPredicate:v8 callback:callbackCopy];
}

- (void)contactsWithName:(id)name callback:(id)callback
{
  v6 = MEMORY[0x277CBDA58];
  callbackCopy = callback;
  v8 = [v6 predicateForContactsMatchingName:name];
  [(ATXContactsDataSource *)self _contactsWithPredicate:v8 callback:callbackCopy];
}

- (void)contactsWithEmail:(id)email callback:(id)callback
{
  v6 = MEMORY[0x277CBDA58];
  callbackCopy = callback;
  v8 = [v6 predicateForContactsMatchingEmailAddress:email];
  [(ATXContactsDataSource *)self _contactsWithPredicate:v8 callback:callbackCopy];
}

- (void)contactsWithPhone:(id)phone callback:(id)callback
{
  v6 = MEMORY[0x277CBDB70];
  callbackCopy = callback;
  phoneCopy = phone;
  v10 = [[v6 alloc] initWithStringValue:phoneCopy];

  v9 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v10];
  [(ATXContactsDataSource *)self _contactsWithPredicate:v9 callback:callbackCopy];
}

- (void)_contactsWithPredicate:(id)predicate callback:(id)callback
{
  v23 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA380))
  {
    v8 = [(ATXHeuristicDevice *)self->_device contactsForPredicate:predicateCopy];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [(ATXHeuristicDevice *)self->_device dictContactForCNContact:*(*(&v18 + 1) + 8 * i), v18];
            if (v15)
            {
              [v9 addObject:v15];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }

      callbackCopy[2](callbackCopy, v9, 0);
    }

    else
    {
      v16 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXContactsDataSource _contactsWithPredicate:v16 callback:?];
      }

      callbackCopy[2](callbackCopy, 0, 0);
    }
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEBF8], 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_contactsWithPredicate:(os_log_t)log callback:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Error in contacts fetch: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end