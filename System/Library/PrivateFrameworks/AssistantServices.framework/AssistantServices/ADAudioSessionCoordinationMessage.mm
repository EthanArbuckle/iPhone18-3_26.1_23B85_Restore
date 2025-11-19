@interface ADAudioSessionCoordinationMessage
+ (id)newWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessage)initWithBuilder:(id)a3;
- (ADAudioSessionCoordinationMessage)initWithCoder:(id)a3;
- (ADAudioSessionCoordinationMessage)initWithDictionaryRepresentation:(id)a3;
- (ADAudioSessionCoordinationMessage)initWithHostTime:(unint64_t)a3 type:(int64_t)a4 payloadBeginAudioSessionRequest:(id)a5 payloadBeginAudioSessionResponse:(id)a6 payloadKeepAudioSessionAliveRequest:(id)a7 payloadKeepAudioSessionAliveResponse:(id)a8 payloadEndAudioSessionRequest:(id)a9 payloadEndAudioSessionResponse:(id)a10;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
    v9 = [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)payloadBeginAudioSessionRequest buildDictionaryRepresentation];
    [v3 setObject:v9 forKey:@"payloadBeginAudioSessionRequest"];
  }

  payloadBeginAudioSessionResponse = self->_payloadBeginAudioSessionResponse;
  if (payloadBeginAudioSessionResponse)
  {
    v11 = [(ADAudioSessionCoordinationMessageBeginAudioSessionResponse *)payloadBeginAudioSessionResponse buildDictionaryRepresentation];
    [v3 setObject:v11 forKey:@"payloadBeginAudioSessionResponse"];
  }

  payloadKeepAudioSessionAliveRequest = self->_payloadKeepAudioSessionAliveRequest;
  if (payloadKeepAudioSessionAliveRequest)
  {
    v13 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)payloadKeepAudioSessionAliveRequest buildDictionaryRepresentation];
    [v3 setObject:v13 forKey:@"payloadKeepAudioSessionAliveRequest"];
  }

  payloadKeepAudioSessionAliveResponse = self->_payloadKeepAudioSessionAliveResponse;
  if (payloadKeepAudioSessionAliveResponse)
  {
    v15 = [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)payloadKeepAudioSessionAliveResponse buildDictionaryRepresentation];
    [v3 setObject:v15 forKey:@"payloadKeepAudioSessionAliveResponse"];
  }

  payloadEndAudioSessionRequest = self->_payloadEndAudioSessionRequest;
  if (payloadEndAudioSessionRequest)
  {
    v17 = [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)payloadEndAudioSessionRequest buildDictionaryRepresentation];
    [v3 setObject:v17 forKey:@"payloadEndAudioSessionRequest"];
  }

  payloadEndAudioSessionResponse = self->_payloadEndAudioSessionResponse;
  if (payloadEndAudioSessionResponse)
  {
    v19 = [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)payloadEndAudioSessionResponse buildDictionaryRepresentation];
    [v3 setObject:v19 forKey:@"payloadEndAudioSessionResponse"];
  }

  v20 = [v3 copy];

  return v20;
}

