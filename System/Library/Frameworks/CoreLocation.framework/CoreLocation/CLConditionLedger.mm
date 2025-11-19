@interface CLConditionLedger
- (BOOL)addRecordForMonitoring:(id)a3 identifier:(id)a4 persist:(BOOL)a5;
- (BOOL)directoryExists:(id)a3;
- (BOOL)readConditionsFromFile;
- (BOOL)removeRecordFromMonitoringWithIdentifier:(id)a3;
- (BOOL)writeToFile;
- (CLConditionLedger)initWithStoreType:(int64_t)a3 domain:(int64_t)a4 monitorConfiguration:(id)a5;
- (void)dealloc;
- (void)deleteLedgerFile;
- (void)performMigration;
- (void)setLedgerForType:(int64_t)a3 domain:(int64_t)a4 monitor:(id)a5 client:(id)a6 path:(id)a7;
- (void)updateEvent:(id)a3 forIdentifier:(id)a4;
@end

@implementation CLConditionLedger

- (CLConditionLedger)initWithStoreType:(int64_t)a3 domain:(int64_t)a4 monitorConfiguration:(id)a5
{
  v15.receiver = self;
  v15.super_class = CLConditionLedger;
  v9 = [(CLConditionLedger *)&v15 init];
  if (v9)
  {
    v10 = [a5 objectForKeyedSubscript:@"kCLMonitorLedgerPathKey"];
    v11 = [a5 objectForKeyedSubscript:@"kCLMonitorLedgerNameKey"];
    v12 = [a5 objectForKeyedSubscript:@"kCLMonitorLedgerAccessKey"];
    v13 = [a5 objectForKeyedSubscript:@"kCLMonitorLedgerProcessNameKey"];
    if (v11)
    {
      if (v12)
      {
LABEL_4:
        [(CLConditionLedger *)v9 setLedgerForType:a3 domain:a4 monitor:v11 client:v13 path:v10];
        v9->_recordTable = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9->_encryptionKey = [v12 copy];
        v9->_ledgerName = [v11 copy];
        v9->_readSucceeded = [(CLConditionLedger *)v9 readConditionsFromFile];
        [(CLConditionLedger *)v9 performMigration];
        return v9;
      }
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      if (v12)
      {
        goto LABEL_4;
      }
    }

    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_4;
  }

  return v9;
}

- (void)dealloc
{
  if (![(NSDictionary *)[(CLConditionLedger *)self allMonitoringRecordsByIdentifier] count])
  {
    [(CLConditionLedger *)self deleteLedgerFile];
  }

  self->_ledgerFile = 0;
  self->_encryptionKey = 0;

  self->_recordTable = 0;
  self->_ledgerName = 0;
  v3.receiver = self;
  v3.super_class = CLConditionLedger;
  [(CLConditionLedger *)&v3 dealloc];
}

- (void)performMigration
{
  if ([(CLConditionLedger *)self shouldMigrate])
  {

    MEMORY[0x1EEE66B58](self, sel_setLedgerVersionNumber_);
  }
}

- (void)setLedgerForType:(int64_t)a3 domain:(int64_t)a4 monitor:(id)a5 client:(id)a6 path:(id)a7
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(CLConditionLedger *)self ledgerFile])
  {
    goto LABEL_41;
  }

  v14 = _sandbox_in_a_container();
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.monitor", a5];
  if (a3 == 1 && a4 == 1)
  {
    if (!a7)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:a7 isDirectory:1 relativeToURL:0];
    v17 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F0E6F140];
    p_info = (CLLocationManagerInternal + 32);
    v19 = (CLLocationManagerInternal + 32);
    goto LABEL_29;
  }

  v17 = [MEMORY[0x1E696AD60] stringWithString:@"CoreLocation/"];
  if (a3)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v20 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Custom store type cannot use on NSSearchPathDirectory}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v21 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Custom store type cannot use on NSSearchPathDirectory", "{msg%{public}.0s:Custom store type cannot use on NSSearchPathDirectory}", buf, 0x12u);
    }

    v22 = 5;
  }

  else
  {
    if (v14)
    {
      v22 = 9;
    }

    else
    {
      v22 = 5;
    }

    p_info = CLLocationManagerInternal.info;
  }

  if (a4)
  {
    v23 = 8;
  }

  else
  {
    v23 = 1;
  }

  v16 = [(NSArray *)[(NSFileManager *)[(CLConditionLedger *)self defaultFileManager] URLsForDirectory:v22 inDomains:v23] firstObject];
  v19 = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v24 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2114;
    v46 = a6;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor App is not sanboxed, client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v25 = [v16 URLByAppendingPathComponent:v17];
  if (![(CLConditionLedger *)self directoryExists:v25])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v36 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v25;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "clDirExists";
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v37 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v25;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "clDirExists";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to create intermediate dir", "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v38 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v25;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "clDirExists";
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

