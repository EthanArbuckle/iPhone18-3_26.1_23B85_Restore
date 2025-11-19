@interface BGAppRefreshTaskRequest
+ (id)_requestFromActivity:(id)a3;
- (BGAppRefreshTaskRequest)initWithIdentifier:(NSString *)identifier;
- (BOOL)isEqual:(id)a3;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)a3;
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

+ (id)_requestFromActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 launchReason];
  v6 = [v5 isEqualToString:*MEMORY[0x1E699A550]];

  if (v6)
  {
    v7 = [a1 alloc];
    v8 = [v4 clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:v8];

    v10 = [v4 clientProvidedStartDate];
    [v9 setEarliestBeginDate:v10];
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
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  v6 = [v3 stringWithFormat:@"<BGAppRefreshTaskRequest: %@, earliestBeginDate: %@>", v4, v5];

  return v6;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgRefresh-%@", v4];

  v6 = MEMORY[0x1E699A488];
  v7 = *MEMORY[0x1E699A570];
  v8 = *MEMORY[0x1E699A4F0];
  v9 = [MEMORY[0x1E695DF00] distantFuture];
  v10 = [MEMORY[0x1E695DF00] distantFuture];
  v11 = [v6 activityWithName:v5 priority:v7 duration:v8 startingAfter:v9 startingBefore:v10];

  [v11 setLaunchReason:*MEMORY[0x1E699A550]];
  v12 = [(BGTaskRequest *)self identifier];
  [v11 setClientProvidedIdentifier:v12];

  v13 = [(BGTaskRequest *)self earliestBeginDate];
  [v11 setClientProvidedStartDate:v13];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(BGTaskRequest *)self identifier];
  v4 = [v3 hash];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [v5 hash]);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(BGTaskRequest *)v6 identifier];
      v8 = [(BGTaskRequest *)self identifier];
      if (v7 != v8)
      {
        v9 = [(BGTaskRequest *)v6 identifier];
        v3 = [(BGTaskRequest *)self identifier];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(BGTaskRequest *)v6 earliestBeginDate];
      v12 = [(BGTaskRequest *)self earliestBeginDate];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(BGTaskRequest *)v6 earliestBeginDate];
        v14 = [(BGTaskRequest *)self earliestBeginDate];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = BGAppRefreshTaskRequest;
  v4 = [(BGTaskRequest *)&v7 copyWithZone:a3];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:v5];

  return v4;
}

@end