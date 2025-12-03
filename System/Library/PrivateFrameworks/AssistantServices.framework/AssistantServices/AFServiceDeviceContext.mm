@interface AFServiceDeviceContext
+ (id)newWithBuilder:(id)builder;
- (AFServiceDeviceContext)initWithBuilder:(id)builder;
- (AFServiceDeviceContext)initWithCoder:(id)coder;
- (AFServiceDeviceContext)initWithIdentifier:(id)identifier assistantIdentifier:(id)assistantIdentifier mediaSystemIdentifier:(id)systemIdentifier mediaRouteIdentifier:(id)routeIdentifier sharedUserID:(id)d roomName:(id)name proximity:(int64_t)proximity serializedContextByKey:(id)self0 metricsContext:(id)self1;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFServiceDeviceContext

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"AFServiceDeviceContext::identifier"];
  [coderCopy encodeObject:self->_assistantIdentifier forKey:@"AFServiceDeviceContext::assistantIdentifier"];
  [coderCopy encodeObject:self->_mediaSystemIdentifier forKey:@"AFServiceDeviceContext::mediaSystemIdentifier"];
  [coderCopy encodeObject:self->_mediaRouteIdentifier forKey:@"AFServiceDeviceContext::mediaRouteIdentifier"];
  [coderCopy encodeObject:self->_sharedUserID forKey:@"AFServiceDeviceContext::sharedUserID"];
  [coderCopy encodeObject:self->_roomName forKey:@"AFServiceDeviceContext::roomName"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_proximity];
  [coderCopy encodeObject:v5 forKey:@"AFServiceDeviceContext::proximity"];

  [coderCopy encodeObject:self->_serializedContextByKey forKey:@"AFServiceDeviceContext::serializedContextByKey"];
  [coderCopy encodeObject:self->_metricsContext forKey:@"AFServiceDeviceContext::metricsContext"];
}

