@interface BGHealthResearchTaskRequest
+ (id)_requestFromActivity:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_activity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BGHealthResearchTaskRequest

+ (id)_requestFromActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 launchReason];
  v6 = [v5 isEqualToString:*MEMORY[0x1E699A568]];

  if (v6)
  {
    v7 = [a1 alloc];
    v8 = [v4 clientProvidedIdentifier];
    v9 = [v7 initWithIdentifier:v8];

    v10 = [v4 clientProvidedStartDate];
    [v9 setEarliestBeginDate:v10];

    [v9 setRequiresExternalPower:{objc_msgSend(v4, "requiresPlugin")}];
    [v9 setRequiresNetworkConnectivity:{objc_msgSend(v4, "requiresNetwork")}];
    v11 = [v4 fileProtection];
    v12 = [v11 protectionType];
    [v9 setProtectionTypeOfRequiredData:v12];
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
  v6 = [(BGProcessingTaskRequest *)self requiresExternalPower];
  v7 = [(BGProcessingTaskRequest *)self requiresNetworkConnectivity];
  v8 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v9 = [v3 stringWithFormat:@"<BGHealthResearchTaskRequest: %@, earliestBeginDate: %@, requiresExternalPower=%u, requiresNetworkConnectivity=%u, protectionTypeOfRequiredData=%@>", v4, v5, v6, v7, v8];

  return v9;
}

- (id)_activity
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTaskRequest *)self identifier];
  v5 = [v3 stringWithFormat:@"bgHealthResearch-%@", v4];

  v6 = MEMORY[0x1E699A488];
  v7 = *MEMORY[0x1E699A5C0];
  v8 = *MEMORY[0x1E699A4E8];
  v9 = [MEMORY[0x1E695DF00] distantFuture];
  v10 = [MEMORY[0x1E695DF00] distantFuture];
  v11 = [v6 activityWithName:v5 priority:v7 duration:v8 startingAfter:v9 startingBefore:v10];

  [v11 setLaunchReason:*MEMORY[0x1E699A568]];
  v12 = [(BGTaskRequest *)self identifier];
  [v11 setClientProvidedIdentifier:v12];

  v13 = [(BGTaskRequest *)self earliestBeginDate];
  [v11 setClientProvidedStartDate:v13];

  [v11 setRequiresPlugin:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  [v11 setRequiresNetwork:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  v14 = MEMORY[0x1E699A4A0];
  v15 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v16 = [v14 protectionWithType:v15];
  [v11 setFileProtection:v16];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(BGTaskRequest *)self identifier];
  v4 = [v3 hash];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  v6 = v4 ^ (2 * [v5 hash]);
  if ([(BGProcessingTaskRequest *)self requiresNetworkConnectivity])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BGProcessingTaskRequest *)self requiresExternalPower];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 ^ v7 ^ v9;
  v11 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  v12 = v10 ^ (16 * [v11 hash]);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(BGTaskRequest *)v7 identifier];
      v9 = [(BGTaskRequest *)self identifier];
      if (v8 != v9)
      {
        v10 = [(BGTaskRequest *)v7 identifier];
        v3 = [(BGTaskRequest *)self identifier];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_25;
        }

        v24 = v10;
      }

      v12 = [(BGTaskRequest *)v7 earliestBeginDate];
      v13 = [(BGTaskRequest *)self earliestBeginDate];
      if (v12 == v13 || (-[BGTaskRequest earliestBeginDate](v7, "earliestBeginDate"), v14 = objc_claimAutoreleasedReturnValue(), -[BGTaskRequest earliestBeginDate](self, "earliestBeginDate"), v4 = objc_claimAutoreleasedReturnValue(), v23 = v14, [v14 isEqual:v4]))
      {
        if (([(BGProcessingTaskRequest *)v7 requiresNetworkConnectivity]&& [(BGProcessingTaskRequest *)self requiresNetworkConnectivity]|| ![(BGProcessingTaskRequest *)v7 requiresNetworkConnectivity]&& ![(BGProcessingTaskRequest *)self requiresNetworkConnectivity]) && ([(BGProcessingTaskRequest *)v7 requiresExternalPower]&& [(BGProcessingTaskRequest *)self requiresExternalPower]|| ![(BGProcessingTaskRequest *)v7 requiresExternalPower]&& ![(BGProcessingTaskRequest *)self requiresExternalPower]))
        {
          v17 = [(BGHealthResearchTaskRequest *)v7 protectionTypeOfRequiredData];
          v18 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
          if (v17 == v18)
          {

            v11 = 1;
            v15 = 1;
          }

          else
          {
            v22 = v18;
            v20 = [(BGHealthResearchTaskRequest *)v7 protectionTypeOfRequiredData];
            v21 = v17;
            v19 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
            v11 = [v20 isEqual:?];

            v15 = v11;
          }
        }

        else
        {
          v11 = 0;
          v15 = 0;
        }

        if (v12 == v13)
        {

          v11 = v15;
LABEL_24:
          v10 = v24;
          if (v8 == v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = BGHealthResearchTaskRequest;
  v4 = [(BGProcessingTaskRequest *)&v8 copyWithZone:a3];
  v5 = [(BGTaskRequest *)self earliestBeginDate];
  [v4 setEarliestBeginDate:v5];

  [v4 setRequiresNetworkConnectivity:{-[BGProcessingTaskRequest requiresNetworkConnectivity](self, "requiresNetworkConnectivity")}];
  [v4 setRequiresExternalPower:{-[BGProcessingTaskRequest requiresExternalPower](self, "requiresExternalPower")}];
  v6 = [(BGHealthResearchTaskRequest *)self protectionTypeOfRequiredData];
  [v4 setProtectionTypeOfRequiredData:v6];

  return v4;
}

@end