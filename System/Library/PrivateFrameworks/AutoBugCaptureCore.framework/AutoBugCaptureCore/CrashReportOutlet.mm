@interface CrashReportOutlet
- (BOOL)publishReportForCase:(id)case options:(id)options;
- (id)descriptiveFilenameWithPrefix:(id)prefix domain:(id)domain process:(id)process;
@end

@implementation CrashReportOutlet

- (id)descriptiveFilenameWithPrefix:(id)prefix domain:(id)domain process:(id)process
{
  prefixCopy = prefix;
  processCopy = process;
  v9 = [domain stringByReplacingOccurrencesOfString:@" " withString:@"+"];
  v10 = [processCopy stringByReplacingOccurrencesOfString:@" " withString:@"+"];

  v11 = prefixCopy;
  if ([v9 length])
  {
    v11 = prefixCopy;
    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", prefixCopy, v9, v10];
    }
  }

  return v11;
}

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  v46 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  if ([caseCopy dampeningType] == -1)
  {
    dictionary = diagcaseLogHandle();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "Skip publishing report to CrashReporter since this is a transient case.";
LABEL_18:
      _os_log_impl(&dword_241804000, dictionary, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    }
  }

  else
  {
    writeIPSFile = [caseCopy writeIPSFile];
    v7 = diagcaseLogHandle();
    dictionary = v7;
    if (writeIPSFile)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        caseId = [caseCopy caseId];
        uUIDString = [caseId UUIDString];
        *buf = 138412290;
        v41 = uUIDString;
        _os_log_impl(&dword_241804000, dictionary, OS_LOG_TYPE_DEBUG, "Publishing report of case %@ to CrashReporter", buf, 0xCu);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      signature = [caseCopy signature];
      [dictionary setObject:signature forKeyedSubscript:@"signature"];

      events = [caseCopy events];
      [dictionary setObject:events forKeyedSubscript:@"events"];

      attachments = [caseCopy attachments];
      [dictionary setObject:attachments forKeyedSubscript:@"attachments"];

      v14 = MEMORY[0x277CBEAC0];
      caseDampeningTypeString = [caseCopy caseDampeningTypeString];
      caseClosureTypeString = [caseCopy caseClosureTypeString];
      v17 = [v14 dictionaryWithObjectsAndKeys:{caseDampeningTypeString, @"dampening_type", caseClosureTypeString, @"closure_type", 0}];
      [dictionary setObject:v17 forKeyedSubscript:@"case_status"];

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      caseId2 = [caseCopy caseId];
      uUIDString2 = [caseId2 UUIDString];

      if (uUIDString2)
      {
        caseId3 = [caseCopy caseId];
        uUIDString3 = [caseId3 UUIDString];
        [dictionary2 setObject:uUIDString3 forKey:@"caseID"];
      }

      [caseCopy caseOpenedTime];
      if (v23 != 0.0)
      {
        v24 = MEMORY[0x277CCABB0];
        [caseCopy caseOpenedTime];
        v25 = [v24 numberWithDouble:?];
        [dictionary2 setObject:v25 forKey:@"triggerTime"];
      }

      [dictionary setObject:dictionary2 forKeyedSubscript:@"case_header"];
      v26 = sanitizedJSONCollectionObject(dictionary, 1);
      if (![MEMORY[0x277CCAAA0] isValidJSONObject:v26])
      {
        v28 = diagcaseLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = caseCopy;
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
          v41 = caseCopy;
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

        signature2 = [caseCopy signature];
        v32 = [signature2 objectForKeyedSubscript:@"domain"];
        signature3 = [caseCopy signature];
        v34 = [signature3 objectForKeyedSubscript:@"detected"];
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