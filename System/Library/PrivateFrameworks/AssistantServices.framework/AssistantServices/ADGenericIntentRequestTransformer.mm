@interface ADGenericIntentRequestTransformer
- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation ADGenericIntentRequestTransformer

- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v38 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = +[NSAssertionHandler currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"ADGenericIntentRequestTransformer.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"[aceCommand isKindOfClass:[SAIntentGroupSupportedIntentResponse class]]"}];
  }

  v8 = v7;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [v8 launchId];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = [v8 parameters];
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v16 ad_filteredDictionaryWithAppID:v10];
        if (v17)
        {
          v18 = [v16 name];

          if (v18)
          {
            v19 = [v16 name];
            [v9 setObject:v17 forKey:v19];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = [v8 commands];
  v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v39 + 1) + 8 * j);
        v26 = [v25 dictionary];
        if (v26)
        {
          v27 = v26;
          v28 = [v25 name];

          if (v28)
          {
            v29 = [v25 dictionary];
            v30 = [v25 name];
            [v9 setObject:v29 forKey:v30];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v22);
  }

  v31 = [STGenericIntentRequest alloc];
  v32 = [v8 launchId];
  v33 = [v8 useCaseId];
  v34 = [v8 utterance];
  v35 = [v31 initWithAppIdentifier:v32 intentString:v33 utterance:v34 info:v9];

  [v35 _setLaunchToForeground:{objc_msgSend(v8, "backgroundLaunch") ^ 1}];
  v36 = [v8 aceId];
  [v35 _setOriginatingAceID:v36];

  v38[2](v38, v35);
}

@end