@interface TKTokenAccessUserPromptInfo
- (TKTokenAccessUserPromptInfo)initWithCoder:(id)coder;
- (TKTokenAccessUserPromptInfo)initWithTokenAccessRequest:(id)request;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TKTokenAccessUserPromptInfo

- (TKTokenAccessUserPromptInfo)initWithTokenAccessRequest:(id)request
{
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = TKTokenAccessUserPromptInfo;
  v5 = [(TKTokenAccessUserPromptInfo *)&v17 init];
  if (v5)
  {
    correlationID = [requestCopy correlationID];
    correlationID = v5->_correlationID;
    v5->_correlationID = correlationID;

    clientName = [requestCopy clientName];
    v9 = clientName;
    if (clientName)
    {
      clientBundleID = clientName;
    }

    else
    {
      clientBundleID = [requestCopy clientBundleID];
    }

    clientDisplayName = v5->_clientDisplayName;
    v5->_clientDisplayName = clientBundleID;

    providerName = [requestCopy providerName];
    v13 = providerName;
    if (providerName)
    {
      providerBundleID = providerName;
    }

    else
    {
      providerBundleID = [requestCopy providerBundleID];
    }

    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = providerBundleID;
  }

  return v5;
}

- (TKTokenAccessUserPromptInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TKTokenAccessUserPromptInfo;
  v5 = [(TKTokenAccessUserPromptInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kClientDisplayName"];
    clientDisplayName = v5->_clientDisplayName;
    v5->_clientDisplayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kProviderDisplayName"];
    providerDisplayName = v5->_providerDisplayName;
    v5->_providerDisplayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCorrelationID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientDisplayName = self->_clientDisplayName;
  coderCopy = coder;
  [coderCopy encodeObject:clientDisplayName forKey:@"kClientDisplayName"];
  [coderCopy encodeObject:self->_providerDisplayName forKey:@"kProviderDisplayName"];
  [coderCopy encodeObject:self->_correlationID forKey:@"kCorrelationID"];
}

@end