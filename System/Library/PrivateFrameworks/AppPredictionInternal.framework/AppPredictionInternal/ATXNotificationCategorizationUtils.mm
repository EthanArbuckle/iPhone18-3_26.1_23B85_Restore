@interface ATXNotificationCategorizationUtils
+ (id)megadomeEntityIDFromNotification:(id)a3;
+ (id)megadomePersonRelationshipFromEntityID:(id)a3;
@end

@implementation ATXNotificationCategorizationUtils

+ (id)megadomeEntityIDFromNotification:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ATXMegadomeContextualPersonRelationships);
  v5 = [v3 title];
  v20 = 0;
  v6 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromName:v5 error:&v20];
  v7 = v20;

  if (![v6 length])
  {
    v8 = [v3 contactIDs];
    v9 = [v8 firstObject];
    v19 = v7;
    v10 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromContactID:v9 error:&v19];
    v11 = v19;

    v6 = v10;
    v7 = v11;
  }

  if (![v6 length])
  {
    v14 = [v3 threadID];
    v18 = v7;
    v15 = [(ATXMegadomeContextualPersonRelationships *)v4 megadomePersonIDFromPhoneNumber:v14 error:&v18];
    v16 = v18;

    v6 = v15;
    v7 = v16;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_9:
    v13 = v6;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = __atxlog_handle_notification_categorization();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationCategorizationUtils *)v7 megadomeEntityIDFromNotification:v12];
  }

  v13 = 0;
LABEL_10:

  return v13;
}

+ (id)megadomePersonRelationshipFromEntityID:(id)a3
{
  v3 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__62;
  v25 = __Block_byref_object_dispose__62;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__62;
  v19 = __Block_byref_object_dispose__62;
  v20 = 0;
  v4 = objc_alloc_init(ATXMegadomeContextualPersonRelationships);
  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke;
  v11[3] = &unk_27859E3B0;
  v13 = &v15;
  v14 = &v21;
  v6 = v5;
  v12 = v6;
  [(ATXMegadomeContextualPersonRelationships *)v4 entityRelationshipsFrom:v3 completionHandler:v11];
  v7 = v6;
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v8);

  v9 = 0;
  if (!v16[5])
  {
    v9 = v22[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke_cold_1(v6, v7);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)megadomeEntityIDFromNotification:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationCategorizationUtils: Error getting megadomeEntityID from Name, contactID or phone number: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __77__ATXNotificationCategorizationUtils_megadomePersonRelationshipFromEntityID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXNotificationCategorizationUtils: Error getting Megadome relationships: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end