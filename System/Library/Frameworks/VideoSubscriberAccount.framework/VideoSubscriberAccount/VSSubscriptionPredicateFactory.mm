@interface VSSubscriptionPredicateFactory
+ (id)_subscriptionPredicateTemplateValues;
+ (id)_subscriptionSourceKindPredicateTemplateValues;
+ (id)_subscriptionSourcePredicateTemplateValues;
- (VSAppInstallationInfoCenter)appInstallationInfoCenter;
- (id)_expressionByConvertingSubscriptionKeyPathInExpression:(id)a3 toAttributeKeysInEntity:(id)a4;
- (id)_predicateTemplateForAppPredicate:(id)a3 withTask:(id)a4;
- (id)_predicateTemplateForRequestKind:(int64_t)a3 fromTask:(id)a4;
- (id)_predicateTemplateForSourceIdentifier:(id)a3;
- (id)_predicateTemplateForSourceKind:(int64_t)a3;
- (id)_predicateTemplateForSourceOfTask:(id)a3;
- (id)_topLevelAccessPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4;
- (id)allowedSubscriptionSourceKindsPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4;
- (id)allowedSubscriptionSourcesPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4;
- (id)allowedSubscriptionsPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4;
- (id)allowedSubscriptionsPredicateForTask:(id)a3;
- (id)predicateByConvertingSubscriptionKeyPathsInPredicate:(id)a3 toAttributeKeysInEntity:(id)a4;
- (id)subscriptionFetchPredicateForTask:(id)a3 withOptions:(id)a4;
@end

@implementation VSSubscriptionPredicateFactory

+ (id)_subscriptionSourceKindPredicateTemplateValues
{
  if (_subscriptionSourceKindPredicateTemplateValues___vs_lazy_init_predicate != -1)
  {
    +[VSSubscriptionPredicateFactory _subscriptionSourceKindPredicateTemplateValues];
  }

  v3 = _subscriptionSourceKindPredicateTemplateValues___vs_lazy_init_variable;

  return v3;
}

uint64_t __80__VSSubscriptionPredicateFactory__subscriptionSourceKindPredicateTemplateValues__block_invoke()
{
  _subscriptionSourceKindPredicateTemplateValues___vs_lazy_init_variable = __80__VSSubscriptionPredicateFactory__subscriptionSourceKindPredicateTemplateValues__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __80__VSSubscriptionPredicateFactory__subscriptionSourceKindPredicateTemplateValues__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v0 setObject:v1 forKey:@"VSSubscriptionSourceKindVariableName"];

  v2 = [v0 copy];

  return v2;
}

+ (id)_subscriptionSourcePredicateTemplateValues
{
  if (_subscriptionSourcePredicateTemplateValues___vs_lazy_init_predicate != -1)
  {
    +[VSSubscriptionPredicateFactory _subscriptionSourcePredicateTemplateValues];
  }

  v3 = _subscriptionSourcePredicateTemplateValues___vs_lazy_init_variable;

  return v3;
}

uint64_t __76__VSSubscriptionPredicateFactory__subscriptionSourcePredicateTemplateValues__block_invoke()
{
  _subscriptionSourcePredicateTemplateValues___vs_lazy_init_variable = __76__VSSubscriptionPredicateFactory__subscriptionSourcePredicateTemplateValues__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __76__VSSubscriptionPredicateFactory__subscriptionSourcePredicateTemplateValues__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"kind"];
  [v0 setObject:v1 forKey:@"VSSubscriptionSourceKindVariableName"];

  v2 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"identifier"];
  [v0 setObject:v2 forKey:@"VSSubscriptionSourceIdentifierVariableName"];

  v3 = [v0 copy];

  return v3;
}

+ (id)_subscriptionPredicateTemplateValues
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_subscriptionPredicateTemplateValues___vs_lazy_init_predicate != -1)
  {
    dispatch_once(&_subscriptionPredicateTemplateValues___vs_lazy_init_predicate, block);
  }

  v2 = _subscriptionPredicateTemplateValues___vs_lazy_init_variable;

  return v2;
}

