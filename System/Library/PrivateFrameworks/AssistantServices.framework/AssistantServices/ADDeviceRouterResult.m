@interface ADDeviceRouterResult
+ (id)newWithBuilder:(id)a3;
- (ADDeviceRouterResult)initWithBuilder:(id)a3;
- (ADDeviceRouterResult)initWithCoder:(id)a3;
- (ADDeviceRouterResult)initWithPeerInfo:(id)a3 contextIdentifier:(id)a4 proximity:(int64_t)a5 commandRelayProxyIdentifier:(id)a6 error:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceRouterResult

- (void)encodeWithCoder:(id)a3
{
  peerInfo = self->_peerInfo;
  v6 = a3;
  [v6 encodeObject:peerInfo forKey:@"ADDeviceRouterResult::peerInfo"];
  [v6 encodeObject:self->_contextIdentifier forKey:@"ADDeviceRouterResult::contextIdentifier"];
  v5 = [NSNumber numberWithInteger:self->_proximity];
  [v6 encodeObject:v5 forKey:@"ADDeviceRouterResult::proximity"];

  [v6 encodeObject:self->_commandRelayProxyIdentifier forKey:@"ADDeviceRouterResult::commandRelayProxyIdentifier"];
  [v6 encodeObject:self->_error forKey:@"ADDeviceRouterResult::error"];
}

- (ADDeviceRouterResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::peerInfo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::contextIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::proximity"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::commandRelayProxyIdentifier"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceRouterResult::error"];

  v11 = [(ADDeviceRouterResult *)self initWithPeerInfo:v5 contextIdentifier:v6 proximity:v8 commandRelayProxyIdentifier:v9 error:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      proximity = self->_proximity;
      if (proximity == [(ADDeviceRouterResult *)v5 proximity])
      {
        v7 = [(ADDeviceRouterResult *)v5 peerInfo];
        peerInfo = self->_peerInfo;
        if (peerInfo == v7 || [(ADPeerInfo *)peerInfo isEqual:v7])
        {
          v9 = [(ADDeviceRouterResult *)v5 contextIdentifier];
          contextIdentifier = self->_contextIdentifier;
          if (contextIdentifier == v9 || [(NSUUID *)contextIdentifier isEqual:v9])
          {
            v11 = [(ADDeviceRouterResult *)v5 commandRelayProxyIdentifier];
            commandRelayProxyIdentifier = self->_commandRelayProxyIdentifier;
            if (commandRelayProxyIdentifier == v11 || [(NSString *)commandRelayProxyIdentifier isEqual:v11])
            {
              v13 = [(ADDeviceRouterResult *)v5 error];
              error = self->_error;
              v15 = error == v13 || [(NSError *)error isEqual:v13];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceRouterResult;
  v5 = [(ADDeviceRouterResult *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {peerInfo = %@, contextIdentifier = %@, proximity = %lld, commandRelayProxyIdentifier = %@, error = %@}", v5, self->_peerInfo, self->_contextIdentifier, self->_proximity, self->_commandRelayProxyIdentifier, self->_error];

  return v6;
}

- (ADDeviceRouterResult)initWithPeerInfo:(id)a3 contextIdentifier:(id)a4 proximity:(int64_t)a5 commandRelayProxyIdentifier:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10022CDB0;
  v21[3] = &unk_100517338;
  v22 = v12;
  v23 = v13;
  v25 = a7;
  v26 = a5;
  v24 = v14;
  v15 = v25;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = [(ADDeviceRouterResult *)self initWithBuilder:v21];

  return v19;
}

- (ADDeviceRouterResult)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ADDeviceRouterResult;
  v5 = [(ADDeviceRouterResult *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceRouterResultMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceRouterResultMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceRouterResultMutation *)v7 getPeerInfo];
      v9 = [v8 copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v9;

      v11 = [(_ADDeviceRouterResultMutation *)v7 getContextIdentifier];
      v12 = [v11 copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v12;

      v6->_proximity = [(_ADDeviceRouterResultMutation *)v7 getProximity];
      v14 = [(_ADDeviceRouterResultMutation *)v7 getCommandRelayProxyIdentifier];
      v15 = [v14 copy];
      commandRelayProxyIdentifier = v6->_commandRelayProxyIdentifier;
      v6->_commandRelayProxyIdentifier = v15;

      v17 = [(_ADDeviceRouterResultMutation *)v7 getError];
      v18 = [v17 copy];
      error = v6->_error;
      v6->_error = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADDeviceRouterResultMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceRouterResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceRouterResult);
      v7 = [(_ADDeviceRouterResultMutation *)v5 getPeerInfo];
      v8 = [v7 copy];
      peerInfo = v6->_peerInfo;
      v6->_peerInfo = v8;

      v10 = [(_ADDeviceRouterResultMutation *)v5 getContextIdentifier];
      v11 = [v10 copy];
      contextIdentifier = v6->_contextIdentifier;
      v6->_contextIdentifier = v11;

      v6->_proximity = [(_ADDeviceRouterResultMutation *)v5 getProximity];
      v13 = [(_ADDeviceRouterResultMutation *)v5 getCommandRelayProxyIdentifier];
      v14 = [v13 copy];
      commandRelayProxyIdentifier = v6->_commandRelayProxyIdentifier;
      v6->_commandRelayProxyIdentifier = v14;

      v16 = [(_ADDeviceRouterResultMutation *)v5 getError];
      v17 = [v16 copy];
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