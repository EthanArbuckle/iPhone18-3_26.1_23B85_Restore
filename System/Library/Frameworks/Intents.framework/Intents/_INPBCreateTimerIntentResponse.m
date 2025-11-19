@interface _INPBCreateTimerIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBCreateTimerIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCreateTimerIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"createdTimer"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
    v6 = [v4 createdTimer];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
      v11 = [v4 createdTimer];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCreateTimerIntentResponse allocWithZone:](_INPBCreateTimerIntentResponse init];
  v6 = [(_INPBTimer *)self->_createdTimer copyWithZone:a3];
  [(_INPBCreateTimerIntentResponse *)v5 setCreatedTimer:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCreateTimerIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCreateTimerIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCreateTimerIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBCreateTimerIntentResponse *)self createdTimer];

  if (v4)
  {
    v5 = [(_INPBCreateTimerIntentResponse *)self createdTimer];
    PBDataWriterWriteSubmessage();
  }
}

@end