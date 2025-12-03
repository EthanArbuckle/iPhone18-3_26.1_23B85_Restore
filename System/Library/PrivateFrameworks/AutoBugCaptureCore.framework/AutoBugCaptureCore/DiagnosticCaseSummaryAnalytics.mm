@interface DiagnosticCaseSummaryAnalytics
+ (id)listSummaryItemFromCaseSummaryDictionary:(id)dictionary;
+ (id)pbRequestForCases:(id)cases;
+ (id)stringRepresentationOfAttachmentsWithSize:(id)size;
+ (void)extractPbAttachmentsFromString:(id)string completion:(id)completion;
- (DiagnosticCaseSummaryAnalytics)init;
- (id)diagnosticCaseSummaryDictionaryForIdentifier:(id)identifier properties:(id)properties;
- (id)fetchCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count;
- (id)fetchCaseSummariesWithIdentifiers:(id)identifiers;
- (int64_t)removeAllDiagnosticCaseSummaries;
- (int64_t)removeDiagnosticCaseSummariesWithState:(signed __int16)state olderThan:(unint64_t)than;
- (void)insertEntityForDiagnosticCase:(id)case;
- (void)updateSubmittedCases:(id)cases;
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

- (void)insertEntityForDiagnosticCase:(id)case
{
  caseCopy = case;
  createEntity = [(ObjectAnalytics *)self createEntity];
  caseStorage = [caseCopy caseStorage];
  caseID = [caseStorage caseID];
  [createEntity setCaseID:caseID];

  caseGroupID = [caseStorage caseGroupID];
  [createEntity setCaseGroupID:caseGroupID];

  timeStamp = [caseStorage timeStamp];
  [createEntity setCaseCreatedTime:timeStamp];

  caseClosedTime = [caseStorage caseClosedTime];
  [createEntity setCaseClosedTime:caseClosedTime];

  caseDomain = [caseStorage caseDomain];
  [createEntity setCaseDomain:caseDomain];

  caseType = [caseStorage caseType];
  [createEntity setCaseType:caseType];

  caseSubtype = [caseStorage caseSubtype];
  [createEntity setCaseSubtype:caseSubtype];

  caseSubtypeContext = [caseStorage caseSubtypeContext];
  [createEntity setCaseSubtypeContext:caseSubtypeContext];

  caseDetectedProcess = [caseStorage caseDetectedProcess];
  [createEntity setCaseDetectedProcess:caseDetectedProcess];

  caseEffectiveProcess = [caseStorage caseEffectiveProcess];
  [createEntity setCaseEffectiveProcess:caseEffectiveProcess];

  caseRelatedProcesses = [caseStorage caseRelatedProcesses];
  [createEntity setCaseRelatedProcesses:caseRelatedProcesses];

  caseThresholdValues = [caseStorage caseThresholdValues];
  [createEntity setCaseThresholdValues:caseThresholdValues];

  [createEntity setCaseClosureType:{objc_msgSend(caseStorage, "caseClosureType")}];
  [createEntity setCaseDampeningType:{objc_msgSend(caseStorage, "caseDampeningType")}];
  caseContext = [caseStorage caseContext];
  [createEntity setCaseContext:caseContext];

  [createEntity setRemoteTrigger:{objc_msgSend(caseStorage, "remoteTrigger")}];
  buildVariant = [caseStorage buildVariant];
  [createEntity setBuildVariant:buildVariant];

  buildVersion = [caseStorage buildVersion];
  [createEntity setBuildVersion:buildVersion];

  stringRepresentationOfAttachmentsWithSize = [caseCopy stringRepresentationOfAttachmentsWithSize];

  [createEntity setCaseAttachments:stringRepresentationOfAttachmentsWithSize];
}

