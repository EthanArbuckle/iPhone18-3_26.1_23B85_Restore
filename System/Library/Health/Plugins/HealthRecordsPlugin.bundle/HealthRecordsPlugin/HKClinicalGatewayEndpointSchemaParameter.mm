@interface HKClinicalGatewayEndpointSchemaParameter
+ (id)parameterFromDefinition:(id)definition error:(id *)error;
+ (id)parametersFromDefinitions:(id)definitions error:(id *)error;
@end

@implementation HKClinicalGatewayEndpointSchemaParameter

+ (id)parametersFromDefinitions:(id)definitions error:(id *)error
{
  definitionsCopy = definitions;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_108248 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)parameterFromDefinition:(id)definition error:(id *)error
{
  definitionCopy = definition;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"param"];
    objc_opt_class();
    v8 = HKSafeObject();

    if (v8)
    {
      objc_opt_class();
      v9 = sub_6DAF0(v6, @"literal");
      v10 = 0;
      v11 = v10;
      if (v9 || !v10)
      {

        objc_opt_class();
        v14 = sub_6DAF0(v6, @"variable");
        v15 = 0;
        v11 = v15;
        if (v14 || !v15)
        {

          objc_opt_class();
          v17 = sub_6DAF0(v6, @"mode");
          v18 = 0;
          v11 = v18;
          if (v17 || !v18)
          {
            v20 = [v17 hk_map:&stru_108268 error:error];
            if (v20 || ![v17 count])
            {
              v13 = [[HKClinicalGatewayEndpointSchemaParameter alloc] initWithParam:v8 literal:v9 variable:v14 mode:v20];
            }

            else
            {
              v13 = 0;
            }
          }

          else if (error)
          {
            v19 = v18;
            v13 = 0;
            *error = v11;
          }

          else
          {
            _HKLogDroppedError();
            v13 = 0;
          }
        }

        else if (error)
        {
          v16 = v15;
          v13 = 0;
          *error = v11;
        }

        else
        {
          _HKLogDroppedError();
          v13 = 0;
        }
      }

      else if (error)
      {
        v12 = v10;
        v13 = 0;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end