void __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e5__8__0l;
  aBlock[4] = *(a1 + 32);
  v1 = _Block_copy(aBlock);
  v2 = v1[2]();
  v3 = _subscriptionPredicateTemplateValues___vs_lazy_init_variable;
  _subscriptionPredicateTemplateValues___vs_lazy_init_variable = v2;
}

id __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) _subscriptionSourcePredicateTemplateValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke_3;
  v7[3] = &unk_278B73168;
  v8 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = [v4 copy];

  return v5;
}

void __70__VSSubscriptionPredicateFactory__subscriptionPredicateTemplateValues__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v12[0] = @"source";
  v8 = [v6 keyPath];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v9 componentsJoinedByString:@"."];

  v11 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v10];
  [*(a1 + 32) setObject:v11 forKey:v5];

  objc_autoreleasePoolPop(v7);
}

- (id)_predicateTemplateForSourceKind:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA9C0] expressionForVariable:@"VSSubscriptionSourceKindVariableName"];
  v5 = MEMORY[0x277CCA9C0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 expressionForConstantValue:v6];

  v8 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v4 rightExpression:v7 modifier:0 type:4 options:0];

  return v8;
}

- (id)_predicateTemplateForSourceIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCA9C0];
  v4 = a3;
  v5 = [v3 expressionForVariable:@"VSSubscriptionSourceIdentifierVariableName"];
  v6 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v4];

  v7 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v5 rightExpression:v6 modifier:0 type:4 options:0];

  return v7;
}

- (id)_topLevelAccessPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4
{
  v5 = a4;
  if (([v5 shouldAllowAccessForBooleanEntitlement:@"com.apple.private.subscriptionservice.internal"] & 1) != 0 || (v6 = objc_msgSend(v5, "shouldAllowAccessForBooleanEntitlement:", @"com.apple.private.subscriptionservice.all-sources.read-only"), v7 = 0, !a3) && v6)
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  return v7;
}

- (id)_predicateTemplateForAppPredicate:(id)a3 withTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v7 shouldAllowAccessForBooleanEntitlement:@"com.apple.smoot.subscriptionservice"])
  {
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    [v8 addObject:v6];
    goto LABEL_7;
  }

  v9 = [v7 shouldAllowAccessForBooleanEntitlement:@"com.apple.developer.video-subscription-registration"];
  if (v6 && (v9 & 1) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if ([v7 shouldAllowAccessForBooleanEntitlement:@"com.apple.private.subscriptionservice.web-sources.read-write"])
  {
    v10 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceKind:1];
    [v8 addObject:v10];
  }

  v11 = [v8 count];
  if (v11 == 1)
  {
    v12 = [v8 objectAtIndex:0];
  }

  else
  {
    if (v11)
    {
      [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v8];
    }

    else
    {
      [MEMORY[0x277CCAC30] predicateWithValue:0];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

- (id)_predicateTemplateForSourceOfTask:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 signingIdentifier];
  if (v4)
  {
    v5 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceKind:0];
    v6 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceIdentifier:v4];
    v7 = MEMORY[0x277CCA920];
    v11[0] = v5;
    v11[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VSSubscriptionPredicateFactory _predicateTemplateForSourceOfTask:v5];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_predicateTemplateForRequestKind:(int64_t)a3 fromTask:(id)a4
{
  v6 = a4;
  v7 = [(VSSubscriptionPredicateFactory *)self _topLevelAccessPredicateForRequestKind:a3 fromTask:v6];
  if (!v7)
  {
    v8 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceOfTask:v6];
    v7 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForAppPredicate:v8 withTask:v6];
  }

  return v7;
}

- (VSAppInstallationInfoCenter)appInstallationInfoCenter
{
  v2 = self->_appInstallationInfoCenter;
  if (!v2)
  {
    v2 = objc_alloc_init(VSAppInstallationInfoCenter);
  }

  return v2;
}

- (id)allowedSubscriptionSourceKindsPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4
{
  v6 = a4;
  v7 = [(VSSubscriptionPredicateFactory *)self _topLevelAccessPredicateForRequestKind:a3 fromTask:v6];
  if (!v7)
  {
    v8 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceKind:0];
    v7 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForAppPredicate:v8 withTask:v6];
  }

  v9 = [objc_opt_class() _subscriptionSourceKindPredicateTemplateValues];
  v10 = [v7 predicateWithSubstitutionVariables:v9];

  v11 = [VSOptional optionalWithObject:v10];
  v12 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v13 = [v11 unwrapWithFallback:v12];

  return v13;
}

- (id)allowedSubscriptionSourcesPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4
{
  v4 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForRequestKind:a3 fromTask:a4];
  v5 = [objc_opt_class() _subscriptionSourcePredicateTemplateValues];
  v6 = [v4 predicateWithSubstitutionVariables:v5];

  v7 = [VSOptional optionalWithObject:v6];
  v8 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v9 = [v7 unwrapWithFallback:v8];

  return v9;
}

- (id)allowedSubscriptionsPredicateForTask:(id)a3
{
  v3 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForSourceOfTask:a3];
  v4 = [objc_opt_class() _subscriptionPredicateTemplateValues];
  v5 = [v3 predicateWithSubstitutionVariables:v4];

  v6 = [VSOptional optionalWithObject:v5];
  v7 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v8 = [v6 unwrapWithFallback:v7];

  return v8;
}

- (id)allowedSubscriptionsPredicateForRequestKind:(int64_t)a3 fromTask:(id)a4
{
  v4 = [(VSSubscriptionPredicateFactory *)self _predicateTemplateForRequestKind:a3 fromTask:a4];
  v5 = [objc_opt_class() _subscriptionPredicateTemplateValues];
  v6 = [v4 predicateWithSubstitutionVariables:v5];

  v7 = [VSOptional optionalWithObject:v6];
  v8 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v9 = [v7 unwrapWithFallback:v8];

  return v9;
}

