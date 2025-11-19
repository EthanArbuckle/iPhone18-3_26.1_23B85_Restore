@interface _INPBAnnouncement
- (BOOL)isEqual:(id)a3;
- (_INPBAnnouncement)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setSpeechDataTranscription:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAnnouncement

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBAnnouncement endTime](self, "endTime")}];
    [v3 setObject:v4 forKeyedSubscript:@"endTime"];
  }

  if (self->_identifier)
  {
    v5 = [(_INPBAnnouncement *)self identifier];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"identifier"];
  }

  if (self->_speechDataTranscription)
  {
    v7 = [(_INPBAnnouncement *)self speechDataTranscription];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"speechDataTranscription"];
  }

  v9 = [(_INPBAnnouncement *)self speechDataURL];
  v10 = [v9 dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"speechDataURL"];

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_INPBAnnouncement startTime](self, "startTime")}];
    [v3 setObject:v11 forKeyedSubscript:@"startTime"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    v3 = 2654435761u * self->_endTime;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  v5 = [(NSString *)self->_speechDataTranscription hash];
  v6 = [(_INPBURLValue *)self->_speechDataURL hash];
  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    v7 = 2654435761u * self->_startTime;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBAnnouncement *)self hasEndTime];
  if (v5 != [v4 hasEndTime])
  {
    goto LABEL_21;
  }

  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    if ([v4 hasEndTime])
    {
      endTime = self->_endTime;
      if (endTime != [v4 endTime])
      {
        goto LABEL_21;
      }
    }
  }

  v7 = [(_INPBAnnouncement *)self identifier];
  v8 = [v4 identifier];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v9 = [(_INPBAnnouncement *)self identifier];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBAnnouncement *)self identifier];
    v12 = [v4 identifier];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBAnnouncement *)self speechDataTranscription];
  v8 = [v4 speechDataTranscription];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_20;
  }

  v14 = [(_INPBAnnouncement *)self speechDataTranscription];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBAnnouncement *)self speechDataTranscription];
    v17 = [v4 speechDataTranscription];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v7 = [(_INPBAnnouncement *)self speechDataURL];
  v8 = [v4 speechDataURL];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_20:

    goto LABEL_21;
  }

  v19 = [(_INPBAnnouncement *)self speechDataURL];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBAnnouncement *)self speechDataURL];
    v22 = [v4 speechDataURL];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = [(_INPBAnnouncement *)self hasStartTime];
  if (v26 == [v4 hasStartTime])
  {
    if (!-[_INPBAnnouncement hasStartTime](self, "hasStartTime") || ![v4 hasStartTime] || (startTime = self->_startTime, startTime == objc_msgSend(v4, "startTime")))
    {
      v24 = 1;
      goto LABEL_22;
    }
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAnnouncement allocWithZone:](_INPBAnnouncement init];
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    [(_INPBAnnouncement *)v5 setEndTime:[(_INPBAnnouncement *)self endTime]];
  }

  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBAnnouncement *)v5 setIdentifier:v6];

  v7 = [(NSString *)self->_speechDataTranscription copyWithZone:a3];
  [(_INPBAnnouncement *)v5 setSpeechDataTranscription:v7];

  v8 = [(_INPBURLValue *)self->_speechDataURL copyWithZone:a3];
  [(_INPBAnnouncement *)v5 setSpeechDataURL:v8];

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    [(_INPBAnnouncement *)v5 setStartTime:[(_INPBAnnouncement *)self startTime]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAnnouncement *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAnnouncement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAnnouncement *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if ([(_INPBAnnouncement *)self hasEndTime])
  {
    endTime = self->_endTime;
    PBDataWriterWriteUint64Field();
  }

  v5 = [(_INPBAnnouncement *)self identifier];

  if (v5)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBAnnouncement *)self speechDataTranscription];

  if (v7)
  {
    speechDataTranscription = self->_speechDataTranscription;
    PBDataWriterWriteStringField();
  }

  v9 = [(_INPBAnnouncement *)self speechDataURL];

  if (v9)
  {
    v10 = [(_INPBAnnouncement *)self speechDataURL];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBAnnouncement *)self hasStartTime])
  {
    startTime = self->_startTime;
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasStartTime:(BOOL)a3
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

- (void)setSpeechDataTranscription:(id)a3
{
  v4 = [a3 copy];
  speechDataTranscription = self->_speechDataTranscription;
  self->_speechDataTranscription = v4;

  MEMORY[0x1EEE66BB8](v4, speechDataTranscription);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end