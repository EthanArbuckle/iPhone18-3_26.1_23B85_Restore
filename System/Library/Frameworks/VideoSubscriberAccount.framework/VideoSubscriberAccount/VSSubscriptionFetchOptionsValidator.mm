@interface VSSubscriptionFetchOptionsValidator
- (VSSubscriptionPredicateFactory)predicateFactory;
- (id)standardizedFetchOptionsFromOptions:(id)a3 withSecurityTask:(id)a4;
- (id)subscriptionFetchOptionsAllowedForSecurityTask:(id)a3;
@end

@implementation VSSubscriptionFetchOptionsValidator

- (VSSubscriptionPredicateFactory)predicateFactory
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_predicateFactory;
  if (!v3)
  {
    v3 = objc_alloc_init(VSSubscriptionPredicateFactory);
    objc_storeStrong(&v2->_predicateFactory, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (id)subscriptionFetchOptionsAllowedForSecurityTask:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  *buf = MEMORY[0x277D85DD0];
  v47 = 3221225472;
  v48 = __VSAllSubscriptionFetchOptions_block_invoke;
  v49 = &unk_278B73708;
  v50 = &unk_284DF34D8;
  v51 = MEMORY[0x277CBEC38];
  if (VSAllSubscriptionFetchOptions___vs_lazy_init_predicate != -1)
  {
    dispatch_once(&VSAllSubscriptionFetchOptions___vs_lazy_init_predicate, buf);
  }

  v5 = v51;
  v6 = VSAllSubscriptionFetchOptions___vs_lazy_init_variable;

  v7 = [v6 mutableCopy];
  v8 = v4;
  v9 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  [(VSSubscriptionFetchOptionDescription *)v9 setKey:@"VSSubscriptionFetchOptionSubscriberIdentifierHashModifier"];
  [(VSSubscriptionFetchOptionDescription *)v9 setAllowedClass:objc_opt_class()];
  v45 = 0;
  v44 = 0;
  v10 = [v8 getValue:&v45 forEntitlement:@"com.apple.private.subscriptionservce.subscriber-identifier-hash-modifiers" error:&v44];
  v11 = v45;
  v12 = v44;
  if (!v10)
  {
    v23 = VSErrorLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(VSSubscriptionFetchOptionsValidator *)v12 subscriptionFetchOptionsAllowedForSecurityTask:v23];
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v23 = VSDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v23, OS_LOG_TYPE_DEFAULT, "No allowed hash modifiers.", buf, 2u);
    }

LABEL_20:

    v9 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
    if ([v13 count])
    {
      v36 = v11;
      v37 = v9;
      v38 = v8;
      v39 = v7;
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v35 = v13;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v40 objects:buf count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        v19 = *MEMORY[0x277CBE660];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(VSSubscriptionFetchOptionDescription *)v14 addObject:v21];
            }

            else
            {
              [MEMORY[0x277CBEAD8] raise:v19 format:{@"Value (%@) in %@ entitlement array is not a string.", v21, @"com.apple.private.subscriptionservce.subscriber-identifier-hash-modifiers"}];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v40 objects:buf count:16];
        }

        while (v17);
      }

      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self in %@", v14];
      v9 = v37;
      [(VSSubscriptionFetchOptionDescription *)v37 setAllowedValuePredicate:v22];
      v7 = v39;
      v8 = v38;
      v11 = v36;
      v13 = v35;
    }

    else
    {
      v22 = VSDefaultLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v22, OS_LOG_TYPE_DEFAULT, "Allowed hash modifiers array is empty.", buf, 2u);
      }

      v14 = v9;
      v9 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Value for %@ entitlement is not an array.", @"com.apple.private.subscriptionservce.subscriber-identifier-hash-modifiers"}];
  }

LABEL_21:

  if (v9)
  {
    [v7 setObject:v9 forKey:@"VSSubscriptionFetchOptionSubscriberIdentifierHashModifier"];
  }

  v24 = [v7 objectForKey:@"VSSubscriptionFetchOptionSources"];
  v25 = [v24 copy];

  if (v25)
  {
    v26 = v25;
    v27 = [(VSSubscriptionFetchOptionsValidator *)self predicateFactory];
    v28 = [v27 allowedSubscriptionSourcesPredicateForRequestKind:0 fromTask:v8];

    [v26 setAllowedValuePredicate:v28];
    [v7 setObject:v26 forKey:@"VSSubscriptionFetchOptionSources"];
  }

  v29 = [v7 objectForKey:@"VSSubscriptionFetchOptionSourceKind"];
  v30 = [v29 copy];

  if (v30)
  {
    v31 = v30;
    v32 = [(VSSubscriptionFetchOptionsValidator *)self predicateFactory];
    v33 = [v32 allowedSubscriptionSourceKindsPredicateForRequestKind:0 fromTask:v8];

    [v31 setAllowedValuePredicate:v33];
    [v7 setObject:v31 forKey:@"VSSubscriptionFetchOptionSourceKind"];
  }

  return v7;
}