- (id)subscriptionFetchPredicateForTask:(id)a3 withOptions:(id)a4
{
  v79[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = +[VSFeatureManager sharedFeatureManager];
  v10 = [v9 featureIsEnabled:VSFederatedTwoFeatureName];

  if ((v10 & 1) == 0)
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Security task is required when %@ feature is disabled.", VSFederatedTwoFeatureName}];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The taskOrNil parameter must not be nil."];
    }

    v11 = [(VSSubscriptionPredicateFactory *)self allowedSubscriptionsPredicateForRequestKind:0 fromTask:v6];
    if (v11)
    {
      [v8 addObject:v11];
    }
  }

  v70 = v6;
  v12 = [v7 objectForKey:@"VSSubscriptionFetchOptionEarliestExpirationDate"];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEAA8] date];
  }

  v13 = 0x277CCA000uLL;
  v68 = v12;
  v67 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"expirationDate", v12];
  [v8 addObject:?];
  v14 = [v7 objectForKey:@"VSSubscriptionFetchOptionExcludeUninstalledApps"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v65 = [(VSSubscriptionPredicateFactory *)self appInstallationInfoCenter];
    v16 = [v65 installedAppBundleIDs];
    v63 = [v16 forceUnwrapObject];

    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", @"source.kind", &unk_284DF32B0];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"source.kind", &unk_284DF32B0];
    v19 = v18 = v8;
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"source.identifier", v63];
    v21 = v20 = v7;
    v22 = MEMORY[0x277CCA920];
    v79[0] = v19;
    v79[1] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];

    v25 = MEMORY[0x277CCA920];
    v78[0] = v17;
    v78[1] = v24;
    v13 = 0x277CCA000uLL;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    v27 = [v25 orPredicateWithSubpredicates:v26];

    [v18 addObject:v27];
    v7 = v20;

    v8 = v18;
  }

  v28 = [v7 objectForKey:@"VSSubscriptionFetchOptionCreationDateInterval"];
  if (!v28)
  {
    v29 = objc_alloc(MEMORY[0x277CCA970]);
    v30 = [MEMORY[0x277CBEAA8] distantPast];
    v31 = [MEMORY[0x277CBEAA8] distantFuture];
    v28 = [v29 initWithStartDate:v30 endDate:v31];
  }

  v32 = MEMORY[0x277CCAC30];
  v33 = [v28 startDate];
  v34 = [v28 endDate];
  v35 = [v32 predicateWithFormat:@"%K BETWEEN {%@, %@}", @"creationDate", v33, v34];

  [v8 addObject:v35];
  v36 = [v7 objectForKey:@"VSSubscriptionFetchOptionSources"];
  if (v36)
  {
    v61 = v35;
    v62 = v28;
    v64 = v8;
    v66 = v7;
    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v60 = v36;
    v38 = v36;
    v39 = [v38 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v74;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v74 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v73 + 1) + 8 * i);
          v44 = objc_autoreleasePoolPush();
          v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v43, "kind")}];
          v46 = [v37 objectForKeyedSubscript:v45];

          if (!v46)
          {
            v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [v37 setObject:v47 forKeyedSubscript:v45];
          }

          v48 = [v37 objectForKeyedSubscript:v45];
          v49 = [v43 identifier];
          [v48 addObject:v49];

          objc_autoreleasePoolPop(v44);
        }

        v40 = [v38 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v40);
    }

    if ([v37 count])
    {
      v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __80__VSSubscriptionPredicateFactory_subscriptionFetchPredicateForTask_withOptions___block_invoke;
      v71[3] = &unk_278B731D0;
      v72 = v50;
      v51 = v50;
      [v37 enumerateKeysAndObjectsUsingBlock:v71];
      v52 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v51];
      v8 = v64;
      [v64 addObject:v52];

      v7 = v66;
      v13 = 0x277CCA000;
    }

    else
    {
      v13 = 0x277CCA000uLL;
      v51 = [MEMORY[0x277CCAC30] predicateWithValue:0];
      v8 = v64;
      [v64 addObject:v51];
      v7 = v66;
    }

    v35 = v61;
    v28 = v62;
    v36 = v60;
  }

  v53 = [v7 objectForKey:@"VSSubscriptionFetchOptionSourceKind"];
  if (v53)
  {
    v54 = [*(v13 + 3120) predicateWithFormat:@"%K == %@", @"source.kind", v53];
    [v8 addObject:v54];
  }

  v55 = [v7 objectForKey:@"VSSubscriptionFetchOptionSubscriptionInfo"];
  if (v55)
  {
    [*(v13 + 3120) predicateWithFormat:@"%K == %@", @"providedSubscriptionInfo", v55];
    v57 = v56 = v36;
    [v8 addObject:v57];

    v36 = v56;
  }

  if ([v8 count] < 2)
  {
    [v8 objectAtIndex:0];
  }

  else
  {
    [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
  }
  v58 = ;
  if (!v58)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The predicate parameter must not be nil."];
  }

  objc_autoreleasePoolPop(context);

  return v58;
}

void __80__VSSubscriptionPredicateFactory_subscriptionFetchPredicateForTask_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a2;
  v7 = [a3 allObjects];
  v8 = [v5 predicateWithFormat:@"%K == %@ AND (%K IN %@)", @"source.kind", v6, @"source.identifier", v7];

  [*(a1 + 32) addObject:v8];
}

