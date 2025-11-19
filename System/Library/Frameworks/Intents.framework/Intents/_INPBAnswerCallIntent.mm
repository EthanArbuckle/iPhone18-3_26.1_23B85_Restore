@interface _INPBAnswerCallIntent
- (BOOL)isEqual:(id)a3;
- (_INPBAnswerCallIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioRoute:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioRoute:(int)a3;
- (void)setCallIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAnswerCallIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    v4 = [(_INPBAnswerCallIntent *)self audioRoute];
    if ((v4 - 2) >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7286DF8[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioRoute"];
  }

  if (self->_callIdentifier)
  {
    v6 = [(_INPBAnswerCallIntent *)self callIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"callIdentifier"];
  }

  v8 = [(_INPBAnswerCallIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    v3 = 2654435761 * self->_audioRoute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_callIdentifier hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBAnswerCallIntent *)self hasAudioRoute];
  if (v5 != [v4 hasAudioRoute])
  {
    goto LABEL_16;
  }

  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    if ([v4 hasAudioRoute])
    {
      audioRoute = self->_audioRoute;
      if (audioRoute != [v4 audioRoute])
      {
        goto LABEL_16;
      }
    }
  }

  v7 = [(_INPBAnswerCallIntent *)self callIdentifier];
  v8 = [v4 callIdentifier];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_15;
  }

  v9 = [(_INPBAnswerCallIntent *)self callIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBAnswerCallIntent *)self callIdentifier];
    v12 = [v4 callIdentifier];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v7 = [(_INPBAnswerCallIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_INPBAnswerCallIntent *)self intentMetadata];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBAnswerCallIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAnswerCallIntent allocWithZone:](_INPBAnswerCallIntent init];
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    [(_INPBAnswerCallIntent *)v5 setAudioRoute:[(_INPBAnswerCallIntent *)self audioRoute]];
  }

  v6 = [(NSString *)self->_callIdentifier copyWithZone:a3];
  [(_INPBAnswerCallIntent *)v5 setCallIdentifier:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBAnswerCallIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAnswerCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAnswerCallIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAnswerCallIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if ([(_INPBAnswerCallIntent *)self hasAudioRoute])
  {
    audioRoute = self->_audioRoute;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBAnswerCallIntent *)self callIdentifier];

  if (v5)
  {
    callIdentifier = self->_callIdentifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBAnswerCallIntent *)self intentMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(_INPBAnswerCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setCallIdentifier:(id)a3
{
  v4 = [a3 copy];
  callIdentifier = self->_callIdentifier;
  self->_callIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, callIdentifier);
}

- (int)StringAsAudioRoute:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SPEAKERPHONE_AUDIO_ROUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH_AUDIO_ROUTE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HEY_SIRI_AUDIO_ROUTE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setAudioRoute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioRoute = a3;
  }
}

@end