@interface _INPBEvent
- (BOOL)isEqual:(id)equal;
- (_INPBEvent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addEventDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)setEventDescriptors:(id)descriptors;
- (void)writeTo:(id)to;
@end

@implementation _INPBEvent

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_eventDescriptors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_eventDescriptors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"eventDescriptors"];
  }

  eventType = [(_INPBEvent *)self eventType];
  dictionaryRepresentation2 = [eventType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"eventType"];

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  eventDescriptors = [(_INPBEvent *)self eventDescriptors];
  eventDescriptors2 = [equalCopy eventDescriptors];
  if ((eventDescriptors != 0) == (eventDescriptors2 == 0))
  {
    goto LABEL_11;
  }

  eventDescriptors3 = [(_INPBEvent *)self eventDescriptors];
  if (eventDescriptors3)
  {
    v8 = eventDescriptors3;
    eventDescriptors4 = [(_INPBEvent *)self eventDescriptors];
    eventDescriptors5 = [equalCopy eventDescriptors];
    v11 = [eventDescriptors4 isEqual:eventDescriptors5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  eventDescriptors = [(_INPBEvent *)self eventType];
  eventDescriptors2 = [equalCopy eventType];
  if ((eventDescriptors != 0) != (eventDescriptors2 == 0))
  {
    eventType = [(_INPBEvent *)self eventType];
    if (!eventType)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = eventType;
    eventType2 = [(_INPBEvent *)self eventType];
    eventType3 = [equalCopy eventType];
    v16 = [eventType2 isEqual:eventType3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBEvent allocWithZone:](_INPBEvent init];
  v6 = [(NSArray *)self->_eventDescriptors copyWithZone:zone];
  [(_INPBEvent *)v5 setEventDescriptors:v6];

  v7 = [(_INPBString *)self->_eventType copyWithZone:zone];
  [(_INPBEvent *)v5 setEventType:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBEvent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBEvent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_eventDescriptors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  eventType = [(_INPBEvent *)self eventType];

  if (eventType)
  {
    eventType2 = [(_INPBEvent *)self eventType];
    PBDataWriterWriteSubmessage();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addEventDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  eventDescriptors = self->_eventDescriptors;
  v8 = descriptorsCopy;
  if (!eventDescriptors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_eventDescriptors;
    self->_eventDescriptors = array;

    descriptorsCopy = v8;
    eventDescriptors = self->_eventDescriptors;
  }

  [(NSArray *)eventDescriptors addObject:descriptorsCopy];
}

- (void)setEventDescriptors:(id)descriptors
{
  v4 = [descriptors mutableCopy];
  eventDescriptors = self->_eventDescriptors;
  self->_eventDescriptors = v4;

  MEMORY[0x1EEE66BB8](v4, eventDescriptors);
}

@end