@interface _INPBSetNumericSettingIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSetNumericSettingIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetNumericSettingIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    v4 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  v6 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"maxValue"];

  v8 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"minValue"];

  v10 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"oldValue"];

  v12 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"updatedValue"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDetail hash];
  v4 = [(_INPBNumericSettingValue *)self->_maxValue hash]^ v3;
  v5 = [(_INPBNumericSettingValue *)self->_minValue hash];
  v6 = v4 ^ v5 ^ [(_INPBNumericSettingValue *)self->_oldValue hash];
  return v6 ^ [(_INPBNumericSettingValue *)self->_updatedValue hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
  v6 = [v4 errorDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];
    v10 = [v4 errorDetail];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  v6 = [v4 maxValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
    v15 = [v4 maxValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  v6 = [v4 minValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
    v20 = [v4 minValue];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  v6 = [v4 oldValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
    v25 = [v4 oldValue];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
  v6 = [v4 updatedValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    v30 = [v4 updatedValue];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetNumericSettingIntentResponse allocWithZone:](_INPBSetNumericSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:a3];
  [(_INPBSetNumericSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(_INPBNumericSettingValue *)self->_maxValue copyWithZone:a3];
  [(_INPBSetNumericSettingIntentResponse *)v5 setMaxValue:v7];

  v8 = [(_INPBNumericSettingValue *)self->_minValue copyWithZone:a3];
  [(_INPBSetNumericSettingIntentResponse *)v5 setMinValue:v8];

  v9 = [(_INPBNumericSettingValue *)self->_oldValue copyWithZone:a3];
  [(_INPBSetNumericSettingIntentResponse *)v5 setOldValue:v9];

  v10 = [(_INPBNumericSettingValue *)self->_updatedValue copyWithZone:a3];
  [(_INPBSetNumericSettingIntentResponse *)v5 setUpdatedValue:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetNumericSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetNumericSettingIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetNumericSettingIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_INPBSetNumericSettingIntentResponse *)self errorDetail];

  if (v4)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];

  if (v6)
  {
    v7 = [(_INPBSetNumericSettingIntentResponse *)self maxValue];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSetNumericSettingIntentResponse *)self minValue];

  if (v8)
  {
    v9 = [(_INPBSetNumericSettingIntentResponse *)self minValue];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];

  if (v10)
  {
    v11 = [(_INPBSetNumericSettingIntentResponse *)self oldValue];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];

  v13 = v15;
  if (v12)
  {
    v14 = [(_INPBSetNumericSettingIntentResponse *)self updatedValue];
    PBDataWriterWriteSubmessage();

    v13 = v15;
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