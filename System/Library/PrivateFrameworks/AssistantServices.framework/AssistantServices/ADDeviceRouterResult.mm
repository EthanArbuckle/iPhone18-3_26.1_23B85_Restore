@interface ADDeviceRouterResult
+ (id)newWithBuilder:(id)builder;
- (ADDeviceRouterResult)initWithBuilder:(id)builder;
- (ADDeviceRouterResult)initWithCoder:(id)coder;
- (ADDeviceRouterResult)initWithPeerInfo:(id)info contextIdentifier:(id)identifier proximity:(int64_t)proximity commandRelayProxyIdentifier:(id)proxyIdentifier error:(id)error;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceRouterResult

- (void)encodeWithCoder:(id)coder
{
  peerInfo = self->_peerInfo;
  coderCopy = coder;
  [coderCopy encodeObject:peerInfo forKey:@"ADDeviceRouterResult::peerInfo"];
  [coderCopy encodeObject:self->_contextIdentifier forKey:@"ADDeviceRouterResult::contextIdentifier"];
  v5 = [NSNumber numberWithInteger:self->_proximity];
  [coderCopy encodeObject:v5 forKey:@"ADDeviceRouterResult::proximity"];

  [coderCopy encodeObject:self->_commandRelayProxyIdentifier forKey:@"ADDeviceRouterResult::commandRelayProxyIdentifier"];
  [coderCopy encodeObject:self->_error forKey:@"ADDeviceRouterResult::error"];
}

- (ADDeviceRouterResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::peerInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::contextIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::proximity"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::commandRelayProxyIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::error"];

  v11 = [(ADDeviceRouterResult *)self initWithPeerInfo:v5 contextIdentifier:v6 proximity:integerValue commandRelayProxyIdentifier:v9 error:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      proximity = self->_proximity;
      if (proximity == [(ADDeviceRouterResult *)v5 proximity])
      {
        peerInfo = [(ADDeviceRouterResult *)v5 peerInfo];
        peerInfo = self->_peerInfo;
        if (peerInfo == peerInfo || [(ADPeerInfo *)peerInfo isEqual:peerInfo])
        {
          contextIdentifier = [(ADDeviceRouterResult *)v5 contextIdentifier];
          contextIdentifier = self->_contextIdentifier;
          if (contextIdentifier == contextIdentifier || [(NSUUID *)contextIdentifier isEqual:contextIdentifier])
          {
            commandRelayProxyIdentifier = [(ADDeviceRouterResult *)v5 commandRelayProxyIdentifier];
            commandRelayProxyIdentifier = self->_commandRelayProxyIdentifier;
            if (commandRelayProxyIdentifier == commandRelayProxyIdentifier || [(NSString *)commandRelayProxyIdentifier isEqual:commandRelayProxyIdentifier])
            {
              error = [(ADDeviceRouterResult *)v5 error];
              error = self->_error;
              v15 = error == error || [(NSError *)error isEqual:error];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(ADPeerInfo *)self->_peerInfo hash];
  v4 = [(NSUUID *)self->_contextIdentifier hash]^ v3;
  v5 = [NSNumber numberWithInteger:self->_proximity];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSString *)self->_commandRelayProxyIdentifier hash]^ v6;
  v8 = [(NSError *)self->_error hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceRouterResult;
  v5 = [(ADDeviceRouterResult *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {peerInfo = %@, contextIdentifier = %@, proximity = %lld, commandRelayProxyIdentifier = %@, error = %@}", v5, self->_peerInfo, self->_contextIdentifier, self->_proximity, self->_commandRelayProxyIdentifier, self->_error];

  return v6;
}

- (ADDeviceRouterResult)initWithPeerInfo:(id)info contextIdentifier:(id)identifier proximity:(int64_t)proximity commandRelayProxyIdentifier:(id)proxyIdentifier error:(id)error
{
  infoCopy = info;
  identifierCopy = identifier;
  proxyIdentifierCopy = proxyIdentifier;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022CDB0;
  v21[3] = &unk_100517338;
  v22 = infoCopy;
  v23 = identifierCopy;
  errorCopy = error;
  proximityCopy = proximity;
  v24 = proxyIdentifierCopy;
  v15 = errorCopy;
  v16 = proxyIdentifierCopy;
  v17 = identifierCopy;
  v18 = infoCopy;
  v19 = [(ADDeviceRouterResult *)self initWithBuilder:v21];

  return v19;
}

- (ADDeviceRouterResult)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = ADDeviceRouterResult;
  v5 = [(ADDeviceRouterResult *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceRouterResultMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceRouterResultMutation *)v7 isDirty])
    {
      getPeerInfo = [(_ADDeviceRouterResultMutation *)v7 getPeerInfo];
      v9 = [getPeerInfo copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v9;

      getContextIdentifier = [(_ADDeviceRouterResultMutation *)v7 getContextIdentifier];
      v12 = [getContextIdentifier copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v12;

      v6->_proximity = [(_ADDeviceRouterResultMutation *)v7 getProximity];
      getCommandRelayProxyIdentifier = [(_ADDeviceRouterResultMutation *)v7 getCommandRelayProxyIdentifier];
      v15 = [getCommandRelayProxyIdentifier copy];
      commandRelayProxyIdentifier = v6->_commandRelayProxyIdentifier;
      v6->_commandRelayProxyIdentifier = v15;

      getError = [(_ADDeviceRouterResultMutation *)v7 getError];
      v18 = [getError copy];
      error = v6->_error;
      v6->_error = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADDeviceRouterResultMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceRouterResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceRouterResult);
      getPeerInfo = [(_ADDeviceRouterResultMutation *)v5 getPeerInfo];
      v8 = [getPeerInfo copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v8;

      getContextIdentifier = [(_ADDeviceRouterResultMutation *)v5 getContextIdentifier];
      v11 = [getContextIdentifier copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v11;

      v6->_proximity = [(_ADDeviceRouterResultMutation *)v5 getProximity];
      getCommandRelayProxyIdentifier = [(_ADDeviceRouterResultMutation *)v5 getCommandRelayProxyIdentifier];
      v14 = [getCommandRelayProxyIdentifier copy];
      commandRelayProxyIdentifier = v6->_commandRelayProxyIdentifier;
      v6->_commandRelayProxyIdentifier = v14;

      getError = [(_ADDeviceRouterResultMutation *)v5 getError];
      v17 = [getError copy];
      error = v6->_error;
      v6->_error = v17;
    }

    else
    {
      v6 = [(ADDeviceRouterResult *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceRouterResult *)self copy];
  }

  return v6;
}

@end