- (ADAudioSessionCoordinationMessage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"hostTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v26 = [v7 unsignedLongLongValue];
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
        v12 = [v11 integerValue];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
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

    self = [(ADAudioSessionCoordinationMessage *)self initWithHostTime:v26 type:v12 payloadBeginAudioSessionRequest:v14 payloadBeginAudioSessionResponse:v16 payloadKeepAudioSessionAliveRequest:v18 payloadKeepAudioSessionAliveResponse:v20 payloadEndAudioSessionRequest:v22 payloadEndAudioSessionResponse:v24];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  hostTime = self->_hostTime;
  v7 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:hostTime];
  [v7 encodeObject:v5 forKey:@"ADAudioSessionCoordinationMessage::hostTime"];

  v6 = [NSNumber numberWithInteger:self->_type];
  [v7 encodeObject:v6 forKey:@"ADAudioSessionCoordinationMessage::type"];

  [v7 encodeObject:self->_payloadBeginAudioSessionRequest forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionRequest"];
  [v7 encodeObject:self->_payloadBeginAudioSessionResponse forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionResponse"];
  [v7 encodeObject:self->_payloadKeepAudioSessionAliveRequest forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveRequest"];
  [v7 encodeObject:self->_payloadKeepAudioSessionAliveResponse forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveResponse"];
  [v7 encodeObject:self->_payloadEndAudioSessionRequest forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionRequest"];
  [v7 encodeObject:self->_payloadEndAudioSessionResponse forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionResponse"];
}

- (ADAudioSessionCoordinationMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::hostTime"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::type"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionRequest"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadBeginAudioSessionResponse"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveRequest"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadKeepAudioSessionAliveResponse"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionRequest"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADAudioSessionCoordinationMessage::payloadEndAudioSessionResponse"];

  v15 = [(ADAudioSessionCoordinationMessage *)self initWithHostTime:v6 type:v8 payloadBeginAudioSessionRequest:v9 payloadBeginAudioSessionResponse:v10 payloadKeepAudioSessionAliveRequest:v11 payloadKeepAudioSessionAliveResponse:v12 payloadEndAudioSessionRequest:v13 payloadEndAudioSessionResponse:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      hostTime = self->_hostTime;
      if (hostTime == [(ADAudioSessionCoordinationMessage *)v5 hostTime]&& (type = self->_type, type == [(ADAudioSessionCoordinationMessage *)v5 type]))
      {
        v8 = [(ADAudioSessionCoordinationMessage *)v5 payloadBeginAudioSessionRequest];
        payloadBeginAudioSessionRequest = self->_payloadBeginAudioSessionRequest;
        if (payloadBeginAudioSessionRequest == v8 || [(ADAudioSessionCoordinationMessageBeginAudioSessionRequest *)payloadBeginAudioSessionRequest isEqual:v8])
        {
          v10 = [(ADAudioSessionCoordinationMessage *)v5 payloadBeginAudioSessionResponse];
          payloadBeginAudioSessionResponse = self->_payloadBeginAudioSessionResponse;
          if (payloadBeginAudioSessionResponse == v10 || [(ADAudioSessionCoordinationMessageBeginAudioSessionResponse *)payloadBeginAudioSessionResponse isEqual:v10])
          {
            v12 = [(ADAudioSessionCoordinationMessage *)v5 payloadKeepAudioSessionAliveRequest];
            payloadKeepAudioSessionAliveRequest = self->_payloadKeepAudioSessionAliveRequest;
            if (payloadKeepAudioSessionAliveRequest == v12 || [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveRequest *)payloadKeepAudioSessionAliveRequest isEqual:v12])
            {
              v14 = [(ADAudioSessionCoordinationMessage *)v5 payloadKeepAudioSessionAliveResponse];
              payloadKeepAudioSessionAliveResponse = self->_payloadKeepAudioSessionAliveResponse;
              if (payloadKeepAudioSessionAliveResponse == v14 || [(ADAudioSessionCoordinationMessageKeepAudioSessionAliveResponse *)payloadKeepAudioSessionAliveResponse isEqual:v14])
              {
                v16 = [(ADAudioSessionCoordinationMessage *)v5 payloadEndAudioSessionRequest];
                payloadEndAudioSessionRequest = self->_payloadEndAudioSessionRequest;
                if (payloadEndAudioSessionRequest == v16 || [(ADAudioSessionCoordinationMessageEndAudioSessionRequest *)payloadEndAudioSessionRequest isEqual:v16])
                {
                  v18 = [(ADAudioSessionCoordinationMessage *)v5 payloadEndAudioSessionResponse];
                  payloadEndAudioSessionResponse = self->_payloadEndAudioSessionResponse;
                  v20 = payloadEndAudioSessionResponse == v18 || [(ADAudioSessionCoordinationMessageEndAudioSessionResponse *)payloadEndAudioSessionResponse isEqual:v18];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (ADAudioSessionCoordinationMessage)initWithHostTime:(unint64_t)a3 type:(int64_t)a4 payloadBeginAudioSessionRequest:(id)a5 payloadBeginAudioSessionResponse:(id)a6 payloadKeepAudioSessionAliveRequest:(id)a7 payloadKeepAudioSessionAliveResponse:(id)a8 payloadEndAudioSessionRequest:(id)a9 payloadEndAudioSessionResponse:(id)a10
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003689CC;
  v22[3] = &unk_10051D9E0;
  v29 = a3;
  v30 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v13 = v28;
  v14 = v27;
  v15 = v26;
  v16 = v25;
  v17 = v24;
  v18 = v23;
  v19 = [(ADAudioSessionCoordinationMessage *)self initWithBuilder:v22];

  return v19;
}

- (ADAudioSessionCoordinationMessage)initWithBuilder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = ADAudioSessionCoordinationMessage;
  v5 = [(ADAudioSessionCoordinationMessage *)&v27 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADAudioSessionCoordinationMessageMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADAudioSessionCoordinationMessageMutation *)v7 isDirty])
    {
      v6->_hostTime = [(_ADAudioSessionCoordinationMessageMutation *)v7 getHostTime];
      v6->_type = [(_ADAudioSessionCoordinationMessageMutation *)v7 getType];
      v8 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadBeginAudioSessionRequest];
      v9 = [v8 copy];
      payloadBeginAudioSessionRequest = v6->_payloadBeginAudioSessionRequest;
      v6->_payloadBeginAudioSessionRequest = v9;

      v11 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadBeginAudioSessionResponse];
      v12 = [v11 copy];
      payloadBeginAudioSessionResponse = v6->_payloadBeginAudioSessionResponse;
      v6->_payloadBeginAudioSessionResponse = v12;

      v14 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadKeepAudioSessionAliveRequest];
      v15 = [v14 copy];
      payloadKeepAudioSessionAliveRequest = v6->_payloadKeepAudioSessionAliveRequest;
      v6->_payloadKeepAudioSessionAliveRequest = v15;

      v17 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadKeepAudioSessionAliveResponse];
      v18 = [v17 copy];
      payloadKeepAudioSessionAliveResponse = v6->_payloadKeepAudioSessionAliveResponse;
      v6->_payloadKeepAudioSessionAliveResponse = v18;

      v20 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadEndAudioSessionRequest];
      v21 = [v20 copy];
      payloadEndAudioSessionRequest = v6->_payloadEndAudioSessionRequest;
      v6->_payloadEndAudioSessionRequest = v21;

      v23 = [(_ADAudioSessionCoordinationMessageMutation *)v7 getPayloadEndAudioSessionResponse];
      v24 = [v23 copy];
      payloadEndAudioSessionResponse = v6->_payloadEndAudioSessionResponse;
      v6->_payloadEndAudioSessionResponse = v24;
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
    v5 = [[_ADAudioSessionCoordinationMessageMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADAudioSessionCoordinationMessageMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADAudioSessionCoordinationMessage);
      v6->_hostTime = [(_ADAudioSessionCoordinationMessageMutation *)v5 getHostTime];
      v6->_type = [(_ADAudioSessionCoordinationMessageMutation *)v5 getType];
      v7 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadBeginAudioSessionRequest];
      v8 = [v7 copy];
      payloadBeginAudioSessionRequest = v6->_payloadBeginAudioSessionRequest;
      v6->_payloadBeginAudioSessionRequest = v8;

      v10 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadBeginAudioSessionResponse];
      v11 = [v10 copy];
      payloadBeginAudioSessionResponse = v6->_payloadBeginAudioSessionResponse;
      v6->_payloadBeginAudioSessionResponse = v11;

      v13 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadKeepAudioSessionAliveRequest];
      v14 = [v13 copy];
      payloadKeepAudioSessionAliveRequest = v6->_payloadKeepAudioSessionAliveRequest;
      v6->_payloadKeepAudioSessionAliveRequest = v14;

      v16 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadKeepAudioSessionAliveResponse];
      v17 = [v16 copy];
      payloadKeepAudioSessionAliveResponse = v6->_payloadKeepAudioSessionAliveResponse;
      v6->_payloadKeepAudioSessionAliveResponse = v17;

      v19 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadEndAudioSessionRequest];
      v20 = [v19 copy];
      payloadEndAudioSessionRequest = v6->_payloadEndAudioSessionRequest;
      v6->_payloadEndAudioSessionRequest = v20;

      v22 = [(_ADAudioSessionCoordinationMessageMutation *)v5 getPayloadEndAudioSessionResponse];
      v23 = [v22 copy];
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