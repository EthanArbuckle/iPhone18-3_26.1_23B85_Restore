@interface _INPBOpenSettingIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBOpenSettingIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setPunchoutUrl:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBOpenSettingIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    v4 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if (self->_punchoutUrl)
  {
    v6 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"punchoutUrl"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
  v6 = [v4 errorDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
    v10 = [v4 errorDetail];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
  v6 = [v4 punchoutUrl];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    v15 = [v4 punchoutUrl];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBOpenSettingIntentResponse allocWithZone:](_INPBOpenSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:a3];
  [(_INPBOpenSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSString *)self->_punchoutUrl copyWithZone:a3];
  [(_INPBOpenSettingIntentResponse *)v5 setPunchoutUrl:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBOpenSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBOpenSettingIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBOpenSettingIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBOpenSettingIntentResponse *)self errorDetail];

  if (v4)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];

  if (v6)
  {
    punchoutUrl = self->_punchoutUrl;
    PBDataWriterWriteStringField();
  }
}

- (void)setPunchoutUrl:(id)a3
{
  v4 = [a3 copy];
  punchoutUrl = self->_punchoutUrl;
  self->_punchoutUrl = v4;

  MEMORY[0x1EEE66BB8](v4, punchoutUrl);
}

- (void)setErrorDetail:(id)a3
{
  v4 = [a3 copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end