@interface _INPBDeleteEventIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBDeleteEventIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setConfirmationReason:(int)reason;
- (void)writeTo:(id)to;
@end

@implementation _INPBDeleteEventIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = [(_INPBDeleteEventIntentResponse *)self confirmationReason];
    if (confirmationReason == 1)
    {
      v5 = @"DELETE_ALL_RECURRENCES";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", confirmationReason];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    return 2654435761 * self->_confirmationReason;
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
    hasConfirmationReason = [(_INPBDeleteEventIntentResponse *)self hasConfirmationReason];
    if (hasConfirmationReason == [equalCopy hasConfirmationReason])
    {
      if (!-[_INPBDeleteEventIntentResponse hasConfirmationReason](self, "hasConfirmationReason") || ![equalCopy hasConfirmationReason] || (confirmationReason = self->_confirmationReason, confirmationReason == objc_msgSend(equalCopy, "confirmationReason")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBDeleteEventIntentResponse allocWithZone:?]];
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBDeleteEventIntentResponse *)v4 setConfirmationReason:[(_INPBDeleteEventIntentResponse *)self confirmationReason]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDeleteEventIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDeleteEventIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDeleteEventIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = self->_confirmationReason;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setConfirmationReason:(int)reason
{
  has = self->_has;
  if (reason == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationReason = reason;
  }
}

@end