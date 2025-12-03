@interface HMPredicateUtilities
+ (BOOL)areOnlyHourAndMinuteSet:(id)set;
+ (BOOL)containsPresenceEvents:(id)events;
+ (BOOL)validatePredicate:(id)predicate;
+ (id)audioAnalysisNotificationOptionsInPredicate:(id)predicate;
+ (id)bitwiseAndValueWithKeyPath:(id)path inComparisonPredicate:(id)predicate validValues:(int64_t)values;
+ (id)bitwiseAndValueWithKeyPath:(id)path inPredicate:(id)predicate validValues:(int64_t)values;
+ (id)rewritePredicateForClient:(id)client home:(id)home;
+ (id)rewritePredicateForDaemon:(id)daemon;
+ (id)rewritePredicateForDaemon:(id)daemon characteristicIsInvalid:(BOOL *)invalid;
@end

@implementation HMPredicateUtilities

+ (id)bitwiseAndValueWithKeyPath:(id)path inComparisonPredicate:(id)predicate validValues:(int64_t)values
{
  pathCopy = path;
  predicateCopy = predicate;
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  predicateOperatorType = [predicateCopy predicateOperatorType];

  if (predicateOperatorType != 5)
  {
    goto LABEL_11;
  }

  if ([rightExpression expressionType])
  {
    goto LABEL_11;
  }

  constantValue = [rightExpression constantValue];
  v13 = [constantValue isEqual:&unk_1F0EFCBA8];

  if (!v13 || [leftExpression expressionType] != 4)
  {
    goto LABEL_11;
  }

  function = [leftExpression function];
  if (![function isEqualToString:@"bitwiseAnd:with:"])
  {
    goto LABEL_15;
  }

  arguments = [leftExpression arguments];
  v16 = [arguments count];

  if (v16 != 2)
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  arguments2 = [leftExpression arguments];
  function = [arguments2 objectAtIndexedSubscript:0];

  if ([function expressionType] == 3)
  {
    keyPath = [function keyPath];
    v19 = [keyPath isEqualToString:pathCopy];

    if (v19)
    {
      arguments3 = [leftExpression arguments];
      v21 = [arguments3 objectAtIndexedSubscript:1];

      if ([v21 expressionType])
      {
        v22 = 0;
      }

      else
      {
        constantValue2 = [v21 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = constantValue2;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        v22 = 0;
        if (([v26 unsignedIntegerValue] & ~values) == 0)
        {
          v22 = v26;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_15:
  v22 = 0;
LABEL_16:

LABEL_12:

  return v22;
}

+ (id)bitwiseAndValueWithKeyPath:(id)path inPredicate:(id)predicate validValues:(int64_t)values
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = predicateCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v11;
  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    subpredicates = [v11 subpredicates];
    v14 = [subpredicates countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(subpredicates);
        }

        v18 = [self bitwiseAndValueWithKeyPath:pathCopy inPredicate:*(*(&v24 + 1) + 8 * v17) validValues:values];
        if (v18)
        {
          goto LABEL_19;
        }

        if (v15 == ++v17)
        {
          v15 = [subpredicates countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }

  else
  {
    v19 = predicateCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    subpredicates = v20;

    if (subpredicates)
    {
      v18 = [self bitwiseAndValueWithKeyPath:pathCopy inComparisonPredicate:subpredicates validValues:values];
LABEL_19:
      v21 = v18;
      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_21:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)audioAnalysisNotificationOptionsInPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = [objc_opt_class() bitwiseAndValueWithKeyPath:@"audioAnalysisEventNotificationOptions" inPredicate:predicateCopy validValues:-1];

  return v4;
}

+ (BOOL)containsPresenceEvents:(id)events
{
  v20 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subpredicates = [eventsCopy subpredicates];
    v6 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(subpredicates);
          }

          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = [self containsPresenceEvents:*(*(&v15 + 1) + 8 * i)];
          }
        }

        v7 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      leftExpression = [eventsCopy leftExpression];
      if ([leftExpression expressionType] == 3)
      {
        keyPath = [leftExpression keyPath];
        v8 = [keyPath isEqualToString:@"presence"];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)rewritePredicateForDaemon:(id)daemon characteristicIsInvalid:(BOOL *)invalid
{
  v55 = *MEMORY[0x1E69E9840];
  daemonCopy = daemon;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = daemonCopy;
    array = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    subpredicates = [v6 subpredicates];
    v9 = [subpredicates countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(subpredicates);
          }

          v13 = [HMPredicateUtilities rewritePredicateForDaemon:*(*(&v48 + 1) + 8 * i) characteristicIsInvalid:invalid];
          if (v13)
          {
            [array addObject:v13];
          }
        }

        v10 = [subpredicates countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v10);
    }

    if ([array count])
    {
      v14 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v6 subpredicates:{"compoundPredicateType"), array}];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_37;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = daemonCopy;
  v14 = v16;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_38;
  }

  array = [v16 leftExpression];
  rightExpression = [v14 rightExpression];
  if ([array expressionType] == 3)
  {
    keyPath = [array keyPath];
    v19 = [keyPath isEqualToString:@"characteristic"];

    if (v19)
    {
      if (![rightExpression expressionType])
      {
        constantValue = [rightExpression constantValue];
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          constantValue2 = [rightExpression constantValue];
          service = [constantValue2 service];
          accessory = [service accessory];
          if (!accessory || ([service targetAccessoryUUID], v25 = objc_claimAutoreleasedReturnValue(), v25, !constantValue2) || !service || !v25)
          {
            if (invalid)
            {
              *invalid = 1;
            }

            v14 = 0;
            goto LABEL_36;
          }

          v44 = MEMORY[0x1E696ABC8];
          v52[0] = @"kAccessoryUUID";
          targetAccessoryUUID = [service targetAccessoryUUID];
          uUIDString = [targetAccessoryUUID UUIDString];
          v53[0] = uUIDString;
          v52[1] = @"kServiceInstanceID";
          instanceID = [service instanceID];
          v53[1] = instanceID;
          v52[2] = @"kCharacteristicInstanceID";
          instanceID2 = [constantValue2 instanceID];
          v53[2] = instanceID2;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
          v45 = [v44 expressionForConstantValue:v27];

          rightExpression = v45;
        }
      }

      goto LABEL_35;
    }
  }

  if ([array expressionType] != 3 || (objc_msgSend(array, "keyPath"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", @"characteristicValue"), v28, !v29))
  {
    if ([array expressionType] == 3)
    {
      keyPath2 = [array keyPath];
      v32 = [keyPath2 isEqualToString:@"presence"];

      if (v32)
      {
        if (![rightExpression expressionType])
        {
          constantValue3 = [rightExpression constantValue];
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();

          if (v34)
          {
            constantValue4 = [rightExpression constantValue];
            v36 = MEMORY[0x1E696ABC8];
            _serializeForAdd = [constantValue4 _serializeForAdd];
            v38 = [v36 expressionForConstantValue:_serializeForAdd];

            rightExpression = v38;
          }
        }
      }
    }

    goto LABEL_35;
  }

  expressionType = [rightExpression expressionType];
  if (!invalid || expressionType || !*invalid)
  {
LABEL_35:
    v39 = objc_alloc(MEMORY[0x1E696AB18]);
    leftExpression = [v14 leftExpression];
    v14 = [v39 initWithLeftExpression:leftExpression rightExpression:rightExpression modifier:objc_msgSend(v14 type:"comparisonPredicateModifier") options:{objc_msgSend(v14, "predicateOperatorType"), objc_msgSend(v14, "options")}];

    goto LABEL_36;
  }

  v14 = 0;
  *invalid = 0;
LABEL_36:

LABEL_37:
LABEL_38:

  v41 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)rewritePredicateForDaemon:(id)daemon
{
  v5 = 0;
  v3 = [self rewritePredicateForDaemon:daemon characteristicIsInvalid:&v5];

  return v3;
}

+ (id)rewritePredicateForClient:(id)client home:(id)home
{
  v52 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  homeCopy = home;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = clientCopy;
    v7 = clientCopy;
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    subpredicates = [v7 subpredicates];
    v10 = [subpredicates countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(subpredicates);
          }

          v14 = [HMPredicateUtilities rewritePredicateForClient:*(*(&v47 + 1) + 8 * i) home:homeCopy];
          [array addObject:v14];
        }

        v11 = [subpredicates countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v11);
    }

    v15 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v7 subpredicates:{"compoundPredicateType"), array}];
    clientCopy = v45;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = clientCopy;
    v15 = v17;
    if (isKindOfClass)
    {
      leftExpression = [v17 leftExpression];
      rightExpression = [v15 rightExpression];
      if ([leftExpression expressionType] == 3)
      {
        keyPath = [leftExpression keyPath];
        v21 = [keyPath isEqualToString:@"characteristic"];

        if (v21)
        {
          rightExpression2 = [v15 rightExpression];

          if (![rightExpression2 expressionType])
          {
            constantValue = [rightExpression2 constantValue];
            objc_opt_class();
            v24 = objc_opt_isKindOfClass();

            if (v24)
            {
              constantValue2 = [rightExpression2 constantValue];
              v26 = [constantValue2 hmf_UUIDForKey:@"kAccessoryUUID"];
              v27 = [constantValue2 hmf_numberForKey:@"kServiceInstanceID"];
              v28 = [constantValue2 hmf_numberForKey:@"kCharacteristicInstanceID"];
              v46 = v27;
              v29 = [homeCopy _findCharacteristic:v28 forService:v27 accessoryUUID:v26];
              if (v29)
              {
                [MEMORY[0x1E696ABC8] expressionForConstantValue:v29];
                v30 = v44 = v26;

                rightExpression2 = v30;
                v26 = v44;
              }
            }
          }

          rightExpression = rightExpression2;
        }
      }

      if ([leftExpression expressionType] == 3)
      {
        keyPath2 = [leftExpression keyPath];
        v32 = [keyPath2 isEqualToString:@"presence"];

        if (v32)
        {
          rightExpression3 = [v15 rightExpression];

          if (![rightExpression3 expressionType])
          {
            constantValue3 = [rightExpression3 constantValue];
            objc_opt_class();
            v35 = objc_opt_isKindOfClass();

            if (v35)
            {
              constantValue4 = [rightExpression3 constantValue];
              v37 = [HMPresenceEvent createWithDictionary:constantValue4 home:homeCopy];
              if (v37)
              {
                v38 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v37];

                rightExpression3 = v38;
              }
            }
          }

          rightExpression = rightExpression3;
        }
      }

      v39 = objc_alloc(MEMORY[0x1E696AB18]);
      leftExpression2 = [v15 leftExpression];
      v41 = [v39 initWithLeftExpression:leftExpression2 rightExpression:rightExpression modifier:objc_msgSend(v15 type:"comparisonPredicateModifier") options:{objc_msgSend(v15, "predicateOperatorType"), objc_msgSend(v15, "options")}];

      v15 = v41;
    }
  }

  v42 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)areOnlyHourAndMinuteSet:(id)set
{
  v3 = MEMORY[0x1E695DF10];
  setCopy = set;
  v5 = objc_alloc_init(v3);
  [v5 setMinute:{objc_msgSend(setCopy, "minute")}];
  [v5 setHour:{objc_msgSend(setCopy, "hour")}];
  v6 = [MEMORY[0x1E695DF00] now];
  hmf_dateComponents = [v6 hmf_dateComponents];

  [hmf_dateComponents setMinute:{objc_msgSend(setCopy, "minute")}];
  [hmf_dateComponents setHour:{objc_msgSend(setCopy, "hour")}];
  LODWORD(v6) = [setCopy isEqual:v5];

  if (v6)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [hmf_dateComponents isValidDateInCalendar:currentCalendar];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)validatePredicate:(id)predicate
{
  v74 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    goto LABEL_80;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_82;
    }

    v10 = predicateCopy;
    v11 = +[HMHAPMetadata getSharedInstance];
    leftExpression = [v10 leftExpression];
    rightExpression = [v10 rightExpression];
    if ([leftExpression expressionType] != 3 || objc_msgSend(v10, "comparisonPredicateModifier"))
    {
      goto LABEL_25;
    }

    keyPath = [leftExpression keyPath];
    if ([keyPath isEqualToString:@"characteristic"])
    {
      predicateOperatorType = [v10 predicateOperatorType];

      if (predicateOperatorType != 4)
      {
        goto LABEL_25;
      }

      if ([rightExpression expressionType])
      {
        goto LABEL_25;
      }

      constantValue = [rightExpression constantValue];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_25;
      }

      constantValue2 = [rightExpression constantValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = constantValue2;
      }

      else
      {
        v19 = 0;
      }

      keyPath = v19;

      characteristicType = [keyPath characteristicType];
      if (([v11 shouldNotCacheCharacteristicOfType:characteristicType] & 1) == 0)
      {
        properties = [keyPath properties];
        v60 = [properties containsObject:@"HMCharacteristicPropertyReadable"];

        if (v60)
        {
          goto LABEL_79;
        }

LABEL_26:
        v21 = v10;
        leftExpression2 = [v21 leftExpression];
        rightExpression2 = [v21 rightExpression];
        if ([leftExpression2 expressionType] == 3 && !objc_msgSend(v21, "comparisonPredicateModifier"))
        {
          keyPath2 = [leftExpression2 keyPath];
          if ([keyPath2 isEqualToString:@"characteristicValue"])
          {
            if (![v21 predicateOperatorType] || objc_msgSend(v21, "predicateOperatorType") == 1 || objc_msgSend(v21, "predicateOperatorType") == 2 || objc_msgSend(v21, "predicateOperatorType") == 3 || objc_msgSend(v21, "predicateOperatorType") == 4)
            {
            }

            else
            {
              predicateOperatorType2 = [v21 predicateOperatorType];

              if (predicateOperatorType2 != 5)
              {
                goto LABEL_40;
              }
            }

            if (![rightExpression2 expressionType])
            {
              goto LABEL_71;
            }
          }

          else
          {
          }
        }

LABEL_40:

        v25 = v21;
        leftExpression2 = [v25 leftExpression];
        rightExpression2 = [v25 rightExpression];
        if ([leftExpression2 expressionType] == 3 && !objc_msgSend(v25, "comparisonPredicateModifier"))
        {
          keyPath3 = [leftExpression2 keyPath];
          if ([keyPath3 isEqualToString:@"sunrise"])
          {
          }

          else
          {
            keyPath4 = [leftExpression2 keyPath];
            v39 = [keyPath4 isEqualToString:@"sunset"];

            if (!v39)
            {
              goto LABEL_42;
            }
          }

          if ([v25 predicateOperatorType] == 2 || objc_msgSend(v25, "predicateOperatorType") == 1)
          {
            if ([rightExpression2 expressionType] == 4 && (objc_msgSend(rightExpression2, "function"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"add:to:"), v40, v41))
            {
              arguments = [rightExpression2 arguments];
              v43 = [arguments objectAtIndexedSubscript:0];
              if ([v43 expressionType] == 4)
              {
                function = [v43 function];
                v45 = [function isEqualToString:@"now"];

                if (v45)
                {
                  v46 = [arguments objectAtIndexedSubscript:1];
                  if ([v46 expressionType])
                  {
                  }

                  else
                  {
                    constantValue3 = [v46 constantValue];
                    objc_opt_class();
                    v64 = objc_opt_isKindOfClass();

                    if (v64)
                    {

                      goto LABEL_71;
                    }
                  }
                }
              }
            }

            else if ([rightExpression2 expressionType] == 4)
            {
              function2 = [rightExpression2 function];
              v52 = [function2 isEqualToString:@"now"];

              if (v52)
              {
                goto LABEL_71;
              }
            }
          }
        }

LABEL_42:

        v21 = v25;
        leftExpression2 = [v21 leftExpression];
        rightExpression2 = [v21 rightExpression];
        if ([leftExpression2 expressionType] != 3 || objc_msgSend(v21, "comparisonPredicateModifier"))
        {
          goto LABEL_76;
        }

        keyPath5 = [leftExpression2 keyPath];
        if ([keyPath5 isEqualToString:@"presence"])
        {
          predicateOperatorType3 = [v21 predicateOperatorType];

          if (predicateOperatorType3 == 4)
          {
            if (![rightExpression2 expressionType])
            {
              constantValue4 = [rightExpression2 constantValue];
              objc_opt_class();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                constantValue5 = [rightExpression2 constantValue];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = constantValue5;
                }

                else
                {
                  v31 = 0;
                }

                v32 = v31;

                presenceEventType = [v32 presenceEventType];
                if ((presenceEventType - 3) >= 2)
                {
                  if ((presenceEventType - 1) > 1)
                  {
                    v34 = objc_autoreleasePoolPush();
                    v35 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      v36 = HMFGetLogIdentifier();
                      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v32, "presenceEventType")}];
                      *buf = 138543618;
                      v71 = v36;
                      v73 = v72 = 2112;
                      v63 = v73;
                      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unsupported presence eventType: %@", buf, 0x16u);

                      goto LABEL_94;
                    }
                  }

                  else
                  {
                    v34 = objc_autoreleasePoolPush();
                    v35 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                    {
                      v36 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v71 = v36;
                      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_INFO, "%{public}@Every entry or exit is not supported in presence events in predicate", buf, 0xCu);
LABEL_94:
                    }
                  }

                  objc_autoreleasePoolPop(v34);
