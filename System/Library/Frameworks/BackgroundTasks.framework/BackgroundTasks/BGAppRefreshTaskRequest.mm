@interface BGAppRefreshTaskRequest
+ (id)_requestFromActivity:(id)activity;
- (BGAppRefreshTaskRequest)initWithIdentifier:(NSString *)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation BGAppRefreshTaskRequest

- (BGAppRefreshTaskRequest)initWithIdentifier:(NSString *)identifier
{
  v4.receiver = self;
  v4.super_class = BGAppRefreshTaskRequest;
  return [(BGTaskRequest *)&v4 _initWithIdentifier:identifier];
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v6 = [launchReason isEqualToString:*MEMORY[0x1E699A550]];

  if (v6)
  {
    v7 = [self alloc];
    clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:clientProvidedIdentifier];

    clientProvidedStartDate = [activityCopy clientProvidedStartDate];
    [v9 setEarliestBeginDate:clientProvidedStartDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  v6 = [v3 stringWithFormat:@"<BGAppRefreshTaskRequest: %@, earliestBeginDate: %@>", identifier, earliestBeginDate];

  return v6;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgRefresh-%@", identifier];

  v6 = MEMORY[0x1E699A488];
  v7 = *MEMORY[0x1E699A570];
  v8 = *MEMORY[0x1E699A4F0];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  v11 = [v6 activityWithName:v5 priority:v7 duration:v8 startingAfter:distantFuture startingBefore:distantFuture2];

  [v11 setLaunchReason:*MEMORY[0x1E699A550]];
  identifier2 = [(BGTaskRequest *)self identifier];
  [v11 setClientProvidedIdentifier:identifier2];

  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v11 setClientProvidedStartDate:earliestBeginDate];

  return v11;
}

- (unint64_t)hash
{
  identifier = [(BGTaskRequest *)self identifier];
  v4 = [identifier hash];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [earliestBeginDate hash]);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = [(BGTaskRequest *)v6 identifier];
      identifier2 = [(BGTaskRequest *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(BGTaskRequest *)v6 identifier];
        identifier4 = [(BGTaskRequest *)self identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = identifier3;
      }

      earliestBeginDate = [(BGTaskRequest *)v6 earliestBeginDate];
      earliestBeginDate2 = [(BGTaskRequest *)self earliestBeginDate];
      if (earliestBeginDate == earliestBeginDate2)
      {
        v10 = 1;
      }

      else
      {
        earliestBeginDate3 = [(BGTaskRequest *)v6 earliestBeginDate];
        earliestBeginDate4 = [(BGTaskRequest *)self earliestBeginDate];
        v10 = [earliestBeginDate3 isEqual:earliestBeginDate4];
      }

      identifier3 = v16;
      if (identifier == identifier2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = BGAppRefreshTaskRequest;
  v4 = [(BGTaskRequest *)&v7 copyWithZone:zone];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:earliestBeginDate];

  return v4;
}

@end