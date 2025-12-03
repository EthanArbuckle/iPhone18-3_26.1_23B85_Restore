@interface ADAudioSessionCoordinationMessage
+ (id)newWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessage)initWithBuilder:(id)builder;
- (ADAudioSessionCoordinationMessage)initWithCoder:(id)coder;
- (ADAudioSessionCoordinationMessage)initWithDictionaryRepresentation:(id)representation;
- (ADAudioSessionCoordinationMessage)initWithHostTime:(unint64_t)time type:(int64_t)type payloadBeginAudioSessionRequest:(id)request payloadBeginAudioSessionResponse:(id)response payloadKeepAudioSessionAliveRequest:(id)aliveRequest payloadKeepAudioSessionAliveResponse:(id)aliveResponse payloadEndAudioSessionRequest:(id)sessionRequest payloadEndAudioSessionResponse:(id)self0;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADAudioSessionCoordinationMessage

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithUnsignedLongLong:self->_hostTime];
  [v3 setObject:v4 forKey:@"hostTime"];

  type = self->_type;
  if (type > 6)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = *(&off_100512E20 + type);
  }

  v7 = v6;
  [v3 setObject:v7 forKey:@"type"];

  payloadBeginAudioSessionRequest = self->_payloadBeginAudioSessionRequest;
  if (payloadBeginAudioSessionRequest)
  {
    buildDictionaryRepresentation = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)payloadBeginAudioSessionRequest buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation forKey:@"payloadBeginAudioSessionRequest"];
  }

  payloadBeginAudioSessionResponse = self->_payloadBeginAudioSessionResponse;
  if (payloadBeginAudioSessionResponse)
  {
    buildDictionaryRepresentation2 = [(ADAudioSessionCoordinationMessageBeginAudioSessionResponse *)payloadBeginAudioSessionResponse buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation2 forKey:@"payloadBeginAudioSessionResponse"];
  }

  payloadKeepAudioSessionAliveRequest = self->_payloadKeepAudioSessionAliveRequest;
  if (payloadKeepAudioSessionAliveRequest)
  {
    buildDictionaryRepresentation3 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)payloadKeepAudioSessionAliveRequest buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation3 forKey:@"payloadKeepAudioSessionAliveRequest"];
  }

  payloadKeepAudioSessionAliveResponse = self->_payloadKeepAudioSessionAliveResponse;
  if (payloadKeepAudioSessionAliveResponse)
  {
    buildDictionaryRepresentation4 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)payloadKeepAudioSessionAliveResponse buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation4 forKey:@"payloadKeepAudioSessionAliveResponse"];
  }

  payloadEndAudioSessionRequest = self->_payloadEndAudioSessionRequest;
  if (payloadEndAudioSessionRequest)
  {
    buildDictionaryRepresentation5 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)payloadEndAudioSessionRequest buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation5 forKey:@"payloadEndAudioSessionRequest"];
  }

  payloadEndAudioSessionResponse = self->_payloadEndAudioSessionResponse;
  if (payloadEndAudioSessionResponse)
  {
    buildDictionaryRepresentation6 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)payloadEndAudioSessionResponse buildDictionaryRepresentation];
    [v3 setObject:buildDictionaryRepresentation6 forKey:@"payloadEndAudioSessionResponse"];
  }

  v20 = [v3 copy];

  return v20;
}

- (ADAudioSessionCoordinationMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"hostTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    unsignedLongLongValue = [v7 unsignedLongLongValue];
    v9 = [v5 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if ([v10 length])
      {
        if (qword_1005902D8 != -1)
        {
          dispatch_once(&qword_1005902D8, &stru_100512E00);
        }

        v11 = [qword_1005902E0 objectForKey:v10];
        integerValue = [v11 integerValue];
      }

      else
      {
        integerValue = 0;
      }
    }

    else
    {
      integerValue = 0;
    }

    v13 = [v5 objectForKey:@"payloadBeginAudioSessionRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[ADAudioSessionCoordinationMessageBeginAudioSessionRequest alloc] initWithDictionaryRepresentation:v13];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 objectForKey:@"payloadBeginAudioSessionResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[ADAudioSessionCoordinationMessageBeginAudioSessionResponse alloc] initWithDictionaryRepresentation:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v5 objectForKey:@"payloadKeepAudioSessionAliveRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest alloc] initWithDictionaryRepresentation:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v5 objectForKey:@"payloadKeepAudioSessionAliveResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse alloc] initWithDictionaryRepresentation:v19];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v5 objectForKey:@"payloadEndAudioSessionRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[ADAudioSessionCoordinationMessageEndAudioSessionRequest alloc] initWithDictionaryRepresentation:v21];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v5 objectForKey:@"payloadEndAudioSessionResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[ADAudioSessionCoordinationMessageEndAudioSessionResponse alloc] initWithDictionaryRepresentation:v23];
    }

    else
    {
      v24 = 0;
    }

    self = [(ADAudioSessionCoordinationMessage *)self initWithHostTime:unsignedLongLongValue type:integerValue payloadBeginAudioSessionRequest:v14 payloadBeginAudioSessionResponse:v16 payloadKeepAudioSessionAliveRequest:v18 payloadKeepAudioSessionAliveResponse:v20 payloadEndAudioSessionRequest:v22 payloadEndAudioSessionResponse:v24];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  hostTime = self->_hostTime;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:hostTime];
  [coderCopy encodeObject:v5 forKey:@"ADAudioSessionCoordinationMessage::hostTime"];

  v6 = [NSNumber numberWithInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"ADAudioSessionCoordinationMessage::type"];

  [coderCopy encodeObject:self->_payloadBeginAudioSessionRequest forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionRequest"];
  [coderCopy encodeObject:self->_payloadBeginAudioSessionResponse forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionResponse"];
  [coderCopy encodeObject:self->_payloadKeepAudioSessionAliveRequest forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveRequest"];
  [coderCopy encodeObject:self->_payloadKeepAudioSessionAliveResponse forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveResponse"];
  [coderCopy encodeObject:self->_payloadEndAudioSessionRequest forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionRequest"];
  [coderCopy encodeObject:self->_payloadEndAudioSessionResponse forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionResponse"];
}

- (ADAudioSessionCoordinationMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::hostTime"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::type"];
  integerValue = [v7 integerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionRequest"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionResponse"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveRequest"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveResponse"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionRequest"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionResponse"];

  v15 = [(ADAudioSessionCoordinationMessage *)self initWithHostTime:unsignedLongLongValue type:integerValue payloadBeginAudioSessionRequest:v9 payloadBeginAudioSessionResponse:v10 payloadKeepAudioSessionAliveRequest:v11 payloadKeepAudioSessionAliveResponse:v12 payloadEndAudioSessionRequest:v13 payloadEndAudioSessionResponse:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hostTime = self->_hostTime;
      if (hostTime == [(ADAudioSessionCoordinationMessage *)v5 hostTime]&& (type = self->_type, type == [(ADAudioSessionCoordinationMessage *)v5 type]))
      {
        payloadBeginAudioSessionRequest = [(ADAudioSessionCoordinationMessage *)v5 payloadBeginAudioSessionRequest];
        payloadBeginAudioSessionRequest = self->_payloadBeginAudioSessionRequest;
        if (payloadBeginAudioSessionRequest == payloadBeginAudioSessionRequest || [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)payloadBeginAudioSessionRequest isEqual:payloadBeginAudioSessionRequest])
        {
          payloadBeginAudioSessionResponse = [(ADAudioSessionCoordinationMessage *)v5 payloadBeginAudioSessionResponse];
          payloadBeginAudioSessionResponse = self->_payloadBeginAudioSessionResponse;
          if (payloadBeginAudioSessionResponse == payloadBeginAudioSessionResponse || [(ADAudioSessionCoordinationMessageBeginAudioSessionResponse *)payloadBeginAudioSessionResponse isEqual:payloadBeginAudioSessionResponse])
          {
            payloadKeepAudioSessionAliveRequest = [(ADAudioSessionCoordinationMessage *)v5 payloadKeepAudioSessionAliveRequest];
            payloadKeepAudioSessionAliveRequest = self->_payloadKeepAudioSessionAliveRequest;
            if (payloadKeepAudioSessionAliveRequest == payloadKeepAudioSessionAliveRequest || [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)payloadKeepAudioSessionAliveRequest isEqual:payloadKeepAudioSessionAliveRequest])
            {
              payloadKeepAudioSessionAliveResponse = [(ADAudioSessionCoordinationMessage *)v5 payloadKeepAudioSessionAliveResponse];
              payloadKeepAudioSessionAliveResponse = self->_payloadKeepAudioSessionAliveResponse;
              if (payloadKeepAudioSessionAliveResponse == payloadKeepAudioSessionAliveResponse || [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)payloadKeepAudioSessionAliveResponse isEqual:payloadKeepAudioSessionAliveResponse])
              {
                payloadEndAudioSessionRequest = [(ADAudioSessionCoordinationMessage *)v5 payloadEndAudioSessionRequest];
                payloadEndAudioSessionRequest = self->_payloadEndAudioSessionRequest;
                if (payloadEndAudioSessionRequest == payloadEndAudioSessionRequest || [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)payloadEndAudioSessionRequest isEqual:payloadEndAudioSessionRequest])
                {
                  payloadEndAudioSessionResponse = [(ADAudioSessionCoordinationMessage *)v5 payloadEndAudioSessionResponse];
                  payloadEndAudioSessionResponse = self->_payloadEndAudioSessionResponse;
                  v20 = payloadEndAudioSessionResponse == payloadEndAudioSessionResponse || [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)payloadEndAudioSessionResponse isEqual:payloadEndAudioSessionResponse];
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_hostTime];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:self->_type];
  v6 = [v5 hash] ^ v4;
  v7 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)self->_payloadBeginAudioSessionRequest hash];
  v8 = v7 ^ [(ADAudioSessionCoordinationMessageBeginAudioSessionResponse *)self->_payloadBeginAudioSessionResponse hash];
  v9 = v8 ^ [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)self->_payloadKeepAudioSessionAliveRequest hash];
  v10 = v6 ^ v9 ^ [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)self->_payloadKeepAudioSessionAliveResponse hash];
  v11 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)self->_payloadEndAudioSessionRequest hash];
  v12 = v11 ^ [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)self->_payloadEndAudioSessionResponse hash];

  return v10 ^ v12;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v12.receiver = self;
  v12.super_class = ADAudioSessionCoordinationMessage;
  v5 = [(ADAudioSessionCoordinationMessage *)&v12 description];
  hostTime = self->_hostTime;
  type = self->_type;
  if (type > 6)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = *(&off_100512E20 + type);
  }

  v9 = v8;
  v10 = [v4 initWithFormat:@"%@ {hostTime = %llu, type = %@, payloadBeginAudioSessionRequest = %@, payloadBeginAudioSessionResponse = %@, payloadKeepAudioSessionAliveRequest = %@, payloadKeepAudioSessionAliveResponse = %@, payloadEndAudioSessionRequest = %@, payloadEndAudioSessionResponse = %@}", v5, hostTime, v9, self->_payloadBeginAudioSessionRequest, self->_payloadBeginAudioSessionResponse, self->_payloadKeepAudioSessionAliveRequest, self->_payloadKeepAudioSessionAliveResponse, self->_payloadEndAudioSessionRequest, self->_payloadEndAudioSessionResponse];

  return v10;
}

