@interface AFServiceDeviceContext
+ (id)newWithBuilder:(id)a3;
- (AFServiceDeviceContext)initWithBuilder:(id)a3;
- (AFServiceDeviceContext)initWithCoder:(id)a3;
- (AFServiceDeviceContext)initWithIdentifier:(id)a3 assistantIdentifier:(id)a4 mediaSystemIdentifier:(id)a5 mediaRouteIdentifier:(id)a6 sharedUserID:(id)a7 roomName:(id)a8 proximity:(int64_t)a9 serializedContextByKey:(id)a10 metricsContext:(id)a11;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFServiceDeviceContext

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"AFServiceDeviceContext::identifier"];
  [v6 encodeObject:self->_assistantIdentifier forKey:@"AFServiceDeviceContext::assistantIdentifier"];
  [v6 encodeObject:self->_mediaSystemIdentifier forKey:@"AFServiceDeviceContext::mediaSystemIdentifier"];
  [v6 encodeObject:self->_mediaRouteIdentifier forKey:@"AFServiceDeviceContext::mediaRouteIdentifier"];
  [v6 encodeObject:self->_sharedUserID forKey:@"AFServiceDeviceContext::sharedUserID"];
  [v6 encodeObject:self->_roomName forKey:@"AFServiceDeviceContext::roomName"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_proximity];
  [v6 encodeObject:v5 forKey:@"AFServiceDeviceContext::proximity"];

  [v6 encodeObject:self->_serializedContextByKey forKey:@"AFServiceDeviceContext::serializedContextByKey"];
  [v6 encodeObject:self->_metricsContext forKey:@"AFServiceDeviceContext::metricsContext"];
}

