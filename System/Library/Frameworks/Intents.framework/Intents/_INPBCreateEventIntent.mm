@interface _INPBCreateEventIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateEventIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setParticipants:(id)participants;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateEventIntent

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateTimeRange = [(_INPBCreateEventIntent *)self dateTimeRange];
  dictionaryRepresentation = [dateTimeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dateTimeRange"];

  intentMetadata = [(_INPBCreateEventIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  location = [(_INPBCreateEventIntent *)self location];
  dictionaryRepresentation3 = [location dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"location"];

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_participants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  if (self->_title)
  {
    title = [(_INPBCreateEventIntent *)self title];
    v18 = [title copy];
    [dictionary setObject:v18 forKeyedSubscript:@"title"];
  }

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  v5 = [(_INPBLocation *)self->_location hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_participants hash];
  return v6 ^ [(NSString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  dateTimeRange = [(_INPBCreateEventIntent *)self dateTimeRange];
  dateTimeRange2 = [equalCopy dateTimeRange];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_26;
  }

  dateTimeRange3 = [(_INPBCreateEventIntent *)self dateTimeRange];
  if (dateTimeRange3)
  {
    v8 = dateTimeRange3;
    dateTimeRange4 = [(_INPBCreateEventIntent *)self dateTimeRange];
    dateTimeRange5 = [equalCopy dateTimeRange];
    v11 = [dateTimeRange4 isEqual:dateTimeRange5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBCreateEventIntent *)self intentMetadata];
  dateTimeRange2 = [equalCopy intentMetadata];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_26;
  }

  intentMetadata = [(_INPBCreateEventIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBCreateEventIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBCreateEventIntent *)self location];
  dateTimeRange2 = [equalCopy location];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_26;
  }

  location = [(_INPBCreateEventIntent *)self location];
  if (location)
  {
    v18 = location;
    location2 = [(_INPBCreateEventIntent *)self location];
    location3 = [equalCopy location];
    v21 = [location2 isEqual:location3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBCreateEventIntent *)self participants];
  dateTimeRange2 = [equalCopy participants];
  if ((dateTimeRange != 0) == (dateTimeRange2 == 0))
  {
    goto LABEL_26;
  }

  participants = [(_INPBCreateEventIntent *)self participants];
  if (participants)
  {
    v23 = participants;
    participants2 = [(_INPBCreateEventIntent *)self participants];
    participants3 = [equalCopy participants];
    v26 = [participants2 isEqual:participants3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  dateTimeRange = [(_INPBCreateEventIntent *)self title];
  dateTimeRange2 = [equalCopy title];
  if ((dateTimeRange != 0) != (dateTimeRange2 == 0))
  {
    title = [(_INPBCreateEventIntent *)self title];
    if (!title)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = title;
    title2 = [(_INPBCreateEventIntent *)self title];
    title3 = [equalCopy title];
    v31 = [title2 isEqual:title3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateEventIntent allocWithZone:](_INPBCreateEventIntent init];
  v6 = [(_INPBDateTimeRangeValue *)self->_dateTimeRange copyWithZone:zone];
  [(_INPBCreateEventIntent *)v5 setDateTimeRange:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateEventIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBLocation *)self->_location copyWithZone:zone];
  [(_INPBCreateEventIntent *)v5 setLocation:v8];

  v9 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCreateEventIntent *)v5 setParticipants:v9];

  v10 = [(NSString *)self->_title copyWithZone:zone];
  [(_INPBCreateEventIntent *)v5 setTitle:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateEventIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateEventIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateEventIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dateTimeRange = [(_INPBCreateEventIntent *)self dateTimeRange];

  if (dateTimeRange)
  {
    dateTimeRange2 = [(_INPBCreateEventIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBCreateEventIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateEventIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  location = [(_INPBCreateEventIntent *)self location];

  if (location)
  {
    location2 = [(_INPBCreateEventIntent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_participants;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  title = [(_INPBCreateEventIntent *)self title];

  if (title)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = array;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:participantsCopy];
}

- (void)setParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

@end