LABEL_74:
    abort_report_np();
  }

  if (v14)
  {
LABEL_29:
    v26 = 0x1E696A000;
    goto LABEL_35;
  }

  v26 = 0x1E696A000uLL;
  [v17 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@/", a6)}];
  v27 = [v16 URLByAppendingPathComponent:v17];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v28 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2114;
    v46 = v27;
    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor process is not containerized, path:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if (![(CLConditionLedger *)self directoryExists:v27])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v39 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v27;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "processDirExists";
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v40 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v27;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "processDirExists";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to create dir", "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v41 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2114;
      v46 = v27;
      v47 = 2082;
      v48 = "assert";
      v49 = 2081;
      v50 = "processDirExists";
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    goto LABEL_74;
  }

LABEL_35:
  if (!v16)
  {
    if (v19[17] != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v33 = p_info[18];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "basePath";
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (v19[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v34 = p_info[18];
    if (os_signpost_enabled(v34))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "basePath";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to determine the path to store conditions", "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (v19[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v35 = p_info[18];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v43 = 2082;
      v44 = "";
      v45 = 2082;
      v46 = "assert";
      v47 = 2081;
      v48 = "basePath";
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_74;
  }

  [v17 appendString:{objc_msgSend(*(v26 + 3776), "stringWithFormat:", @"%@", v15)}];
  v29 = [v16 URLByAppendingPathComponent:v17];
  if (v19[17] != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v30 = p_info[18];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = [objc_msgSend(v29 "path")];
    *buf = 68289282;
    v43 = 2082;
    v44 = "";
    v45 = 2082;
    v46 = v31;
    _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#monitor Conditions store, path:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  self->_ledgerFile = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(v29 isDirectory:{"path"), 0}];
LABEL_41:
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)directoryExists:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [(CLConditionLedger *)self defaultFileManager];
  if (qword_1ED5192E8 != -1)
  {
    dispatch_once(&qword_1ED5192E8, &unk_1F0E6DC28);
  }

  if (-[NSFileManager createDirectoryAtURL:withIntermediateDirectories:attributes:error:](v4, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", a3, 0, qword_1ED5192E0, &v9) || [v9 code] == 516)
  {
    result = 1;
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v7 = qword_1ED519090;
    v8 = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = a3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor #warning unable to check for directory, error:%{public, location:escape_only}@, pathURL:%{public, location:escape_only}@}", buf, 0x26u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)readConditionsFromFile
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [(CLConditionLedger *)self ledgerFile];
  if (!v3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v54 = 2082;
      v55 = "";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor path is nil for ledger file}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v14 = qword_1ED519090;
    v11 = os_signpost_enabled(qword_1ED519090);
    if (!v11)
    {
      goto LABEL_54;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v54 = 2082;
    v55 = "";
    v15 = "#monitor path is nil for ledger file";
    v16 = "{msg%{public}.0s:#monitor path is nil for ledger file}";
    v17 = v14;
    v18 = 18;
LABEL_45:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, v16, buf, v18);
    goto LABEL_46;
  }

  v4 = v3;
  v52 = 0;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:&v52];
  if (v52 && [v52 code] != 260)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v19 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v20 = [(NSString *)[(NSURL *)v4 path] UTF8String];
      *buf = 68289538;
      *&buf[4] = 0;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      *v57 = v20;
      *&v57[8] = 2114;
      *&v57[10] = v52;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor #Warning Unable to read the contents of file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v21 = qword_1ED519090;
    v11 = os_signpost_enabled(qword_1ED519090);
    if (!v11)
    {
      goto LABEL_54;
    }

    v22 = [(NSString *)[(NSURL *)v4 path] UTF8String];
    *buf = 68289538;
    *&buf[4] = 0;
    v54 = 2082;
    v55 = "";
    v56 = 2082;
    *v57 = v22;
    *&v57[8] = 2114;
    *&v57[10] = v52;
    v15 = "#monitor #Warning Unable to read the contents of file";
    v16 = "{msg%{public}.0s:#monitor #Warning Unable to read the contents of file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}@}";
LABEL_44:
    v17 = v21;
    v18 = 38;
    goto LABEL_45;
  }

  if (!v5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v23 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NSString *)[(NSURL *)v4 path] UTF8String];
      *buf = 68289282;
      v54 = 2082;
      v55 = "";
      v56 = 2082;
      *v57 = v24;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor no conditions were saved, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v6 = [v5 length] - 32;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v6];
  v8 = [v5 bytes];
  [(NSData *)self->_encryptionKey bytes];
  [(NSData *)self->_encryptionKey length];
  v46 = v8 + 16 + v6;
  v47 = 16;
  v44 = v6;
  v45 = [v7 mutableBytes];
  v9 = CCCryptorGCMOneshotDecrypt();
  if (!v9)
  {
    if ((atomic_load_explicit(&qword_1ED5192D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5192D8))
    {
      v51 = MEMORY[0x1E695DFD8];
      v50 = objc_opt_class();
      v49 = objc_opt_class();
      v48 = objc_opt_class();
      v36 = objc_opt_class();
      v37 = objc_opt_class();
      v38 = objc_opt_class();
      v39 = objc_opt_class();
      v40 = objc_opt_class();
      v41 = objc_opt_class();
      v42 = objc_opt_class();
      qword_1ED5192D0 = [v51 setWithObjects:{v50, v49, v48, v36, v37, v38, v39, v40, v41, v42, objc_opt_class(), 0}];
      __cxa_guard_release(&qword_1ED5192D8);
    }

    v25 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:qword_1ED5192D0 fromData:v7 error:{&v52, v44, v45, v46, v47}];
    if (!v52)
    {
      v26 = v25;
      if (v25)
      {
        v27 = [MEMORY[0x1E695DF90] dictionary];
        [v27 addEntriesFromDictionary:v26];
        if ([v26 objectForKeyedSubscript:@"kCLLedgerVersionNumber"])
        {
          self->_ledgerVersionNumber = [v26 objectForKeyedSubscript:@"kCLLedgerVersionNumber"];
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6DC48);
          }

          v28 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [(CLConditionLedger *)self ledgerVersionNumber];
            *buf = 68289282;
            v54 = 2082;
            v55 = "";
            v56 = 2114;
            *v57 = v29;
            _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Found ledger version number, ledgerVersion:%{public, location:escape_only}@}", buf, 0x1Cu);
          }

          [v27 removeObjectForKey:@"kCLLedgerVersionNumber"];
        }

        else
        {
          self->_ledgerVersionNumber = &unk_1F0E8CD60;
        }

        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
        }

        v33 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v27 count];
          *buf = 68289282;
          v54 = 2082;
          v55 = "";
          v56 = 2050;
          *v57 = v34;
          _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor file has conditions saved, count:%{public}ld}", buf, 0x1Cu);
        }

        [(NSMutableDictionary *)self->_recordTable addEntriesFromDictionary:v27];
