@interface _INPBOpenSettingIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBOpenSettingIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setErrorDetail:(id)detail;
- (void)setPunchoutUrl:(id)url;
- (void)writeTo:(id)to;
@end

@implementation _INPBOpenSettingIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_errorDetail)
  {
    errorDetail = [(_INPBOpenSettingIntentResponse *)self errorDetail];
    v5 = [errorDetail copy];
    [dictionary setObject:v5 forKeyedSubscript:@"errorDetail"];
  }

  if (self->_punchoutUrl)
  {
    punchoutUrl = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    v7 = [punchoutUrl copy];
    [dictionary setObject:v7 forKeyedSubscript:@"punchoutUrl"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  errorDetail = [(_INPBOpenSettingIntentResponse *)self errorDetail];
  errorDetail2 = [equalCopy errorDetail];
  if ((errorDetail != 0) == (errorDetail2 == 0))
  {
    goto LABEL_11;
  }

  errorDetail3 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
  if (errorDetail3)
  {
    v8 = errorDetail3;
    errorDetail4 = [(_INPBOpenSettingIntentResponse *)self errorDetail];
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

  errorDetail = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
  errorDetail2 = [equalCopy punchoutUrl];
  if ((errorDetail != 0) != (errorDetail2 == 0))
  {
    punchoutUrl = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    if (!punchoutUrl)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = punchoutUrl;
    punchoutUrl2 = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];
    punchoutUrl3 = [equalCopy punchoutUrl];
    v16 = [punchoutUrl2 isEqual:punchoutUrl3];

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
  v5 = [+[_INPBOpenSettingIntentResponse allocWithZone:](_INPBOpenSettingIntentResponse init];
  v6 = [(NSString *)self->_errorDetail copyWithZone:zone];
  [(_INPBOpenSettingIntentResponse *)v5 setErrorDetail:v6];

  v7 = [(NSString *)self->_punchoutUrl copyWithZone:zone];
  [(_INPBOpenSettingIntentResponse *)v5 setPunchoutUrl:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBOpenSettingIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBOpenSettingIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBOpenSettingIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorDetail = [(_INPBOpenSettingIntentResponse *)self errorDetail];

  if (errorDetail)
  {
    errorDetail = self->_errorDetail;
    PBDataWriterWriteStringField();
  }

  punchoutUrl = [(_INPBOpenSettingIntentResponse *)self punchoutUrl];

  if (punchoutUrl)
  {
    punchoutUrl = self->_punchoutUrl;
    PBDataWriterWriteStringField();
  }
}

- (void)setPunchoutUrl:(id)url
{
  v4 = [url copy];
  punchoutUrl = self->_punchoutUrl;
  self->_punchoutUrl = v4;

  MEMORY[0x1EEE66BB8](v4, punchoutUrl);
}

- (void)setErrorDetail:(id)detail
{
  v4 = [detail copy];
  errorDetail = self->_errorDetail;
  self->_errorDetail = v4;

  MEMORY[0x1EEE66BB8](v4, errorDetail);
}

@end