@interface _INPBReadAnnouncementIntent
- (BOOL)isEqual:(id)equal;
- (_INPBReadAnnouncementIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsReadType:(id)type;
- (int)StringAsUserNotificationType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasUserNotificationType:(BOOL)type;
- (void)setReadType:(int)type;
- (void)setStartAnnouncementIdentifier:(id)identifier;
- (void)setUserNotificationType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBReadAnnouncementIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    readType = [(_INPBReadAnnouncementIntent *)self readType];
    if (readType == 1)
    {
      v7 = @"READ";
    }

    else if (readType == 2)
    {
      v7 = @"REPEAT";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", readType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"readType"];
  }

  if (self->_startAnnouncementIdentifier)
  {
    startAnnouncementIdentifier = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
    v9 = [startAnnouncementIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"startAnnouncementIdentifier"];
  }

  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    userNotificationType = [(_INPBReadAnnouncementIntent *)self userNotificationType];
    if (userNotificationType == 1)
    {
      v11 = @"ANNOUNCEMENT";
    }

    else if (userNotificationType == 2)
    {
      v11 = @"DELIVERY_FAILURE";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", userNotificationType];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"userNotificationType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    v4 = 2654435761 * self->_readType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_startAnnouncementIdentifier hash];
  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    v6 = 2654435761 * self->_userNotificationType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_15;
  }

  intentMetadata3 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasReadType = [(_INPBReadAnnouncementIntent *)self hasReadType];
  if (hasReadType != [equalCopy hasReadType])
  {
    goto LABEL_16;
  }

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    if ([equalCopy hasReadType])
    {
      readType = self->_readType;
      if (readType != [equalCopy readType])
      {
        goto LABEL_16;
      }
    }
  }

  intentMetadata = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
  intentMetadata2 = [equalCopy startAnnouncementIdentifier];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  startAnnouncementIdentifier = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
  if (startAnnouncementIdentifier)
  {
    v15 = startAnnouncementIdentifier;
    startAnnouncementIdentifier2 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
    startAnnouncementIdentifier3 = [equalCopy startAnnouncementIdentifier];
    v18 = [startAnnouncementIdentifier2 isEqual:startAnnouncementIdentifier3];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasUserNotificationType = [(_INPBReadAnnouncementIntent *)self hasUserNotificationType];
  if (hasUserNotificationType == [equalCopy hasUserNotificationType])
  {
    if (!-[_INPBReadAnnouncementIntent hasUserNotificationType](self, "hasUserNotificationType") || ![equalCopy hasUserNotificationType] || (userNotificationType = self->_userNotificationType, userNotificationType == objc_msgSend(equalCopy, "userNotificationType")))
    {
      v19 = 1;
      goto LABEL_17;
    }
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBReadAnnouncementIntent allocWithZone:](_INPBReadAnnouncementIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBReadAnnouncementIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    [(_INPBReadAnnouncementIntent *)v5 setReadType:[(_INPBReadAnnouncementIntent *)self readType]];
  }

  v7 = [(NSString *)self->_startAnnouncementIdentifier copyWithZone:zone];
  [(_INPBReadAnnouncementIntent *)v5 setStartAnnouncementIdentifier:v7];

  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    [(_INPBReadAnnouncementIntent *)v5 setUserNotificationType:[(_INPBReadAnnouncementIntent *)self userNotificationType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBReadAnnouncementIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBReadAnnouncementIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBReadAnnouncementIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBReadAnnouncementIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    readType = self->_readType;
    PBDataWriterWriteInt32Field();
  }

  startAnnouncementIdentifier = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];

  if (startAnnouncementIdentifier)
  {
    startAnnouncementIdentifier = self->_startAnnouncementIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    userNotificationType = self->_userNotificationType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsUserNotificationType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"ANNOUNCEMENT"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"DELIVERY_FAILURE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasUserNotificationType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setUserNotificationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_userNotificationType = type;
  }
}

- (void)setStartAnnouncementIdentifier:(id)identifier
{
  v4 = [identifier copy];
  startAnnouncementIdentifier = self->_startAnnouncementIdentifier;
  self->_startAnnouncementIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, startAnnouncementIdentifier);
}

- (int)StringAsReadType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"READ"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"REPEAT"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setReadType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_readType = type;
  }
}

@end