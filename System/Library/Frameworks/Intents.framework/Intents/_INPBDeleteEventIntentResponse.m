@interface _INPBDeleteEventIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBDeleteEventIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setConfirmationReason:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDeleteEventIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    v4 = [(_INPBDeleteEventIntentResponse *)self confirmationReason];
    if (v4 == 1)
    {
      v5 = @"DELETE_ALL_RECURRENCES";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"confirmationReason"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBDeleteEventIntentResponse *)self hasConfirmationReason];
    if (v5 == [v4 hasConfirmationReason])
    {
      if (!-[_INPBDeleteEventIntentResponse hasConfirmationReason](self, "hasConfirmationReason") || ![v4 hasConfirmationReason] || (confirmationReason = self->_confirmationReason, confirmationReason == objc_msgSend(v4, "confirmationReason")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBDeleteEventIntentResponse allocWithZone:?]];
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    [(_INPBDeleteEventIntentResponse *)v4 setConfirmationReason:[(_INPBDeleteEventIntentResponse *)self confirmationReason]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDeleteEventIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDeleteEventIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDeleteEventIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBDeleteEventIntentResponse *)self hasConfirmationReason])
  {
    confirmationReason = self->_confirmationReason;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setConfirmationReason:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_confirmationReason = a3;
  }
}

@end