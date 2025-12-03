@interface _INPBFindDeviceAndPlaySoundIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBFindDeviceAndPlaySoundIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addDevicesFound:(id)found;
- (void)encodeWithCoder:(id)coder;
- (void)setDevicesFounds:(id)founds;
- (void)writeTo:(id)to;
@end

@implementation _INPBFindDeviceAndPlaySoundIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_devicesFounds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_devicesFounds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"devicesFound"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    devicesFounds = [(_INPBFindDeviceAndPlaySoundIntentResponse *)self devicesFounds];
    devicesFounds2 = [equalCopy devicesFounds];
    v7 = devicesFounds2;
    if ((devicesFounds != 0) != (devicesFounds2 == 0))
    {
      devicesFounds3 = [(_INPBFindDeviceAndPlaySoundIntentResponse *)self devicesFounds];
      if (!devicesFounds3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = devicesFounds3;
      devicesFounds4 = [(_INPBFindDeviceAndPlaySoundIntentResponse *)self devicesFounds];
      devicesFounds5 = [equalCopy devicesFounds];
      v12 = [devicesFounds4 isEqual:devicesFounds5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBFindDeviceAndPlaySoundIntentResponse allocWithZone:](_INPBFindDeviceAndPlaySoundIntentResponse init];
  v6 = [(NSArray *)self->_devicesFounds copyWithZone:zone];
  [(_INPBFindDeviceAndPlaySoundIntentResponse *)v5 setDevicesFounds:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFindDeviceAndPlaySoundIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFindDeviceAndPlaySoundIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFindDeviceAndPlaySoundIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_devicesFounds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addDevicesFound:(id)found
{
  foundCopy = found;
  devicesFounds = self->_devicesFounds;
  v8 = foundCopy;
  if (!devicesFounds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_devicesFounds;
    self->_devicesFounds = array;

    foundCopy = v8;
    devicesFounds = self->_devicesFounds;
  }

  [(NSArray *)devicesFounds addObject:foundCopy];
}

- (void)setDevicesFounds:(id)founds
{
  v4 = [founds mutableCopy];
  devicesFounds = self->_devicesFounds;
  self->_devicesFounds = v4;

  MEMORY[0x1EEE66BB8](v4, devicesFounds);
}

@end