LABEL_53:
        LOBYTE(v11) = 1;
        goto LABEL_54;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v30 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v31 = [(NSString *)[(NSURL *)v4 path] UTF8String];
      *buf = 68289539;
      *&buf[4] = 0;
      v54 = 2082;
      v55 = "";
      v56 = 2081;
      *v57 = v31;
      *&v57[8] = 2114;
      *&v57[10] = v52;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor #Warning unable to read conditions from file, file:%{private, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v21 = qword_1ED519090;
    v11 = os_signpost_enabled(qword_1ED519090);
    if (!v11)
    {
      goto LABEL_54;
    }

    v32 = [(NSString *)[(NSURL *)v4 path] UTF8String];
    *buf = 68289539;
    *&buf[4] = 0;
    v54 = 2082;
    v55 = "";
    v56 = 2081;
    *v57 = v32;
    *&v57[8] = 2114;
    *&v57[10] = v52;
    v15 = "#monitor #Warning unable to read conditions from file";
    v16 = "{msg%{public}.0s:#monitor #Warning unable to read conditions from file, file:%{private, location:escape_only}s, error:%{public, location:escape_only}@}";
    goto LABEL_44;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v10 = qword_1ED519090;
  v11 = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v12 = [(CLConditionLedger *)self ledgerFile:v44];
    *buf = 68289538;
    *&buf[4] = 0;
    v54 = 2082;
    v55 = "";
    v56 = 1026;
    *v57 = v9;
    *&v57[4] = 2114;
    *&v57[6] = v12;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor #Warning unable to decrypt the conditions, error:%{public}d, ledger:%{public, location:escape_only}@}", buf, 0x22u);
LABEL_46:
    LOBYTE(v11) = 0;
  }

