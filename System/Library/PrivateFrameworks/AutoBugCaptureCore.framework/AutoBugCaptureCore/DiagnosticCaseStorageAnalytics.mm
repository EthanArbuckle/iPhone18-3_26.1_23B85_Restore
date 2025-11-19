@interface DiagnosticCaseStorageAnalytics
- (DiagnosticCaseStorageAnalytics)init;
- (id)diagnosticCaseDictionaryKeys;
- (id)diagnosticCaseStorageDictionaryForIdentifier:(id)a3 properties:(id)a4;
- (id)diagnosticCaseStorageWithId:(id)a3;
- (id)diagnosticCaseStorageWithIdentifier:(id)a3;
- (id)historicalDiagnosticCaseStorageDictionaryFromIdentifier:(id)a3 withEvents:(BOOL)a4 count:(unint64_t)a5;
- (id)historicalDiagnosticCaseStorageFromIdentifier:(id)a3 count:(unint64_t)a4;
- (int64_t)removeAllDiagnosticCaseStorages;
@end

@implementation DiagnosticCaseStorageAnalytics

- (DiagnosticCaseStorageAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v6.receiver = self;
  v6.super_class = DiagnosticCaseStorageAnalytics;
  v4 = [(ObjectAnalytics *)&v6 initWithWorkspace:v3 entityName:@"DiagnosticCaseStorage" withCache:1];

  return v4;
}

- (id)diagnosticCaseStorageWithId:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = [a3 UUIDString];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"caseID", v5];

  v7 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v6 sortDesc:0];

  return v7;
}

- (id)diagnosticCaseStorageWithIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", a3];
  v5 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v4 sortDesc:0];

  return v5;
}

- (id)diagnosticCaseStorageDictionaryForIdentifier:(id)a3 properties:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"caseID == %@", a3];
  v9 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v7 predicate:v8];

  return v9;
}

- (id)diagnosticCaseDictionaryKeys
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"timeStamp", @"caseClosedTime", @"caseID", @"caseAttachments", @"caseDampeningType", @"caseClosureType", @"remoteTrigger", @"dpSubmissionState", @"caseDomain", @"caseType", @"caseSubtype", @"caseSubtypeContext", @"caseDetectedProcess", @"caseEffectiveProcess", @"caseRelatedProcesses", @"caseThresholdValues", @"caseContext", @"caseGroupID", @"buildVersion", @"buildVariant", 0}];

  return v2;
}

- (id)historicalDiagnosticCaseStorageFromIdentifier:(id)a3 count:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseStorageWithIdentifier:v6];
    if ([v7 count])
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v8)
      {
        v10 = MEMORY[0x277CCAC30];
        v11 = [v8 timeStamp];
        v12 = [v10 predicateWithFormat:@"timeStamp < %@", v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:0];
  v14 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v12 sortDesc:v13 limit:a4];

  return v14;
}

- (id)historicalDiagnosticCaseStorageDictionaryFromIdentifier:(id)a3 withEvents:(BOOL)a4 count:(unint64_t)a5
{
  v6 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseDictionaryKeys];
  v10 = v9;
  if (v6)
  {
    [v9 addObject:@"caseEvents"];
  }

  if ([v8 length])
  {
    v11 = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseStorageDictionaryForIdentifier:v8 properties:v10];
    if ([v11 count])
    {
      v12 = [v11 firstObject];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"timeStamp"];
        v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"timeStamp < %@", v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:0];
  v21[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v18 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v10 predicate:v15 sortDescriptors:v17 limit:a5];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (int64_t)removeAllDiagnosticCaseStorages
{
  v3.receiver = self;
  v3.super_class = DiagnosticCaseStorageAnalytics;
  return [(ObjectAnalytics *)&v3 removeEntitiesMatching:0];
}

@end