- (AFServiceDeviceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::identifier"];
  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::assistantIdentifier"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::mediaSystemIdentifier"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::mediaRouteIdentifier"];
  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::sharedUserID"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::roomName"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::proximity"];
  integerValue = [v4 integerValue];

  v31 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v31 setWithObjects:{v29, v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v32 = [coderCopy decodeObjectOfClasses:v14 forKey:@"AFServiceDeviceContext::serializedContextByKey"];

  v30 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v30 setWithObjects:{v28, v15, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"AFServiceDeviceContext::metricsContext"];

  v26 = [(AFServiceDeviceContext *)self initWithIdentifier:v39 assistantIdentifier:v38 mediaSystemIdentifier:v37 mediaRouteIdentifier:v36 sharedUserID:v35 roomName:v34 proximity:integerValue serializedContextByKey:v32 metricsContext:v25];
  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      proximity = self->_proximity;
      if (proximity == [(AFServiceDeviceContext *)v5 proximity])
      {
        identifier = [(AFServiceDeviceContext *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSUUID *)identifier isEqual:identifier])
        {
          assistantIdentifier = [(AFServiceDeviceContext *)v5 assistantIdentifier];
          assistantIdentifier = self->_assistantIdentifier;
          if (assistantIdentifier == assistantIdentifier || [(NSString *)assistantIdentifier isEqual:assistantIdentifier])
          {
            mediaSystemIdentifier = [(AFServiceDeviceContext *)v5 mediaSystemIdentifier];
            mediaSystemIdentifier = self->_mediaSystemIdentifier;
            if (mediaSystemIdentifier == mediaSystemIdentifier || [(NSString *)mediaSystemIdentifier isEqual:mediaSystemIdentifier])
            {
              mediaRouteIdentifier = [(AFServiceDeviceContext *)v5 mediaRouteIdentifier];
              mediaRouteIdentifier = self->_mediaRouteIdentifier;
              if (mediaRouteIdentifier == mediaRouteIdentifier || [(NSString *)mediaRouteIdentifier isEqual:mediaRouteIdentifier])
              {
                sharedUserID = [(AFServiceDeviceContext *)v5 sharedUserID];
                sharedUserID = self->_sharedUserID;
                if (sharedUserID == sharedUserID || [(NSString *)sharedUserID isEqual:sharedUserID])
                {
                  roomName = [(AFServiceDeviceContext *)v5 roomName];
                  roomName = self->_roomName;
                  if (roomName == roomName || [(NSString *)roomName isEqual:roomName])
                  {
                    serializedContextByKey = [(AFServiceDeviceContext *)v5 serializedContextByKey];
                    serializedContextByKey = self->_serializedContextByKey;
                    if (serializedContextByKey == serializedContextByKey || [(NSDictionary *)serializedContextByKey isEqual:serializedContextByKey])
                    {
                      v25 = serializedContextByKey;
                      metricsContext = [(AFServiceDeviceContext *)v5 metricsContext];
                      metricsContext = self->_metricsContext;
                      v23 = metricsContext == metricsContext || [(NSDictionary *)metricsContext isEqual:metricsContext];

                      serializedContextByKey = v25;
                    }

                    else
                    {
                      v23 = 0;
                    }
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSString *)self->_assistantIdentifier hash]^ v3;
  v5 = [(NSString *)self->_mediaSystemIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_mediaRouteIdentifier hash];
  v7 = [(NSString *)self->_sharedUserID hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_roomName hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_proximity];
  v10 = [v9 hash];
  v11 = v8 ^ v10 ^ [(NSDictionary *)self->_serializedContextByKey hash];
  v12 = [(NSDictionary *)self->_metricsContext hash];

  return v11 ^ v12;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFServiceDeviceContext;
  v5 = [(AFServiceDeviceContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, assistantIdentifier = %@, mediaSystemIdentifier = %@, mediaRouteIdentifier = %@, sharedUserID = %@, roomName = %@, proximity = %lld, serializedContextByKey = %@, metricsContext = %@}", v5, self->_identifier, self->_assistantIdentifier, self->_mediaSystemIdentifier, self->_mediaRouteIdentifier, self->_sharedUserID, self->_roomName, self->_proximity, self->_serializedContextByKey, self->_metricsContext];

  return v6;
}

- (AFServiceDeviceContext)initWithIdentifier:(id)identifier assistantIdentifier:(id)assistantIdentifier mediaSystemIdentifier:(id)systemIdentifier mediaRouteIdentifier:(id)routeIdentifier sharedUserID:(id)d roomName:(id)name proximity:(int64_t)proximity serializedContextByKey:(id)self0 metricsContext:(id)self1
{
  identifierCopy = identifier;
  assistantIdentifierCopy = assistantIdentifier;
  systemIdentifierCopy = systemIdentifier;
  routeIdentifierCopy = routeIdentifier;
  dCopy = d;
  nameCopy = name;
  keyCopy = key;
  contextCopy = context;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __178__AFServiceDeviceContext_initWithIdentifier_assistantIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_sharedUserID_roomName_proximity_serializedContextByKey_metricsContext___block_invoke;
  v35[3] = &unk_1E7345C88;
  v36 = identifierCopy;
  v37 = assistantIdentifierCopy;
  v38 = systemIdentifierCopy;
  v39 = routeIdentifierCopy;
  v40 = dCopy;
  v41 = nameCopy;
  v43 = contextCopy;
  proximityCopy = proximity;
  v42 = keyCopy;
  v24 = contextCopy;
  v25 = keyCopy;
  v26 = nameCopy;
  v27 = dCopy;
  v28 = routeIdentifierCopy;
  v29 = systemIdentifierCopy;
  v30 = assistantIdentifierCopy;
  v31 = identifierCopy;
  v32 = [(AFServiceDeviceContext *)self initWithBuilder:v35];

  return v32;
}

void __178__AFServiceDeviceContext_initWithIdentifier_assistantIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_sharedUserID_roomName_proximity_serializedContextByKey_metricsContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setIdentifier:v3];
  [v4 setAssistantIdentifier:a1[5]];
  [v4 setMediaSystemIdentifier:a1[6]];
  [v4 setMediaRouteIdentifier:a1[7]];
  [v4 setSharedUserID:a1[8]];
  [v4 setRoomName:a1[9]];
  [v4 setProximity:a1[12]];
  [v4 setSerializedContextByKey:a1[10]];
  [v4 setMetricsContext:a1[11]];
}

- (AFServiceDeviceContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v33.receiver = self;
  v33.super_class = AFServiceDeviceContext;
  v5 = [(AFServiceDeviceContext *)&v33 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFServiceDeviceContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFServiceDeviceContextMutation *)v7 isDirty])
    {
      getIdentifier = [(_AFServiceDeviceContextMutation *)v7 getIdentifier];
      v9 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      getAssistantIdentifier = [(_AFServiceDeviceContextMutation *)v7 getAssistantIdentifier];
      v12 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v12;

      getMediaSystemIdentifier = [(_AFServiceDeviceContextMutation *)v7 getMediaSystemIdentifier];
      v15 = [getMediaSystemIdentifier copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v15;

      getMediaRouteIdentifier = [(_AFServiceDeviceContextMutation *)v7 getMediaRouteIdentifier];
      v18 = [getMediaRouteIdentifier copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v18;

      getSharedUserID = [(_AFServiceDeviceContextMutation *)v7 getSharedUserID];
      v21 = [getSharedUserID copy];
      sharedUserID = v6->_sharedUserID;
      v6->_sharedUserID = v21;

      getRoomName = [(_AFServiceDeviceContextMutation *)v7 getRoomName];
      v24 = [getRoomName copy];
      roomName = v6->_roomName;
      v6->_roomName = v24;

      v6->_proximity = [(_AFServiceDeviceContextMutation *)v7 getProximity];
      getSerializedContextByKey = [(_AFServiceDeviceContextMutation *)v7 getSerializedContextByKey];
      v27 = [getSerializedContextByKey copy];
      serializedContextByKey = v6->_serializedContextByKey;
      v6->_serializedContextByKey = v27;

      getMetricsContext = [(_AFServiceDeviceContextMutation *)v7 getMetricsContext];
      v30 = [getMetricsContext copy];
      metricsContext = v6->_metricsContext;
      v6->_metricsContext = v30;
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
    v5 = [[_AFServiceDeviceContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFServiceDeviceContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFServiceDeviceContext);
      getIdentifier = [(_AFServiceDeviceContextMutation *)v5 getIdentifier];
      v8 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      getAssistantIdentifier = [(_AFServiceDeviceContextMutation *)v5 getAssistantIdentifier];
      v11 = [getAssistantIdentifier copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v11;

      getMediaSystemIdentifier = [(_AFServiceDeviceContextMutation *)v5 getMediaSystemIdentifier];
      v14 = [getMediaSystemIdentifier copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v14;

      getMediaRouteIdentifier = [(_AFServiceDeviceContextMutation *)v5 getMediaRouteIdentifier];
      v17 = [getMediaRouteIdentifier copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v17;

      getSharedUserID = [(_AFServiceDeviceContextMutation *)v5 getSharedUserID];
      v20 = [getSharedUserID copy];
      sharedUserID = v6->_sharedUserID;
      v6->_sharedUserID = v20;

      getRoomName = [(_AFServiceDeviceContextMutation *)v5 getRoomName];
      v23 = [getRoomName copy];
      roomName = v6->_roomName;
      v6->_roomName = v23;

      v6->_proximity = [(_AFServiceDeviceContextMutation *)v5 getProximity];
      getSerializedContextByKey = [(_AFServiceDeviceContextMutation *)v5 getSerializedContextByKey];
      v26 = [getSerializedContextByKey copy];
      serializedContextByKey = v6->_serializedContextByKey;
      v6->_serializedContextByKey = v26;

      getMetricsContext = [(_AFServiceDeviceContextMutation *)v5 getMetricsContext];
      v29 = [getMetricsContext copy];
      metricsContext = v6->_metricsContext;
      v6->_metricsContext = v29;
    }

    else
    {
      v6 = [(AFServiceDeviceContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFServiceDeviceContext *)self copy];
  }

  return v6;
}

@end