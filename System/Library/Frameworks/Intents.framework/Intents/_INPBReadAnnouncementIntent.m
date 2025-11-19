@interface _INPBReadAnnouncementIntent
- (BOOL)isEqual:(id)a3;
- (_INPBReadAnnouncementIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsReadType:(id)a3;
- (int)StringAsUserNotificationType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasUserNotificationType:(BOOL)a3;
- (void)setReadType:(int)a3;
- (void)setStartAnnouncementIdentifier:(id)a3;
- (void)setUserNotificationType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBReadAnnouncementIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    v6 = [(_INPBReadAnnouncementIntent *)self readType];
    if (v6 == 1)
    {
      v7 = @"READ";
    }

    else if (v6 == 2)
    {
      v7 = @"REPEAT";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"readType"];
  }

  if (self->_startAnnouncementIdentifier)
  {
    v8 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"startAnnouncementIdentifier"];
  }

  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    v10 = [(_INPBReadAnnouncementIntent *)self userNotificationType];
    if (v10 == 1)
    {
      v11 = @"ANNOUNCEMENT";
    }

    else if (v10 == 2)
    {
      v11 = @"DELIVERY_FAILURE";
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"userNotificationType"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBReadAnnouncementIntent *)self hasReadType];
  if (v12 != [v4 hasReadType])
  {
    goto LABEL_16;
  }

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    if ([v4 hasReadType])
    {
      readType = self->_readType;
      if (readType != [v4 readType])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
  v6 = [v4 startAnnouncementIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];
    v17 = [v4 startAnnouncementIdentifier];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = [(_INPBReadAnnouncementIntent *)self hasUserNotificationType];
  if (v21 == [v4 hasUserNotificationType])
  {
    if (!-[_INPBReadAnnouncementIntent hasUserNotificationType](self, "hasUserNotificationType") || ![v4 hasUserNotificationType] || (userNotificationType = self->_userNotificationType, userNotificationType == objc_msgSend(v4, "userNotificationType")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBReadAnnouncementIntent allocWithZone:](_INPBReadAnnouncementIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBReadAnnouncementIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    [(_INPBReadAnnouncementIntent *)v5 setReadType:[(_INPBReadAnnouncementIntent *)self readType]];
  }

  v7 = [(NSString *)self->_startAnnouncementIdentifier copyWithZone:a3];
  [(_INPBReadAnnouncementIntent *)v5 setStartAnnouncementIdentifier:v7];

  if ([(_INPBReadAnnouncementIntent *)self hasUserNotificationType])
  {
    [(_INPBReadAnnouncementIntent *)v5 setUserNotificationType:[(_INPBReadAnnouncementIntent *)self userNotificationType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBReadAnnouncementIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBReadAnnouncementIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBReadAnnouncementIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(_INPBReadAnnouncementIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBReadAnnouncementIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBReadAnnouncementIntent *)self hasReadType])
  {
    readType = self->_readType;
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_INPBReadAnnouncementIntent *)self startAnnouncementIdentifier];

  if (v7)
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

- (int)StringAsUserNotificationType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ANNOUNCEMENT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"DELIVERY_FAILURE"])
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

- (void)setHasUserNotificationType:(BOOL)a3
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

- (void)setUserNotificationType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_userNotificationType = a3;
  }
}

- (void)setStartAnnouncementIdentifier:(id)a3
{
  v4 = [a3 copy];
  startAnnouncementIdentifier = self->_startAnnouncementIdentifier;
  self->_startAnnouncementIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, startAnnouncementIdentifier);
}

- (int)StringAsReadType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"READ"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"REPEAT"])
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

- (void)setReadType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_readType = a3;
  }
}

@end