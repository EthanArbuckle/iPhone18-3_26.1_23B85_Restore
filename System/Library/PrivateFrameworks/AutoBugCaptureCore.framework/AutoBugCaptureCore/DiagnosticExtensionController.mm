@interface DiagnosticExtensionController
- (DiagnosticExtensionController)initWithDestinationDirectory:(id)directory;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions queue:(id)queue reply:(id)reply;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply;
@end

@implementation DiagnosticExtensionController

- (DiagnosticExtensionController)initWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = DiagnosticExtensionController;
  v6 = [(DiagnosticExtensionController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destinationRootDirectory, directory);
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v7->dateFormatter;
    v7->dateFormatter = v8;

    [(NSDateFormatter *)v7->dateFormatter setDateFormat:@"yyyy-MM-dd_HHmmss"];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("com.apple.autobugcapture.diagnosticExtension", v10);
    queue = v7->_queue;
    v7->_queue = v11;
  }

  return v7;
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensions:(id)extensions queue:(id)queue reply:(id)reply
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionsCopy = extensions;
  queueCopy = queue;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = extensionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        null = [MEMORY[0x277CBEB68] null];
        [dictionary setObject:null forKeyedSubscript:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  [(DiagnosticExtensionController *)selfCopy collectDEPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:dictionary queue:queueCopy reply:replyCopy];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = [parametersCopy count];
  dateFormatter = self->dateFormatter;
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [(NSDateFormatter *)dateFormatter stringFromDate:date];
  v18 = [identifierCopy stringByAppendingFormat:@"-%@", v17];

  v19 = diagextLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [parametersCopy count];
    allKeys = [parametersCopy allKeys];
    *buf = 134218242;
    v40 = v20;
    v41 = 2112;
    v42 = allKeys;
    _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "Calling %ld DEs: %@", buf, 0x16u);
  }

  if (v35[3])
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke;
    v27[3] = &unk_278CF06D8;
    v27[4] = self;
    v28 = dictionary;
    v32 = v38;
    v29 = v18;
    v33 = &v34;
    v31 = replyCopy;
    v30 = queueCopy;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v27];
  }

  else
  {
    v22 = diagextLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEFAULT, "List of DiagnosticExtensions to call was empty", buf, 2u);
    }

    if (replyCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_105;
      block[3] = &unk_278CEFF50;
      v26 = replyCopy;
      v25 = dictionary;
      dispatch_async(queueCopy, block);
    }
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = diagextLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Ready to call DE %@", buf, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_92;
    v19[3] = &unk_278CF06B0;
    v20 = v7;
    v11 = *(a1 + 40);
    v24 = *(a1 + 72);
    v12 = *(a1 + 48);
    v25 = *(a1 + 80);
    v18 = *(a1 + 32);
    v23 = *(a1 + 64);
    v13 = *(a1 + 56);
    *&v14 = v18;
    *(&v14 + 1) = v13;
    *&v15 = v11;
    *(&v15 + 1) = v12;
    v21 = v15;
    v22 = v14;
    v16 = v7;
    [DiagnosticExtensionCaller getAttachmentsFrom:v16 forBundleID:0 withParameters:v8 queue:v10 reply:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v75 = [MEMORY[0x277CBEB58] set];
  v8 = diagextLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      *buf = 138412546;
      v89 = v7;
      v90 = 2048;
      v91 = [v5 count];
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Reply for DE %@, with %ld attachments", buf, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 138412546;
    v89 = v7;
    v90 = 2112;
    v91 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Reply for DE %@, with error:%@", buf, 0x16u);
  }

  if ([v6 code] == 45)
  {
    v10 = diagextLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v89 = v7;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "DE %@ is not available on this device. Marking as not required.", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB68] null];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];
    goto LABEL_10;
  }

