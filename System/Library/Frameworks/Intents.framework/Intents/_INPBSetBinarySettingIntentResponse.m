@interface _INPBSetBinarySettingIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSetBinarySettingIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsOldValue:(id)a3;
- (int)StringAsUpdatedValue:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setHasUpdatedValue:(BOOL)a3;
- (void)setOldValue:(int)a3;
- (void)setUpdatedValue:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetBinarySettingIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    v4 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    v6 = [(_INPBSetBinarySettingIntentResponse *)self oldValue];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = *(&off_1E7287BE0 + (v6 - 1));
    }

    [v3 setObject:v7 forKeyedSubscript:@"oldValue"];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    v8 = [(_INPBSetBinarySettingIntentResponse *)self updatedValue];
    if ((v8 - 1) >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = *(&off_1E7287BE0 + (v8 - 1));
    }

    [v3 setObject:v9 forKeyedSubscript:@"updatedValue"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    v4 = 2654435761 * self->_oldValue;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    v5 = 2654435761 * self->_updatedValue;
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
    goto LABEL_13;
  }

  v5 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
  v6 = [v4 errorDetail];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];
      v11 = [v4 errorDetail];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v13 = [(_INPBSetBinarySettingIntentResponse *)self hasOldValue];
    if (v13 == [v4 hasOldValue])
    {
      if (!-[_INPBSetBinarySettingIntentResponse hasOldValue](self, "hasOldValue") || ![v4 hasOldValue] || (oldValue = self->_oldValue, oldValue == objc_msgSend(v4, "oldValue")))
      {
        v15 = [(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue];
        if (v15 == [v4 hasUpdatedValue])
        {
          if (!-[_INPBSetBinarySettingIntentResponse hasUpdatedValue](self, "hasUpdatedValue") || ![v4 hasUpdatedValue] || (updatedValue = self->_updatedValue, updatedValue == objc_msgSend(v4, "updatedValue")))
          {
            v16 = 1;
            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_13:
  v16 = 0;
LABEL_14:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetBinarySettingIntentResponse allocWithZone:](_INPBSetBinarySettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:a3];
  [(_INPBSetBinarySettingIntentResponse *)v5 setErrorDetail:v6];

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    [(_INPBSetBinarySettingIntentResponse *)v5 setOldValue:[(_INPBSetBinarySettingIntentResponse *)self oldValue]];
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    [(_INPBSetBinarySettingIntentResponse *)v5 setUpdatedValue:[(_INPBSetBinarySettingIntentResponse *)self updatedValue]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetBinarySettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetBinarySettingIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetBinarySettingIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBSetBinarySettingIntentResponse *)self errorDetail];

  if (v4)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasOldValue])
  {
    oldValue = self->_oldValue;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetBinarySettingIntentResponse *)self hasUpdatedValue])
  {
    updatedValue = self->_updatedValue;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsUpdatedValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUpdatedValue:(BOOL)a3
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

- (void)setUpdatedValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_updatedValue = a3;
  }
}

- (int)StringAsOldValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ON"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OFF"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TOGGLE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setOldValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_oldValue = a3;
  }
}

- (void)setErrorDetail:(id)a3
{
  v4 = [a3 copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end