- (id)_expressionByConvertingSubscriptionKeyPathInExpression:(id)a3 toAttributeKeysInEntity:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v39 = v5;
  v7 = [v5 expressionType];
  if (v7)
  {
    v36 = v6;
    if (v7 == 14)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = [v5 constantValue];
      if ([v17 conformsToProtocol:&unk_284E09B08])
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v35 = v17;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v41;
          v22 = *MEMORY[0x277CBE660];
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v40 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v26 = MEMORY[0x277CBEAD8];
                  v27 = objc_opt_class();
                  v28 = NSStringFromClass(v27);
                  [v26 raise:v22 format:{@"Unexpectedly, object was %@, instead of NSExpression.", v28}];

                  v6 = v36;
                }

                v29 = [(VSSubscriptionPredicateFactory *)self _expressionByConvertingSubscriptionKeyPathInExpression:v24 toAttributeKeysInEntity:v6];
                [v37 addObject:v29];
              }

              else
              {
                [MEMORY[0x277CBEAD8] raise:v22 format:{@"Object (%@) in constant value is not an expression: %@", v24, v5}];
              }

              objc_autoreleasePoolPop(v25);
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v20);
        }

        v17 = v35;
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Unable to enumerate constant value of aggregate expression: expression"];
      }

      v33 = [MEMORY[0x277CCA9C0] expressionForAggregate:v37];

      v39 = v33;
    }

    else if (v7 == 3)
    {
      v8 = [v5 keyPath];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = [v6 attributesByName];
      v10 = [v9 allValues];

      v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v45;
        while (2)
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v45 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v44 + 1) + 8 * j);
            if ([v15 vs_isSuitableForPurpose:1])
            {
              v16 = [v15 vs_subscriptionKeyPath];
              if ([v16 isEqual:v8])
              {
                v30 = MEMORY[0x277CCA9C0];
                v31 = [v15 name];
                v32 = [v30 expressionForKeyPath:v31];

                v39 = v32;
                goto LABEL_31;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"No suitable replacement found for key path %@ in expression %@", v8, v39}];
LABEL_31:

      v6 = v36;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected type of expression: %@", v5}];
    }
  }

  return v39;
}

- (id)predicateByConvertingSubscriptionKeyPathsInPredicate:(id)a3 toAttributeKeysInEntity:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v9 raise:v10 format:{@"Unexpectedly, subscriptionPredicate was %@, instead of NSComparisonPredicate.", v12}];
    }

    v13 = v8;
    v14 = [v13 leftExpression];
    v15 = [(VSSubscriptionPredicateFactory *)self _expressionByConvertingSubscriptionKeyPathInExpression:v14 toAttributeKeysInEntity:v7];

    v16 = [v13 rightExpression];
    v17 = [(VSSubscriptionPredicateFactory *)self _expressionByConvertingSubscriptionKeyPathInExpression:v16 toAttributeKeysInEntity:v7];

    v18 = objc_alloc(MEMORY[0x277CCA918]);
    v19 = [v13 comparisonPredicateModifier];
    v20 = [v13 predicateOperatorType];
    v21 = [v13 options];

    v22 = [v18 initWithLeftExpression:v15 rightExpression:v17 modifier:v19 type:v20 options:v21];
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = MEMORY[0x277CBEAD8];
      v24 = *MEMORY[0x277CBE660];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v23 raise:v24 format:{@"Unexpectedly, subscriptionPredicate was %@, instead of NSCompoundPredicate.", v26}];
    }

    v27 = v8;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v40 = v27;
    v28 = [v27 subpredicates];
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v42;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v41 + 1) + 8 * i);
          v34 = objc_autoreleasePoolPush();
          v35 = [(VSSubscriptionPredicateFactory *)self predicateByConvertingSubscriptionKeyPathsInPredicate:v33 toAttributeKeysInEntity:v7];
          [v15 addObject:v35];

          objc_autoreleasePoolPop(v34);
        }

        v30 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v30);
    }

    v13 = v40;
    v22 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v40 subpredicates:{"compoundPredicateType"), v15}];

    goto LABEL_16;
  }

  v37 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  if ([v8 isEqual:v37])
  {
  }

  else
  {
    v38 = [MEMORY[0x277CCAC30] predicateWithValue:0];
    v39 = [v8 isEqual:v38];

    v22 = v8;
    if (v39)
    {
      goto LABEL_17;
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unknown kind of subscription predicate: %@", v8}];
  }

  v22 = v8;
LABEL_17:

  return v22;
}

@end