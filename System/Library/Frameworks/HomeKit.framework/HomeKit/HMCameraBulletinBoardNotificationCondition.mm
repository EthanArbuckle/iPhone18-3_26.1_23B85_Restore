@interface HMCameraBulletinBoardNotificationCondition
+ (id)shortDescription;
+ (uint64_t)isDateComponentsComparisonPredicate:(uint64_t)predicate;
+ (uint64_t)isPresenceComparisonPredicate:(uint64_t)predicate;
+ (void)_updateCondition:(void *)condition usingPredicate:;
- (HMCameraBulletinBoardNotificationCondition)init;
- (HMCameraBulletinBoardNotificationCondition)initWithPredicate:(id)predicate;
- (NSArray)attributeDescriptions;
- (NSPredicate)predicate;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMCameraBulletinBoardNotificationCondition

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  significantEventReasonCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];

  if (significantEventReasonCondition)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29C8]);
    significantEventReasonCondition2 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
    v7 = [v5 initWithName:@"Significant Event Reason" value:significantEventReasonCondition2];
    [array addObject:v7];
  }

  significantEventPersonFamiliarityCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];

  if (significantEventPersonFamiliarityCondition)
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C8]);
    significantEventPersonFamiliarityCondition2 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
    v11 = [v9 initWithName:@"Person Familiarity" value:significantEventPersonFamiliarityCondition2];
    [array addObject:v11];
  }

  dateComponentsPredicate = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];

  if (dateComponentsPredicate)
  {
    v13 = objc_alloc(MEMORY[0x1E69A29C8]);
    dateComponentsPredicate2 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
    v15 = [v13 initWithName:@"Date Components" value:dateComponentsPredicate2];
    [array addObject:v15];
  }

  presencePredicate = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];

  if (presencePredicate)
  {
    v17 = objc_alloc(MEMORY[0x1E69A29C8]);
    presencePredicate2 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
    v19 = [v17 initWithName:@"Presence" value:presencePredicate2];
    [array addObject:v19];
  }

  v20 = [array copy];

  return v20;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMMutableCameraBulletinBoardNotificationCondition);
  significantEventReasonCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventReasonCondition:significantEventReasonCondition];

  significantEventPersonFamiliarityCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventPersonFamiliarityCondition:significantEventPersonFamiliarityCondition];

  dateComponentsPredicate = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setDateComponentsPredicate:dateComponentsPredicate];

  presencePredicate = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setPresencePredicate:presencePredicate];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSPredicate)predicate
{
  array = [MEMORY[0x1E695DF70] array];
  significantEventReasonCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];

  if (significantEventReasonCondition)
  {
    significantEventReasonCondition2 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
    predicate = [significantEventReasonCondition2 predicate];
    [array addObject:predicate];
  }

  significantEventPersonFamiliarityCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];

  if (significantEventPersonFamiliarityCondition)
  {
    significantEventPersonFamiliarityCondition2 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
    predicate2 = [significantEventPersonFamiliarityCondition2 predicate];
    [array addObject:predicate2];
  }

  dateComponentsPredicate = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];

  if (dateComponentsPredicate)
  {
    dateComponentsPredicate2 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
    [array addObject:dateComponentsPredicate2];
  }

  presencePredicate = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];

  if (presencePredicate)
  {
    presencePredicate2 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
    [array addObject:presencePredicate2];
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];

  return v14;
}

- (HMCameraBulletinBoardNotificationCondition)init
{
  v3.receiver = self;
  v3.super_class = HMCameraBulletinBoardNotificationCondition;
  return [(HMCameraBulletinBoardNotificationCondition *)&v3 init];
}

- (HMCameraBulletinBoardNotificationCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v5 = predicateCopy;
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

+ (void)_updateCondition:(void *)condition usingPredicate:
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  conditionCopy = condition;
  v6 = objc_opt_self();
  v7 = [[HMCameraSignificantEventReasonNotificationCondition alloc] initWithPredicate:conditionCopy];
  if (!v7)
  {
    v8 = [[HMCameraSignificantEventPersonFamiliarityNotificationCondition alloc] initWithPredicate:conditionCopy];
    if (v8)
    {
      [v4 setSignificantEventPersonFamiliarityCondition:v8];
LABEL_36:

      goto LABEL_37;
    }

    v9 = conditionCopy;
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

      subpredicates2 = v23;

      if (subpredicates2)
      {
        if ([(HMCameraBulletinBoardNotificationCondition *)v6 isDateComponentsComparisonPredicate:subpredicates2])
        {
          [v4 setDateComponentsPredicate:subpredicates2];
        }

        else if ([(HMCameraBulletinBoardNotificationCondition *)v6 isPresenceComparisonPredicate:subpredicates2])
        {
          [v4 setPresencePredicate:subpredicates2];
        }
      }

      goto LABEL_34;
    }

    v12 = v11;
    v31 = objc_opt_self();
    subpredicates = [v12 subpredicates];

    if ([subpredicates count] == 2)
    {
      v30 = v11;
      v14 = [subpredicates objectAtIndexedSubscript:0];
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

      v17 = [subpredicates objectAtIndexedSubscript:1];
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
    subpredicates2 = [v12 subpredicates];
    v25 = [subpredicates2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(subpredicates2);
          }

          [(HMCameraBulletinBoardNotificationCondition *)v6 _updateCondition:v4 usingPredicate:*(*(&v32 + 1) + 8 * i)];
        }

        v26 = [subpredicates2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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

+ (uint64_t)isDateComponentsComparisonPredicate:(uint64_t)predicate
{
  v2 = a2;
  objc_opt_self();
  rightExpression = [v2 rightExpression];
  if ([rightExpression expressionType])
  {
    isKindOfClass = 0;
  }

  else
  {
    rightExpression2 = [v2 rightExpression];
    constantValue = [rightExpression2 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (uint64_t)isPresenceComparisonPredicate:(uint64_t)predicate
{
  v2 = a2;
  objc_opt_self();
  leftExpression = [v2 leftExpression];
  if ([leftExpression expressionType] == 3)
  {
    leftExpression2 = [v2 leftExpression];
    keyPath = [leftExpression2 keyPath];
    v6 = [keyPath isEqualToString:@"presence"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end