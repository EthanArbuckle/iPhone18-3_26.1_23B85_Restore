@interface ADDeviceSyncMessage
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncMessage)initWithBuilder:(id)builder;
- (ADDeviceSyncMessage)initWithCoder:(id)coder;
- (ADDeviceSyncMessage)initWithSequence:(unint64_t)sequence type:(int64_t)type commandPushGenerationsRequest:(id)request commandPushGenerationsResponse:(id)response commandPullGenerationsRequest:(id)generationsRequest commandPullGenerationsResponse:(id)generationsResponse commandPullDeltaRequest:(id)deltaRequest commandPullDeltaResponse:(id)self0 commandPullSnapshotRequest:(id)self1 commandPullSnapshotResponse:(id)self2;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceSyncMessage

- (void)encodeWithCoder:(id)coder
{
  sequence = self->_sequence;
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedLongLong:sequence];
  [coderCopy encodeObject:v5 forKey:@"ADDeviceSyncMessage::sequence"];

  v6 = [NSNumber numberWithInteger:self->_type];
  [coderCopy encodeObject:v6 forKey:@"ADDeviceSyncMessage::type"];

  [coderCopy encodeObject:self->_commandPushGenerationsRequest forKey:@"ADDeviceSyncMessage::commandPushGenerationsRequest"];
  [coderCopy encodeObject:self->_commandPushGenerationsResponse forKey:@"ADDeviceSyncMessage::commandPushGenerationsResponse"];
  [coderCopy encodeObject:self->_commandPullGenerationsRequest forKey:@"ADDeviceSyncMessage::commandPullGenerationsRequest"];
  [coderCopy encodeObject:self->_commandPullGenerationsResponse forKey:@"ADDeviceSyncMessage::commandPullGenerationsResponse"];
  [coderCopy encodeObject:self->_commandPullDeltaRequest forKey:@"ADDeviceSyncMessage::commandPullDeltaRequest"];
  [coderCopy encodeObject:self->_commandPullDeltaResponse forKey:@"ADDeviceSyncMessage::commandPullDeltaResponse"];
  [coderCopy encodeObject:self->_commandPullSnapshotRequest forKey:@"ADDeviceSyncMessage::commandPullSnapshotRequest"];
  [coderCopy encodeObject:self->_commandPullSnapshotResponse forKey:@"ADDeviceSyncMessage::commandPullSnapshotResponse"];
}

