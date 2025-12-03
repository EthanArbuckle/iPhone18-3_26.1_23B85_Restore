@interface _INPBFindDeviceAndPlaySoundIntent
- (BOOL)isEqual:(id)equal;
- (_INPBFindDeviceAndPlaySoundIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setDevices:(id)devices;
- (void)writeTo:(id)to;
@end

@implementation _INPBFindDeviceAndPlaySoundIntent

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_devices count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"device"];
  }

  intentMetadata = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFindDeviceAndPlaySoundIntent isStopRequest](self, "isStopRequest")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isStopRequest"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  devices = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
  devices2 = [equalCopy devices];
  if ((devices != 0) == (devices2 == 0))
  {
    goto LABEL_11;
  }

  devices3 = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
  if (devices3)
  {
    v8 = devices3;
    devices4 = [(_INPBFindDeviceAndPlaySoundIntent *)self devices];
    devices5 = [equalCopy devices];
    v11 = [devices4 isEqual:devices5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  devices = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  devices2 = [equalCopy intentMetadata];
  if ((devices != 0) == (devices2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  intentMetadata = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasIsStopRequest = [(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest];
  if (hasIsStopRequest == [equalCopy hasIsStopRequest])
  {
    if (!-[_INPBFindDeviceAndPlaySoundIntent hasIsStopRequest](self, "hasIsStopRequest") || ![equalCopy hasIsStopRequest] || (isStopRequest = self->_isStopRequest, isStopRequest == objc_msgSend(equalCopy, "isStopRequest")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFindDeviceAndPlaySoundIntent allocWithZone:](_INPBFindDeviceAndPlaySoundIntent init];
  v6 = [(NSArray *)self->_devices copyWithZone:zone];
  [(_INPBFindDeviceAndPlaySoundIntent *)v5 setDevices:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBFindDeviceAndPlaySoundIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    [(_INPBFindDeviceAndPlaySoundIntent *)v5 setIsStopRequest:[(_INPBFindDeviceAndPlaySoundIntent *)self isStopRequest]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFindDeviceAndPlaySoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFindDeviceAndPlaySoundIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFindDeviceAndPlaySoundIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  intentMetadata = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBFindDeviceAndPlaySoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBFindDeviceAndPlaySoundIntent *)self hasIsStopRequest])
  {
    isStopRequest = self->_isStopRequest;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addDevice:(id)device
{
  deviceCopy = device;
  devices = self->_devices;
  v8 = deviceCopy;
  if (!devices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_devices;
    self->_devices = array;

    deviceCopy = v8;
    devices = self->_devices;
  }

  [(NSArray *)devices addObject:deviceCopy];
}

- (void)setDevices:(id)devices
{
  v4 = [devices mutableCopy];
  devices = self->_devices;
  self->_devices = v4;

  MEMORY[0x1EEE66BB8](v4, devices);
}

@end