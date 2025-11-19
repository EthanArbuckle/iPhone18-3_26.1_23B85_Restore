@interface CrashReportOutlet
- (BOOL)publishReportForCase:(id)a3 options:(id)a4;
- (id)descriptiveFilenameWithPrefix:(id)a3 domain:(id)a4 process:(id)a5;
@end

@implementation CrashReportOutlet

- (id)descriptiveFilenameWithPrefix:(id)a3 domain:(id)a4 process:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v10 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"+"];

  v11 = v7;
  if ([v9 length])
  {
    v11 = v7;
    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v7, v9, v10];
    }
  }

  return v11;
}

- (BOOL)publishReportForCase:(id)a3 options:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 dampeningType] == -1)
  {
    v8 = diagcaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "Skip publishing report to CrashReporter since this is a transient case.";
LABEL_18:
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    }
  }

  else
  {
    v6 = [v5 writeIPSFile];
    v7 = diagcaseLogHandle();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = [v5 caseId];
        v10 = [v9 UUIDString];
        *buf = 138412290;
        v41 = v10;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "Publishing report of case %@ to CrashReporter", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CBEB38] dictionary];
      v11 = [v5 signature];
      [v8 setObject:v11 forKeyedSubscript:@"signature"];

      v12 = [v5 events];
      [v8 setObject:v12 forKeyedSubscript:@"events"];

      v13 = [v5 attachments];
      [v8 setObject:v13 forKeyedSubscript:@"attachments"];

      v14 = MEMORY[0x277CBEAC0];
      v15 = [v5 caseDampeningTypeString];
      v16 = [v5 caseClosureTypeString];
      v17 = [v14 dictionaryWithObjectsAndKeys:{v15, @"dampening_type", v16, @"closure_type", 0}];
      [v8 setObject:v17 forKeyedSubscript:@"case_status"];

      v18 = [MEMORY[0x277CBEB38] dictionary];
      v19 = [v5 caseId];
      v20 = [v19 UUIDString];

      if (v20)
      {
        v21 = [v5 caseId];
        v22 = [v21 UUIDString];
        [v18 setObject:v22 forKey:@"caseID"];
      }

      [v5 caseOpenedTime];
      if (v23 != 0.0)
      {
        v24 = MEMORY[0x277CCABB0];
        [v5 caseOpenedTime];
        v25 = [v24 numberWithDouble:?];
        [v18 setObject:v25 forKey:@"triggerTime"];
      }

      [v8 setObject:v18 forKeyedSubscript:@"case_header"];
      v26 = sanitizedJSONCollectionObject(v8, 1);
      if (![MEMORY[0x277CCAAA0] isValidJSONObject:v26])
      {
        v28 = diagcaseLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v5;
          v42 = 2112;
          v43 = v26;
          _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "CrashReport content dictionary for case %@ is not JSON compatible. (content=%@)", buf, 0x16u);
        }

        v30 = 0;
        goto LABEL_27;
      }

      v39 = 0;
      v27 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v26 options:0 error:&v39];
      v28 = v39;
      if (v28)
      {
        v29 = diagcaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v41 = v5;
          v42 = 2112;
          v43 = v28;
          v44 = 2112;
          v45 = v26;
          _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_ERROR, "Failed JSON serialization of CrashReport content dictionary for case %@: %@ (content=%@)", buf, 0x20u);
        }

        v30 = 0;
      }

      else
      {
        if (!v27)
        {
          v30 = 0;
          goto LABEL_26;
        }

        v37 = [v5 signature];
        v32 = [v37 objectForKeyedSubscript:@"domain"];
        v33 = [v5 signature];
        v34 = [v33 objectForKeyedSubscript:@"detected"];
        v29 = [(CrashReportOutlet *)self descriptiveFilenameWithPrefix:@"AutoBugCapture" domain:v32 process:v34];

        v38 = v27;
        v30 = OSAWriteLogForSubmission();
      }

LABEL_26:
LABEL_27:

      goto LABEL_28;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "Skip publishing report to CrashReporter since we surpassed the daily file count limit.";
      goto LABEL_18;
    }
  }

  v30 = 0;
LABEL_28:

  v35 = *MEMORY[0x277D85DE8];
  return v30;
}

@end