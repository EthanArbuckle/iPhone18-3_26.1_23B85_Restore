@interface ATXDocumentInteractionStream
- (id)getDocumentsOpenedInLastMonth;
- (void)enumerateDocumentInteractionEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 block:(id)a7;
@end

@implementation ATXDocumentInteractionStream

- (void)enumerateDocumentInteractionEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 block:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if ([v13 compare:v14] != -1)
  {
    [ATXDocumentInteractionStream enumerateDocumentInteractionEventsFromStartDate:a2 endDate:self filterBlock:? limit:? block:?];
  }

  v17 = [(ATXDocumentInteractionStream *)self _documentInteractionPublisherWithStartDate:v13 endDate:v14 limit:a6];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_23;
  v21[3] = &unk_2785904F8;
  v22 = v15;
  v23 = v16;
  v18 = v16;
  v19 = v15;
  v20 = [v17 sinkWithCompletion:&__block_literal_global_9 receiveInput:v21];
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_cold_1(v2, v4);
    }
  }
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_23(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [ATXDocumentInteractionEvent alloc];
  v4 = [v10 eventBody];
  v5 = [(ATXDocumentInteractionEvent *)v3 initWithBMAppDocumentInteraction:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    if (!v6 || (*(v6 + 16))(v6, v5))
    {
      v7 = *(a1 + 40);
      v8 = MEMORY[0x277CBEAA8];
      [v10 timestamp];
      v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
      (*(v7 + 16))(v7, v5, v9);
    }
  }
}

- (id)getDocumentsOpenedInLastMonth
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v6 = [MEMORY[0x277CBEAA8] date];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_2;
  v16[3] = &unk_278590540;
  v17 = v3;
  v7 = v3;
  [(ATXDocumentInteractionStream *)self enumerateDocumentInteractionEventsFromStartDate:v5 endDate:v6 filterBlock:&__block_literal_global_31 limit:1000000 block:v16];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3;
  v14 = &unk_278590568;
  v15 = v4;
  v8 = v4;
  [v7 enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

uint64_t __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = [v2 bookmarkData];

    if (v3)
    {
      v3 = [v2 isRemote] ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D42648];
  v6 = a3;
  v7 = a2;
  v10 = [[v5 alloc] initWithFirst:v7 second:v6];

  v8 = *(a1 + 32);
  v9 = [v7 originalFileURL];

  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [ATXFileIdentityWithMetadata alloc];
  v7 = [v5 first];
  v8 = [v7 bookmarkData];
  v9 = v5;
  v10 = [v5 first];
  v11 = [v10 bundleIdentifier];
  v12 = [(ATXFileIdentityWithMetadata *)v6 initWithItemURL:v4 bookmarkData:v8 dateLastOpened:0 dateModified:0 dateCreated:0 bundleIdentifier:v11];

  v41 = 0;
  v38 = v12;
  v13 = [(ATXFileIdentityWithMetadata *)v12 resolveItemURLWithError:&v41];
  v14 = v41;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_1();
    }

    v17 = v4;
    v13 = v17;
  }

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v13 path];
  v40 = 0;
  v20 = [v18 attributesOfItemAtPath:v19 error:&v40];
  v21 = v40;

  v36 = v15;
  v37 = v13;
  v34 = v20;
  v35 = v21;
  if (!v20 || v21)
  {
    v25 = __atxlog_handle_default();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_2(v13, v21, v25);
    }

    v22 = v4;

    v24 = 0;
    v23 = 0;
  }

  else
  {
    v22 = v4;
    v23 = [v20 objectForKeyedSubscript:{*MEMORY[0x277CCA150], v20, 0, v15, v37}];
    v24 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCA108]];
  }

  v26 = [ATXFileIdentityWithMetadata alloc];
  v27 = v9;
  v28 = [v9 first];
  v29 = [v28 bookmarkData];
  v30 = [v9 second];
  v31 = [v27 first];
  v32 = [v31 bundleIdentifier];
  v33 = [(ATXFileIdentityWithMetadata *)v26 initWithItemURL:v22 bookmarkData:v29 dateLastOpened:v30 dateModified:v23 dateCreated:v24 bundleIdentifier:v32];

  [*(a1 + 32) addObject:v33];
}

- (void)enumerateDocumentInteractionEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 filterBlock:limit:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDocumentInteractionStream.m" lineNumber:42 description:@"Start date must be earlier than the end date."];
}

void __112__ATXDocumentInteractionStream_enumerateDocumentInteractionEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXDocumentInteractionStream: Error querying document interaction stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  v4 = v0;
  _os_log_error_impl(&dword_226368000, v1, OS_LOG_TYPE_ERROR, "Failed to resolve bookmark for URL %@, falling back to original url: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__ATXDocumentInteractionStream_getDocumentsOpenedInLastMonth__block_invoke_3_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  OUTLINED_FUNCTION_0_4();
  v8 = a2;
  _os_log_error_impl(&dword_226368000, a3, OS_LOG_TYPE_ERROR, "Failed to get attributes for file %@: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end