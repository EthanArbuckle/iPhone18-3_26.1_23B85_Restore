@interface ATXClipboardContents
+ (void)_observeLocalPasteboard;
- (ATXClipboardContents)contentsWithCallback:(id)a3;
- (ATXClipboardContents)initWithDevice:(id)a3;
- (ATXClipboardContents)initWithDevice:(id)a3 pasteboardConnection:(id)a4;
@end

@implementation ATXClipboardContents

+ (void)_observeLocalPasteboard
{
  if (_observeLocalPasteboard_onceToken != -1)
  {
    +[ATXClipboardContents _observeLocalPasteboard];
  }
}

void __47__ATXClipboardContents__observeLocalPasteboard__block_invoke()
{
  v0 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_cold_1(v0);
  }

  out_token = 0;
  v1 = [@"com.apple.pasteboard.notify.changed" UTF8String];
  v2 = dispatch_get_global_queue(9, 0);
  notify_register_dispatch(v1, &out_token, v2, &__block_literal_global_39);
}

void __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_36()
{
  v0 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_23E3EA000, v0, OS_LOG_TYPE_INFO, "Received com.apple.pasteboard.notify.changed notification. Checking .changeCount ...", v2, 2u);
  }

  v1 = [MEMORY[0x277D38BC0] defaultConnection];
  [v1 localGeneralPasteboardCompletionBlock:&__block_literal_global_43];
}

void __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_40_cold_1(v2);
  }

  if (sLastPasteboardChangeCount && (v4 = [v2 changeCount], v4 == objc_msgSend(sLastPasteboardChangeCount, "integerValue")))
  {
    v5 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_INFO, "Local pasteboard has not changed. Not posting ATXLocalPasteboardDidChangeNotification", v7, 2u);
    }
  }

  else
  {
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_INFO, "Local pasteboard changed! Posting ATXLocalPasteboardDidChangeNotification!", buf, 2u);
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"ATXLocalPasteboardDidChangeNotification" object:0];
  }
}

- (ATXClipboardContents)initWithDevice:(id)a3 pasteboardConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXClipboardContents;
  v9 = [(ATXClipboardContents *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_pasteboardServerConnection, a4);
    [objc_opt_class() _observeLocalPasteboard];
  }

  return v10;
}

- (ATXClipboardContents)initWithDevice:(id)a3
{
  v4 = MEMORY[0x277D38BC0];
  v5 = a3;
  v6 = [v4 defaultConnection];
  v7 = [(ATXClipboardContents *)self initWithDevice:v5 pasteboardConnection:v6];

  return v7;
}

- (ATXClipboardContents)contentsWithCallback:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v5 = dispatch_semaphore_create(0);
  pasteboardServerConnection = self->_pasteboardServerConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__ATXClipboardContents_contentsWithCallback___block_invoke;
  v16[3] = &unk_278C3D268;
  v19 = &v21;
  v7 = v5;
  v20 = &v27;
  v17 = v7;
  v18 = self;
  [(PBServerConnection *)pasteboardServerConnection localGeneralPasteboardCompletionBlock:v16];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v7 timeoutSeconds:5.0] == 1)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1 userInfo:MEMORY[0x277CBEC10]];
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&dword_23E3EA000, v9, OS_LOG_TYPE_DEFAULT, "Getting pasteboard contents timed out", v15, 2u);
    }

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = v22[5];
    if (!v10)
    {
LABEL_9:
      v11 = [v28[5] content];
      v12 = [v28[5] creationDate];
      v13 = [v28[5] originatorBundleId];
      v4[2](v4, v11, v12, v13, 0);

      v8 = 0;
      goto LABEL_10;
    }

    v8 = v10;
  }

  (v4)[2](v4, 0, 0, 0, v8);
LABEL_10:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return result;
}

