@interface _INPBSaveProfileInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSaveProfileInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSaveProfileInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBSaveProfileInCarIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  profileName = [(_INPBSaveProfileInCarIntent *)self profileName];
  dictionaryRepresentation2 = [profileName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"profileName"];

  profileNumber = [(_INPBSaveProfileInCarIntent *)self profileNumber];
  dictionaryRepresentation3 = [profileNumber dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"profileNumber"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBString *)self->_profileName hash]^ v3;
  return v4 ^ [(_INPBInteger *)self->_profileNumber hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  intentMetadata = [(_INPBSaveProfileInCarIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata3 = [(_INPBSaveProfileInCarIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBSaveProfileInCarIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveProfileInCarIntent *)self profileName];
  intentMetadata2 = [equalCopy profileName];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_16;
  }

  profileName = [(_INPBSaveProfileInCarIntent *)self profileName];
  if (profileName)
  {
    v13 = profileName;
    profileName2 = [(_INPBSaveProfileInCarIntent *)self profileName];
    profileName3 = [equalCopy profileName];
    v16 = [profileName2 isEqual:profileName3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBSaveProfileInCarIntent *)self profileNumber];
  intentMetadata2 = [equalCopy profileNumber];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    profileNumber = [(_INPBSaveProfileInCarIntent *)self profileNumber];
    if (!profileNumber)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = profileNumber;
    profileNumber2 = [(_INPBSaveProfileInCarIntent *)self profileNumber];
    profileNumber3 = [equalCopy profileNumber];
    v21 = [profileNumber2 isEqual:profileNumber3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSaveProfileInCarIntent allocWithZone:](_INPBSaveProfileInCarIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSaveProfileInCarIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBString *)self->_profileName copyWithZone:zone];
  [(_INPBSaveProfileInCarIntent *)v5 setProfileName:v7];

  v8 = [(_INPBInteger *)self->_profileNumber copyWithZone:zone];
  [(_INPBSaveProfileInCarIntent *)v5 setProfileNumber:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSaveProfileInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSaveProfileInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSaveProfileInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBSaveProfileInCarIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSaveProfileInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  profileName = [(_INPBSaveProfileInCarIntent *)self profileName];

  if (profileName)
  {
    profileName2 = [(_INPBSaveProfileInCarIntent *)self profileName];
    PBDataWriterWriteSubmessage();
  }

  profileNumber = [(_INPBSaveProfileInCarIntent *)self profileNumber];

  v9 = toCopy;
  if (profileNumber)
  {
    profileNumber2 = [(_INPBSaveProfileInCarIntent *)self profileNumber];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end