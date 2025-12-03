@interface HKClinicalGatewayReference
+ (id)gatewayReferenceFromDefinition:(id)definition error:(id *)error;
+ (id)gatewayReferencesFromDefinitions:(id)definitions error:(id *)error;
@end

@implementation HKClinicalGatewayReference

+ (id)gatewayReferencesFromDefinitions:(id)definitions error:(id *)error
{
  definitionsCopy = definitions;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_1082A8 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)gatewayReferenceFromDefinition:(id)definition error:(id *)error
{
  definitionCopy = definition;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_6DA38(v6, @"fhirVersion", v7, error);
    if (v8)
    {
      v9 = [HKFHIRVersion versionFromVersionString:v8 error:error];
      if (v9)
      {
        v10 = objc_opt_class();
        v11 = sub_6DA38(v6, @"gatewayID", v10, error);
        if (v11)
        {
          v12 = objc_opt_class();
          v13 = sub_6DA38(v6, @"gatewayBatchID", v12, error);
          if (v13)
          {
            v14 = objc_opt_class();
            v15 = sub_6DA38(v6, @"minCompatibleApiVersion", v14, error);
            if (v15)
            {
              v16 = [[HKClinicalGatewayReference alloc] initWithGatewayID:v11 gatewayBatchID:v13 minCompatibleAPIVersion:objc_msgSend(v15 FHIRVersion:{"integerValue"), v9}];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end