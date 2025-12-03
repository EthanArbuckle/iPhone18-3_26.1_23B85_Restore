@interface VSBundleRecord
- (VSBundleRecord)initWithBundleID:(id)d;
- (id)bundleVersion;
@end

@implementation VSBundleRecord

- (VSBundleRecord)initWithBundleID:(id)d
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v44.receiver = self;
  v44.super_class = VSBundleRecord;
  v5 = [(VSBundleRecord *)&v44 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    lsQueue = v5->_lsQueue;
    v5->_lsQueue = v6;

    v8 = v5->_lsQueue;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(NSOperationQueue *)v8 setName:v10];

    [(NSOperationQueue *)v5->_lsQueue setMaxConcurrentOperationCount:1];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__4;
    v42 = __Block_byref_object_dispose__4;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__4;
    v36 = __Block_byref_object_dispose__4;
    v37 = 0;
    v11 = objc_alloc_init(VSWaitGroup);
    [(VSWaitGroup *)v11 enter];
    v12 = v5->_lsQueue;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __35__VSBundleRecord_initWithBundleID___block_invoke;
    v27 = &unk_278B741E8;
    v30 = &v32;
    v13 = dCopy;
    v28 = v13;
    v31 = &v38;
    v14 = v11;
    v29 = v14;
    [(NSOperationQueue *)v12 addOperationWithBlock:&v24];
    if (![(VSWaitGroup *)v14 waitWithMilliseconds:5000, v24, v25, v26, v27])
    {
      v15 = VSDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v13;
        _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "LaunchServices timed out while obtaining LSBundleRecord for bundleID %@", buf, 0xCu);
      }
    }

    if (v33[5])
    {
      goto LABEL_14;
    }

    if (v39[5])
    {
      v16 = VSDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v39[5];
        *buf = 138412546;
        v46 = v13;
        v47 = 2112;
        v48 = v17;
        v18 = "Received error while obtaining LSBundleRecord for bundleID %@: %@";
        v19 = v16;
        v20 = 22;
LABEL_12:
        _os_log_impl(&dword_23AB8E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }

    else
    {
      v16 = VSDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v13;
        v18 = "No LSBundleRecord found for bundleID %@";
        v19 = v16;
        v20 = 12;
        goto LABEL_12;
      }
    }

LABEL_14:
    v21 = [v33[5] copy];
    record = v5->_record;
    v5->_record = v21;

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }

  return v5;
}

uint64_t __35__VSBundleRecord_initWithBundleID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v2 allowPlaceholder:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 40) leave];
}

- (id)bundleVersion
{
  record = [(VSBundleRecord *)self record];

  if (record)
  {
    record2 = [(VSBundleRecord *)self record];
    bundleVersion = [record2 bundleVersion];
  }

  else
  {
    bundleVersion = 0;
  }

  return bundleVersion;
}

@end