@interface HMPredicateUtilities
+ (BOOL)areOnlyHourAndMinuteSet:(id)a3;
+ (BOOL)containsPresenceEvents:(id)a3;
+ (BOOL)validatePredicate:(id)a3;
+ (id)audioAnalysisNotificationOptionsInPredicate:(id)a3;
+ (id)bitwiseAndValueWithKeyPath:(id)a3 inComparisonPredicate:(id)a4 validValues:(int64_t)a5;
+ (id)bitwiseAndValueWithKeyPath:(id)a3 inPredicate:(id)a4 validValues:(int64_t)a5;
+ (id)rewritePredicateForClient:(id)a3 home:(id)a4;
+ (id)rewritePredicateForDaemon:(id)a3;
+ (id)rewritePredicateForDaemon:(id)a3 characteristicIsInvalid:(BOOL *)a4;
@end

@implementation HMPredicateUtilities

+ (id)bitwiseAndValueWithKeyPath:(id)a3 inComparisonPredicate:(id)a4 validValues:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 leftExpression];
  v10 = [v8 rightExpression];
  v11 = [v8 predicateOperatorType];

  if (v11 != 5)
  {
    goto LABEL_11;
  }

  if ([v10 expressionType])
  {
    goto LABEL_11;
  }

  v12 = [v10 constantValue];
  v13 = [v12 isEqual:&unk_1F0EFCBA8];

  if (!v13 || [v9 expressionType] != 4)
  {
    goto LABEL_11;
  }

  v14 = [v9 function];
  if (![v14 isEqualToString:@"bitwiseAnd:with:"])
  {
    goto LABEL_15;
  }

  v15 = [v9 arguments];
  v16 = [v15 count];

  if (v16 != 2)
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v17 = [v9 arguments];
  v14 = [v17 objectAtIndexedSubscript:0];

  if ([v14 expressionType] == 3)
  {
    v18 = [v14 keyPath];
    v19 = [v18 isEqualToString:v7];

    if (v19)
    {
      v20 = [v9 arguments];
      v21 = [v20 objectAtIndexedSubscript:1];

      if ([v21 expressionType])
      {
        v22 = 0;
      }

      else
      {
        v24 = [v21 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        v22 = 0;
        if (([v26 unsignedIntegerValue] & ~a5) == 0)
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

+ (id)bitwiseAndValueWithKeyPath:(id)a3 inPredicate:(id)a4 validValues:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
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
    v13 = [v11 subpredicates];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [a1 bitwiseAndValueWithKeyPath:v8 inPredicate:*(*(&v24 + 1) + 8 * v17) validValues:a5];
        if (v18)
        {
          goto LABEL_19;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
    v19 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v13 = v20;

    if (v13)
    {
      v18 = [a1 bitwiseAndValueWithKeyPath:v8 inComparisonPredicate:v13 validValues:a5];
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

+ (id)audioAnalysisNotificationOptionsInPredicate:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() bitwiseAndValueWithKeyPath:@"audioAnalysisEventNotificationOptions" inPredicate:v3 validValues:-1];

  return v4;
}

+ (BOOL)containsPresenceEvents:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 subpredicates];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = [a1 containsPresenceEvents:*(*(&v15 + 1) + 8 * i)];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
      v11 = [v4 leftExpression];
      if ([v11 expressionType] == 3)
      {
        v12 = [v11 keyPath];
        v8 = [v12 isEqualToString:@"presence"];
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

+ (id)rewritePredicateForDaemon:(id)a3 characteristicIsInvalid:(BOOL *)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = [v6 subpredicates];
    v9 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [HMPredicateUtilities rewritePredicateForDaemon:*(*(&v48 + 1) + 8 * i) characteristicIsInvalid:a4];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v14 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v6 subpredicates:{"compoundPredicateType"), v7}];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_37;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = v5;
  v14 = v16;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_38;
  }

  v7 = [v16 leftExpression];
  v17 = [v14 rightExpression];
  if ([v7 expressionType] == 3)
  {
    v18 = [v7 keyPath];
    v19 = [v18 isEqualToString:@"characteristic"];

    if (v19)
    {
      if (![v17 expressionType])
      {
        v20 = [v17 constantValue];
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();

        if (v21)
        {
          v22 = [v17 constantValue];
          v23 = [v22 service];
          v24 = [v23 accessory];
          if (!v24 || ([v23 targetAccessoryUUID], v25 = objc_claimAutoreleasedReturnValue(), v25, !v22) || !v23 || !v25)
          {
            if (a4)
            {
              *a4 = 1;
            }

            v14 = 0;
            goto LABEL_36;
          }

          v44 = MEMORY[0x1E696ABC8];
          v52[0] = @"kAccessoryUUID";
          v47 = [v23 targetAccessoryUUID];
          v46 = [v47 UUIDString];
          v53[0] = v46;
          v52[1] = @"kServiceInstanceID";
          v43 = [v23 instanceID];
          v53[1] = v43;
          v52[2] = @"kCharacteristicInstanceID";
          v26 = [v22 instanceID];
          v53[2] = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
          v45 = [v44 expressionForConstantValue:v27];

          v17 = v45;
        }
      }

      goto LABEL_35;
    }
  }

  if ([v7 expressionType] != 3 || (objc_msgSend(v7, "keyPath"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", @"characteristicValue"), v28, !v29))
  {
    if ([v7 expressionType] == 3)
    {
      v31 = [v7 keyPath];
      v32 = [v31 isEqualToString:@"presence"];

      if (v32)
      {
        if (![v17 expressionType])
        {
          v33 = [v17 constantValue];
          objc_opt_class();
          v34 = objc_opt_isKindOfClass();

          if (v34)
          {
            v35 = [v17 constantValue];
            v36 = MEMORY[0x1E696ABC8];
            v37 = [v35 _serializeForAdd];
            v38 = [v36 expressionForConstantValue:v37];

            v17 = v38;
          }
        }
      }
    }

    goto LABEL_35;
  }

  v30 = [v17 expressionType];
  if (!a4 || v30 || !*a4)
  {
LABEL_35:
    v39 = objc_alloc(MEMORY[0x1E696AB18]);
    v40 = [v14 leftExpression];
    v14 = [v39 initWithLeftExpression:v40 rightExpression:v17 modifier:objc_msgSend(v14 type:"comparisonPredicateModifier") options:{objc_msgSend(v14, "predicateOperatorType"), objc_msgSend(v14, "options")}];

    goto LABEL_36;
  }

  v14 = 0;
  *a4 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

  v41 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)rewritePredicateForDaemon:(id)a3
{
  v5 = 0;
  v3 = [a1 rewritePredicateForDaemon:a3 characteristicIsInvalid:&v5];

  return v3;
}

+ (id)rewritePredicateForClient:(id)a3 home:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = v5;
    v7 = v5;
    v8 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = [v7 subpredicates];
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [HMPredicateUtilities rewritePredicateForClient:*(*(&v47 + 1) + 8 * i) home:v6];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v11);
    }

    v15 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v7 subpredicates:{"compoundPredicateType"), v8}];
    v5 = v45;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = v5;
    v15 = v17;
    if (isKindOfClass)
    {
      v18 = [v17 leftExpression];
      v19 = [v15 rightExpression];
      if ([v18 expressionType] == 3)
      {
        v20 = [v18 keyPath];
        v21 = [v20 isEqualToString:@"characteristic"];

        if (v21)
        {
          v22 = [v15 rightExpression];

          if (![v22 expressionType])
          {
            v23 = [v22 constantValue];
            objc_opt_class();
            v24 = objc_opt_isKindOfClass();

            if (v24)
            {
              v25 = [v22 constantValue];
              v26 = [v25 hmf_UUIDForKey:@"kAccessoryUUID"];
              v27 = [v25 hmf_numberForKey:@"kServiceInstanceID"];
              v28 = [v25 hmf_numberForKey:@"kCharacteristicInstanceID"];
              v46 = v27;
              v29 = [v6 _findCharacteristic:v28 forService:v27 accessoryUUID:v26];
              if (v29)
              {
                [MEMORY[0x1E696ABC8] expressionForConstantValue:v29];
                v30 = v44 = v26;

                v22 = v30;
                v26 = v44;
              }
            }
          }

          v19 = v22;
        }
      }

      if ([v18 expressionType] == 3)
      {
        v31 = [v18 keyPath];
        v32 = [v31 isEqualToString:@"presence"];

        if (v32)
        {
          v33 = [v15 rightExpression];

          if (![v33 expressionType])
          {
            v34 = [v33 constantValue];
            objc_opt_class();
            v35 = objc_opt_isKindOfClass();

            if (v35)
            {
              v36 = [v33 constantValue];
              v37 = [HMPresenceEvent createWithDictionary:v36 home:v6];
              if (v37)
              {
                v38 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v37];

                v33 = v38;
              }
            }
          }

          v19 = v33;
        }
      }

      v39 = objc_alloc(MEMORY[0x1E696AB18]);
      v40 = [v15 leftExpression];
      v41 = [v39 initWithLeftExpression:v40 rightExpression:v19 modifier:objc_msgSend(v15 type:"comparisonPredicateModifier") options:{objc_msgSend(v15, "predicateOperatorType"), objc_msgSend(v15, "options")}];

      v15 = v41;
    }
  }

  v42 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)areOnlyHourAndMinuteSet:(id)a3
{
  v3 = MEMORY[0x1E695DF10];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setMinute:{objc_msgSend(v4, "minute")}];
  [v5 setHour:{objc_msgSend(v4, "hour")}];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v6 hmf_dateComponents];

  [v7 setMinute:{objc_msgSend(v4, "minute")}];
  [v7 setHour:{objc_msgSend(v4, "hour")}];
  LODWORD(v6) = [v4 isEqual:v5];

  if (v6)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [v7 isValidDateInCalendar:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)validatePredicate:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
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

    v10 = v3;
    v11 = +[HMHAPMetadata getSharedInstance];
    v12 = [v10 leftExpression];
    v13 = [v10 rightExpression];
    if ([v12 expressionType] != 3 || objc_msgSend(v10, "comparisonPredicateModifier"))
    {
      goto LABEL_25;
    }

    v14 = [v12 keyPath];
    if ([v14 isEqualToString:@"characteristic"])
    {
      v15 = [v10 predicateOperatorType];

      if (v15 != 4)
      {
        goto LABEL_25;
      }

      if ([v13 expressionType])
      {
        goto LABEL_25;
      }

      v16 = [v13 constantValue];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_25;
      }

      v18 = [v13 constantValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v14 = v19;

      v20 = [v14 characteristicType];
      if (([v11 shouldNotCacheCharacteristicOfType:v20] & 1) == 0)
      {
        v59 = [v14 properties];
        v60 = [v59 containsObject:@"HMCharacteristicPropertyReadable"];

        if (v60)
        {
          goto LABEL_79;
        }

LABEL_26:
        v21 = v10;
        v22 = [v21 leftExpression];
        v23 = [v21 rightExpression];
        if ([v22 expressionType] == 3 && !objc_msgSend(v21, "comparisonPredicateModifier"))
        {
          v24 = [v22 keyPath];
          if ([v24 isEqualToString:@"characteristicValue"])
          {
            if (![v21 predicateOperatorType] || objc_msgSend(v21, "predicateOperatorType") == 1 || objc_msgSend(v21, "predicateOperatorType") == 2 || objc_msgSend(v21, "predicateOperatorType") == 3 || objc_msgSend(v21, "predicateOperatorType") == 4)
            {
            }

            else
            {
              v61 = [v21 predicateOperatorType];

              if (v61 != 5)
              {
                goto LABEL_40;
              }
            }

            if (![v23 expressionType])
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
        v22 = [v25 leftExpression];
        v23 = [v25 rightExpression];
        if ([v22 expressionType] == 3 && !objc_msgSend(v25, "comparisonPredicateModifier"))
        {
          v37 = [v22 keyPath];
          if ([v37 isEqualToString:@"sunrise"])
          {
          }

          else
          {
            v38 = [v22 keyPath];
            v39 = [v38 isEqualToString:@"sunset"];

            if (!v39)
            {
              goto LABEL_42;
            }
          }

          if ([v25 predicateOperatorType] == 2 || objc_msgSend(v25, "predicateOperatorType") == 1)
          {
            if ([v23 expressionType] == 4 && (objc_msgSend(v23, "function"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"add:to:"), v40, v41))
            {
              v42 = [v23 arguments];
              v43 = [v42 objectAtIndexedSubscript:0];
              if ([v43 expressionType] == 4)
              {
                v44 = [v43 function];
                v45 = [v44 isEqualToString:@"now"];

                if (v45)
                {
                  v46 = [v42 objectAtIndexedSubscript:1];
                  if ([v46 expressionType])
                  {
                  }

                  else
                  {
                    v62 = [v46 constantValue];
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

            else if ([v23 expressionType] == 4)
            {
              v51 = [v23 function];
              v52 = [v51 isEqualToString:@"now"];

              if (v52)
              {
                goto LABEL_71;
              }
            }
          }
        }

LABEL_42:

        v21 = v25;
        v22 = [v21 leftExpression];
        v23 = [v21 rightExpression];
        if ([v22 expressionType] != 3 || objc_msgSend(v21, "comparisonPredicateModifier"))
        {
          goto LABEL_76;
        }

        v26 = [v22 keyPath];
        if ([v26 isEqualToString:@"presence"])
        {
          v27 = [v21 predicateOperatorType];

          if (v27 == 4)
          {
            if (![v23 expressionType])
            {
              v28 = [v23 constantValue];
              objc_opt_class();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                v30 = [v23 constantValue];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v30;
                }

                else
                {
                  v31 = 0;
                }

                v32 = v31;

                v33 = [v32 presenceEventType];
                if ((v33 - 3) >= 2)
                {
                  if ((v33 - 1) > 1)
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
  v4 = [v3 subpredicates];
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v69 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (![HMPredicateUtilities validatePredicate:*(*(&v65 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_38;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v65 objects:v69 count:16];
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