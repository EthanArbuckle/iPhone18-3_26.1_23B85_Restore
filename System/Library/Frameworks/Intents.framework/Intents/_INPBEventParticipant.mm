@interface _INPBEventParticipant
- (BOOL)isEqual:(id)equal;
- (_INPBEventParticipant)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasIsUser:(BOOL)user;
- (void)setHasStatus:(BOOL)status;
- (void)setStatus:(int)status;
- (void)writeTo:(id)to;
@end

@implementation _INPBEventParticipant

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBEventParticipant isEventOrganizer](self, "isEventOrganizer")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isEventOrganizer"];
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBEventParticipant isUser](self, "isUser")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isUser"];
  }

  person = [(_INPBEventParticipant *)self person];
  dictionaryRepresentation = [person dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"person"];

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    status = [(_INPBEventParticipant *)self status];
    if ((status - 1) >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v9 = off_1E7281178[(status - 1)];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"status"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    v3 = 2654435761 * self->_isEventOrganizer;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    v4 = 2654435761 * self->_isUser;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBContact *)self->_person hash];
  if ([(_INPBEventParticipant *)self hasStatus])
  {
    v6 = 2654435761 * self->_status;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  hasIsEventOrganizer = [(_INPBEventParticipant *)self hasIsEventOrganizer];
  if (hasIsEventOrganizer != [equalCopy hasIsEventOrganizer])
  {
    goto LABEL_17;
  }

  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    if ([equalCopy hasIsEventOrganizer])
    {
      isEventOrganizer = self->_isEventOrganizer;
      if (isEventOrganizer != [equalCopy isEventOrganizer])
      {
        goto LABEL_17;
      }
    }
  }

  hasIsUser = [(_INPBEventParticipant *)self hasIsUser];
  if (hasIsUser != [equalCopy hasIsUser])
  {
    goto LABEL_17;
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    if ([equalCopy hasIsUser])
    {
      isUser = self->_isUser;
      if (isUser != [equalCopy isUser])
      {
        goto LABEL_17;
      }
    }
  }

  person = [(_INPBEventParticipant *)self person];
  person2 = [equalCopy person];
  v11 = person2;
  if ((person != 0) != (person2 == 0))
  {
    person3 = [(_INPBEventParticipant *)self person];
    if (person3)
    {
      v13 = person3;
      person4 = [(_INPBEventParticipant *)self person];
      person5 = [equalCopy person];
      v16 = [person4 isEqual:person5];

      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    hasStatus = [(_INPBEventParticipant *)self hasStatus];
    if (hasStatus == [equalCopy hasStatus])
    {
      if (!-[_INPBEventParticipant hasStatus](self, "hasStatus") || ![equalCopy hasStatus] || (status = self->_status, status == objc_msgSend(equalCopy, "status")))
      {
        v18 = 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
  }

LABEL_17:
  v18 = 0;
LABEL_18:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBEventParticipant allocWithZone:](_INPBEventParticipant init];
  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    [(_INPBEventParticipant *)v5 setIsEventOrganizer:[(_INPBEventParticipant *)self isEventOrganizer]];
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    [(_INPBEventParticipant *)v5 setIsUser:[(_INPBEventParticipant *)self isUser]];
  }

  v6 = [(_INPBContact *)self->_person copyWithZone:zone];
  [(_INPBEventParticipant *)v5 setPerson:v6];

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    [(_INPBEventParticipant *)v5 setStatus:[(_INPBEventParticipant *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBEventParticipant *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBEventParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBEventParticipant *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    isEventOrganizer = self->_isEventOrganizer;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    isUser = self->_isUser;
    PBDataWriterWriteBOOLField();
  }

  person = [(_INPBEventParticipant *)self person];

  if (person)
  {
    person2 = [(_INPBEventParticipant *)self person];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"ACCEPTED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"DECLINED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"TENTATIVE"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"DELEGATED"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"IN_PROCESS"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setStatus:(int)status
{
  has = self->_has;
  if (status == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_status = status;
  }
}

- (void)setHasIsUser:(BOOL)user
{
  if (user)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end