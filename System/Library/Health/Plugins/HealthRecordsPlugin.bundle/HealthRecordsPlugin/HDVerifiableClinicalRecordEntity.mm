@interface HDVerifiableClinicalRecordEntity
+ (BOOL)insertRecords:(id)records gatewayExternalID:(id)d profile:(id)profile error:(id *)error;
+ (id)issuerToRecordsMappedRecords:(id)records;
@end

@implementation HDVerifiableClinicalRecordEntity

+ (BOOL)insertRecords:(id)records gatewayExternalID:(id)d profile:(id)profile error:(id *)error
{
  recordsCopy = records;
  dCopy = d;
  profileCopy = profile;
  if ([recordsCopy count])
  {
    [self issuerToRecordsMappedRecords:recordsCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v41 = 0u;
    obj = [v36 allKeys];
    v35 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v35)
    {
      v30 = recordsCopy;
      errorCopy = error;
      v34 = *v39;
      while (2)
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [v36 objectForKeyedSubscript:v13];
          if ([v14 count])
          {
            v15 = dCopy;
            if (!dCopy)
            {
              v15 = v13;
            }

            v16 = v15;
            sourceManager = [profileCopy sourceManager];
            v37 = 0;
            v18 = [sourceManager publicSourceForClinicalExternalIdentifier:v16 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v37];
            v19 = v37;

            if (!v18)
            {
              if (v19)
              {
                if (errorCopy)
                {
                  v27 = v19;
                  *errorCopy = v19;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              else
              {
                v29 = @"gateway external ID";
                if (!dCopy)
                {
                  v29 = @"issuer";
                }

                [NSError hk_assignError:errorCopy code:100 format:@"unable to insert verifiable records for %@ %@: no matching public source entity is present", v29, v16];
              }

              goto LABEL_24;
            }

            dataProvenanceManager = [profileCopy dataProvenanceManager];
            v21 = [dataProvenanceManager localDataProvenanceForSourceEntity:v18 version:0 deviceEntity:0];

            if (!v21)
            {
              v22 = profileCopy;
              [NSError hk_assignError:errorCopy code:100 description:@"Failed to get provenance for public source entity"];
LABEL_23:

              profileCopy = v22;
LABEL_24:

              v26 = 0;
              recordsCopy = v30;
              goto LABEL_25;
            }

            v22 = profileCopy;
            dataManager = [profileCopy dataManager];
            firstObject = [v14 firstObject];
            [firstObject _creationTimestamp];
            v25 = [dataManager insertDataObjects:v14 withProvenance:v21 creationDate:errorCopy error:?];

            if ((v25 & 1) == 0)
            {
              goto LABEL_23;
            }

            profileCopy = v22;
          }
        }

        v26 = 1;
        recordsCopy = v30;
        v35 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 1;
    }

LABEL_25:
  }

  else
  {
    [NSError hk_assignError:error code:3 description:@"No verifiable records given"];
    v26 = 0;
  }

  return v26;
}

+ (id)issuerToRecordsMappedRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        issuerIdentifier = [v10 issuerIdentifier];
        v12 = [v4 objectForKeyedSubscript:issuerIdentifier];

        if (!v12)
        {
          v12 = objc_alloc_init(NSMutableArray);
          issuerIdentifier2 = [v10 issuerIdentifier];
          [v4 setObject:v12 forKeyedSubscript:issuerIdentifier2];
        }

        [v12 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

@end