@interface _INPBSetProfileInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetProfileInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetProfileInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBSetProfileInCarIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSetProfileInCarIntent defaultProfile](self, "defaultProfile")}];
    [dictionary setObject:v6 forKeyedSubscript:@"defaultProfile"];
  }

  intentMetadata = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  profileName = [(_INPBSetProfileInCarIntent *)self profileName];
  dictionaryRepresentation3 = [profileName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"profileName"];

  profileNumber = [(_INPBSetProfileInCarIntent *)self profileNumber];
  dictionaryRepresentation4 = [profileNumber dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"profileNumber"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  carName = [(_INPBSetProfileInCarIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_25;
  }

  carName3 = [(_INPBSetProfileInCarIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBSetProfileInCarIntent *)self carName];
    carName5 = [equalCopy carName];
    v11 = [carName4 isEqual:carName5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasDefaultProfile = [(_INPBSetProfileInCarIntent *)self hasDefaultProfile];
  if (hasDefaultProfile != [equalCopy hasDefaultProfile])
  {
    goto LABEL_26;
  }

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    if ([equalCopy hasDefaultProfile])
    {
      defaultProfile = self->_defaultProfile;
      if (defaultProfile != [equalCopy defaultProfile])
      {
        goto LABEL_26;
      }
    }
  }

  carName = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata = [(_INPBSetProfileInCarIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v15 = intentMetadata;
    intentMetadata2 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  carName = [(_INPBSetProfileInCarIntent *)self profileName];
  carName2 = [equalCopy profileName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_25;
  }

  profileName = [(_INPBSetProfileInCarIntent *)self profileName];
  if (profileName)
  {
    v20 = profileName;
    profileName2 = [(_INPBSetProfileInCarIntent *)self profileName];
    profileName3 = [equalCopy profileName];
    v23 = [profileName2 isEqual:profileName3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  carName = [(_INPBSetProfileInCarIntent *)self profileNumber];
  carName2 = [equalCopy profileNumber];
  if ((carName != 0) != (carName2 == 0))
  {
    profileNumber = [(_INPBSetProfileInCarIntent *)self profileNumber];
    if (!profileNumber)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = profileNumber;
    profileNumber2 = [(_INPBSetProfileInCarIntent *)self profileNumber];
    profileNumber3 = [equalCopy profileNumber];
    v28 = [profileNumber2 isEqual:profileNumber3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetProfileInCarIntent allocWithZone:](_INPBSetProfileInCarIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBSetProfileInCarIntent *)v5 setCarName:v6];

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    [(_INPBSetProfileInCarIntent *)v5 setDefaultProfile:[(_INPBSetProfileInCarIntent *)self defaultProfile]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetProfileInCarIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBString *)self->_profileName copyWithZone:zone];
  [(_INPBSetProfileInCarIntent *)v5 setProfileName:v8];

  v9 = [(_INPBInteger *)self->_profileNumber copyWithZone:zone];
  [(_INPBSetProfileInCarIntent *)v5 setProfileNumber:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetProfileInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetProfileInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetProfileInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBSetProfileInCarIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBSetProfileInCarIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetProfileInCarIntent *)self hasDefaultProfile])
  {
    defaultProfile = self->_defaultProfile;
    PBDataWriterWriteBOOLField();
  }

  intentMetadata = [(_INPBSetProfileInCarIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetProfileInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  profileName = [(_INPBSetProfileInCarIntent *)self profileName];

  if (profileName)
  {
    profileName2 = [(_INPBSetProfileInCarIntent *)self profileName];
    PBDataWriterWriteSubmessage();
  }

  profileNumber = [(_INPBSetProfileInCarIntent *)self profileNumber];

  v12 = toCopy;
  if (profileNumber)
  {
    profileNumber2 = [(_INPBSetProfileInCarIntent *)self profileNumber];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

@end