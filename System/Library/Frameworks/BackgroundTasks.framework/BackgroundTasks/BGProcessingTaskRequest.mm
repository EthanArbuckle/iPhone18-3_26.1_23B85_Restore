@interface BGProcessingTaskRequest
+ (id)_requestFromActivity:(id)activity;
- (BGProcessingTaskRequest)initWithIdentifier:(NSString *)identifier;
- (BOOL)isEqual:(id)equal;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation BGProcessingTaskRequest

- (BGProcessingTaskRequest)initWithIdentifier:(NSString *)identifier
{
  v4.receiver = self;
  v4.super_class = BGProcessingTaskRequest;
  return [(BGTaskRequest *)&v4 _initWithIdentifier:identifier];
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v6 = [launchReason isEqualToString:*MEMORY[0x1E699A548]];

  if (v6)
  {
    v7 = [self alloc];
    clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:clientProvidedIdentifier];

    clientProvidedStartDate = [activityCopy clientProvidedStartDate];
    [v9 setEarliestBeginDate:clientProvidedStartDate];

    [v9 setRequiresExternalPower:{objc_msgSend(activityCopy, "requiresPlugin")}];
    [v9 setRequiresNetworkConnectivity:{objc_msgSend(activityCopy, "requiresNetwork")}];
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
  v6 = [v3 stringWithFormat:@"<BGProcessingTaskRequest: %@, earliestBeginDate: %@, requiresExternalPower=%u, requiresNetworkConnectivity=%u>", identifier, earliestBeginDate, -[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower"), -[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")];

  return v6;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgProcessing-%@", identifier];

  v6 = MEMORY[0x1E699A488];
  v7 = *MEMORY[0x1E699A570];
  v8 = *MEMORY[0x1E699A4E8];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  v11 = [v6 activityWithName:v5 priority:v7 duration:v8 startingAfter:distantFuture startingBefore:distantFuture2];

  [v11 setLaunchReason:*MEMORY[0x1E699A548]];
  identifier2 = [(BGTaskRequest *)self identifier];
  [v11 setClientProvidedIdentifier:identifier2];

  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v11 setClientProvidedStartDate:earliestBeginDate];

  [v11 setRequiresPlugin:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  [v11 setRequiresNetwork:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];

  return v11;
}

- (unint64_t)hash
{
  identifier = [(BGTaskRequest *)self identifier];
  v4 = [identifier hash];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [earliestBeginDate hash]);
  if ([(BGProcessingTaskRequest *)self requiresNetworkConnectivity])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  requiresExternalPower = [(BGProcessingTaskRequest *)self requiresExternalPower];
  v9 = 8;
  if (!requiresExternalPower)
  {
    v9 = 0;
  }

  v10 = v7 ^ v9;

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      identifier = [(BGTaskRequest *)v8 identifier];
      identifier2 = [(BGTaskRequest *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(BGTaskRequest *)v8 identifier];
        identifier4 = [(BGTaskRequest *)self identifier];
        if (![identifier3 isEqual:identifier4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_24;
        }

        v15 = identifier3;
      }

      earliestBeginDate = [(BGTaskRequest *)v8 earliestBeginDate];
      earliestBeginDate2 = [(BGTaskRequest *)self earliestBeginDate];
      if (earliestBeginDate != earliestBeginDate2)
      {
        earliestBeginDate3 = [(BGTaskRequest *)v8 earliestBeginDate];
        identifier3 = [(BGTaskRequest *)self earliestBeginDate];
        if (![earliestBeginDate3 isEqual:identifier3])
        {
          LOBYTE(v11) = 0;
LABEL_22:

LABEL_23:
          identifier3 = v15;
          if (identifier == identifier2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      if ((![(BGProcessingTaskRequest *)v8 requiresNetworkConnectivity]|| ![(BGProcessingTaskRequest *)self requiresNetworkConnectivity]) && ([(BGProcessingTaskRequest *)v8 requiresNetworkConnectivity]|| [(BGProcessingTaskRequest *)self requiresNetworkConnectivity]))
      {
        goto LABEL_20;
      }

      if ([(BGProcessingTaskRequest *)v8 requiresExternalPower]&& [(BGProcessingTaskRequest *)self requiresExternalPower])
      {
        LOBYTE(v11) = 1;
        goto LABEL_21;
      }

      if ([(BGProcessingTaskRequest *)v8 requiresExternalPower])
      {
LABEL_20:
        LOBYTE(v11) = 0;
      }

      else
      {
        v11 = ![(BGProcessingTaskRequest *)self requiresExternalPower];
      }

LABEL_21:
      if (earliestBeginDate == earliestBeginDate2)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    LOBYTE(v11) = 0;
  }

LABEL_26:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = BGProcessingTaskRequest;
  v4 = [(BGTaskRequest *)&v7 copyWithZone:zone];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:earliestBeginDate];

  [v4 setRequiresNetworkConnectivity:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  [v4 setRequiresExternalPower:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  return v4;
}

@end