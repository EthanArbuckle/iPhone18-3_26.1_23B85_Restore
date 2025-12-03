@interface DiagnosticCaseStorageAnalytics
- (DiagnosticCaseStorageAnalytics)init;
- (id)diagnosticCaseDictionaryKeys;
- (id)diagnosticCaseStorageDictionaryForIdentifier:(id)identifier properties:(id)properties;
- (id)diagnosticCaseStorageWithId:(id)id;
- (id)diagnosticCaseStorageWithIdentifier:(id)identifier;
- (id)historicalDiagnosticCaseStorageDictionaryFromIdentifier:(id)identifier withEvents:(BOOL)events count:(unint64_t)count;
- (id)historicalDiagnosticCaseStorageFromIdentifier:(id)identifier count:(unint64_t)count;
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

- (id)diagnosticCaseStorageWithId:(id)id
{
  v4 = MEMORY[0x277CCAC30];
  uUIDString = [id UUIDString];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"caseID", uUIDString];

  v7 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v6 sortDesc:0];

  return v7;
}

- (id)diagnosticCaseStorageWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCAC30] predicateWithFormat:@"caseID == %@", identifier];
  v5 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:identifier sortDesc:0];

  return v5;
}

- (id)diagnosticCaseStorageDictionaryForIdentifier:(id)identifier properties:(id)properties
{
  v6 = MEMORY[0x277CCAC30];
  propertiesCopy = properties;
  identifier = [v6 predicateWithFormat:@"caseID == %@", identifier];
  v9 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:propertiesCopy predicate:identifier];

  return v9;
}

- (id)diagnosticCaseDictionaryKeys
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"timeStamp", @"caseClosedTime", @"caseID", @"caseAttachments", @"caseDampeningType", @"caseClosureType", @"remoteTrigger", @"dpSubmissionState", @"caseDomain", @"caseType", @"caseSubtype", @"caseSubtypeContext", @"caseDetectedProcess", @"caseEffectiveProcess", @"caseRelatedProcesses", @"caseThresholdValues", @"caseContext", @"caseGroupID", @"buildVersion", @"buildVariant", 0}];

  return v2;
}

- (id)historicalDiagnosticCaseStorageFromIdentifier:(id)identifier count:(unint64_t)count
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v7 = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseStorageWithIdentifier:identifierCopy];
    if ([v7 count])
    {
      firstObject = [v7 firstObject];
      v9 = firstObject;
      if (firstObject)
      {
        v10 = MEMORY[0x277CCAC30];
        timeStamp = [firstObject timeStamp];
        v12 = [v10 predicateWithFormat:@"timeStamp < %@", timeStamp];
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
  v14 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v12 sortDesc:v13 limit:count];

  return v14;
}

- (id)historicalDiagnosticCaseStorageDictionaryFromIdentifier:(id)identifier withEvents:(BOOL)events count:(unint64_t)count
{
  eventsCopy = events;
  v21[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  diagnosticCaseDictionaryKeys = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseDictionaryKeys];
  v10 = diagnosticCaseDictionaryKeys;
  if (eventsCopy)
  {
    [diagnosticCaseDictionaryKeys addObject:@"caseEvents"];
  }

  if ([identifierCopy length])
  {
    v11 = [(DiagnosticCaseStorageAnalytics *)self diagnosticCaseStorageDictionaryForIdentifier:identifierCopy properties:v10];
    if ([v11 count])
    {
      firstObject = [v11 firstObject];
      v13 = firstObject;
      if (firstObject)
      {
        v14 = [firstObject objectForKeyedSubscript:@"timeStamp"];
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
  v18 = [(ObjectAnalytics *)self fetchEntityDictionariesWithProperties:v10 predicate:v15 sortDescriptors:v17 limit:count];

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