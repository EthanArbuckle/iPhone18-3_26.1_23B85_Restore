@interface _HKAppURLSpecification
+ (BOOL)isAtrialFibrillationEventURL:(id)a3;
+ (BOOL)isClinicalLoginRedirectURL:(id)a3;
+ (BOOL)isClinicalOnboardingURL:(id)a3;
+ (BOOL)parseClinicalLoginRedirectURL:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5;
+ (BOOL)parseClinicalOnboardingURL:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5;
@end

@implementation _HKAppURLSpecification

+ (BOOL)isClinicalOnboardingURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v4 setHost:@"provider-universal.health.apple.com"];
  [v4 setPath:@"/o"];
  [v4 setScheme:@"https"];
  v5 = [v4 URL];

  v6 = [v3 scheme];
  v7 = [v5 scheme];
  if (v6 != v7)
  {
    v8 = [v5 scheme];
    if (!v8)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v9 = v8;
    v10 = [v3 scheme];
    v11 = [v5 scheme];
    if (![v10 isEqual:v11])
    {
      v19 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v26 = v11;
    v27 = v10;
    v28 = v9;
  }

  v12 = [v3 host];
  v13 = [v12 lowercaseString];
  v14 = [v5 host];
  v15 = [v14 lowercaseString];
  if (v13 == v15)
  {
    v19 = 1;
  }

  else
  {
    v25 = [v5 host];
    v16 = [v25 lowercaseString];
    if (v16)
    {
      v22 = [v3 host];
      v21 = [v22 lowercaseString];
      [v5 host];
      v17 = v24 = v12;
      [v17 lowercaseString];
      v18 = v23 = v13;
      v19 = [v21 isEqual:v18];

      v13 = v23;
      v12 = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  v10 = v27;
  v9 = v28;
  v11 = v26;
  if (v6 != v7)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v19;
}

+ (BOOL)parseClinicalOnboardingURL:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 isClinicalOnboardingURL:v8])
  {
    v11 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"g"];
    v12 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"b"];
    v13 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"src"];
    if (v11 && v12)
    {
      v14 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"f"];
      v15 = v9[2](v9, v11, v12, v13, [v14 isEqualToString:@"clinical-sharing"]);
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v14 = HKSensitiveLogItem(v8);
      v18 = [v17 hk_error:3 format:{@"Failed to parse onboarding URL: %@", v14}];
      v15 = v10[2](v10, v18);
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v11 = HKSensitiveLogItem(v8);
    v12 = [v16 hk_error:3 format:{@"Invalid onboarding URL: %@", v11}];
    v15 = v10[2](v10, v12);
  }

  return v15;
}

