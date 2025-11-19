@interface TKTokenAccessUserPromptInfo
- (TKTokenAccessUserPromptInfo)initWithCoder:(id)a3;
- (TKTokenAccessUserPromptInfo)initWithTokenAccessRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TKTokenAccessUserPromptInfo

- (TKTokenAccessUserPromptInfo)initWithTokenAccessRequest:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TKTokenAccessUserPromptInfo;
  v5 = [(TKTokenAccessUserPromptInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 correlationID];
    correlationID = v5->_correlationID;
    v5->_correlationID = v6;

    v8 = [v4 clientName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v4 clientBundleID];
    }

    clientDisplayName = v5->_clientDisplayName;
    v5->_clientDisplayName = v10;

    v12 = [v4 providerName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v4 providerBundleID];
    }

    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = v14;
  }

  return v5;
}

- (TKTokenAccessUserPromptInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TKTokenAccessUserPromptInfo;
  v5 = [(TKTokenAccessUserPromptInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kClientDisplayName"];
    clientDisplayName = v5->_clientDisplayName;
    v5->_clientDisplayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kProviderDisplayName"];
    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCorrelationID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientDisplayName = self->_clientDisplayName;
  v5 = a3;
  [v5 encodeObject:clientDisplayName forKey:@"kClientDisplayName"];
  [v5 encodeObject:self->_providerDisplayName forKey:@"kProviderDisplayName"];
  [v5 encodeObject:self->_correlationID forKey:@"kCorrelationID"];
}

@end