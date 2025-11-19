@interface DiagnosticCaseSummaryAnalytics
+ (id)listSummaryItemFromCaseSummaryDictionary:(id)a3;
+ (id)pbRequestForCases:(id)a3;
+ (id)stringRepresentationOfAttachmentsWithSize:(id)a3;
+ (void)extractPbAttachmentsFromString:(id)a3 completion:(id)a4;
- (DiagnosticCaseSummaryAnalytics)init;
- (id)diagnosticCaseSummaryDictionaryForIdentifier:(id)a3 properties:(id)a4;
- (id)fetchCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5;
- (id)fetchCaseSummariesWithIdentifiers:(id)a3;
- (int64_t)removeAllDiagnosticCaseSummaries;
- (int64_t)removeDiagnosticCaseSummariesWithState:(signed __int16)a3 olderThan:(unint64_t)a4;
- (void)insertEntityForDiagnosticCase:(id)a3;
- (void)updateSubmittedCases:(id)a3;
@end

@implementation DiagnosticCaseSummaryAnalytics

- (DiagnosticCaseSummaryAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v6.receiver = self;
  v6.super_class = DiagnosticCaseSummaryAnalytics;
  v4 = [(ObjectAnalytics *)&v6 initWithWorkspace:v3 entityName:@"DiagnosticCaseSummary" withCache:1];

  return v4;
}

- (void)insertEntityForDiagnosticCase:(id)a3
{
  v4 = a3;
  v22 = [(ObjectAnalytics *)self createEntity];
  v5 = [v4 caseStorage];
  v6 = [v5 caseID];
  [v22 setCaseID:v6];

  v7 = [v5 caseGroupID];
  [v22 setCaseGroupID:v7];

  v8 = [v5 timeStamp];
  [v22 setCaseCreatedTime:v8];

  v9 = [v5 caseClosedTime];
  [v22 setCaseClosedTime:v9];

  v10 = [v5 caseDomain];
  [v22 setCaseDomain:v10];

  v11 = [v5 caseType];
  [v22 setCaseType:v11];

  v12 = [v5 caseSubtype];
  [v22 setCaseSubtype:v12];

  v13 = [v5 caseSubtypeContext];
  [v22 setCaseSubtypeContext:v13];

  v14 = [v5 caseDetectedProcess];
  [v22 setCaseDetectedProcess:v14];

  v15 = [v5 caseEffectiveProcess];
  [v22 setCaseEffectiveProcess:v15];

  v16 = [v5 caseRelatedProcesses];
  [v22 setCaseRelatedProcesses:v16];

  v17 = [v5 caseThresholdValues];
  [v22 setCaseThresholdValues:v17];

  [v22 setCaseClosureType:{objc_msgSend(v5, "caseClosureType")}];
  [v22 setCaseDampeningType:{objc_msgSend(v5, "caseDampeningType")}];
  v18 = [v5 caseContext];
  [v22 setCaseContext:v18];

  [v22 setRemoteTrigger:{objc_msgSend(v5, "remoteTrigger")}];
  v19 = [v5 buildVariant];
  [v22 setBuildVariant:v19];

  v20 = [v5 buildVersion];
  [v22 setBuildVersion:v20];

  v21 = [v4 stringRepresentationOfAttachmentsWithSize];

  [v22 setCaseAttachments:v21];
}

