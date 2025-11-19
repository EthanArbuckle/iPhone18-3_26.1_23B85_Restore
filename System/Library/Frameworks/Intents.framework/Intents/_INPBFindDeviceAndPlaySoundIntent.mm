@interface _INPBFindDeviceAndPlaySoundIntent
- (BOOL)isEqual:(id)a3;
- (_INPBFindDeviceAndPlaySoundIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDevices:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFindDeviceAndPlaySoundIntent

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_devices count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_devices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"device"];
  }

  v11 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFindDeviceAndPlaySoundIntent isStopRequest](self, "isStopRequest")}];
    [v3 setObject:v13 forKeyedSubscript:@"isStopRequest"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_devices hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    v5 = 2654435761 * self->_isStopRequest;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
  v6 = [v4 devices];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
    v10 = [v4 devices];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest];
  if (v19 == [v4 hasIsStopRequest])
  {
    if (!-[_INPBFindDeviceAndPlaySoundIntent hasIsStopRequest](self, "hasIsStopRequest") || ![v4 hasIsStopRequest] || (isStopRequest = self->_isStopRequest, isStopRequest == objc_msgSend(v4, "isStopRequest")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFindDeviceAndPlaySoundIntent allocWithZone:](_INPBFindDeviceAndPlaySoundIntent init];
  v6 = [(NSArray *)self->_devices copyWithZone:a3];
  [(_INPBFindDeviceAndPlaySoundIntent *)v5 setDevices:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBFindDeviceAndPlaySoundIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    [(_INPBFindDeviceAndPlaySoundIntent *)v5 setIsStopRequest:[(_INPBFindDeviceAndPlaySoundIntent *)self isStopRequest]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFindDeviceAndPlaySoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFindDeviceAndPlaySoundIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFindDeviceAndPlaySoundIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_devices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    isStopRequest = self->_isStopRequest;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addDevice:(id)a3
{
  v4 = a3;
  devices = self->_devices;
  v8 = v4;
  if (!devices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_devices;
    self->_devices = v6;

    v4 = v8;
    devices = self->_devices;
  }

  [(NSArray *)devices addObject:v4];
}

- (void)setDevices:(id)a3
{
  v4 = [a3 mutableCopy];
  devices = self->_devices;
  self->_devices = v4;

  MEMORY[0x1EEE66BB8](v4, devices);
}

@end