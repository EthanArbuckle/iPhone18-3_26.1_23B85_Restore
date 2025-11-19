@interface ATXSenderImportanceUtils
+ (id)_contactFromName:(id)a3 contactStore:(id)a4;
+ (id)contactFromHandle:(id)a3 contactStore:(id)a4;
@end

@implementation ATXSenderImportanceUtils

+ (id)contactFromHandle:(id)a3 contactStore:(id)a4
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactIdentifier];

  if (v8)
  {
    v9 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:v7];
    v10 = [v6 contactIdentifier];
    v11 = [v6 handle];
    v12 = [(ATXStableContactRepresentationDatastore *)v9 cnContactForCnContactId:v10 rawIdentifier:v11];
LABEL_5:
    v17 = v12;

LABEL_6:
    goto LABEL_7;
  }

  v13 = [v6 handle];

  if (v13)
  {
    v14 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v15 = *MEMORY[0x277CBD160];
    v21[0] = v14;
    v21[1] = v15;
    v16 = *MEMORY[0x277CBCFC0];
    v21[2] = *MEMORY[0x277CBD098];
    v21[3] = v16;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

    v10 = [objc_alloc(MEMORY[0x277D3A088]) initWithContactStore:v7 keysToFetch:v9];
    v11 = [v6 handle];
    v12 = [v10 resolveContactIfPossibleFromContactIdentifierString:v11 pickFirstOfMultiple:1];
    goto LABEL_5;
  }

  v20 = [v6 name];

  if (v20)
  {
    v9 = [v6 name];
    v17 = [a1 _contactFromName:v9 contactStore:v7];
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_contactFromName:(id)a3 contactStore:(id)a4
{
  v25[7] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBDA78];
  v7 = a4;
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

  v14 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v5];
  v22 = 0;
  v15 = [v7 unifiedContactsMatchingPredicate:v14 keysToFetch:v13 error:&v22];

  v16 = v22;
  if (v16)
  {
    v17 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXSenderImportanceUtils *)v14 _contactFromName:v16 contactStore:v17];
    }

    v18 = 0;
  }

  else
  {
    if (![v15 count])
    {
      v19 = __atxlog_handle_notification_categorization();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "No contact matches found for the given name: %@", buf, 0xCu);
      }
    }

    v18 = [v15 firstObject];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
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