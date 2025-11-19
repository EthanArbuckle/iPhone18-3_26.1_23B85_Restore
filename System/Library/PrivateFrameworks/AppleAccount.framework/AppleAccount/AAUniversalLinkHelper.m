@interface AAUniversalLinkHelper
+ (id)infoForComponents:(id)a3;
+ (id)stringForBenefiaryMessagesURLWithUUID:(id)a3;
+ (id)stringForCustodianMessagesURLWithUUID:(id)a3;
@end

@implementation AAUniversalLinkHelper

+ (id)infoForComponents:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 queryItems];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v5)
  {
    v6 = 0;
    v25 = 0;
    goto LABEL_26;
  }

  v29 = v3;
  v30 = 0;
  v31 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *v33;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v32 + 1) + 8 * i);
      v11 = [v10 name];
      v12 = [v11 isEqualToString:@"id"];

      if (v12)
      {
        v13 = [v10 value];
        v14 = v6;
        v6 = v13;
      }

      else
      {
        v15 = [v10 name];
        v16 = [v15 isEqualToString:@"flow"];

        if (v16)
        {
          v17 = [v10 value];
          v14 = v7;
          v7 = v17;
        }

        else
        {
          v18 = [v10 name];
          v19 = [v18 isEqualToString:@"domainState"];

          if (v19)
          {
            v20 = [v10 value];
            v14 = v31;
            v31 = v20;
          }

          else
          {
            v21 = [v10 name];
            v22 = [v21 isEqualToString:@"state"];

            if (!v22)
            {
              continue;
            }

            v23 = [v10 value];
            v14 = v30;
            v30 = v23;
          }
        }
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v5);
  if (v7)
  {
    v24 = [MEMORY[0x1E695DF90] dictionary];
    [v24 setValue:v7 forKey:@"flow"];
    v3 = v29;
    v25 = v30;
    v5 = v31;
    if (v6)
    {
      [v24 setValue:v6 forKey:@"id"];
    }

    if (v31)
    {
      [v24 setValue:v31 forKey:@"domainState"];
    }

    if (v30)
    {
      [v24 setValue:v30 forKey:@"state"];
    }

    goto LABEL_29;
  }

  v3 = v29;
  v25 = v30;
  v5 = v31;
LABEL_26:
  v26 = _AALogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [AAUniversalLinkHelper infoForComponents:v26];
  }

  v7 = 0;
  v24 = 0;
LABEL_29:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)stringForCustodianMessagesURLWithUUID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(AAUniversalLinkHelper *)a2 stringForCustodianMessagesURLWithUUID:a1];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 UUIDString];
  v8 = [v6 stringWithFormat:@"https://setup.icloud.com/private/trustedcontact?%@=%@&%@=%@", @"flow", @"custodian", @"id", v7];

  return v8;
}

+ (id)stringForBenefiaryMessagesURLWithUUID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(AAUniversalLinkHelper *)a2 stringForBenefiaryMessagesURLWithUUID:a1];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 UUIDString];
  v8 = [v6 stringWithFormat:@"https://setup.icloud.com/private/trustedcontact?%@=%@&%@=%@", @"flow", @"digitalLegacy", @"id", v7];

  return v8;
}

+ (void)stringForCustodianMessagesURLWithUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAUniversalLinkHelper.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

+ (void)stringForBenefiaryMessagesURLWithUUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAUniversalLinkHelper.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
}

@end