- (void)updateSubmittedCases:(id)cases
{
  v18 = *MEMORY[0x277D85DE8];
  casesCopy = cases;
  v4 = summaryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = [casesCopy count];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "DiagnosticCaseSummaryLog: Update caseSummaryState to Submitted for %ld case(s)", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = casesCopy;
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

- (int64_t)removeDiagnosticCaseSummariesWithState:(signed __int16)state olderThan:(unint64_t)than
{
  stateCopy = state;
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = (86400 * than);
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:-v6];

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"caseCreatedTime", v8];
  stateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseSummaryState == %d", stateCopy];
  v11 = MEMORY[0x277CCA920];
  v17[0] = v9;
  v17[1] = stateCopy;
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

- (id)fetchCaseSummariesWithIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = identifiersCopy;
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

- (id)fetchCaseSummariesOfType:(id)type fromIdentifier:(id)identifier count:(unint64_t)count
{
  v25[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  v10 = objc_opt_new();
  if ([typeCopy caseInsensitiveCompare:@"pending"])
  {
    if ([typeCopy caseInsensitiveCompare:@"submitted"])
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
  if ([identifierCopy length])
  {
    v14 = [(DiagnosticCaseSummaryAnalytics *)self diagnosticCaseSummaryDictionaryForIdentifier:identifierCopy properties:v13];
    if ([v14 count])
    {
      firstObject = [v14 firstObject];
      v16 = firstObject;
      if (firstObject)
      {
        v17 = [firstObject objectForKeyedSubscript:@"caseCreatedTime"];
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
  v22 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v13 predicate:v19 sortDescriptors:v21 limit:count];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)diagnosticCaseSummaryDictionaryForIdentifier:(id)identifier properties:(id)properties
{
  v6 = MEMORY[0x277CCAC30];
  propertiesCopy = properties;
  identifier = [v6 predicateWithFormat:@"caseID == %@", identifier];
  v9 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:propertiesCopy predicate:identifier];

  return v9;
}

+ (id)listSummaryItemFromCaseSummaryDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
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
        v11 = [dictionaryCopy objectForKey:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            integerValue = [(__CFString *)v11 integerValue];
            if ([v10 isEqualToString:@"caseDampeningType"])
            {
              v13 = [DiagnosticCase descriptionForDampeningType:integerValue];
              [v4 setObject:v13 forKeyedSubscript:v10];

              goto LABEL_19;
            }

            if ([v10 isEqualToString:@"caseSummaryState"])
            {
              if (integerValue)
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

+ (id)pbRequestForCases:(id)cases
{
  v85 = *MEMORY[0x277D85DE8];
  casesCopy = cases;
  v4 = +[SystemProperties sharedInstance];
  v5 = objc_opt_new();
  [v5 setVer:1];
  productType = [v4 productType];
  [v5 setDeviceModel:productType];

  buildPlatform = [v4 buildPlatform];
  [v5 setBuildPlatform:buildPlatform];

  v55 = v4;
  deviceClassString = [v4 deviceClassString];
  v59 = v5;
  [v5 setDeviceCategory:deviceClassString];

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = casesCopy;
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
        buildVersion = [v11 buildVersion];
        [v12 setBuild:buildVersion];

        buildVariant = [v11 buildVariant];
        [v12 setBuildVariant:buildVariant];

        caseDomain = [v11 caseDomain];
        [v12 setDomain:caseDomain];

        caseType = [v11 caseType];
        [v12 setType:caseType];

        caseSubtype = [v11 caseSubtype];
        [v12 setSubtype:caseSubtype];

        caseSubtypeContext = [v11 caseSubtypeContext];
        [v12 setSubtypeContext:caseSubtypeContext];

        caseDetectedProcess = [v11 caseDetectedProcess];
        [v12 setProcess:caseDetectedProcess];

        caseID = [v11 caseID];
        [v12 setCaseIdentifier:caseID];

        [v12 setRemoteTrigger:{objc_msgSend(v11, "remoteTrigger")}];
        caseCreatedTime = [v11 caseCreatedTime];
        [caseCreatedTime timeIntervalSince1970];
        [v12 setCaseStartTime:?];

        caseClosedTime = [v11 caseClosedTime];
        [caseClosedTime timeIntervalSince1970];
        [v12 setCaseClosedTime:?];

        v23 = +[DiagnosticCase descriptionForClosureType:](DiagnosticCase, "descriptionForClosureType:", [v11 caseClosureType]);
        [v12 setCaseClosureType:v23];

        v24 = +[DiagnosticCase descriptionForDampeningType:](DiagnosticCase, "descriptionForDampeningType:", [v11 caseDampeningType]);
        [v12 setCaseDampeningType:v24];

        caseContext = [v11 caseContext];
        v26 = [caseContext length];

        if (v26)
        {
          caseContext2 = [v11 caseContext];
          [v12 setCaseContext:caseContext2];
        }

        caseEffectiveProcess = [v11 caseEffectiveProcess];
        v29 = [caseEffectiveProcess length];

        if (v29)
        {
          caseEffectiveProcess2 = [v11 caseEffectiveProcess];
          [v12 setCaseEffectiveProcess:caseEffectiveProcess2];
        }

        caseGroupID = [v11 caseGroupID];
        v32 = [caseGroupID length];

        if (v32)
        {
          caseGroupID2 = [v11 caseGroupID];
          [v12 setCaseGroupIdentifier:caseGroupID2];
        }

        caseRelatedProcesses = [v11 caseRelatedProcesses];
        v35 = [caseRelatedProcesses length];

        if (v35)
        {
          caseRelatedProcesses2 = [v11 caseRelatedProcesses];
          [v12 setCaseRelatedProcesses:caseRelatedProcesses2];
        }

        caseThresholdValues = [v11 caseThresholdValues];
        v38 = [caseThresholdValues length];

        if (v38)
        {
          caseThresholdValues2 = [v11 caseThresholdValues];
          [v12 setCaseThresholdValues:caseThresholdValues2];
        }

        caseAttachments = [v11 caseAttachments];
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __52__DiagnosticCaseSummaryAnalytics_pbRequestForCases___block_invoke;
        v62[3] = &unk_278CF0D80;
        v41 = v12;
        v63 = v41;
        [DiagnosticCaseSummaryAnalytics extractPbAttachmentsFromString:caseAttachments completion:v62];

        v42 = summaryLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          caseID2 = [v11 caseID];
          caseGroupID3 = [v11 caseGroupID];
          v45 = caseGroupID3;
          v46 = @"(no grpID)";
          if (caseGroupID3)
          {
            v46 = caseGroupID3;
          }

          v58 = v46;
          caseDomain2 = [v11 caseDomain];
          caseType2 = [v11 caseType];
          caseSubtype2 = [v11 caseSubtype];
          caseSubtypeContext2 = [v11 caseSubtypeContext];
          caseDetectedProcess2 = [v11 caseDetectedProcess];
          caseAttachments2 = [v11 caseAttachments];
          *buf = 138479619;
          v69 = caseID2;
          v70 = 2113;
          v71 = v58;
          v72 = 2113;
          v73 = caseDomain2;
          v74 = 2113;
          v75 = caseType2;
          v76 = 2113;
          v77 = caseSubtype2;
          v78 = 2113;
          v79 = caseSubtypeContext2;
          v80 = 2113;
          v81 = caseDetectedProcess2;
          v82 = 2113;
          v83 = caseAttachments2;
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

+ (id)stringRepresentationOfAttachmentsWithSize:(id)size
{
  sizeCopy = size;
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
  [sizeCopy enumerateKeysAndObjectsUsingBlock:v6];
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

+ (void)extractPbAttachmentsFromString:(id)string completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  completionCopy = completion;
  v19 = stringCopy;
  v20 = objc_opt_new();
  v6 = [stringCopy componentsSeparatedByString:{@", "}];
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
          firstObject = [v12 firstObject];
          lastObject = [v12 lastObject];
          longLongValue = [lastObject longLongValue];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && longLongValue)
          {
            v16 = objc_opt_new();
            [v16 setFileName:firstObject];
            [v16 setFileSize:longLongValue];
            [v20 addObject:v16];
            v9 = (v9 + longLongValue);
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v20, v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end