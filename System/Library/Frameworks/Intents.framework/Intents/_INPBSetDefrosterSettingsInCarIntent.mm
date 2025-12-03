@interface _INPBSetDefrosterSettingsInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetDefrosterSettingsInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDefroster:(id)defroster;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDefroster:(int)defroster;
- (void)setHasEnable:(BOOL)enable;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetDefrosterSettingsInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    defroster = [(_INPBSetDefrosterSettingsInCarIntent *)self defroster];
    if ((defroster - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", defroster];
    }

    else
    {
      v7 = off_1E727FE70[(defroster - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"defroster"];
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetDefrosterSettingsInCarIntent enable](self, "enable")}];
    [dictionary setObject:v8 forKeyedSubscript:@"enable"];
  }

  intentMetadata = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    v4 = 2654435761 * self->_defroster;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    v5 = 2654435761 * self->_enable;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  carName = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_19;
  }

  carName3 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
    carName5 = [equalCopy carName];
    v11 = [carName4 isEqual:carName5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  hasDefroster = [(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster];
  if (hasDefroster != [equalCopy hasDefroster])
  {
    goto LABEL_20;
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    if ([equalCopy hasDefroster])
    {
      defroster = self->_defroster;
      if (defroster != [equalCopy defroster])
      {
        goto LABEL_20;
      }
    }
  }

  hasEnable = [(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable];
  if (hasEnable != [equalCopy hasEnable])
  {
    goto LABEL_20;
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    if ([equalCopy hasEnable])
    {
      enable = self->_enable;
      if (enable != [equalCopy enable])
      {
        goto LABEL_20;
      }
    }
  }

  carName = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) != (carName2 == 0))
  {
    intentMetadata = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = intentMetadata;
    intentMetadata2 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v20 = [intentMetadata2 isEqual:intentMetadata3];

    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v21 = 0;
LABEL_21:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetDefrosterSettingsInCarIntent allocWithZone:](_INPBSetDefrosterSettingsInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBSetDefrosterSettingsInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    [(_INPBSetDefrosterSettingsInCarIntent *)v5 setDefroster:[(_INPBSetDefrosterSettingsInCarIntent *)self defroster]];
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    [(_INPBSetDefrosterSettingsInCarIntent *)v5 setEnable:[(_INPBSetDefrosterSettingsInCarIntent *)self enable]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetDefrosterSettingsInCarIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetDefrosterSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetDefrosterSettingsInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetDefrosterSettingsInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    defroster = self->_defroster;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    enable = self->_enable;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];

  v9 = toCopy;
  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasEnable:(BOOL)enable
{
  if (enable)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDefroster:(id)defroster
{
  defrosterCopy = defroster;
  if ([defrosterCopy isEqualToString:@"FRONT"])
  {
    v4 = 1;
  }

  else if ([defrosterCopy isEqualToString:@"REAR"])
  {
    v4 = 2;
  }

  else if ([defrosterCopy isEqualToString:@"ALL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDefroster:(int)defroster
{
  has = self->_has;
  if (defroster == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_defroster = defroster;
  }
}

@end