- (AFServiceDeviceContext)initWithCoder:(id)a3
{
  v3 = a3;
  v39 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::identifier"];
  v38 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::assistantIdentifier"];
  v37 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::mediaSystemIdentifier"];
  v36 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::mediaRouteIdentifier"];
  v35 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::sharedUserID"];
  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::roomName"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFServiceDeviceContext::proximity"];
  v33 = [v4 integerValue];

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
  v32 = [v3 decodeObjectOfClasses:v14 forKey:@"AFServiceDeviceContext::serializedContextByKey"];

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
  v25 = [v3 decodeObjectOfClasses:v24 forKey:@"AFServiceDeviceContext::metricsContext"];

  v26 = [(AFServiceDeviceContext *)self initWithIdentifier:v39 assistantIdentifier:v38 mediaSystemIdentifier:v37 mediaRouteIdentifier:v36 sharedUserID:v35 roomName:v34 proximity:v33 serializedContextByKey:v32 metricsContext:v25];
  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      proximity = self->_proximity;
      if (proximity == [(AFServiceDeviceContext *)v5 proximity])
      {
        v7 = [(AFServiceDeviceContext *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v7 || [(NSUUID *)identifier isEqual:v7])
        {
          v9 = [(AFServiceDeviceContext *)v5 assistantIdentifier];
          assistantIdentifier = self->_assistantIdentifier;
          if (assistantIdentifier == v9 || [(NSString *)assistantIdentifier isEqual:v9])
          {
            v11 = [(AFServiceDeviceContext *)v5 mediaSystemIdentifier];
            mediaSystemIdentifier = self->_mediaSystemIdentifier;
            if (mediaSystemIdentifier == v11 || [(NSString *)mediaSystemIdentifier isEqual:v11])
            {
              v13 = [(AFServiceDeviceContext *)v5 mediaRouteIdentifier];
              mediaRouteIdentifier = self->_mediaRouteIdentifier;
              if (mediaRouteIdentifier == v13 || [(NSString *)mediaRouteIdentifier isEqual:v13])
              {
                v15 = [(AFServiceDeviceContext *)v5 sharedUserID];
                sharedUserID = self->_sharedUserID;
                if (sharedUserID == v15 || [(NSString *)sharedUserID isEqual:v15])
                {
                  v17 = [(AFServiceDeviceContext *)v5 roomName];
                  roomName = self->_roomName;
                  if (roomName == v17 || [(NSString *)roomName isEqual:v17])
                  {
                    v19 = [(AFServiceDeviceContext *)v5 serializedContextByKey];
                    serializedContextByKey = self->_serializedContextByKey;
                    if (serializedContextByKey == v19 || [(NSDictionary *)serializedContextByKey isEqual:v19])
                    {
                      v25 = v19;
                      v21 = [(AFServiceDeviceContext *)v5 metricsContext];
                      metricsContext = self->_metricsContext;
                      v23 = metricsContext == v21 || [(NSDictionary *)metricsContext isEqual:v21];

                      v19 = v25;
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFServiceDeviceContext;
  v5 = [(AFServiceDeviceContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, assistantIdentifier = %@, mediaSystemIdentifier = %@, mediaRouteIdentifier = %@, sharedUserID = %@, roomName = %@, proximity = %lld, serializedContextByKey = %@, metricsContext = %@}", v5, self->_identifier, self->_assistantIdentifier, self->_mediaSystemIdentifier, self->_mediaRouteIdentifier, self->_sharedUserID, self->_roomName, self->_proximity, self->_serializedContextByKey, self->_metricsContext];

  return v6;
}

- (AFServiceDeviceContext)initWithIdentifier:(id)a3 assistantIdentifier:(id)a4 mediaSystemIdentifier:(id)a5 mediaRouteIdentifier:(id)a6 sharedUserID:(id)a7 roomName:(id)a8 proximity:(int64_t)a9 serializedContextByKey:(id)a10 metricsContext:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __178__AFServiceDeviceContext_initWithIdentifier_assistantIdentifier_mediaSystemIdentifier_mediaRouteIdentifier_sharedUserID_roomName_proximity_serializedContextByKey_metricsContext___block_invoke;
  v35[3] = &unk_1E7345C88;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v43 = v23;
  v44 = a9;
  v42 = v22;
  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = v16;
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

- (AFServiceDeviceContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AFServiceDeviceContext;
  v5 = [(AFServiceDeviceContext *)&v33 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFServiceDeviceContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFServiceDeviceContextMutation *)v7 isDirty])
    {
      v8 = [(_AFServiceDeviceContextMutation *)v7 getIdentifier];
      v9 = [v8 copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v11 = [(_AFServiceDeviceContextMutation *)v7 getAssistantIdentifier];
      v12 = [v11 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v12;

      v14 = [(_AFServiceDeviceContextMutation *)v7 getMediaSystemIdentifier];
      v15 = [v14 copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v15;

      v17 = [(_AFServiceDeviceContextMutation *)v7 getMediaRouteIdentifier];
      v18 = [v17 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v18;

      v20 = [(_AFServiceDeviceContextMutation *)v7 getSharedUserID];
      v21 = [v20 copy];
      sharedUserID = v6->_sharedUserID;
      v6->_sharedUserID = v21;

      v23 = [(_AFServiceDeviceContextMutation *)v7 getRoomName];
      v24 = [v23 copy];
      roomName = v6->_roomName;
      v6->_roomName = v24;

      v6->_proximity = [(_AFServiceDeviceContextMutation *)v7 getProximity];
      v26 = [(_AFServiceDeviceContextMutation *)v7 getSerializedContextByKey];
      v27 = [v26 copy];
      serializedContextByKey = v6->_serializedContextByKey;
      v6->_serializedContextByKey = v27;

      v29 = [(_AFServiceDeviceContextMutation *)v7 getMetricsContext];
      v30 = [v29 copy];
      metricsContext = v6->_metricsContext;
      v6->_metricsContext = v30;
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
    v5 = [[_AFServiceDeviceContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFServiceDeviceContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFServiceDeviceContext);
      v7 = [(_AFServiceDeviceContextMutation *)v5 getIdentifier];
      v8 = [v7 copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v10 = [(_AFServiceDeviceContextMutation *)v5 getAssistantIdentifier];
      v11 = [v10 copy];
      assistantIdentifier = v6->_assistantIdentifier;
      v6->_assistantIdentifier = v11;

      v13 = [(_AFServiceDeviceContextMutation *)v5 getMediaSystemIdentifier];
      v14 = [v13 copy];
      mediaSystemIdentifier = v6->_mediaSystemIdentifier;
      v6->_mediaSystemIdentifier = v14;

      v16 = [(_AFServiceDeviceContextMutation *)v5 getMediaRouteIdentifier];
      v17 = [v16 copy];
      mediaRouteIdentifier = v6->_mediaRouteIdentifier;
      v6->_mediaRouteIdentifier = v17;

      v19 = [(_AFServiceDeviceContextMutation *)v5 getSharedUserID];
      v20 = [v19 copy];
      sharedUserID = v6->_sharedUserID;
      v6->_sharedUserID = v20;

      v22 = [(_AFServiceDeviceContextMutation *)v5 getRoomName];
      v23 = [v22 copy];
      roomName = v6->_roomName;
      v6->_roomName = v23;

      v6->_proximity = [(_AFServiceDeviceContextMutation *)v5 getProximity];
      v25 = [(_AFServiceDeviceContextMutation *)v5 getSerializedContextByKey];
      v26 = [v25 copy];
      serializedContextByKey = v6->_serializedContextByKey;
      v6->_serializedContextByKey = v26;

      v28 = [(_AFServiceDeviceContextMutation *)v5 getMetricsContext];
      v29 = [v28 copy];
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