@interface ADDeviceSyncMessage
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncMessage)initWithBuilder:(id)a3;
- (ADDeviceSyncMessage)initWithCoder:(id)a3;
- (ADDeviceSyncMessage)initWithSequence:(unint64_t)a3 type:(int64_t)a4 commandPushGenerationsRequest:(id)a5 commandPushGenerationsResponse:(id)a6 commandPullGenerationsRequest:(id)a7 commandPullGenerationsResponse:(id)a8 commandPullDeltaRequest:(id)a9 commandPullDeltaResponse:(id)a10 commandPullSnapshotRequest:(id)a11 commandPullSnapshotResponse:(id)a12;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceSyncMessage

- (void)encodeWithCoder:(id)a3
{
  sequence = self->_sequence;
  v7 = a3;
  v5 = [NSNumber numberWithUnsignedLongLong:sequence];
  [v7 encodeObject:v5 forKey:@"ADDeviceSyncMessage::sequence"];

  v6 = [NSNumber numberWithInteger:self->_type];
  [v7 encodeObject:v6 forKey:@"ADDeviceSyncMessage::type"];

  [v7 encodeObject:self->_commandPushGenerationsRequest forKey:@"ADDeviceSyncMessage::commandPushGenerationsRequest"];
  [v7 encodeObject:self->_commandPushGenerationsResponse forKey:@"ADDeviceSyncMessage::commandPushGenerationsResponse"];
  [v7 encodeObject:self->_commandPullGenerationsRequest forKey:@"ADDeviceSyncMessage::commandPullGenerationsRequest"];
  [v7 encodeObject:self->_commandPullGenerationsResponse forKey:@"ADDeviceSyncMessage::commandPullGenerationsResponse"];
  [v7 encodeObject:self->_commandPullDeltaRequest forKey:@"ADDeviceSyncMessage::commandPullDeltaRequest"];
  [v7 encodeObject:self->_commandPullDeltaResponse forKey:@"ADDeviceSyncMessage::commandPullDeltaResponse"];
  [v7 encodeObject:self->_commandPullSnapshotRequest forKey:@"ADDeviceSyncMessage::commandPullSnapshotRequest"];
  [v7 encodeObject:self->_commandPullSnapshotResponse forKey:@"ADDeviceSyncMessage::commandPullSnapshotResponse"];
}

