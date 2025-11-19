@interface _INPBEventParticipant
- (BOOL)isEqual:(id)a3;
- (_INPBEventParticipant)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasIsUser:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setStatus:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBEventParticipant

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBEventParticipant isEventOrganizer](self, "isEventOrganizer")}];
    [v3 setObject:v4 forKeyedSubscript:@"isEventOrganizer"];
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBEventParticipant isUser](self, "isUser")}];
    [v3 setObject:v5 forKeyedSubscript:@"isUser"];
  }

  v6 = [(_INPBEventParticipant *)self person];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"person"];

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    v8 = [(_INPBEventParticipant *)self status];
    if ((v8 - 1) >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7281178[(v8 - 1)];
    }

    [v3 setObject:v9 forKeyedSubscript:@"status"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBEventParticipant *)self hasIsEventOrganizer];
  if (v5 != [v4 hasIsEventOrganizer])
  {
    goto LABEL_17;
  }

  if ([(_INPBEventParticipant *)self hasIsEventOrganizer])
  {
    if ([v4 hasIsEventOrganizer])
    {
      isEventOrganizer = self->_isEventOrganizer;
      if (isEventOrganizer != [v4 isEventOrganizer])
      {
        goto LABEL_17;
      }
    }
  }

  v7 = [(_INPBEventParticipant *)self hasIsUser];
  if (v7 != [v4 hasIsUser])
  {
    goto LABEL_17;
  }

  if ([(_INPBEventParticipant *)self hasIsUser])
  {
    if ([v4 hasIsUser])
    {
      isUser = self->_isUser;
      if (isUser != [v4 isUser])
      {
        goto LABEL_17;
      }
    }
  }

  v9 = [(_INPBEventParticipant *)self person];
  v10 = [v4 person];
  v11 = v10;
  if ((v9 != 0) != (v10 == 0))
  {
    v12 = [(_INPBEventParticipant *)self person];
    if (v12)
    {
      v13 = v12;
      v14 = [(_INPBEventParticipant *)self person];
      v15 = [v4 person];
      v16 = [v14 isEqual:v15];

      if (!v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = [(_INPBEventParticipant *)self hasStatus];
    if (v17 == [v4 hasStatus])
    {
      if (!-[_INPBEventParticipant hasStatus](self, "hasStatus") || ![v4 hasStatus] || (status = self->_status, status == objc_msgSend(v4, "status")))
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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBContact *)self->_person copyWithZone:a3];
  [(_INPBEventParticipant *)v5 setPerson:v6];

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    [(_INPBEventParticipant *)v5 setStatus:[(_INPBEventParticipant *)self status]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBEventParticipant *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBEventParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBEventParticipant *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(_INPBEventParticipant *)self person];

  if (v6)
  {
    v7 = [(_INPBEventParticipant *)self person];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBEventParticipant *)self hasStatus])
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_STATUS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ACCEPTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DECLINED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TENTATIVE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"DELEGATED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"IN_PROCESS"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setStatus:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_status = a3;
  }
}

- (void)setHasIsUser:(BOOL)a3
{
  if (a3)
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