+ (BOOL)isClinicalLoginRedirectURL:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v53 = [MEMORY[0x1E695DFD8] setWithObjects:{@"code", @"state", 0}];
  [MEMORY[0x1E695DFD8] setWithObject:@"error"];
  v51 = v50 = v6;
  v7 = [MEMORY[0x1E696AF20] componentsWithURL:v6 resolvingAgainstBaseURL:1];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v52 = v7;
  v9 = [v7 queryItems];
  v10 = [v9 countByEnumeratingWithState:&v85 objects:v91 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v86;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v86 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v85 + 1) + 8 * i) name];
        [v8 addObject:v13];
      }

      v11 = [v9 countByEnumeratingWithState:&v85 objects:v91 count:16];
    }

    while (v11);
  }

  if (([v53 isSubsetOfSet:v8] & 1) == 0 && !objc_msgSend(v51, "isSubsetOfSet:", v8))
  {
    v47 = 0;
    goto LABEL_61;
  }

  v14 = [v52 path];
  v15 = [v14 length];

  if (!v15)
  {
    [v52 setPath:@"/"];
  }

  v57 = [v52 URL];
  v16 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v16 setHost:@"HealthProviderLogin"];
  [v16 setPath:@"/"];
  [v16 setScheme:@"x-argonaut-app"];
  v17 = [v16 URL];

  v90[0] = v17;
  v18 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v18 setHost:@"redirect.health.apple.com"];
  v19 = [@"/" stringByAppendingPathComponent:@"HealthProviderLogin"];
  [v18 setPath:v19];

  [v18 setScheme:@"https"];
  v20 = [v18 URL];

  v90[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v21;
  v77 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (!v77)
  {
    v47 = 0;
    v22 = v57;
    goto LABEL_59;
  }

  v76 = *v82;
  v22 = v57;
  while (2)
  {
    for (j = 0; j != v77; ++j)
    {
      v80 = v5;
      v24 = i;
      if (*v82 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v81 + 1) + 8 * j);
      v26 = [v22 scheme];
      v27 = [v25 scheme];
      if (v26 != v27)
      {
        v4 = [v25 scheme];
        if (!v4)
        {
          i = v24;
          goto LABEL_33;
        }

        v28 = [v22 scheme];
        v29 = [v25 scheme];
        v75 = v28;
        v30 = v28;
        v21 = v29;
        if (![v30 isEqual:v29])
        {
          i = v24;
          goto LABEL_32;
        }
      }

      v78 = v4;
      v31 = [v22 port];
      v32 = [v25 port];
      v33 = v32;
      v79 = v31;
      if (v31 != v32)
      {
        v71 = [v25 port];
        if (v71)
        {
          v24 = [v22 port];
          v34 = [v25 port];
          v80 = v34;
          if ([v24 isEqual:v34])
          {
            v70 = v33;
            v35 = v21;
            goto LABEL_26;
          }

          v4 = v78;
          i = v24;
          if (v26 == v27)
          {
LABEL_33:

            v5 = v80;
            continue;
          }
        }

        else
        {

          v71 = 0;
          v4 = v78;
          i = v24;
          if (v26 == v27)
          {
            goto LABEL_33;
          }
        }

LABEL_32:

        goto LABEL_33;
      }

      v70 = v32;
      v35 = v21;
LABEL_26:
      v36 = [v22 host];
      v37 = [v36 lowercaseString];
      v68 = [v25 host];
      v73 = [v68 lowercaseString];
      v74 = v37;
      if (v37 == v73)
      {
        v66 = v36;
        v72 = v35;
        goto LABEL_35;
      }

      v65 = [v25 host];
      v64 = [v65 lowercaseString];
      v21 = v35;
      if (v64)
      {
        v66 = v36;
        v61 = [v22 host];
        v38 = [v61 lowercaseString];
        v59 = [v25 host];
        [v59 lowercaseString];
        v58 = v60 = v38;
        v39 = v70;
        if (![v38 isEqual:?])
        {
          v69 = 0;
          i = v24;
          v5 = v80;
          v22 = v57;
          v36 = v66;
LABEL_46:

          goto LABEL_47;
        }

        v72 = v21;
        v22 = v57;
LABEL_35:
        v63 = [v22 path];
        v40 = [v63 lowercaseString];
        v41 = [v25 path];
        v42 = [v41 lowercaseString];
        v62 = v40;
        if (v40 == v42)
        {
          v69 = 1;
          i = v24;
          v5 = v80;
          v39 = v70;
        }

        else
        {
          v56 = [v25 path];
          v43 = [v56 lowercaseString];
          if (v43)
          {
            v55 = v43;
            v54 = [v22 path];
            v44 = [v54 lowercaseString];
            v45 = [v25 path];
            v46 = [v45 lowercaseString];
            v69 = [v44 isEqual:v46];

            v22 = v57;
            v43 = v55;
          }

          else
          {
            v69 = 0;
          }

          i = v24;
          v39 = v70;

          v5 = v80;
        }

        v21 = v72;
        v36 = v66;
        if (v74 == v73)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v69 = 0;
      v64 = 0;
      i = v24;
      v5 = v80;
      v39 = v70;
LABEL_47:

LABEL_48:
      if (v79 != v39)
      {
      }

      if (v26 == v27)
      {

        v4 = v78;
      }

      else
      {

        v4 = v78;
      }

      if (v69)
      {
        v47 = 1;
        goto LABEL_59;
      }
    }

    v77 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
    if (v77)
    {
      continue;
    }

    break;
  }

  v47 = 0;
LABEL_59:

LABEL_61:
  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

+ (BOOL)parseClinicalLoginRedirectURL:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 isClinicalLoginRedirectURL:v8])
  {
    v11 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"code"];
    v12 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"state"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v12];
      v14 = v13;
      if (v11)
      {
        if (v13)
        {
          v15 = v9[2](v9, v11, v13);
LABEL_9:
          v17 = v15;
LABEL_12:

          goto LABEL_13;
        }

        v14 = LABEL_8:;
        v15 = v10[2](v10, v14, 0);
        goto LABEL_9;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v14 = 0;
    }

    v18 = [v8 hk_valueForFirstInstanceOfParameterNamed:@"error"];
    v19 = [MEMORY[0x1E696ABC0] hk_OAuth2_errorFromErrorValue:v18];
    v17 = (v10)[2](v10, v19, v14);

    goto LABEL_12;
  }

  v16 = MEMORY[0x1E696ABC0];
  v11 = HKSensitiveLogItem(v8);
  v12 = [v16 hk_error:3 format:{@"Invalid redirect URL: %@", v11}];
  v17 = v10[2](v10, v12, 0);
LABEL_13:

  return v17;
}

+ (BOOL)isAtrialFibrillationEventURL:(id)a3
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a3;
  v5 = [v3 _hk_urlForAtrialFibrillationEventType];
  v6 = [v4 isEqual:v5];

  return v6;
}

@end