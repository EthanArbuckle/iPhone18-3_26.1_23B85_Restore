@interface HMCameraBulletinBoardNotificationCondition
+ (id)shortDescription;
+ (uint64_t)isDateComponentsComparisonPredicate:(uint64_t)a1;
+ (uint64_t)isPresenceComparisonPredicate:(uint64_t)a1;
+ (void)_updateCondition:(void *)a3 usingPredicate:;
- (HMCameraBulletinBoardNotificationCondition)init;
- (HMCameraBulletinBoardNotificationCondition)initWithPredicate:(id)a3;
- (NSArray)attributeDescriptions;
- (NSPredicate)predicate;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMCameraBulletinBoardNotificationCondition

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    v6 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
    v7 = [v5 initWithName:@"Significant Event Reason" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    v10 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
    v11 = [v9 initWithName:@"Person Familiarity" value:v10];
    [v3 addObject:v11];
  }

  v12 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    v14 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
    v15 = [v13 initWithName:@"Date Components" value:v14];
    [v3 addObject:v15];
  }

  v16 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    v18 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
    v19 = [v17 initWithName:@"Presence" value:v18];
    [v3 addObject:v19];
  }

  v20 = [v3 copy];

  return v20;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMMutableCameraBulletinBoardNotificationCondition);
  v5 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventReasonCondition:v5];

  v6 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventPersonFamiliarityCondition:v6];

  v7 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setDateComponentsPredicate:v7];

  v8 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setPresencePredicate:v8];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSPredicate)predicate
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];

  if (v4)
  {
    v5 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
    v6 = [v5 predicate];
    [v3 addObject:v6];
  }

  v7 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];

  if (v7)
  {
    v8 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
    v9 = [v8 predicate];
    [v3 addObject:v9];
  }

  v10 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];

  if (v10)
  {
    v11 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
    [v3 addObject:v11];
  }

  v12 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];

  if (v12)
  {
    v13 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
    [v3 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];

  return v14;
}

- (HMCameraBulletinBoardNotificationCondition)init
{
  v3.receiver = self;
  v3.super_class = HMCameraBulletinBoardNotificationCondition;
  return [(HMCameraBulletinBoardNotificationCondition *)&v3 init];
}

- (HMCameraBulletinBoardNotificationCondition)initWithPredicate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMCameraBulletinBoardNotificationCondition *)self init];
    v7 = [(HMCameraBulletinBoardNotificationCondition *)v6 mutableCopy];
    [HMCameraBulletinBoardNotificationCondition _updateCondition:v7 usingPredicate:v5];
    v8 = [v7 copy];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMCameraBulletinBoardNotificationCondition *)v10 _updateCondition:v11 usingPredicate:v12];
  }

  return result;
}

+ (void)_updateCondition:(void *)a3 usingPredicate:
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [[HMCameraSignificantEventReasonNotificationCondition alloc] initWithPredicate:v5];
  if (!v7)
  {
    v8 = [[HMCameraSignificantEventPersonFamiliarityNotificationCondition alloc] initWithPredicate:v5];
    if (v8)
    {
      [v4 setSignificantEventPersonFamiliarityCondition:v8];
LABEL_36:

      goto LABEL_37;
    }

    v9 = v5;
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

    if (!v11)
    {
      v22 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (v24)
      {
        if ([(HMCameraBulletinBoardNotificationCondition *)v6 isDateComponentsComparisonPredicate:v24])
        {
          [v4 setDateComponentsPredicate:v24];
        }

        else if ([(HMCameraBulletinBoardNotificationCondition *)v6 isPresenceComparisonPredicate:v24])
        {
          [v4 setPresencePredicate:v24];
        }
      }

      goto LABEL_34;
    }

    v12 = v11;
    v31 = objc_opt_self();
    v13 = [v12 subpredicates];

    if ([v13 count] == 2)
    {
      v30 = v11;
      v14 = [v13 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v13 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [(HMCameraBulletinBoardNotificationCondition *)v31 isDateComponentsComparisonPredicate:v16];
      if (v20)
      {
        v21 = [(HMCameraBulletinBoardNotificationCondition *)v31 isDateComponentsComparisonPredicate:v19];

        v11 = v30;
        if (v21)
        {
          [v4 setDateComponentsPredicate:v12];
LABEL_35:

          goto LABEL_36;
        }

        goto LABEL_27;
      }

      v11 = v30;
    }

LABEL_27:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [v12 subpredicates];
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(HMCameraBulletinBoardNotificationCondition *)v6 _updateCondition:v4 usingPredicate:*(*(&v32 + 1) + 8 * i)];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }

LABEL_34:

    goto LABEL_35;
  }

  [v4 setSignificantEventReasonCondition:v7];
LABEL_37:

  v29 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)isDateComponentsComparisonPredicate:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 rightExpression];
  if ([v3 expressionType])
  {
    isKindOfClass = 0;
  }

  else
  {
    v5 = [v2 rightExpression];
    v6 = [v5 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (uint64_t)isPresenceComparisonPredicate:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 leftExpression];
  if ([v3 expressionType] == 3)
  {
    v4 = [v2 leftExpression];
    v5 = [v4 keyPath];
    v6 = [v5 isEqualToString:@"presence"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end