- (void)updateSubmittedCases:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = summaryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Update caseSummaryState to Submitted for %ld case(s)", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setCaseSummaryState:{1, v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)removeDiagnosticCaseSummariesWithState:(signed __int16)a3 olderThan:(unint64_t)a4
{
  v4 = a3;
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = (86400 * a4);
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:-v6];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"caseCreatedTime", v8];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSummaryState == %d", v4];
  v11 = MEMORY[0x277CCA920];
  v17[0] = v9;
  v17[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [(ObjectAnalytics *)self removeEntitiesMatching:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int64_t)removeAllDiagnosticCaseSummaries
{
  v3.receiver = self;
  v3.super_class = DiagnosticCaseSummaryAnalytics;
  return [(ObjectAnalytics *)&v3 removeEntitiesMatching:0];
}

- (id)fetchCaseSummariesWithIdentifiers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 length])
        {
          v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", v11];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v13 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5];
    v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"caseCreatedTime" ascending:0];
    v15 = +[DiagnosticCaseSummaryAnalytics listCaseSummaryProperties];
    v24 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v17 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v15 predicate:v13 sortDescriptors:v16 limit:0];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)fetchCaseSummariesOfType:(id)a3 fromIdentifier:(id)a4 count:(unint64_t)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  if ([v8 caseInsensitiveCompare:@"pending"])
  {
    if ([v8 caseInsensitiveCompare:@"submitted"])
    {
      goto LABEL_6;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSummaryState == %d", v11];
  [v10 addObject:v12];

LABEL_6:
  v13 = +[DiagnosticCaseSummaryAnalytics listCaseSummaryProperties];
  if ([v9 length])
  {
    v14 = [(DiagnosticCaseSummaryAnalytics *)self diagnosticCaseSummaryDictionaryForIdentifier:v9 properties:v13];
    if ([v14 count])
    {
      v15 = [v14 firstObject];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"caseCreatedTime"];
        v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseCreatedTime < %@", v17];
        [v10 addObject:v18];
      }
    }
  }

  if ([v10 count])
  {
    v19 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"caseCreatedTime" ascending:0];
  v25[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v22 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v13 predicate:v19 sortDescriptors:v21 limit:a5];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)diagnosticCaseSummaryDictionaryForIdentifier:(id)a3 properties:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"caseID == %@", a3];
  v9 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v7 predicate:v8];

  return v9;
}

+ (id)listSummaryItemFromCaseSummaryDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = +[DiagnosticCaseSummaryAnalytics listCaseSummaryProperties];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(__CFString *)v11 integerValue];
            if ([v10 isEqualToString:@"caseDampeningType"])
            {
              v13 = [DiagnosticCase descriptionForDampeningType:v12];
              [v4 setObject:v13 forKeyedSubscript:v10];

              goto LABEL_19;
            }

            if ([v10 isEqualToString:@"caseSummaryState"])
            {
              if (v12)
              {
                v15 = @"Submitted";
              }

              else
              {
                v15 = @"Pending";
              }

              v14 = v4;
              goto LABEL_18;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [(__CFString *)v11 length])
            {
              v14 = v4;
              v15 = v11;
LABEL_18:
              [v14 setObject:v15 forKeyedSubscript:v10];
            }
          }
        }

