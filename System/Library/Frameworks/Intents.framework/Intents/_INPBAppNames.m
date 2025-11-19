@interface _INPBAppNames
- (BOOL)isEqual:(id)a3;
- (_INPBAppNames)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAppName:(id)a3;
- (void)setAxSpokenName:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setSpotlightName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAppNames

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appName)
  {
    v4 = [(_INPBAppNames *)self appName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"app_name"];
  }

  if (self->_axSpokenName)
  {
    v6 = [(_INPBAppNames *)self axSpokenName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"ax_spoken_name"];
  }

  if (self->_displayName)
  {
    v8 = [(_INPBAppNames *)self displayName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"display_name"];
  }

  if (self->_spotlightName)
  {
    v10 = [(_INPBAppNames *)self spotlightName];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"spotlight_name"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appName hash];
  v4 = [(NSString *)self->_axSpokenName hash]^ v3;
  v5 = [(NSString *)self->_displayName hash];
  return v4 ^ v5 ^ [(NSString *)self->_spotlightName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBAppNames *)self appName];
  v6 = [v4 appName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBAppNames *)self appName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAppNames *)self appName];
    v10 = [v4 appName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppNames *)self axSpokenName];
  v6 = [v4 axSpokenName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBAppNames *)self axSpokenName];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAppNames *)self axSpokenName];
    v15 = [v4 axSpokenName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppNames *)self displayName];
  v6 = [v4 displayName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBAppNames *)self displayName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBAppNames *)self displayName];
    v20 = [v4 displayName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppNames *)self spotlightName];
  v6 = [v4 spotlightName];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBAppNames *)self spotlightName];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBAppNames *)self spotlightName];
    v25 = [v4 spotlightName];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAppNames allocWithZone:](_INPBAppNames init];
  v6 = [(NSString *)self->_appName copyWithZone:a3];
  [(_INPBAppNames *)v5 setAppName:v6];

  v7 = [(NSString *)self->_axSpokenName copyWithZone:a3];
  [(_INPBAppNames *)v5 setAxSpokenName:v7];

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  [(_INPBAppNames *)v5 setDisplayName:v8];

  v9 = [(NSString *)self->_spotlightName copyWithZone:a3];
  [(_INPBAppNames *)v5 setSpotlightName:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAppNames *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAppNames)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAppNames *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBAppNames *)self appName];

  if (v4)
  {
    appName = self->_appName;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBAppNames *)self axSpokenName];

  if (v6)
  {
    axSpokenName = self->_axSpokenName;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBAppNames *)self displayName];

  if (v8)
  {
    displayName = self->_displayName;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBAppNames *)self spotlightName];

  v11 = v13;
  if (v10)
  {
    spotlightName = self->_spotlightName;
    PBDataWriterWriteStringField();
    v11 = v13;
  }
}

- (void)setSpotlightName:(id)a3
{
  v4 = [a3 copy];
  spotlightName = self->_spotlightName;
  self->_spotlightName = v4;

  MEMORY[0x1EEE66BB8](v4, spotlightName);
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (void)setAxSpokenName:(id)a3
{
  v4 = [a3 copy];
  axSpokenName = self->_axSpokenName;
  self->_axSpokenName = v4;

  MEMORY[0x1EEE66BB8](v4, axSpokenName);
}

- (void)setAppName:(id)a3
{
  v4 = [a3 copy];
  appName = self->_appName;
  self->_appName = v4;

  MEMORY[0x1EEE66BB8](v4, appName);
}

@end