- (id)standardizedFetchOptionsFromOptions:(id)a3 withSecurityTask:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0x277CBE000uLL;
  v10 = MEMORY[0x277CBE660];
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providedOptions parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*v10 format:@"The securityTask parameter must not be nil."];
LABEL_3:
  v57 = [v6 mutableCopy];
  v53 = v8;
  [(VSSubscriptionFetchOptionsValidator *)self subscriptionFetchOptionsAllowedForSecurityTask:v8];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v52 = v69 = 0u;
  v11 = [v52 allValues];
  v58 = [v11 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v58)
  {
    v12 = *v67;
    v13 = *MEMORY[0x277CBE660];
    v54 = v11;
    v55 = v6;
    v56 = *v67;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        v60 = objc_autoreleasePoolPush();
        v16 = [v15 key];
        v61 = [v6 objectForKey:v16];
        if (v61)
        {
          v59 = i;
          v17 = [v15 allowedClass];
          v18 = [v15 allowedValuePredicate];
          if ([v15 isContainer])
          {
            if (objc_opt_respondsToSelector())
            {
              v19 = [v61 count];
              v20 = [v15 minCount];
              if (v19 >= v20)
              {
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v29 = v61;
                v30 = [v29 countByEnumeratingWithState:&v62 objects:v70 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v63;
                  do
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v63 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v34 = *(*(&v62 + 1) + 8 * j);
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v35 = MEMORY[0x277CBEAD8];
                        v51 = objc_opt_class();
                        v36 = v35;
                        v9 = 0x277CBE000uLL;
                        [v36 raise:v13 format:{@"Contained value (%@) for option %@ was a %@ instead of some kind of %@", v34, v16, v51, v17}];
                      }

                      if (([v18 evaluateWithObject:v34] & 1) == 0)
                      {
                        [*(v9 + 2776) raise:v13 format:{@"Contained value (%@) for option %@ not allowed %@", v34, v16, v18}];
                      }
                    }

                    v31 = [v29 countByEnumeratingWithState:&v62 objects:v70 count:16];
                  }

                  while (v31);
                }

                v11 = v54;
                v6 = v55;
              }

              else
              {
                v21 = v20;
                v22 = MEMORY[0x277CBEAD8];
                v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
                v25 = v22;
                v9 = 0x277CBE000;
                [v25 raise:v13 format:{@"Collection count (%@) for option %@ was less than %@ minimum.", v23, v16, v24}];
              }

              v12 = v56;
            }

            else
            {
              [*(v9 + 2776) raise:v13 format:{@"Cannot enumerates values in %@ for option %@", v61, v16, v49}];
            }
          }

          else
          {
            v26 = v61;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = *(v9 + 2776);
              v50 = objc_opt_class();
              v28 = v27;
              v26 = v61;
              [v28 raise:v13 format:{@"Provided value (%@) for option %@ was a %@ instead of some kind of %@", v61, v16, v50, v17}];
            }

            if (([v18 evaluateWithObject:v26] & 1) == 0)
            {
              [*(v9 + 2776) raise:v13 format:{@"Provided value (%@) for option %@ not allowed %@", v26, v16, v18}];
            }
          }

          i = v59;
        }

        else
        {
          v18 = [v15 defaultValue];
          if (v18)
          {
            [v57 setObject:v18 forKey:v16];
          }
        }

        objc_autoreleasePoolPop(v60);
      }

      v58 = [v11 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v58);
  }

  v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v38 = [v52 allValues];
  v39 = [v38 valueForKeyPath:@"key"];

  if (v39)
  {
    [v37 addObjectsFromArray:v39];
  }

  v40 = MEMORY[0x277CBEB98];
  v41 = [v57 allKeys];
  v42 = [v40 setWithArray:v41];

  v43 = [v42 mutableCopy];
  [v43 minusSet:v37];
  if ([v43 count])
  {
    v44 = MEMORY[0x277CBEAD8];
    v45 = *MEMORY[0x277CBE660];
    v46 = [v43 allObjects];
    v47 = [v46 componentsJoinedByString:{@", "}];
    [v44 raise:v45 format:{@"Unrecognized options provided: %@", v47}];
  }

  return v57;
}

- (void)subscriptionFetchOptionsAllowedForSecurityTask:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Unable to obtain value for hash modifiers entitlement: %@", &v2, 0xCu);
}

@end