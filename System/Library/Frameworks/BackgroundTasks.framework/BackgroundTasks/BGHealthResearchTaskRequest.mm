@interface BGHealthResearchTaskRequest
+ (id)_requestFromActivity:(id)activity;
- (BOOL)isEqual:(id)equal;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation BGHealthResearchTaskRequest

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v6 = [launchReason isEqualToString:*MEMORY[0x1E699A568]];

  if (v6)
  {
    v7 = [self alloc];
    clientProvidedIdentifier = [activityCopy clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:clientProvidedIdentifier];

    clientProvidedStartDate = [activityCopy clientProvidedStartDate];
    [v9 setEarliestBeginDate:clientProvidedStartDate];

    [v9 setRequiresExternalPower:{objc_msgSend(activityCopy, "requiresPlugin")}];
    [v9 setRequiresNetworkConnectivity:{objc_msgSend(activityCopy, "requiresNetwork")}];
    fileProtection = [activityCopy fileProtection];
    protectionType = [fileProtection protectionType];
    [v9 setProtectionTypeOfRequiredData:protectionType];
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
  requiresExternalPower = [(BGProcessingTaskRequest *)self requiresExternalPower];
  requiresNetworkConnectivity = [(BGProcessingTaskRequest *)self requiresNetworkConnectivity];
  protectionTypeOfRequiredData = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v9 = [v3 stringWithFormat:@"<BGHealthResearchTaskRequest: %@, earliestBeginDate: %@, requiresExternalPower=%u, requiresNetworkConnectivity=%u, protectionTypeOfRequiredData=%@>", identifier, earliestBeginDate, requiresExternalPower, requiresNetworkConnectivity, protectionTypeOfRequiredData];

  return v9;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgHealthResearch-%@", identifier];

  v6 = MEMORY[0x1E699A488];
  v7 = *MEMORY[0x1E699A5C0];
  v8 = *MEMORY[0x1E699A4E8];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  v11 = [v6 activityWithName:v5 priority:v7 duration:v8 startingAfter:distantFuture startingBefore:distantFuture2];

  [v11 setLaunchReason:*MEMORY[0x1E699A568]];
  identifier2 = [(BGTaskRequest *)self identifier];
  [v11 setClientProvidedIdentifier:identifier2];

  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v11 setClientProvidedStartDate:earliestBeginDate];

  [v11 setRequiresPlugin:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  [v11 setRequiresNetwork:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  v14 = MEMORY[0x1E699A4A0];
  protectionTypeOfRequiredData = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v16 = [v14 protectionWithType:protectionTypeOfRequiredData];
  [v11 setFileProtection:v16];

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

  v10 = v6 ^ v7 ^ v9;
  protectionTypeOfRequiredData = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v12 = v10 ^ (16 * [protectionTypeOfRequiredData hash]);

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      identifier = [(BGTaskRequest *)v7 identifier];
      identifier2 = [(BGTaskRequest *)self identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(BGTaskRequest *)v7 identifier];
        identifier4 = [(BGTaskRequest *)self identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v11 = 0;
          goto LABEL_25;
        }

        v24 = identifier3;
      }

      earliestBeginDate = [(BGTaskRequest *)v7 earliestBeginDate];
      earliestBeginDate2 = [(BGTaskRequest *)self earliestBeginDate];
      if (earliestBeginDate == earliestBeginDate2 || (-[BGTaskRequest earliestBeginDate](v7, "earliestBeginDate"), v14 = objc_claimAutoreleasedReturnValue(), -[BGTaskRequest earliestBeginDate](self, "earliestBeginDate"), v4 = objc_claimAutoreleasedReturnValue(), v23 = v14, [v14 isEqual:v4]))
      {
        if (([(BGProcessingTaskRequest *)v7 requiresNetworkConnectivity]&& [(BGProcessingTaskRequest *)self requiresNetworkConnectivity]|| ![(BGProcessingTaskRequest *)v7 requiresNetworkConnectivity]&& ![(BGProcessingTaskRequest *)self requiresNetworkConnectivity]) && ([(BGProcessingTaskRequest *)v7 requiresExternalPower]&& [(BGProcessingTaskRequest *)self requiresExternalPower]|| ![(BGProcessingTaskRequest *)v7 requiresExternalPower]&& ![(BGProcessingTaskRequest *)self requiresExternalPower]))
        {
          protectionTypeOfRequiredData = [(BGHealthResearchTaskRequest *)v7 protectionTypeOfRequiredData];
          protectionTypeOfRequiredData2 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
          if (protectionTypeOfRequiredData == protectionTypeOfRequiredData2)
          {

            v11 = 1;
            v15 = 1;
          }

          else
          {
            v22 = protectionTypeOfRequiredData2;
            protectionTypeOfRequiredData3 = [(BGHealthResearchTaskRequest *)v7 protectionTypeOfRequiredData];
            v21 = protectionTypeOfRequiredData;
            protectionTypeOfRequiredData4 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
            v11 = [protectionTypeOfRequiredData3 isEqual:?];

            v15 = v11;
          }
        }

        else
        {
          v11 = 0;
          v15 = 0;
        }

        if (earliestBeginDate == earliestBeginDate2)
        {

          v11 = v15;
LABEL_24:
          identifier3 = v24;
          if (identifier == identifier2)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BGHealthResearchTaskRequest;
  v4 = [(BGProcessingTaskRequest *)&v8 copyWithZone:zone];
  earliestBeginDate = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:earliestBeginDate];

  [v4 setRequiresNetworkConnectivity:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  [v4 setRequiresExternalPower:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  protectionTypeOfRequiredData = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  [v4 setProtectionTypeOfRequiredData:protectionTypeOfRequiredData];

  return v4;
}

@end