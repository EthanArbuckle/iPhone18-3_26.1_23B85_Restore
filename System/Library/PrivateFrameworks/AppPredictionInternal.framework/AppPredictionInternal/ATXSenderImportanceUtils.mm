@interface ATXSenderImportanceUtils
+ (id)_contactFromName:(id)name contactStore:(id)store;
+ (id)contactFromHandle:(id)handle contactStore:(id)store;
@end

@implementation ATXSenderImportanceUtils

+ (id)contactFromHandle:(id)handle contactStore:(id)store
{
  v21[4] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  storeCopy = store;
  contactIdentifier = [handleCopy contactIdentifier];

  if (contactIdentifier)
  {
    name2 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:storeCopy];
    contactIdentifier2 = [handleCopy contactIdentifier];
    handle = [handleCopy handle];
    v12 = [(ATXStableContactRepresentationDatastore *)name2 cnContactForCnContactId:contactIdentifier2 rawIdentifier:handle];
LABEL_5:
    v17 = v12;

LABEL_6:
    goto LABEL_7;
  }

  handle2 = [handleCopy handle];

  if (handle2)
  {
    v14 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v15 = *MEMORY[0x277CBD160];
    v21[0] = v14;
    v21[1] = v15;
    v16 = *MEMORY[0x277CBCFC0];
    v21[2] = *MEMORY[0x277CBD098];
    v21[3] = v16;
    name2 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

    contactIdentifier2 = [objc_alloc(MEMORY[0x277D3A088]) initWithContactStore:storeCopy keysToFetch:name2];
    handle = [handleCopy handle];
    v12 = [contactIdentifier2 resolveContactIfPossibleFromContactIdentifierString:handle pickFirstOfMultiple:1];
    goto LABEL_5;
  }

  name = [handleCopy name];

  if (name)
  {
    name2 = [handleCopy name];
    v17 = [self _contactFromName:name2 contactStore:storeCopy];
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_contactFromName:(id)name contactStore:(id)store
{
  v25[7] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = MEMORY[0x277CBDA78];
  storeCopy = store;
  v8 = [v6 descriptorForRequiredKeysForStyle:0];
  v25[0] = v8;
  v9 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v10 = *MEMORY[0x277CBD018];
  v25[1] = v9;
  v25[2] = v10;
  v11 = *MEMORY[0x277CBD098];
  v25[3] = *MEMORY[0x277CBD160];
  v25[4] = v11;
  v12 = *MEMORY[0x277CBCFC0];
  v25[5] = *MEMORY[0x277CBD038];
  v25[6] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];

  v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:nameCopy];
  v22 = 0;
  v15 = [storeCopy unifiedContactsMatchingPredicate:v14 keysToFetch:v13 error:&v22];

  v16 = v22;
  if (v16)
  {
    v17 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXSenderImportanceUtils *)v14 _contactFromName:v16 contactStore:v17];
    }

    firstObject = 0;
  }

  else
  {
    if (![v15 count])
    {
      v19 = __atxlog_handle_notification_categorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = nameCopy;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "No contact matches found for the given name: %@", buf, 0xCu);
      }
    }

    firstObject = [v15 firstObject];
  }

  v20 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (void)_contactFromName:(os_log_t)log contactStore:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Error when fetching contact for predicate %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end