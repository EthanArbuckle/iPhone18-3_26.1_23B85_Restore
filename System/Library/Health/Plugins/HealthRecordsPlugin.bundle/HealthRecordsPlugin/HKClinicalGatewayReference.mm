@interface HKClinicalGatewayReference
+ (id)gatewayReferenceFromDefinition:(id)a3 error:(id *)a4;
+ (id)gatewayReferencesFromDefinitions:(id)a3 error:(id *)a4;
@end

@implementation HKClinicalGatewayReference

+ (id)gatewayReferencesFromDefinitions:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_1082A8 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)gatewayReferenceFromDefinition:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_6DA38(v6, @"fhirVersion", v7, a4);
    if (v8)
    {
      v9 = [HKFHIRVersion versionFromVersionString:v8 error:a4];
      if (v9)
      {
        v10 = objc_opt_class();
        v11 = sub_6DA38(v6, @"gatewayID", v10, a4);
        if (v11)
        {
          v12 = objc_opt_class();
          v13 = sub_6DA38(v6, @"gatewayBatchID", v12, a4);
          if (v13)
          {
            v14 = objc_opt_class();
            v15 = sub_6DA38(v6, @"minCompatibleApiVersion", v14, a4);
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