LABEL_19:
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)pbRequestForCases:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SystemProperties sharedInstance];
  v5 = objc_opt_new();
  [v5 setVer:1];
  v6 = [v4 productType];
  [v5 setDeviceModel:v6];

  v7 = [v4 buildPlatform];
  [v5 setBuildPlatform:v7];

  v55 = v4;
  v8 = [v4 deviceClassString];
  v59 = v5;
  [v5 setDeviceCategory:v8];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v3;
  v60 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
  if (v60)
  {
    v9 = *v65;
    v56 = *v65;
    do
    {
      v10 = 0;
      do
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v10;
        v11 = *(*(&v64 + 1) + 8 * v10);
        v12 = objc_opt_new();
        v13 = [v11 buildVersion];
        [v12 setBuild:v13];

        v14 = [v11 buildVariant];
        [v12 setBuildVariant:v14];

        v15 = [v11 caseDomain];
        [v12 setDomain:v15];

        v16 = [v11 caseType];
        [v12 setType:v16];

        v17 = [v11 caseSubtype];
        [v12 setSubtype:v17];

        v18 = [v11 caseSubtypeContext];
        [v12 setSubtypeContext:v18];

        v19 = [v11 caseDetectedProcess];
        [v12 setProcess:v19];

        v20 = [v11 caseID];
        [v12 setCaseIdentifier:v20];

        [v12 setRemoteTrigger:{objc_msgSend(v11, "remoteTrigger")}];
        v21 = [v11 caseCreatedTime];
        [v21 timeIntervalSince1970];
        [v12 setCaseStartTime:?];

        v22 = [v11 caseClosedTime];
        [v22 timeIntervalSince1970];
        [v12 setCaseClosedTime:?];

        v23 = +[DiagnosticCase descriptionForClosureType:](DiagnosticCase, "descriptionForClosureType:", [v11 caseClosureType]);
        [v12 setCaseClosureType:v23];

        v24 = +[DiagnosticCase descriptionForDampeningType:](DiagnosticCase, "descriptionForDampeningType:", [v11 caseDampeningType]);
        [v12 setCaseDampeningType:v24];

        v25 = [v11 caseContext];
        v26 = [v25 length];

        if (v26)
        {
          v27 = [v11 caseContext];
          [v12 setCaseContext:v27];
        }

        v28 = [v11 caseEffectiveProcess];
        v29 = [v28 length];

        if (v29)
        {
          v30 = [v11 caseEffectiveProcess];
          [v12 setCaseEffectiveProcess:v30];
        }

        v31 = [v11 caseGroupID];
        v32 = [v31 length];

        if (v32)
        {
          v33 = [v11 caseGroupID];
          [v12 setCaseGroupIdentifier:v33];
        }

        v34 = [v11 caseRelatedProcesses];
        v35 = [v34 length];

        if (v35)
        {
          v36 = [v11 caseRelatedProcesses];
          [v12 setCaseRelatedProcesses:v36];
        }

        v37 = [v11 caseThresholdValues];
        v38 = [v37 length];

        if (v38)
        {
          v39 = [v11 caseThresholdValues];
          [v12 setCaseThresholdValues:v39];
        }

        v40 = [v11 caseAttachments];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __52__DiagnosticCaseSummaryAnalytics_pbRequestForCases___block_invoke;
        v62[3] = &unk_278CF0D80;
        v41 = v12;
        v63 = v41;
        [DiagnosticCaseSummaryAnalytics extractPbAttachmentsFromString:v40 completion:v62];

        v42 = summaryLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = [v11 caseID];
          v44 = [v11 caseGroupID];
          v45 = v44;
          v46 = @"(no grpID)";
          if (v44)
          {
            v46 = v44;
          }

          v58 = v46;
          v47 = [v11 caseDomain];
          v48 = [v11 caseType];
          v49 = [v11 caseSubtype];
          v50 = [v11 caseSubtypeContext];
          v51 = [v11 caseDetectedProcess];
          v52 = [v11 caseAttachments];
          *buf = 138479619;
          v69 = v43;
          v70 = 2113;
          v71 = v58;
          v72 = 2113;
          v73 = v47;
          v74 = 2113;
          v75 = v48;
          v76 = 2113;
          v77 = v49;
          v78 = 2113;
          v79 = v50;
          v80 = 2113;
          v81 = v51;
          v82 = 2113;
          v83 = v52;
          _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_DEBUG, "DiagnosticCaseSummaryLog: Processed case: %{private}@/%{private}@ {%{private}@/%{private}@/%{private}@/%{private}@/%{private}@-%{private}@}", buf, 0x52u);

          v9 = v56;
        }

        [v59 addSigRequest:v41];
        v10 = v61 + 1;
      }

      while (v60 != v61 + 1);
      v60 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
    }

    while (v60);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v59;
}

void __52__DiagnosticCaseSummaryAnalytics_pbRequestForCases___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 count])
  {
    [*(a1 + 32) setAttachments:v5];
    [*(a1 + 32) setLogSizeTotal:a3];
  }
}

+ (id)stringRepresentationOfAttachmentsWithSize:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = [MEMORY[0x277CCAB68] stringWithString:&stru_285368168];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__DiagnosticCaseSummaryAnalytics_stringRepresentationOfAttachmentsWithSize___block_invoke;
  v6[3] = &unk_278CF0DA8;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __76__DiagnosticCaseSummaryAnalytics_stringRepresentationOfAttachmentsWithSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(*(*(a1 + 32) + 8) + 40) length])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:{@", "}];
  }

  [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%@:%@", v6, v5];
}

+ (void)extractPbAttachmentsFromString:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18 = a4;
  v19 = v5;
  v20 = objc_opt_new();
  v6 = [v5 componentsSeparatedByString:{@", "}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v21 + 1) + 8 * i) componentsSeparatedByString:@":"];
        if ([v12 count])
        {
          v13 = [v12 firstObject];
          v14 = [v12 lastObject];
          v15 = [v14 longLongValue];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
          {
            v16 = objc_opt_new();
            [v16 setFileName:v13];
            [v16 setFileSize:v15];
            [v20 addObject:v16];
            v9 = (v9 + v15);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v18)
  {
    v18[2](v18, v20, v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end