@interface HKClinicalGatewayFeature
+ (id)gatewayFeatureFromDefinition:(id)a3 error:(id *)a4;
+ (id)gatewayFeaturesFromDefinitions:(id)a3 error:(id *)a4;
@end

@implementation HKClinicalGatewayFeature

+ (id)gatewayFeaturesFromDefinitions:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_108288 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)gatewayFeatureFromDefinition:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = sub_6DA38(v6, @"name", v7, a4);
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = sub_6DA38(v6, @"minCompatibleApiVersion", v9, a4);
      if (v10)
      {
        v11 = objc_opt_class();
        v12 = sub_6DA38(v6, @"status", v11, a4);
        if (v12)
        {
          v13 = HKClinicalGatewayFeatureStatusFromString();
          v14 = [v6 objectForKeyedSubscript:@"interactions"];
          v15 = [HKClinicalGatewayEndpointSchema endpointSchemasFromDefinitions:v14 error:a4];

          if (v15)
          {
            v16 = [[HKClinicalGatewayFeature alloc] initWithName:v8 minCompatibleAPIVersion:objc_msgSend(v10 status:"integerValue") interactions:{v13, v15}];
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