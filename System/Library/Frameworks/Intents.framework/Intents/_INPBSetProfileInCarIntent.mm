@interface _INPBSetProfileInCarIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetProfileInCarIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetProfileInCarIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetProfileInCarIntent *)self carName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"carName"];

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetProfileInCarIntent defaultProfile](self, "defaultProfile")}];
    [v3 setObject:v6 forKeyedSubscript:@"defaultProfile"];
  }

  v7 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"intentMetadata"];

  v9 = [(_INPBSetProfileInCarIntent *)self profileName];
  v10 = [v9 dictionaryRepresentation];
  [v3 setObject:v10 forKeyedSubscript:@"profileName"];

  v11 = [(_INPBSetProfileInCarIntent *)self profileNumber];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"profileNumber"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    v4 = 2654435761 * self->_defaultProfile;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v7 = v5 ^ v6 ^ [(_INPBString *)self->_profileName hash];
  return v7 ^ [(_INPBInteger *)self->_profileNumber hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBSetProfileInCarIntent *)self carName];
  v6 = [v4 carName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v7 = [(_INPBSetProfileInCarIntent *)self carName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetProfileInCarIntent *)self carName];
    v10 = [v4 carName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v12 = [(_INPBSetProfileInCarIntent *)self hasDefaultProfile];
  if (v12 != [v4 hasDefaultProfile])
  {
    goto LABEL_26;
  }

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    if ([v4 hasDefaultProfile])
    {
      defaultProfile = self->_defaultProfile;
      if (defaultProfile != [v4 defaultProfile])
      {
        goto LABEL_26;
      }
    }
  }

  v5 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v14 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
    v17 = [v4 intentMetadata];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetProfileInCarIntent *)self profileName];
  v6 = [v4 profileName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBSetProfileInCarIntent *)self profileName];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSetProfileInCarIntent *)self profileName];
    v22 = [v4 profileName];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetProfileInCarIntent *)self profileNumber];
  v6 = [v4 profileNumber];
  if ((v5 != 0) != (v6 == 0))
  {
    v24 = [(_INPBSetProfileInCarIntent *)self profileNumber];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBSetProfileInCarIntent *)self profileNumber];
    v27 = [v4 profileNumber];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetProfileInCarIntent allocWithZone:](_INPBSetProfileInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
  [(_INPBSetProfileInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    [(_INPBSetProfileInCarIntent *)v5 setDefaultProfile:[(_INPBSetProfileInCarIntent *)self defaultProfile]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetProfileInCarIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBString *)self->_profileName copyWithZone:a3];
  [(_INPBSetProfileInCarIntent *)v5 setProfileName:v8];

  v9 = [(_INPBInteger *)self->_profileNumber copyWithZone:a3];
  [(_INPBSetProfileInCarIntent *)v5 setProfileNumber:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetProfileInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetProfileInCarIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetProfileInCarIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(_INPBSetProfileInCarIntent *)self carName];

  if (v4)
  {
    v5 = [(_INPBSetProfileInCarIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    defaultProfile = self->_defaultProfile;
    PBDataWriterWriteBOOLField();
  }

  v7 = [(_INPBSetProfileInCarIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSetProfileInCarIntent *)self profileName];

  if (v9)
  {
    v10 = [(_INPBSetProfileInCarIntent *)self profileName];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSetProfileInCarIntent *)self profileNumber];

  v12 = v14;
  if (v11)
  {
    v13 = [(_INPBSetProfileInCarIntent *)self profileNumber];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

@end