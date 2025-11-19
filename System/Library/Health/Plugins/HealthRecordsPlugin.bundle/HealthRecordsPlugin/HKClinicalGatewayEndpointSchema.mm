@interface HKClinicalGatewayEndpointSchema
+ (id)endpointSchemaFromDefinition:(id)a3 error:(id *)a4;
+ (id)endpointSchemasFromDefinitions:(id)a3 error:(id *)a4;
@end

@implementation HKClinicalGatewayEndpointSchema

+ (id)endpointSchemasFromDefinitions:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_108228 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)endpointSchemaFromDefinition:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = HKSafeObject();
  if (!v6)
  {
    v24 = 0;
    goto LABEL_42;
  }

  v7 = objc_opt_class();
  v8 = sub_6DA38(v6, @"auth", v7, a4);
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = sub_6DA38(v6, @"enabled", v9, a4);
    if (!v10)
    {
      v24 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v11 = objc_opt_class();
    v12 = sub_6DA38(v6, @"method", v11, a4);
    if (!v12)
    {
      v24 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v13 = objc_opt_class();
    v14 = sub_6DA38(v6, @"minCompatibleApiVersion", v13, a4);
    if (!v14)
    {
      v24 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v15 = objc_opt_class();
    v16 = sub_6DA38(v6, @"name", v15, a4);
    if (!v16)
    {
      v24 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v17 = objc_opt_class();
    v18 = sub_6DA38(v6, @"url", v17, a4);
    if (!v18)
    {
      v24 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v45 = v18;
    objc_opt_class();
    v19 = sub_6DAF0(v6, @"body");
    v20 = 0;
    v21 = v20;
    v44 = v16;
    if (!v19 && v20)
    {
      if (a4)
      {
        v22 = v20;
        v23 = v21;
        v24 = 0;
        *a4 = v23;
      }

      else
      {
        _HKLogDroppedError();
        v23 = v21;
        v24 = 0;
      }

      goto LABEL_35;
    }

    v41 = v20;
    v42 = v19;
    v25 = [v6 objectForKeyedSubscript:@"form"];

    if (v25)
    {
      v26 = [v6 objectForKeyedSubscript:@"form"];
      v24 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v26 error:a4];

      v43 = v24;
      if (!v24)
      {
        v19 = v42;
LABEL_34:
        v23 = v41;
LABEL_35:

        v16 = v44;
        v18 = v45;
        goto LABEL_36;
      }
    }

    else
    {
      v43 = 0;
    }

    v27 = [v6 objectForKeyedSubscript:@"headers"];

    if (v27)
    {
      v28 = [v6 objectForKeyedSubscript:@"headers"];
      v27 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v28 error:a4];

      if (!v27)
      {
        v24 = 0;
        v19 = v42;
        goto LABEL_33;
      }
    }

    v40 = v27;
    v29 = [v6 objectForKeyedSubscript:@"query"];

    if (v29)
    {
      v30 = [v6 objectForKeyedSubscript:@"query"];
      v31 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v30 error:a4];

      if (!v31)
      {
        v24 = 0;
        v19 = v42;
        v32 = v40;
LABEL_31:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
      v31 = 0;
    }

    v39 = v31;
    v33 = [HKClinicalGatewayEndpointSchema alloc];
    v34 = [v10 BOOLValue];
    v38 = v31;
    v37 = [v14 integerValue];
    v35 = v33;
    v19 = v42;
    v32 = v40;
    v24 = [v35 initWithAuth:v8 body:v42 enabled:v34 form:v43 headers:v40 method:v12 minCompatibleAPIVersion:v37 name:v16 query:v38 URL:v45 definition:v5];

    goto LABEL_31;
  }

  v24 = 0;
LABEL_41:

LABEL_42:

  return v24;
}

@end