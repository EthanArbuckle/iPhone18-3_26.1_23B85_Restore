@interface _INPBHangUpCallIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBHangUpCallIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsHungUpCallType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHungUpCallType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHangUpCallIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    hungUpCallType = [(_INPBHangUpCallIntentResponse *)self hungUpCallType];
    v5 = hungUpCallType - 2;
    if (hungUpCallType - 2) < 9 && ((0x1EFu >> v5))
    {
      v6 = off_1E7286FB8[v5];
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", hungUpCallType];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"hungUpCallType"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasHungUpCallType = [(_INPBHangUpCallIntentResponse *)self hasHungUpCallType];
    if (hasHungUpCallType == [equalCopy hasHungUpCallType])
    {
      if (!-[_INPBHangUpCallIntentResponse hasHungUpCallType](self, "hasHungUpCallType") || ![equalCopy hasHungUpCallType] || (hungUpCallType = self->_hungUpCallType, hungUpCallType == objc_msgSend(equalCopy, "hungUpCallType")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBHangUpCallIntentResponse allocWithZone:?]];
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    [(_INPBHangUpCallIntentResponse *)v4 setHungUpCallType:[(_INPBHangUpCallIntentResponse *)self hungUpCallType]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHangUpCallIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHangUpCallIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHangUpCallIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBHangUpCallIntentResponse *)self hasHungUpCallType])
  {
    hungUpCallType = self->_hungUpCallType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsHungUpCallType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"OUTGOING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"MISSED"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RECEIVED"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LATEST"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"VOICEMAIL"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"RINGING"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"IN_PROGRESS"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ON_HOLD"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setHungUpCallType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_hungUpCallType = type;
  }
}

@end