- (ADDeviceSyncMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::sequence"];
  unsignedLongLongValue = [v4 unsignedLongLongValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::type"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPushGenerationsRequest"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPushGenerationsResponse"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullGenerationsRequest"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullGenerationsResponse"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullDeltaRequest"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullDeltaResponse"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullSnapshotRequest"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncMessage::commandPullSnapshotResponse"];

  v15 = [(ADDeviceSyncMessage *)self initWithSequence:unsignedLongLongValue type:integerValue commandPushGenerationsRequest:v7 commandPushGenerationsResponse:v8 commandPullGenerationsRequest:v9 commandPullGenerationsResponse:v10 commandPullDeltaRequest:v11 commandPullDeltaResponse:v12 commandPullSnapshotRequest:v13 commandPullSnapshotResponse:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sequence = self->_sequence;
      if (sequence == [(ADDeviceSyncMessage *)v5 sequence]&& (type = self->_type, type == [(ADDeviceSyncMessage *)v5 type]))
      {
        commandPushGenerationsRequest = [(ADDeviceSyncMessage *)v5 commandPushGenerationsRequest];
        commandPushGenerationsRequest = self->_commandPushGenerationsRequest;
        if (commandPushGenerationsRequest == commandPushGenerationsRequest || [(ADDeviceSyncCommandPushGenerationsRequest *)commandPushGenerationsRequest isEqual:commandPushGenerationsRequest])
        {
          commandPushGenerationsResponse = [(ADDeviceSyncMessage *)v5 commandPushGenerationsResponse];
          commandPushGenerationsResponse = self->_commandPushGenerationsResponse;
          if (commandPushGenerationsResponse == commandPushGenerationsResponse || [(ADDeviceSyncCommandPushGenerationsResponse *)commandPushGenerationsResponse isEqual:commandPushGenerationsResponse])
          {
            commandPullGenerationsRequest = [(ADDeviceSyncMessage *)v5 commandPullGenerationsRequest];
            commandPullGenerationsRequest = self->_commandPullGenerationsRequest;
            if (commandPullGenerationsRequest == commandPullGenerationsRequest || [(ADDeviceSyncCommandPullGenerationsRequest *)commandPullGenerationsRequest isEqual:commandPullGenerationsRequest])
            {
              commandPullGenerationsResponse = [(ADDeviceSyncMessage *)v5 commandPullGenerationsResponse];
              commandPullGenerationsResponse = self->_commandPullGenerationsResponse;
              if (commandPullGenerationsResponse == commandPullGenerationsResponse || [(ADDeviceSyncCommandPullGenerationsResponse *)commandPullGenerationsResponse isEqual:commandPullGenerationsResponse])
              {
                commandPullDeltaRequest = [(ADDeviceSyncMessage *)v5 commandPullDeltaRequest];
                commandPullDeltaRequest = self->_commandPullDeltaRequest;
                if (commandPullDeltaRequest == commandPullDeltaRequest || [(ADDeviceSyncCommandPullDeltaRequest *)commandPullDeltaRequest isEqual:commandPullDeltaRequest])
                {
                  commandPullDeltaResponse = [(ADDeviceSyncMessage *)v5 commandPullDeltaResponse];
                  commandPullDeltaResponse = self->_commandPullDeltaResponse;
                  if (commandPullDeltaResponse == commandPullDeltaResponse || [(ADDeviceSyncCommandPullDeltaResponse *)commandPullDeltaResponse isEqual:commandPullDeltaResponse])
                  {
                    commandPullSnapshotRequest = [(ADDeviceSyncMessage *)v5 commandPullSnapshotRequest];
                    commandPullSnapshotRequest = self->_commandPullSnapshotRequest;
                    if (commandPullSnapshotRequest == commandPullSnapshotRequest || [(ADDeviceSyncCommandPullSnapshotRequest *)commandPullSnapshotRequest isEqual:commandPullSnapshotRequest])
                    {
                      v26 = commandPullSnapshotRequest;
                      commandPullSnapshotResponse = [(ADDeviceSyncMessage *)v5 commandPullSnapshotResponse];
                      commandPullSnapshotResponse = self->_commandPullSnapshotResponse;
                      v24 = commandPullSnapshotResponse == commandPullSnapshotResponse || [(ADDeviceSyncCommandPullSnapshotResponse *)commandPullSnapshotResponse isEqual:commandPullSnapshotResponse];

                      commandPullSnapshotRequest = v26;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (ADDeviceSyncMessage)initWithSequence:(unint64_t)sequence type:(int64_t)type commandPushGenerationsRequest:(id)request commandPushGenerationsResponse:(id)response commandPullGenerationsRequest:(id)generationsRequest commandPullGenerationsResponse:(id)generationsResponse commandPullDeltaRequest:(id)deltaRequest commandPullDeltaResponse:(id)self0 commandPullSnapshotRequest:(id)self1 commandPullSnapshotResponse:(id)self2
{
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008552C;
  v26[3] = &unk_10050F9C0;
  sequenceCopy = sequence;
  typeCopy = type;
  requestCopy = request;
  responseCopy = response;
  generationsRequestCopy = generationsRequest;
  generationsResponseCopy = generationsResponse;
  deltaRequestCopy = deltaRequest;
  deltaResponseCopy = deltaResponse;
  snapshotRequestCopy = snapshotRequest;
  snapshotResponseCopy = snapshotResponse;
  v15 = snapshotResponseCopy;
  v16 = snapshotRequestCopy;
  v17 = deltaResponseCopy;
  v18 = deltaRequestCopy;
  v19 = generationsResponseCopy;
  v20 = generationsRequestCopy;
  v21 = responseCopy;
  v22 = requestCopy;
  v23 = [(ADDeviceSyncMessage *)self initWithBuilder:v26];

  return v23;
}

- (ADDeviceSyncMessage)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v33.receiver = self;
  v33.super_class = ADDeviceSyncMessage;
  v5 = [(ADDeviceSyncMessage *)&v33 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncMessageMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncMessageMutation *)v7 isDirty])
    {
      v6->_sequence = [(_ADDeviceSyncMessageMutation *)v7 getSequence];
      v6->_type = [(_ADDeviceSyncMessageMutation *)v7 getType];
      getCommandPushGenerationsRequest = [(_ADDeviceSyncMessageMutation *)v7 getCommandPushGenerationsRequest];
      v9 = [getCommandPushGenerationsRequest copy];
      commandPushGenerationsRequest = v6->_commandPushGenerationsRequest;
      v6->_commandPushGenerationsRequest = v9;

      getCommandPushGenerationsResponse = [(_ADDeviceSyncMessageMutation *)v7 getCommandPushGenerationsResponse];
      v12 = [getCommandPushGenerationsResponse copy];
      commandPushGenerationsResponse = v6->_commandPushGenerationsResponse;
      v6->_commandPushGenerationsResponse = v12;

      getCommandPullGenerationsRequest = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullGenerationsRequest];
      v15 = [getCommandPullGenerationsRequest copy];
      commandPullGenerationsRequest = v6->_commandPullGenerationsRequest;
      v6->_commandPullGenerationsRequest = v15;

      getCommandPullGenerationsResponse = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullGenerationsResponse];
      v18 = [getCommandPullGenerationsResponse copy];
      commandPullGenerationsResponse = v6->_commandPullGenerationsResponse;
      v6->_commandPullGenerationsResponse = v18;

      getCommandPullDeltaRequest = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullDeltaRequest];
      v21 = [getCommandPullDeltaRequest copy];
      commandPullDeltaRequest = v6->_commandPullDeltaRequest;
      v6->_commandPullDeltaRequest = v21;

      getCommandPullDeltaResponse = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullDeltaResponse];
      v24 = [getCommandPullDeltaResponse copy];
      commandPullDeltaResponse = v6->_commandPullDeltaResponse;
      v6->_commandPullDeltaResponse = v24;

      getCommandPullSnapshotRequest = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullSnapshotRequest];
      v27 = [getCommandPullSnapshotRequest copy];
      commandPullSnapshotRequest = v6->_commandPullSnapshotRequest;
      v6->_commandPullSnapshotRequest = v27;

      getCommandPullSnapshotResponse = [(_ADDeviceSyncMessageMutation *)v7 getCommandPullSnapshotResponse];
      v30 = [getCommandPullSnapshotResponse copy];
      commandPullSnapshotResponse = v6->_commandPullSnapshotResponse;
      v6->_commandPullSnapshotResponse = v30;
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
    v5 = [[_ADDeviceSyncMessageMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncMessageMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncMessage);
      v6->_sequence = [(_ADDeviceSyncMessageMutation *)v5 getSequence];
      v6->_type = [(_ADDeviceSyncMessageMutation *)v5 getType];
      getCommandPushGenerationsRequest = [(_ADDeviceSyncMessageMutation *)v5 getCommandPushGenerationsRequest];
      v8 = [getCommandPushGenerationsRequest copy];
      commandPushGenerationsRequest = v6->_commandPushGenerationsRequest;
      v6->_commandPushGenerationsRequest = v8;

      getCommandPushGenerationsResponse = [(_ADDeviceSyncMessageMutation *)v5 getCommandPushGenerationsResponse];
      v11 = [getCommandPushGenerationsResponse copy];
      commandPushGenerationsResponse = v6->_commandPushGenerationsResponse;
      v6->_commandPushGenerationsResponse = v11;

      getCommandPullGenerationsRequest = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullGenerationsRequest];
      v14 = [getCommandPullGenerationsRequest copy];
      commandPullGenerationsRequest = v6->_commandPullGenerationsRequest;
      v6->_commandPullGenerationsRequest = v14;

      getCommandPullGenerationsResponse = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullGenerationsResponse];
      v17 = [getCommandPullGenerationsResponse copy];
      commandPullGenerationsResponse = v6->_commandPullGenerationsResponse;
      v6->_commandPullGenerationsResponse = v17;

      getCommandPullDeltaRequest = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullDeltaRequest];
      v20 = [getCommandPullDeltaRequest copy];
      commandPullDeltaRequest = v6->_commandPullDeltaRequest;
      v6->_commandPullDeltaRequest = v20;

      getCommandPullDeltaResponse = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullDeltaResponse];
      v23 = [getCommandPullDeltaResponse copy];
      commandPullDeltaResponse = v6->_commandPullDeltaResponse;
      v6->_commandPullDeltaResponse = v23;

      getCommandPullSnapshotRequest = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullSnapshotRequest];
      v26 = [getCommandPullSnapshotRequest copy];
      commandPullSnapshotRequest = v6->_commandPullSnapshotRequest;
      v6->_commandPullSnapshotRequest = v26;

      getCommandPullSnapshotResponse = [(_ADDeviceSyncMessageMutation *)v5 getCommandPullSnapshotResponse];
      v29 = [getCommandPullSnapshotResponse copy];
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