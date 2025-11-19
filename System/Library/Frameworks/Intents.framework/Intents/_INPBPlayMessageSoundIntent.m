@interface _INPBPlayMessageSoundIntent
- (BOOL)isEqual:(id)a3;
- (_INPBPlayMessageSoundIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMessageIdentifier:(id)a3;
- (void)setSoundType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPlayMessageSoundIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifier)
  {
    v6 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"messageIdentifier"];
  }

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    v8 = [(_INPBPlayMessageSoundIntent *)self soundType];
    if (v8 == 1)
    {
      v9 = @"OUTGOING_MESSAGE";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"soundType"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(NSString *)self->_messageIdentifier hash];
  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    v5 = 2654435761 * self->_soundType;
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

  v5 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
  v6 = [v4 messageIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];
    v15 = [v4 messageIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBPlayMessageSoundIntent *)self hasSoundType];
  if (v19 == [v4 hasSoundType])
  {
    if (!-[_INPBPlayMessageSoundIntent hasSoundType](self, "hasSoundType") || ![v4 hasSoundType] || (soundType = self->_soundType, soundType == objc_msgSend(v4, "soundType")))
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
  v5 = [+[_INPBPlayMessageSoundIntent allocWithZone:](_INPBPlayMessageSoundIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBPlayMessageSoundIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSString *)self->_messageIdentifier copyWithZone:a3];
  [(_INPBPlayMessageSoundIntent *)v5 setMessageIdentifier:v7];

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
  {
    [(_INPBPlayMessageSoundIntent *)v5 setSoundType:[(_INPBPlayMessageSoundIntent *)self soundType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPlayMessageSoundIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPlayMessageSoundIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPlayMessageSoundIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBPlayMessageSoundIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBPlayMessageSoundIntent *)self messageIdentifier];

  if (v6)
  {
    messageIdentifier = self->_messageIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBPlayMessageSoundIntent *)self hasSoundType])
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

- (void)setMessageIdentifier:(id)a3
{
  v4 = [a3 copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, messageIdentifier);
}

@end