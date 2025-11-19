@interface _INPBSetDefrosterSettingsInCarIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetDefrosterSettingsInCarIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDefroster:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDefroster:(int)a3;
- (void)setHasEnable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetDefrosterSettingsInCarIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"carName"];

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    v6 = [(_INPBSetDefrosterSettingsInCarIntent *)self defroster];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E727FE70[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"defroster"];
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetDefrosterSettingsInCarIntent enable](self, "enable")}];
    [v3 setObject:v8 forKeyedSubscript:@"enable"];
  }

  v9 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
  v10 = [v9 dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"intentMetadata"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  v6 = [v4 carName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
    v10 = [v4 carName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v12 = [(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster];
  if (v12 != [v4 hasDefroster])
  {
    goto LABEL_20;
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    if ([v4 hasDefroster])
    {
      defroster = self->_defroster;
      if (defroster != [v4 defroster])
      {
        goto LABEL_20;
      }
    }
  }

  v14 = [(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable];
  if (v14 != [v4 hasEnable])
  {
    goto LABEL_20;
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    if ([v4 hasEnable])
    {
      enable = self->_enable;
      if (enable != [v4 enable])
      {
        goto LABEL_20;
      }
    }
  }

  v5 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v16 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    if (!v16)
    {

LABEL_23:
      v21 = 1;
      goto LABEL_21;
    }

    v17 = v16;
    v18 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    v19 = [v4 intentMetadata];
    v20 = [v18 isEqual:v19];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetDefrosterSettingsInCarIntent allocWithZone:](_INPBSetDefrosterSettingsInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
  [(_INPBSetDefrosterSettingsInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasDefroster])
  {
    [(_INPBSetDefrosterSettingsInCarIntent *)v5 setDefroster:[(_INPBSetDefrosterSettingsInCarIntent *)self defroster]];
  }

  if ([(_INPBSetDefrosterSettingsInCarIntent *)self hasEnable])
  {
    [(_INPBSetDefrosterSettingsInCarIntent *)v5 setEnable:[(_INPBSetDefrosterSettingsInCarIntent *)self enable]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetDefrosterSettingsInCarIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetDefrosterSettingsInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetDefrosterSettingsInCarIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetDefrosterSettingsInCarIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];

  if (v4)
  {
    v5 = [(_INPBSetDefrosterSettingsInCarIntent *)self carName];
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

  v8 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBSetDefrosterSettingsInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasEnable:(BOOL)a3
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

- (int)StringAsDefroster:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FRONT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ALL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDefroster:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_defroster = a3;
  }
}

@end