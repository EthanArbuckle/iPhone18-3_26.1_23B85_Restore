@interface _INPBHangUpCallIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBHangUpCallIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsHungUpCallType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHungUpCallType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHangUpCallIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    v4 = [(_INPBHangUpCallIntentResponse *)self hungUpCallType];
    v5 = v4 - 2;
    if (v4 - 2) < 9 && ((0x1EFu >> v5))
    {
      v6 = off_1E7286FB8[v5];
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v6 forKeyedSubscript:@"hungUpCallType"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    return 2654435761 * self->_hungUpCallType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHangUpCallIntentResponse *)self hasHungUpCallType];
    if (v5 == [v4 hasHungUpCallType])
    {
      if (!-[_INPBHangUpCallIntentResponse hasHungUpCallType](self, "hasHungUpCallType") || ![v4 hasHungUpCallType] || (hungUpCallType = self->_hungUpCallType, hungUpCallType == objc_msgSend(v4, "hungUpCallType")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBHangUpCallIntentResponse allocWithZone:?]];
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    [(_INPBHangUpCallIntentResponse *)v4 setHungUpCallType:[(_INPBHangUpCallIntentResponse *)self hungUpCallType]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHangUpCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHangUpCallIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHangUpCallIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    hungUpCallType = self->_hungUpCallType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsHungUpCallType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHungUpCallType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_hungUpCallType = a3;
  }
}

@end