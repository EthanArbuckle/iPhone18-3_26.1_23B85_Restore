@interface HMCameraSignificantEventPersonFamiliarityNotificationCondition
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCameraSignificantEventPersonFamiliarityNotificationCondition)initWithPersonFamiliarityOptions:(unint64_t)options;
- (HMCameraSignificantEventPersonFamiliarityNotificationCondition)initWithPredicate:(id)predicate;
- (NSArray)attributeDescriptions;
- (NSPredicate)predicate;
- (NSString)shortDescription;
@end

@implementation HMCameraSignificantEventPersonFamiliarityNotificationCondition

- (NSArray)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  personFamiliarityOptions = [(HMCameraSignificantEventPersonFamiliarityNotificationCondition *)self personFamiliarityOptions];
  v4 = NSPrintF();
  v5 = [v3 initWithName:@"Person Familiarity" value:{v4, personFamiliarityOptions, &unk_19BE37896}];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    personFamiliarityOptions = [(HMCameraSignificantEventPersonFamiliarityNotificationCondition *)self personFamiliarityOptions];
    v8 = personFamiliarityOptions == [v6 personFamiliarityOptions];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSPredicate)predicate
{
  personFamiliarityOptions = [(HMCameraSignificantEventPersonFamiliarityNotificationCondition *)self personFamiliarityOptions];

  return [HMCameraBulletinBoardSmartNotification predicateForPersonFamiliarityOptions:personFamiliarityOptions];
}

- (HMCameraSignificantEventPersonFamiliarityNotificationCondition)initWithPersonFamiliarityOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = HMCameraSignificantEventPersonFamiliarityNotificationCondition;
  result = [(HMCameraSignificantEventPersonFamiliarityNotificationCondition *)&v5 init];
  if (result)
  {
    result->_personFamiliarityOptions = options;
  }

  return result;
}

- (HMCameraSignificantEventPersonFamiliarityNotificationCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v5 = predicateCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (isKindOfClass)
    {
      v9 = [HMPredicateUtilities personFamiliarityOptionsInComparisonPredicate:v5];
      v10 = v9;
      if (v9)
      {
        self = -[HMCameraSignificantEventPersonFamiliarityNotificationCondition initWithPersonFamiliarityOptions:](self, "initWithPersonFamiliarityOptions:", [v9 integerValue]);
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }

    return selfCopy;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMCameraSignificantEventPersonFamiliarityNotificationCondition *)v13];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end