- (ADAudioSessionCoordinationMessage)initWithHostTime:(unint64_t)time type:(int64_t)type payloadBeginAudioSessionRequest:(id)request payloadBeginAudioSessionResponse:(id)response payloadKeepAudioSessionAliveRequest:(id)aliveRequest payloadKeepAudioSessionAliveResponse:(id)aliveResponse payloadEndAudioSessionRequest:(id)sessionRequest payloadEndAudioSessionResponse:(id)self0
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003689CC;
  v22[3] = &unk_10051D9E0;
  timeCopy = time;
  typeCopy = type;
  requestCopy = request;
  responseCopy = response;
  aliveRequestCopy = aliveRequest;
  aliveResponseCopy = aliveResponse;
  sessionRequestCopy = sessionRequest;
  sessionResponseCopy = sessionResponse;
  v13 = sessionResponseCopy;
  v14 = sessionRequestCopy;
  v15 = aliveResponseCopy;
  v16 = aliveRequestCopy;
  v17 = responseCopy;
  v18 = requestCopy;
  v19 = [(ADAudioSessionCoordinationMessage *)self initWithBuilder:v22];

  return v19;
}

- (ADAudioSessionCoordinationMessage)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v27.receiver = self;
  v27.super_class = ADAudioSessionCoordinationMessage;
  v5 = [(ADAudioSessionCoordinationMessage *)&v27 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADAudioSessionCoordinationMessageMutation *)v7 isDirty])
    {
      v6->_hostTime = [(_ADAudioSessionCoordinationMessageMutation *)v7 getHostTime];
      v6->_type = [(_ADAudioSessionCoordinationMessageMutation *)v7 getType];
      getPayloadBeginAudioSessionRequest = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadBeginAudioSessionRequest];
      v9 = [getPayloadBeginAudioSessionRequest copy];
      payloadBeginAudioSessionRequest = v6->_payloadBeginAudioSessionRequest;
      v6->_payloadBeginAudioSessionRequest = v9;

      getPayloadBeginAudioSessionResponse = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadBeginAudioSessionResponse];
      v12 = [getPayloadBeginAudioSessionResponse copy];
      payloadBeginAudioSessionResponse = v6->_payloadBeginAudioSessionResponse;
      v6->_payloadBeginAudioSessionResponse = v12;

      getPayloadKeepAudioSessionAliveRequest = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadKeepAudioSessionAliveRequest];
      v15 = [getPayloadKeepAudioSessionAliveRequest copy];
      payloadKeepAudioSessionAliveRequest = v6->_payloadKeepAudioSessionAliveRequest;
      v6->_payloadKeepAudioSessionAliveRequest = v15;

      getPayloadKeepAudioSessionAliveResponse = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadKeepAudioSessionAliveResponse];
      v18 = [getPayloadKeepAudioSessionAliveResponse copy];
      payloadKeepAudioSessionAliveResponse = v6->_payloadKeepAudioSessionAliveResponse;
      v6->_payloadKeepAudioSessionAliveResponse = v18;

      getPayloadEndAudioSessionRequest = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadEndAudioSessionRequest];
      v21 = [getPayloadEndAudioSessionRequest copy];
      payloadEndAudioSessionRequest = v6->_payloadEndAudioSessionRequest;
      v6->_payloadEndAudioSessionRequest = v21;

      getPayloadEndAudioSessionResponse = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadEndAudioSessionResponse];
      v24 = [getPayloadEndAudioSessionResponse copy];
      payloadEndAudioSessionResponse = v6->_payloadEndAudioSessionResponse;
      v6->_payloadEndAudioSessionResponse = v24;
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
    v5 = [[_ADAudioSessionCoordinationMessageMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADAudioSessionCoordinationMessageMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessage);
      v6->_hostTime = [(_ADAudioSessionCoordinationMessageMutation *)v5 getHostTime];
      v6->_type = [(_ADAudioSessionCoordinationMessageMutation *)v5 getType];
      getPayloadBeginAudioSessionRequest = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadBeginAudioSessionRequest];
      v8 = [getPayloadBeginAudioSessionRequest copy];
      payloadBeginAudioSessionRequest = v6->_payloadBeginAudioSessionRequest;
      v6->_payloadBeginAudioSessionRequest = v8;

      getPayloadBeginAudioSessionResponse = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadBeginAudioSessionResponse];
      v11 = [getPayloadBeginAudioSessionResponse copy];
      payloadBeginAudioSessionResponse = v6->_payloadBeginAudioSessionResponse;
      v6->_payloadBeginAudioSessionResponse = v11;

      getPayloadKeepAudioSessionAliveRequest = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadKeepAudioSessionAliveRequest];
      v14 = [getPayloadKeepAudioSessionAliveRequest copy];
      payloadKeepAudioSessionAliveRequest = v6->_payloadKeepAudioSessionAliveRequest;
      v6->_payloadKeepAudioSessionAliveRequest = v14;

      getPayloadKeepAudioSessionAliveResponse = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadKeepAudioSessionAliveResponse];
      v17 = [getPayloadKeepAudioSessionAliveResponse copy];
      payloadKeepAudioSessionAliveResponse = v6->_payloadKeepAudioSessionAliveResponse;
      v6->_payloadKeepAudioSessionAliveResponse = v17;

      getPayloadEndAudioSessionRequest = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadEndAudioSessionRequest];
      v20 = [getPayloadEndAudioSessionRequest copy];
      payloadEndAudioSessionRequest = v6->_payloadEndAudioSessionRequest;
      v6->_payloadEndAudioSessionRequest = v20;

      getPayloadEndAudioSessionResponse = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadEndAudioSessionResponse];
      v23 = [getPayloadEndAudioSessionResponse copy];
      payloadEndAudioSessionResponse = v6->_payloadEndAudioSessionResponse;
      v6->_payloadEndAudioSessionResponse = v23;
    }

    else
    {
      v6 = [(ADAudioSessionCoordinationMessage *)self copy];
    }
  }

  else
  {
    v6 = [(ADAudioSessionCoordinationMessage *)self copy];
  }

  return v6;
}

@end