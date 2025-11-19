@interface HDVerifiableClinicalRecordEntity
+ (BOOL)insertRecords:(id)a3 gatewayExternalID:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)issuerToRecordsMappedRecords:(id)a3;
@end

@implementation HDVerifiableClinicalRecordEntity

+ (BOOL)insertRecords:(id)a3 gatewayExternalID:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v33 = a4;
  v11 = a5;
  if ([v10 count])
  {
    [a1 issuerToRecordsMappedRecords:v10];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v41 = 0u;
    obj = [v36 allKeys];
    v35 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v35)
    {
      v30 = v10;
      v31 = a6;
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
            v15 = v33;
            if (!v33)
            {
              v15 = v13;
            }

            v16 = v15;
            v17 = [v11 sourceManager];
            v37 = 0;
            v18 = [v17 publicSourceForClinicalExternalIdentifier:v16 provenance:0 createOrUpdateIfNecessary:0 nameOnCreateOrUpdate:0 error:&v37];
            v19 = v37;

            if (!v18)
            {
              if (v19)
              {
                if (v31)
                {
                  v27 = v19;
                  *v31 = v19;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              else
              {
                v29 = @"gateway external ID";
                if (!v33)
                {
                  v29 = @"issuer";
                }

                [NSError hk_assignError:v31 code:100 format:@"unable to insert verifiable records for %@ %@: no matching public source entity is present", v29, v16];
              }

              goto LABEL_24;
            }

            v20 = [v11 dataProvenanceManager];
            v21 = [v20 localDataProvenanceForSourceEntity:v18 version:0 deviceEntity:0];

            if (!v21)
            {
              v22 = v11;
              [NSError hk_assignError:v31 code:100 description:@"Failed to get provenance for public source entity"];
LABEL_23:

              v11 = v22;
LABEL_24:

              v26 = 0;
              v10 = v30;
              goto LABEL_25;
            }

            v22 = v11;
            v23 = [v11 dataManager];
            v24 = [v14 firstObject];
            [v24 _creationTimestamp];
            v25 = [v23 insertDataObjects:v14 withProvenance:v21 creationDate:v31 error:?];

            if ((v25 & 1) == 0)
            {
              goto LABEL_23;
            }

            v11 = v22;
          }
        }

        v26 = 1;
        v10 = v30;
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
    [NSError hk_assignError:a6 code:3 description:@"No verifiable records given"];
    v26 = 0;
  }

  return v26;
}

+ (id)issuerToRecordsMappedRecords:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v11 = [v10 issuerIdentifier];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v12 = objc_alloc_init(NSMutableArray);
          v13 = [v10 issuerIdentifier];
          [v4 setObject:v12 forKeyedSubscript:v13];
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