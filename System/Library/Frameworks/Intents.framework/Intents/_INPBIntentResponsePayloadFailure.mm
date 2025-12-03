@interface _INPBIntentResponsePayloadFailure
- (BOOL)isEqual:(id)equal;
- (_INPBIntentResponsePayloadFailure)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEnumTypeName:(id)name;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentResponsePayloadFailure

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponsePayloadFailure appLaunchRequested](self, "appLaunchRequested")}];
    [dictionary setObject:v4 forKeyedSubscript:@"app_launch_requested"];
  }

  if (self->_enumTypeName)
  {
    enumTypeName = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
    v6 = [enumTypeName copy];
    [dictionary setObject:v6 forKeyedSubscript:@"enum_type_name"];
  }

  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBIntentResponsePayloadFailure errorCode](self, "errorCode")}];
    [dictionary setObject:v7 forKeyedSubscript:@"error_code"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    v3 = 2654435761 * self->_appLaunchRequested;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_enumTypeName hash];
  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  hasAppLaunchRequested = [(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested];
  if (hasAppLaunchRequested != [equalCopy hasAppLaunchRequested])
  {
    goto LABEL_13;
  }

  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    if ([equalCopy hasAppLaunchRequested])
    {
      appLaunchRequested = self->_appLaunchRequested;
      if (appLaunchRequested != [equalCopy appLaunchRequested])
      {
        goto LABEL_13;
      }
    }
  }

  enumTypeName = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
  enumTypeName2 = [equalCopy enumTypeName];
  v9 = enumTypeName2;
  if ((enumTypeName != 0) != (enumTypeName2 == 0))
  {
    enumTypeName3 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
    if (enumTypeName3)
    {
      v11 = enumTypeName3;
      enumTypeName4 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
      enumTypeName5 = [equalCopy enumTypeName];
      v14 = [enumTypeName4 isEqual:enumTypeName5];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    hasErrorCode = [(_INPBIntentResponsePayloadFailure *)self hasErrorCode];
    if (hasErrorCode == [equalCopy hasErrorCode])
    {
      if (!-[_INPBIntentResponsePayloadFailure hasErrorCode](self, "hasErrorCode") || ![equalCopy hasErrorCode] || (errorCode = self->_errorCode, errorCode == objc_msgSend(equalCopy, "errorCode")))
      {
        v16 = 1;
        goto LABEL_14;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentResponsePayloadFailure allocWithZone:](_INPBIntentResponsePayloadFailure init];
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    [(_INPBIntentResponsePayloadFailure *)v5 setAppLaunchRequested:[(_INPBIntentResponsePayloadFailure *)self appLaunchRequested]];
  }

  v6 = [(NSString *)self->_enumTypeName copyWithZone:zone];
  [(_INPBIntentResponsePayloadFailure *)v5 setEnumTypeName:v6];

  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    [(_INPBIntentResponsePayloadFailure *)v5 setErrorCode:[(_INPBIntentResponsePayloadFailure *)self errorCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentResponsePayloadFailure *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentResponsePayloadFailure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentResponsePayloadFailure *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    appLaunchRequested = self->_appLaunchRequested;
    PBDataWriterWriteBOOLField();
  }

  enumTypeName = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];

  if (enumTypeName)
  {
    enumTypeName = self->_enumTypeName;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setEnumTypeName:(id)name
{
  v4 = [name copy];
  enumTypeName = self->_enumTypeName;
  self->_enumTypeName = v4;

  MEMORY[0x1EEE66BB8](v4, enumTypeName);
}

@end