LABEL_11:
  ++*(*(*(a1 + 80) + 8) + 24);
  v11 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_94;
  aBlock[3] = &unk_278CF0688;
  v70 = v11;
  v86 = v70;
  v74 = _Block_copy(aBlock);
  v71 = v5;
  if ([v5 count])
  {
    v12 = diagextLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 count];
      *buf = 134218242;
      v89 = v13;
      v90 = 2112;
      v91 = v7;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_INFO, "Processing %ld attachments from %@", buf, 0x16u);
    }

    v67 = a1;
    v68 = v7;
    v69 = v6;

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v14 = v5;
    v77 = [v14 countByEnumeratingWithState:&v81 objects:v98 count:16];
    v15 = 0;
    v16 = 0;
    if (v77)
    {
      v76 = *v82;
      v72 = v14;
      do
      {
        for (i = 0; i != v77; ++i)
        {
          if (*v82 != v76)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v81 + 1) + 8 * i);
          v19 = diagextLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [v18 deleteOnAttach];
            v21 = [v18 shouldCompress];
            v22 = [v18 modificationDate];
            v23 = [v18 filesize];
            *buf = 138413314;
            v89 = v18;
            v90 = 2112;
            v91 = v20;
            v92 = 2112;
            v93 = v21;
            v94 = 2112;
            v95 = v22;
            v96 = 2112;
            v97 = v23;
            _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "Processing %@ (deleteOnAttach:%@, shouldCompress:%@, modificationDate:%@, fileSize:%@)", buf, 0x34u);
          }

          if (v15)
          {
            v24 = [v18 modificationDate];
            if (v24)
            {
              v25 = v24;
              v26 = [v15 modificationDate];

              if (v26)
              {
                v27 = [v15 modificationDate];
                v28 = [v18 modificationDate];
                v29 = [v27 compare:v28];

                if (v29 == -1)
                {
                  v30 = v18;

                  v15 = v30;
                }
              }
            }
          }

          else
          {
            v15 = v18;
          }

          v31 = [v18 path];

          if (v31)
          {
            if (v16)
            {
              v16 = 1;
            }

            else
            {
              v32 = [v18 deleteOnAttach];
              v16 = [v32 BOOLValue];
            }

            v33 = [v18 path];
            v34 = [v33 path];
            v35 = [v34 length];

            if (v35)
            {
              v74[2](v74, v18);
              v36 = [v33 path];
              [v75 addObject:v36];

              v37 = diagextLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                [v18 deleteOnAttach];
                v38 = v73 = v15;
                v39 = [v18 shouldCompress];
                v40 = [v18 modificationDate];
                v41 = [v18 filesize];
                *buf = 138413314;
                v89 = v18;
                v90 = 2112;
                v91 = v38;
                v92 = 2112;
                v93 = v39;
                v94 = 2112;
                v95 = v40;
                v96 = 2112;
                v97 = v41;
                _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_INFO, "Adding to archive: %@ (deleteOnAttach:%@, shouldCompress:%@, modificationDate:%@, fileSize:%@)", buf, 0x34u);

                v14 = v72;
                v15 = v73;
              }
            }

            else
            {
              v37 = diagextLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_INFO, "Attachment did not have a path we could successfully determine.", buf, 2u);
              }
            }
          }
        }

        v77 = [v14 countByEnumeratingWithState:&v81 objects:v98 count:16];
      }

      while (v77);
    }

    v42 = v16;

    v7 = v68;
    v6 = v69;
    a1 = v67;
  }

  else
  {
    v42 = 0;
  }

  if ([v75 count])
  {
    v43 = diagextLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v89 = v75;
      _os_log_impl(&dword_241804000, v43, OS_LOG_TYPE_INFO, "Preparing to create archives with: %@", buf, 0xCu);
    }

    v44 = [*(a1 + 48) stringByAppendingFormat:@"-%@", *(a1 + 32)];
    v45 = [*(a1 + 56) destinationRootDirectory];
    v46 = [v45 stringByAppendingPathComponent:v44];

    v47 = diagextLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v75 count];
      *buf = 134218242;
      v89 = v48;
      v90 = 2112;
      v91 = v46;
      _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEFAULT, "Creating archive with %ld files at: %@", buf, 0x16u);
    }

    v49 = [v75 allObjects];
    v50 = [FileArchiver archiveWithPaths:v49 destinationDir:v46 deleteSource:v42 & 1];

    v51 = [v50 length];
    v52 = diagextLogHandle();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (v51)
    {
      if (v53)
      {
        *buf = 138412290;
        v89 = v44;
        _os_log_impl(&dword_241804000, v52, OS_LOG_TYPE_DEFAULT, "Archive creation for %@ was successful.", buf, 0xCu);
      }

      v87 = v50;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
      [*(a1 + 40) setObject:v54 forKeyedSubscript:*(a1 + 32)];
    }

    else
    {
      if (v53)
      {
        *buf = 138412290;
        v89 = v44;
        _os_log_impl(&dword_241804000, v52, OS_LOG_TYPE_DEFAULT, "Archive creation for %@ failed.", buf, 0xCu);
      }

      [*(a1 + 40) setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:*(a1 + 32)];
    }
  }

  v55 = diagextLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(*(*(a1 + 80) + 8) + 24);
    v57 = *(*(*(a1 + 88) + 8) + 24);
    *buf = 134218240;
    v89 = v56;
    v90 = 2048;
    v91 = v57;
    _os_log_impl(&dword_241804000, v55, OS_LOG_TYPE_DEFAULT, "Received %ld DE results. (expecting %ld total)", buf, 0x16u);
  }

  v58 = *(*(*(a1 + 80) + 8) + 24);
  v59 = *(*(*(a1 + 88) + 8) + 24);
  if (v58 >= v59)
  {
    if (*(a1 + 72))
    {
      v60 = diagextLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = *(a1 + 40);
        *buf = 138412290;
        v89 = v61;
        _os_log_impl(&dword_241804000, v60, OS_LOG_TYPE_INFO, "Calling reply block with resultDict %@.", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_101;
      block[3] = &unk_278CEFF50;
      v62 = *(a1 + 64);
      v80 = *(a1 + 72);
      v79 = *(a1 + 40);
      dispatch_async(v62, block);

      v58 = *(*(*(a1 + 80) + 8) + 24);
      v59 = *(*(*(a1 + 88) + 8) + 24);
    }

    if (v58 > v59)
    {
      v63 = diagextLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = *(*(*(a1 + 88) + 8) + 24);
        v65 = *(*(*(a1 + 80) + 8) + 24);
        *buf = 134218240;
        v89 = v64;
        v90 = 2048;
        v91 = v65;
        _os_log_impl(&dword_241804000, v63, OS_LOG_TYPE_ERROR, "How did we get more than %ld results??? (counted %ld)", buf, 0x16u);
      }
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

void __112__DiagnosticExtensionController_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_94(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [v3 sandboxExtensionHandleWithErrorOut:&v13];
  v5 = v13;
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v6 = diagextLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 path];
      v8 = [v7 path];
      v9 = [v5 localizedDescription];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_ERROR, "Could not consume extension handle for item with path '%@' due to error: %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end