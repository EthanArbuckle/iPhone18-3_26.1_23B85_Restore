@interface HMCameraSignificantEventReasonNotificationCondition
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraSignificantEventReasonNotificationCondition)initWithPredicate:(id)a3;
- (HMCameraSignificantEventReasonNotificationCondition)initWithSignificantEventTypes:(unint64_t)a3;
- (NSArray)attributeDescriptions;
- (NSPredicate)predicate;
- (NSString)shortDescription;
@end

@implementation HMCameraSignificantEventReasonNotificationCondition

- (NSArray)attributeDescriptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [(HMCameraSignificantEventReasonNotificationCondition *)self significantEventTypes];
  v4 = NSPrintF();
  v5 = [v3 initWithName:@"Significant Events" value:{v4, v9, &unk_19BE377F8}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMCameraSignificantEventReasonNotificationCondition *)self significantEventTypes];
    v8 = v7 == [v6 significantEventTypes];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSPredicate)predicate
{
  v2 = [(HMCameraSignificantEventReasonNotificationCondition *)self significantEventTypes];

  return [HMCameraBulletinBoardSmartNotification predicateForSignificantEventTypes:v2];
}

- (HMCameraSignificantEventReasonNotificationCondition)initWithSignificantEventTypes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMCameraSignificantEventReasonNotificationCondition;
  result = [(HMCameraSignificantEventReasonNotificationCondition *)&v5 init];
  if (result)
  {
    result->_significantEventTypes = a3;
  }

  return result;
}

- (HMCameraSignificantEventReasonNotificationCondition)initWithPredicate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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
      v9 = [HMPredicateUtilities significantEventTypesInComparisonPredicate:v5];
      v10 = v9;
      if (v9)
      {
        self = -[HMCameraSignificantEventReasonNotificationCondition initWithSignificantEventTypes:](self, "initWithSignificantEventTypes:", [v9 integerValue]);
        v11 = self;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMCameraSignificantEventReasonNotificationCondition *)v13];
  }
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end