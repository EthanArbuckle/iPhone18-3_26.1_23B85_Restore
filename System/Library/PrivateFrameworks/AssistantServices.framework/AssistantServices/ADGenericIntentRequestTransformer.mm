@interface ADGenericIntentRequestTransformer
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADGenericIntentRequestTransformer

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = +[NSAssertionHandler currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"ADGenericIntentRequestTransformer.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"[aceCommand isKindOfClass:[SAIntentGroupSupportedIntentResponse class]]"}];
  }

  v8 = commandCopy;
  v9 = objc_alloc_init(NSMutableDictionary);
  launchId = [v8 launchId];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  parameters = [v8 parameters];
  v12 = [parameters countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(parameters);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v16 ad_filteredDictionaryWithAppID:launchId];
        if (v17)
        {
          name = [v16 name];

          if (name)
          {
            name2 = [v16 name];
            [v9 setObject:v17 forKey:name2];
          }
        }
      }

      v13 = [parameters countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  commands = [v8 commands];
  v21 = [commands countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          objc_enumerationMutation(commands);
        }

        v25 = *(*(&v39 + 1) + 8 * j);
        dictionary = [v25 dictionary];
        if (dictionary)
        {
          v27 = dictionary;
          name3 = [v25 name];

          if (name3)
          {
            dictionary2 = [v25 dictionary];
            name4 = [v25 name];
            [v9 setObject:dictionary2 forKey:name4];
          }
        }
      }

      v22 = [commands countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v22);
  }

  v31 = [STGenericIntentRequest alloc];
  launchId2 = [v8 launchId];
  useCaseId = [v8 useCaseId];
  utterance = [v8 utterance];
  v35 = [v31 initWithAppIdentifier:launchId2 intentString:useCaseId utterance:utterance info:v9];

  [v35 _setLaunchToForeground:{objc_msgSend(v8, "backgroundLaunch") ^ 1}];
  aceId = [v8 aceId];
  [v35 _setOriginatingAceID:aceId];

  handlerCopy[2](handlerCopy, v35);
}

@end