void __45__ATXClipboardContents_contentsWithCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = __atxlog_handle_heuristic();
  v8 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__ATXClipboardContents_contentsWithCallback___block_invoke_cold_2(v6, v8);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    goto LABEL_33;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_40_cold_1(v5);
  }

  if (sLastPasteboardChangeCount)
  {
    v9 = [v5 changeCount];
    if (v9 == [sLastPasteboardChangeCount integerValue])
    {
      if (sLastPasteboardContents && ([sLastPasteboardContents creationDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceNow"), v12 = fabs(v11), v10, v12 < 1800.0))
      {
        v13 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "Local pasteboard has not changed. Returning early with cached clipboard contents.", buf, 2u);
        }

        v14 = *(*(a1 + 56) + 8);
        v15 = sLastPasteboardContents;
        v16 = *(v14 + 40);
        *(v14 + 40) = v15;
      }

      else
      {
        v42 = __atxlog_handle_heuristic();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23E3EA000, v42, OS_LOG_TYPE_DEFAULT, "Local pasteboard has not changed. The clipboard contents are too old.", buf, 2u);
        }

        v16 = sLastPasteboardContents;
        sLastPasteboardContents = 0;
      }

LABEL_33:
      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_34;
    }
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "changeCount")}];
  v18 = sLastPasteboardChangeCount;
  sLastPasteboardChangeCount = v17;

  v19 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 40);
    *buf = 138412546;
    v57 = sLastPasteboardChangeCount;
    v58 = 2112;
    v59 = v20;
    _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_INFO, "sLastPasteboardChangeCount is now: %@ - %@", buf, 0x16u);
  }

  v21 = [v5 originatorBundleID];
  if (v21)
  {
    v22 = v21;
    v23 = [v5 originatorBundleID];
    v55 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    CanLearnFromApp = ATXHeuristicCanLearnFromApp(v24);

    if ((CanLearnFromApp & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v26 = [v5 items];
  v27 = [v26 firstObject];

  v28 = [*MEMORY[0x277CE1E90] identifier];
  v54[0] = v28;
  v29 = [*MEMORY[0x277CE1EB0] identifier];
  v54[1] = v29;
  v30 = [*MEMORY[0x277CE1EA8] identifier];
  v54[2] = v30;
  v31 = [*MEMORY[0x277CE1E88] identifier];
  v54[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];

  v33 = sLastPasteboardContents;
  sLastPasteboardContents = 0;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v50;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v49 + 1) + 8 * i);
        if ([v27 hasRepresentationConformingToType:v39])
        {
          v40 = [v27 representationConformingToType:v39];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __45__ATXClipboardContents_contentsWithCallback___block_invoke_48;
          v44[3] = &unk_278C3D240;
          v45 = v5;
          v46 = v39;
          v48 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
          v47 = *(a1 + 32);
          v41 = [v40 loadDataWithCompletion:v44];

          goto LABEL_28;
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_28:

LABEL_34:
  v43 = *MEMORY[0x277D85DE8];
}

void __45__ATXClipboardContents_contentsWithCallback___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1800.0];
    v8 = [*(a1 + 32) creationDate];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    if (v10 >= 0.0)
    {
      v17 = *(a1 + 40);
      v18 = [*MEMORY[0x277CE1E90] identifier];
      LODWORD(v17) = [v17 isEqualToString:v18];

      if (v17)
      {
        v19 = *(a1 + 40);
        v33 = 0;
        v20 = [MEMORY[0x277CBEBC0] objectWithItemProviderData:v5 typeIdentifier:v19 error:&v33];
        v21 = v33;
        if (v20)
        {
          v11 = [v20 absoluteString];
        }

        else
        {
          v22 = __atxlog_handle_heuristic();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v21;
            _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Error decoding URL: %@", buf, 0xCu);
          }

          v11 = 0;
        }

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 usedEncoding:0];
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      v23 = [_ATXCachedClipboardContents alloc];
      v24 = [*(a1 + 32) creationDate];
      v25 = [*(a1 + 32) originatorBundleID];
      v26 = [(_ATXCachedClipboardContents *)v23 initWithContent:v11 creationDate:v24 originatorBundleId:v25];
      v27 = *(*(a1 + 56) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      objc_storeStrong(&sLastPasteboardContents, *(*(*(a1 + 56) + 8) + 40));
      v12 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(*(*(a1 + 56) + 8) + 40) content];
        v30 = [*(*(*(a1 + 56) + 8) + 40) creationDate];
        v31 = [*(*(*(a1 + 56) + 8) + 40) originatorBundleId];
        *buf = 138740483;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "Found clipboard content: %{sensitive}@, creationDate: %@, originatorBundleID: %@", buf, 0x20u);
      }
    }

    else
    {
      v11 = __atxlog_handle_heuristic();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        goto LABEL_21;
      }

      v12 = [*(a1 + 32) creationDate];
      *buf = 138412290;
      v35 = v12;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "Not returning pasteboard content as pasteboard creation date is more than 30 minutes ago. Creation Date: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v13 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    *buf = 138412546;
    v35 = v14;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_DEFAULT, "Error getting text representation from pasteboard. Type = %@, Error: %@", buf, 0x16u);
  }

  v15 = *(*(a1 + 64) + 8);
  v16 = v6;
  v7 = *(v15 + 40);
  *(v15 + 40) = v16;
LABEL_21:

  dispatch_semaphore_signal(*(a1 + 48));
  v32 = *MEMORY[0x277D85DE8];
}

void __47__ATXClipboardContents__observeLocalPasteboard__block_invoke_40_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [sLastPasteboardChangeCount integerValue];
  [a1 changeCount];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_5(&dword_23E3EA000, v2, v3, "PasteBoard .changeCount - previous: %ld - current: %ld", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__ATXClipboardContents_contentsWithCallback___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Error getting pasteboard contents: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end