LABEL_76:

                  v53 = [HMPredicateUtilities significantEventTypesInComparisonPredicate:v21];

                  if (v53)
                  {
                    goto LABEL_79;
                  }

                  v54 = [HMPredicateUtilities personFamiliarityOptionsInComparisonPredicate:v21];

                  if (v54)
                  {
                    goto LABEL_79;
                  }

                  v55 = [HMPredicateUtilities audioAnalysisNotificationOptionsInPredicate:v21];

                  if (v55)
                  {
                    goto LABEL_79;
                  }

                  valid = isValidTimeComparison(v21);

                  if (valid)
                  {
                    goto LABEL_80;
                  }

LABEL_82:
                  v9 = 0;
                  goto LABEL_83;
                }

LABEL_71:
LABEL_79:

LABEL_80:
                v9 = 1;
                goto LABEL_83;
              }
            }

            v47 = objc_autoreleasePoolPush();
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v71 = v49;
              v72 = 2112;
              v73 = v21;
              v50 = "%{public}@Invalid presence right condition: %@";
              goto LABEL_74;
            }

            goto LABEL_75;
          }
        }

        else
        {
        }

        v47 = objc_autoreleasePoolPush();
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v49;
          v72 = 2112;
          v73 = v21;
          v50 = "%{public}@Invalid presence left condition: %@";
LABEL_74:
          _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_ERROR, v50, buf, 0x16u);
        }

LABEL_75:

        objc_autoreleasePoolPop(v47);
        goto LABEL_76;
      }
    }

LABEL_25:
    goto LABEL_26;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  subpredicates = [predicateCopy subpredicates];
  v5 = [subpredicates countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(subpredicates);
        }

        if (![HMPredicateUtilities validatePredicate:*(*(&v65 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_38;
        }
      }

      v6 = [subpredicates countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_38:

LABEL_83:
  v57 = *MEMORY[0x1E69E9840];
  return v9;
}

@end