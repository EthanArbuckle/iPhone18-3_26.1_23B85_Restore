@interface _INPBAppNames
- (BOOL)isEqual:(id)equal;
- (_INPBAppNames)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAppName:(id)name;
- (void)setAxSpokenName:(id)name;
- (void)setDisplayName:(id)name;
- (void)setSpotlightName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppNames

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appName)
  {
    appName = [(_INPBAppNames *)self appName];
    v5 = [appName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"app_name"];
  }

  if (self->_axSpokenName)
  {
    axSpokenName = [(_INPBAppNames *)self axSpokenName];
    v7 = [axSpokenName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"ax_spoken_name"];
  }

  if (self->_displayName)
  {
    displayName = [(_INPBAppNames *)self displayName];
    v9 = [displayName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"display_name"];
  }

  if (self->_spotlightName)
  {
    spotlightName = [(_INPBAppNames *)self spotlightName];
    v11 = [spotlightName copy];
    [dictionary setObject:v11 forKeyedSubscript:@"spotlight_name"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appName hash];
  v4 = [(NSString *)self->_axSpokenName hash]^ v3;
  v5 = [(NSString *)self->_displayName hash];
  return v4 ^ v5 ^ [(NSString *)self->_spotlightName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  appName = [(_INPBAppNames *)self appName];
  appName2 = [equalCopy appName];
  if ((appName != 0) == (appName2 == 0))
  {
    goto LABEL_21;
  }

  appName3 = [(_INPBAppNames *)self appName];
  if (appName3)
  {
    v8 = appName3;
    appName4 = [(_INPBAppNames *)self appName];
    appName5 = [equalCopy appName];
    v11 = [appName4 isEqual:appName5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appName = [(_INPBAppNames *)self axSpokenName];
  appName2 = [equalCopy axSpokenName];
  if ((appName != 0) == (appName2 == 0))
  {
    goto LABEL_21;
  }

  axSpokenName = [(_INPBAppNames *)self axSpokenName];
  if (axSpokenName)
  {
    v13 = axSpokenName;
    axSpokenName2 = [(_INPBAppNames *)self axSpokenName];
    axSpokenName3 = [equalCopy axSpokenName];
    v16 = [axSpokenName2 isEqual:axSpokenName3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appName = [(_INPBAppNames *)self displayName];
  appName2 = [equalCopy displayName];
  if ((appName != 0) == (appName2 == 0))
  {
    goto LABEL_21;
  }

  displayName = [(_INPBAppNames *)self displayName];
  if (displayName)
  {
    v18 = displayName;
    displayName2 = [(_INPBAppNames *)self displayName];
    displayName3 = [equalCopy displayName];
    v21 = [displayName2 isEqual:displayName3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  appName = [(_INPBAppNames *)self spotlightName];
  appName2 = [equalCopy spotlightName];
  if ((appName != 0) != (appName2 == 0))
  {
    spotlightName = [(_INPBAppNames *)self spotlightName];
    if (!spotlightName)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = spotlightName;
    spotlightName2 = [(_INPBAppNames *)self spotlightName];
    spotlightName3 = [equalCopy spotlightName];
    v26 = [spotlightName2 isEqual:spotlightName3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAppNames allocWithZone:](_INPBAppNames init];
  v6 = [(NSString *)self->_appName copyWithZone:zone];
  [(_INPBAppNames *)v5 setAppName:v6];

  v7 = [(NSString *)self->_axSpokenName copyWithZone:zone];
  [(_INPBAppNames *)v5 setAxSpokenName:v7];

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  [(_INPBAppNames *)v5 setDisplayName:v8];

  v9 = [(NSString *)self->_spotlightName copyWithZone:zone];
  [(_INPBAppNames *)v5 setSpotlightName:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppNames *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppNames)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppNames *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appName = [(_INPBAppNames *)self appName];

  if (appName)
  {
    appName = self->_appName;
    PBDataWriterWriteStringField();
  }

  axSpokenName = [(_INPBAppNames *)self axSpokenName];

  if (axSpokenName)
  {
    axSpokenName = self->_axSpokenName;
    PBDataWriterWriteStringField();
  }

  displayName = [(_INPBAppNames *)self displayName];

  if (displayName)
  {
    displayName = self->_displayName;
    PBDataWriterWriteStringField();
  }

  spotlightName = [(_INPBAppNames *)self spotlightName];

  v11 = toCopy;
  if (spotlightName)
  {
    spotlightName = self->_spotlightName;
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setSpotlightName:(id)name
{
  v4 = [name copy];
  spotlightName = self->_spotlightName;
  self->_spotlightName = v4;

  MEMORY[0x1EEE66BB8](v4, spotlightName);
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (void)setAxSpokenName:(id)name
{
  v4 = [name copy];
  axSpokenName = self->_axSpokenName;
  self->_axSpokenName = v4;

  MEMORY[0x1EEE66BB8](v4, axSpokenName);
}

- (void)setAppName:(id)name
{
  v4 = [name copy];
  appName = self->_appName;
  self->_appName = v4;

  MEMORY[0x1EEE66BB8](v4, appName);
}

@end