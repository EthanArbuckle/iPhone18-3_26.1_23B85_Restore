@interface _INPBIntentResponsePayloadFailure
- (BOOL)isEqual:(id)a3;
- (_INPBIntentResponsePayloadFailure)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setEnumTypeName:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentResponsePayloadFailure

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentResponsePayloadFailure appLaunchRequested](self, "appLaunchRequested")}];
    [v3 setObject:v4 forKeyedSubscript:@"app_launch_requested"];
  }

  if (self->_enumTypeName)
  {
    v5 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"enum_type_name"];
  }

  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBIntentResponsePayloadFailure errorCode](self, "errorCode")}];
    [v3 setObject:v7 forKeyedSubscript:@"error_code"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = [(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested];
  if (v5 != [v4 hasAppLaunchRequested])
  {
    goto LABEL_13;
  }

  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    if ([v4 hasAppLaunchRequested])
    {
      appLaunchRequested = self->_appLaunchRequested;
      if (appLaunchRequested != [v4 appLaunchRequested])
      {
        goto LABEL_13;
      }
    }
  }

  v7 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
  v8 = [v4 enumTypeName];
  v9 = v8;
  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
    if (v10)
    {
      v11 = v10;
      v12 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];
      v13 = [v4 enumTypeName];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v15 = [(_INPBIntentResponsePayloadFailure *)self hasErrorCode];
    if (v15 == [v4 hasErrorCode])
    {
      if (!-[_INPBIntentResponsePayloadFailure hasErrorCode](self, "hasErrorCode") || ![v4 hasErrorCode] || (errorCode = self->_errorCode, errorCode == objc_msgSend(v4, "errorCode")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentResponsePayloadFailure allocWithZone:](_INPBIntentResponsePayloadFailure init];
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    [(_INPBIntentResponsePayloadFailure *)v5 setAppLaunchRequested:[(_INPBIntentResponsePayloadFailure *)self appLaunchRequested]];
  }

  v6 = [(NSString *)self->_enumTypeName copyWithZone:a3];
  [(_INPBIntentResponsePayloadFailure *)v5 setEnumTypeName:v6];

  if ([(_INPBIntentResponsePayloadFailure *)self hasErrorCode])
  {
    [(_INPBIntentResponsePayloadFailure *)v5 setErrorCode:[(_INPBIntentResponsePayloadFailure *)self errorCode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentResponsePayloadFailure *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentResponsePayloadFailure)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentResponsePayloadFailure *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBIntentResponsePayloadFailure *)self hasAppLaunchRequested])
  {
    appLaunchRequested = self->_appLaunchRequested;
    PBDataWriterWriteBOOLField();
  }

  v5 = [(_INPBIntentResponsePayloadFailure *)self enumTypeName];

  if (v5)
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

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setEnumTypeName:(id)a3
{
  v4 = [a3 copy];
  enumTypeName = self->_enumTypeName;
  self->_enumTypeName = v4;

  MEMORY[0x1EEE66BB8](v4, enumTypeName);
}

@end