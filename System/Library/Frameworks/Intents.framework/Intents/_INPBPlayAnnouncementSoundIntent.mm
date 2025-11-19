@interface _INPBPlayAnnouncementSoundIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPlayAnnouncementSoundIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSoundType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlayAnnouncementSoundIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    v6 = [(_INPBPlayAnnouncementSoundIntent *)self soundType];
    if (v6 == 1)
    {
      v7 = @"ANNOUNCEMENT_SENT";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"soundType"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    v4 = 2654435761 * self->_soundType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
      v11 = [v4 intentMetadata];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBPlayAnnouncementSoundIntent *)self hasSoundType];
    if (v13 == [v4 hasSoundType])
    {
      if (!-[_INPBPlayAnnouncementSoundIntent hasSoundType](self, "hasSoundType") || ![v4 hasSoundType] || (soundType = self->_soundType, soundType == objc_msgSend(v4, "soundType")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPlayAnnouncementSoundIntent allocWithZone:](_INPBPlayAnnouncementSoundIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPlayAnnouncementSoundIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    [(_INPBPlayAnnouncementSoundIntent *)v5 setSoundType:[(_INPBPlayAnnouncementSoundIntent *)self soundType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlayAnnouncementSoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlayAnnouncementSoundIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlayAnnouncementSoundIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBPlayAnnouncementSoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBPlayAnnouncementSoundIntent *)self hasSoundType])
  {
    soundType = self->_soundType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setSoundType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_soundType = a3;
  }
}

@end