LABEL_54:
  v35 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)writeToFile
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(CLConditionLedger *)self ledgerFile];
  if (!v3)
  {
    goto LABEL_42;
  }

  if (![(NSDictionary *)[(CLConditionLedger *)self allMonitoringRecordsByIdentifier] count])
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6DC48);
    }

    v24 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2114;
      v41 = [(NSURL *)[(CLConditionLedger *)self ledgerFile] path];
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#monitor nothing to write; Removing existing file, file:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    [(CLConditionLedger *)self deleteLedgerFile];
    goto LABEL_26;
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 addEntriesFromDictionary:{-[CLConditionLedger allMonitoringRecordsByIdentifier](self, "allMonitoringRecordsByIdentifier")}];
  [v4 setObject:-[CLConditionLedger ledgerVersionNumber](self forKey:{"ledgerVersionNumber"), @"kCLLedgerVersionNumber"}];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  v35 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v35];
  if (v35 || (v7 = v6) == 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v25 = qword_1ED519090;
    LODWORD(v3) = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      v26 = [(NSURL *)[(CLConditionLedger *)self ledgerFile] path];
      *buf = 68289538;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 2114;
      v41 = v26;
      v42 = 2114;
      v43 = v35;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Unable to store conditions, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
LABEL_41:
      LOBYTE(v3) = 0;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v8 = [v6 length];
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8 + 32];
  v10 = [v9 mutableBytes];
  v11 = &v10[[v7 length] + 16];
  v12 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, v10);
  if (v12)
  {
    v13 = v12;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 1026;
      LODWORD(v41) = v13;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unable to init random vector, error:%{public}d}", buf, 0x18u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v15 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 1026;
      LODWORD(v41) = v13;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor unable to init random vector", "{msg%{public}.0s:#monitor unable to init random vector, error:%{public}d}", buf, 0x18u);
    }
  }

  [(NSData *)self->_encryptionKey bytes];
  [(NSData *)self->_encryptionKey length];
  [v7 bytes];
  v34 = [v7 length];
  v16 = CCCryptorGCMOneshotEncrypt();
  if (v16)
  {
    v17 = v16;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 1026;
      LODWORD(v41) = v17;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unable to encrypt the conditions, error:%{public}d}", buf, 0x18u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v19 = qword_1ED519090;
    LODWORD(v3) = os_signpost_enabled(qword_1ED519090);
    if (v3)
    {
      *buf = 68289282;
      v37 = 0;
      v38 = 2082;
      v39 = "";
      v40 = 1026;
      LODWORD(v41) = v17;
      v20 = "#monitor unable to encrypt the conditions";
      v21 = "{msg%{public}.0s:#monitor unable to encrypt the conditions, error:%{public}d}";
      v22 = v19;
      v23 = 24;
LABEL_40:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v20, v21, buf, v23);
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v27 = [v9 writeToURL:-[CLConditionLedger ledgerFile](self options:"ledgerFile" error:{v34, v10 + 16, v11, 16), 1073741825, &v35}];
  if (!v35 && (v27 & 1) != 0)
  {
LABEL_26:
    LOBYTE(v3) = 1;
    goto LABEL_42;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v28 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v29 = [(NSURL *)[(CLConditionLedger *)self ledgerFile] path];
    *buf = 68289538;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v29;
    v42 = 2114;
    v43 = v35;
    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#monitor #Warning unable to write to file, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }
  }

  v30 = qword_1ED519090;
  LODWORD(v3) = os_signpost_enabled(qword_1ED519090);
  if (v3)
  {
    v31 = [(NSURL *)[(CLConditionLedger *)self ledgerFile] path];
    *buf = 68289538;
    v37 = 0;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v31;
    v42 = 2114;
    v43 = v35;
    v20 = "#monitor #Warning unable to write to file";
    v21 = "{msg%{public}.0s:#monitor #Warning unable to write to file, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}";
    v22 = v30;
    v23 = 38;
    goto LABEL_40;
  }

LABEL_42:
  v32 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)deleteLedgerFile
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 0;
  [(NSFileManager *)[(CLConditionLedger *)self defaultFileManager] removeItemAtURL:[(CLConditionLedger *)self ledgerFile] error:&v6];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CLConditionLedger *)self ledgerFile];
    *buf = 68289538;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor deleting, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)addRecordForMonitoring:(id)a3 identifier:(id)a4 persist:(BOOL)a5
{
  v5 = a5;
  [(NSMutableDictionary *)self->_recordTable setObject:a3 forKeyedSubscript:a4];
  if (!v5)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel_writeToFile);
}

- (BOOL)removeRecordFromMonitoringWithIdentifier:(id)a3
{
  [(NSMutableDictionary *)self->_recordTable removeObjectForKey:a3];

  return MEMORY[0x1EEE66B58](self, sel_writeToFile);
}

- (void)updateEvent:(id)a3 forIdentifier:(id)a4
{
  [-[NSMutableDictionary objectForKeyedSubscript:](self->_recordTable objectForKeyedSubscript:{a4), "updateEvent:", a3}];

  MEMORY[0x1EEE66B58](self, sel_writeToFile);
}

@end