- (ADDeviceSyncMessage)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::sequence"];
  v17 = [v4 unsignedLongLongValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::type"];
  v6 = [v5 integerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPushGenerationsRequest"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPushGenerationsResponse"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullGenerationsRequest"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullGenerationsResponse"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullDeltaRequest"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullDeltaResponse"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullSnapshotRequest"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullSnapshotResponse"];

  v15 = [(ADDeviceSyncMessage *)self initWithSequence:v17 type:v6 commandPushGenerationsRequest:v7 commandPushGenerationsResponse:v8 commandPullGenerationsRequest:v9 commandPullGenerationsResponse:v10 commandPullDeltaRequest:v11 commandPullDeltaResponse:v12 commandPullSnapshotRequest:v13 commandPullSnapshotResponse:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sequence = self->_sequence;
      if (sequence == [(ADDeviceSyncMessage *)v5 sequence]&& (type = self->_type, type == [(ADDeviceSyncMessage *)v5 type]))
      {
        v8 = [(ADDeviceSyncMessage *)v5 commandPushGenerationsRequest];
        commandPushGenerationsRequest = self->_commandPushGenerationsRequest;
        if (commandPushGenerationsRequest == v8 || [(ADDeviceSyncCommandPushGenerationsRequest *)commandPushGenerationsRequest isEqual:v8])
        {
          v10 = [(ADDeviceSyncMessage *)v5 commandPushGenerationsResponse];
          commandPushGenerationsResponse = self->_commandPushGenerationsResponse;
          if (commandPushGenerationsResponse == v10 || [(ADDeviceSyncCommandPushGenerationsResponse *)commandPushGenerationsResponse isEqual:v10])
          {
            v12 = [(ADDeviceSyncMessage *)v5 commandPullGenerationsRequest];
            commandPullGenerationsRequest = self->_commandPullGenerationsRequest;
            if (commandPullGenerationsRequest == v12 || [(ADDeviceSyncCommandPullGenerationsRequest *)commandPullGenerationsRequest isEqual:v12])
            {
              v14 = [(ADDeviceSyncMessage *)v5 commandPullGenerationsResponse];
              commandPullGenerationsResponse = self->_commandPullGenerationsResponse;
              if (commandPullGenerationsResponse == v14 || [(ADDeviceSyncCommandPullGenerationsResponse *)commandPullGenerationsResponse isEqual:v14])
              {
                v16 = [(ADDeviceSyncMessage *)v5 commandPullDeltaRequest];
                commandPullDeltaRequest = self->_commandPullDeltaRequest;
                if (commandPullDeltaRequest == v16 || [(ADDeviceSyncCommandPullDeltaRequest *)commandPullDeltaRequest isEqual:v16])
                {
                  v18 = [(ADDeviceSyncMessage *)v5 commandPullDeltaResponse];
                  commandPullDeltaResponse = self->_commandPullDeltaResponse;
                  if (commandPullDeltaResponse == v18 || [(ADDeviceSyncCommandPullDeltaResponse *)commandPullDeltaResponse isEqual:v18])
                  {
                    v20 = [(ADDeviceSyncMessage *)v5 commandPullSnapshotRequest];
                    commandPullSnapshotRequest = self->_commandPullSnapshotRequest;
                    if (commandPullSnapshotRequest == v20 || [(ADDeviceSyncCommandPullSnapshotRequest *)commandPullSnapshotRequest isEqual:v20])
                    {
                      v26 = v20;
                      v22 = [(ADDeviceSyncMessage *)v5 commandPullSnapshotResponse];
                      commandPullSnapshotResponse = self->_commandPullSnapshotResponse;
                      v24 = commandPullSnapshotResponse == v22 || [(ADDeviceSyncCommandPullSnapshotResponse *)commandPullSnapshotResponse isEqual:v22];

                      v20 = v26;
                    }

                    else
                    {
                      v24 = 0;
                    }
                  }

                  else
                  {
                    v24 = 0;
                  }
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:self->_sequence];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:self->_type];
  v6 = [v5 hash] ^ v4;
  v7 = [(ADDeviceSyncCommandPushGenerationsRequest *)self->_commandPushGenerationsRequest hash];
  v8 = v7 ^ [(ADDeviceSyncCommandPushGenerationsResponse *)self->_commandPushGenerationsResponse hash];
  v9 = v8 ^ [(ADDeviceSyncCommandPullGenerationsRequest *)self->_commandPullGenerationsRequest hash];
  v10 = v6 ^ v9 ^ [(ADDeviceSyncCommandPullGenerationsResponse *)self->_commandPullGenerationsResponse hash];
  v11 = [(ADDeviceSyncCommandPullDeltaRequest *)self->_commandPullDeltaRequest hash];
  v12 = v11 ^ [(ADDeviceSyncCommandPullDeltaResponse *)self->_commandPullDeltaResponse hash];
  v13 = v12 ^ [(ADDeviceSyncCommandPullSnapshotRequest *)self->_commandPullSnapshotRequest hash];
  v14 = v13 ^ [(ADDeviceSyncCommandPullSnapshotResponse *)self->_commandPullSnapshotResponse hash];

  return v10 ^ v14;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v12.receiver = self;
  v12.super_class = ADDeviceSyncMessage;
  v5 = [(ADDeviceSyncMessage *)&v12 description];
  sequence = self->_sequence;
  type = self->_type;
  if (type > 0xA)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = *(&off_10051AE30 + type);
  }

  v9 = v8;
  v10 = [v4 initWithFormat:@"%@ {sequence = %llu, type = %@, commandPushGenerationsRequest = %@, commandPushGenerationsResponse = %@, commandPullGenerationsRequest = %@, commandPullGenerationsResponse = %@, commandPullDeltaRequest = %@, commandPullDeltaResponse = %@, commandPullSnapshotRequest = %@, commandPullSnapshotResponse = %@}", v5, sequence, v9, self->_commandPushGenerationsRequest, self->_commandPushGenerationsResponse, self->_commandPullGenerationsRequest, self->_commandPullGenerationsResponse, self->_commandPullDeltaRequest, self->_commandPullDeltaResponse, self->_commandPullSnapshotRequest, self->_commandPullSnapshotResponse];

  return v10;
}

- (ADDeviceSyncMessage)initWithSequence:(unint64_t)a3 type:(int64_t)a4 commandPushGenerationsRequest:(id)a5 commandPushGenerationsResponse:(id)a6 commandPullGenerationsRequest:(id)a7 commandPullGenerationsResponse:(id)a8 commandPullDeltaRequest:(id)a9 commandPullDeltaResponse:(id)a10 commandPullSnapshotRequest:(id)a11 commandPullSnapshotResponse:(id)a12
{
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008552C;
  v26[3] = &unk_10050F9C0;
  v35 = a3;
  v36 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v15 = v34;
  v16 = v33;
  v17 = v32;
  v18 = v31;
  v19 = v30;
  v20 = v29;
  v21 = v28;
  v22 = v27;
  v23 = [(ADDeviceSyncMessage *)self initWithBuilder:v26];

  return v23;
}

- (ADDeviceSyncMessage)initWithBuilder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = ADDeviceSyncMessage;
  v5 = [(ADDeviceSyncMessage *)&v33 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncMessageMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncMessageMutation *)v7 isDirty])
    {
      v6->_sequence = [(_ADDeviceSyncMessageMutation *)v7 getSequence];
      v6->_type = [(_ADDeviceSyncMessageMutation *)v7 getType];
      v8 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPushGenerationsRequest];
      v9 = [v8 copy];
      commandPushGenerationsRequest = v6->_commandPushGenerationsRequest;
      v6->_commandPushGenerationsRequest = v9;

      v11 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPushGenerationsResponse];
      v12 = [v11 copy];
      commandPushGenerationsResponse = v6->_commandPushGenerationsResponse;
      v6->_commandPushGenerationsResponse = v12;

      v14 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullGenerationsRequest];
      v15 = [v14 copy];
      commandPullGenerationsRequest = v6->_commandPullGenerationsRequest;
      v6->_commandPullGenerationsRequest = v15;

      v17 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullGenerationsResponse];
      v18 = [v17 copy];
      commandPullGenerationsResponse = v6->_commandPullGenerationsResponse;
      v6->_commandPullGenerationsResponse = v18;

      v20 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullDeltaRequest];
      v21 = [v20 copy];
      commandPullDeltaRequest = v6->_commandPullDeltaRequest;
      v6->_commandPullDeltaRequest = v21;

      v23 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullDeltaResponse];
      v24 = [v23 copy];
      commandPullDeltaResponse = v6->_commandPullDeltaResponse;
      v6->_commandPullDeltaResponse = v24;

      v26 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullSnapshotRequest];
      v27 = [v26 copy];
      commandPullSnapshotRequest = v6->_commandPullSnapshotRequest;
      v6->_commandPullSnapshotRequest = v27;

      v29 = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullSnapshotResponse];
      v30 = [v29 copy];
      commandPullSnapshotResponse = v6->_commandPullSnapshotResponse;
      v6->_commandPullSnapshotResponse = v30;
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
    v5 = [[_ADDeviceSyncMessageMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncMessageMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncMessage);
      v6->_sequence = [(_ADDeviceSyncMessageMutation *)v5 getSequence];
      v6->_type = [(_ADDeviceSyncMessageMutation *)v5 getType];
      v7 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPushGenerationsRequest];
      v8 = [v7 copy];
      commandPushGenerationsRequest = v6->_commandPushGenerationsRequest;
      v6->_commandPushGenerationsRequest = v8;

      v10 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPushGenerationsResponse];
      v11 = [v10 copy];
      commandPushGenerationsResponse = v6->_commandPushGenerationsResponse;
      v6->_commandPushGenerationsResponse = v11;

      v13 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullGenerationsRequest];
      v14 = [v13 copy];
      commandPullGenerationsRequest = v6->_commandPullGenerationsRequest;
      v6->_commandPullGenerationsRequest = v14;

      v16 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullGenerationsResponse];
      v17 = [v16 copy];
      commandPullGenerationsResponse = v6->_commandPullGenerationsResponse;
      v6->_commandPullGenerationsResponse = v17;

      v19 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullDeltaRequest];
      v20 = [v19 copy];
      commandPullDeltaRequest = v6->_commandPullDeltaRequest;
      v6->_commandPullDeltaRequest = v20;

      v22 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullDeltaResponse];
      v23 = [v22 copy];
      commandPullDeltaResponse = v6->_commandPullDeltaResponse;
      v6->_commandPullDeltaResponse = v23;

      v25 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullSnapshotRequest];
      v26 = [v25 copy];
      commandPullSnapshotRequest = v6->_commandPullSnapshotRequest;
      v6->_commandPullSnapshotRequest = v26;

      v28 = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullSnapshotResponse];
      v29 = [v28 copy];
      commandPullSnapshotResponse = v6->_commandPullSnapshotResponse;
      v6->_commandPullSnapshotResponse = v29;
    }

    else
    {
      v6 = [(ADDeviceSyncMessage *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncMessage *)self copy];
  }

  return v6;
}

@end