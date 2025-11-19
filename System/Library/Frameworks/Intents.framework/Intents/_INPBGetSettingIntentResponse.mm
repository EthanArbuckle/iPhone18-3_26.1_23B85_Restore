@interface _INPBGetSettingIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBGetSettingIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addSettingResponseData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setErrorDetail:(id)a3;
- (void)setSettingResponseDatas:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetSettingIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    v4 = [(_INPBGetSettingIntentResponse *)self errorDetail];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if ([(NSArray *)self->_settingResponseDatas count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_settingResponseDatas;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"settingResponseData"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBGetSettingIntentResponse *)self errorDetail];
  v6 = [v4 errorDetail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBGetSettingIntentResponse *)self errorDetail];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBGetSettingIntentResponse *)self errorDetail];
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

  v5 = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
  v6 = [v4 settingResponseDatas];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
    v15 = [v4 settingResponseDatas];
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
  v5 = [+[_INPBGetSettingIntentResponse allocWithZone:](_INPBGetSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:a3];
  [(_INPBGetSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSArray *)self->_settingResponseDatas copyWithZone:a3];
  [(_INPBGetSettingIntentResponse *)v5 setSettingResponseDatas:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetSettingIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetSettingIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBGetSettingIntentResponse *)self errorDetail];

  if (v5)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_settingResponseDatas;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addSettingResponseData:(id)a3
{
  v4 = a3;
  settingResponseDatas = self->_settingResponseDatas;
  v8 = v4;
  if (!settingResponseDatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_settingResponseDatas;
    self->_settingResponseDatas = v6;

    v4 = v8;
    settingResponseDatas = self->_settingResponseDatas;
  }

  [(NSArray *)settingResponseDatas addObject:v4];
}

- (void)setSettingResponseDatas:(id)a3
{
  v4 = [a3 mutableCopy];
  settingResponseDatas = self->_settingResponseDatas;
  self->_settingResponseDatas = v4;

  MEMORY[0x1EEE66BB8](v4, settingResponseDatas);
}

- (void)setErrorDetail:(id)a3
{
  v4 = [a3 copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end