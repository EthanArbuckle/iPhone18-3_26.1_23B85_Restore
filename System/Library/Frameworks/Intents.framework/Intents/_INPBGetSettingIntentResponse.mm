@interface _INPBGetSettingIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetSettingIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addSettingResponseData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setSettingResponseDatas:(id)datas;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetSettingIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    errorDetail = [(_INPBGetSettingIntentResponse *)self errorDetail];
    v5 = [errorDetail copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if ([(NSArray *)self->_settingResponseDatas count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"settingResponseData"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  errorDetail = [(_INPBGetSettingIntentResponse *)self errorDetail];
  errorDetail2 = [equalCopy errorDetail];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_11;
  }

  errorDetail3 = [(_INPBGetSettingIntentResponse *)self errorDetail];
  if (errorDetail3)
  {
    v8 = errorDetail3;
    errorDetail4 = [(_INPBGetSettingIntentResponse *)self errorDetail];
    errorDetail5 = [equalCopy errorDetail];
    v11 = [errorDetail4 isEqual:errorDetail5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  errorDetail = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
  errorDetail2 = [equalCopy settingResponseDatas];
  if ((errorDetail != 0) != (errorDetail2 == 0))
  {
    settingResponseDatas = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
    if (!settingResponseDatas)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = settingResponseDatas;
    settingResponseDatas2 = [(_INPBGetSettingIntentResponse *)self settingResponseDatas];
    settingResponseDatas3 = [equalCopy settingResponseDatas];
    v16 = [settingResponseDatas2 isEqual:settingResponseDatas3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetSettingIntentResponse allocWithZone:](_INPBGetSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:zone];
  [(_INPBGetSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSArray *)self->_settingResponseDatas copyWithZone:zone];
  [(_INPBGetSettingIntentResponse *)v5 setSettingResponseDatas:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetSettingIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetSettingIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  errorDetail = [(_INPBGetSettingIntentResponse *)self errorDetail];

  if (errorDetail)
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

- (void)addSettingResponseData:(id)data
{
  dataCopy = data;
  settingResponseDatas = self->_settingResponseDatas;
  v8 = dataCopy;
  if (!settingResponseDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_settingResponseDatas;
    self->_settingResponseDatas = array;

    dataCopy = v8;
    settingResponseDatas = self->_settingResponseDatas;
  }

  [(NSArray *)settingResponseDatas addObject:dataCopy];
}

- (void)setSettingResponseDatas:(id)datas
{
  v4 = [datas mutableCopy];
  settingResponseDatas = self->_settingResponseDatas;
  self->_settingResponseDatas = v4;

  MEMORY[0x1EEE66BB8](v4, settingResponseDatas);
}

- (void)setErrorDetail:(id)detail
{
  v4 = [detail copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end