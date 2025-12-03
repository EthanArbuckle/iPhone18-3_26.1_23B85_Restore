@interface _INPBGetFileInformationIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetFileInformationIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetFileInformationIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entityName = [(_INPBGetFileInformationIntentResponse *)self entityName];
  dictionaryRepresentation = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityName"];

  property = [(_INPBGetFileInformationIntentResponse *)self property];
  dictionaryRepresentation2 = [property dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"property"];

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetFileInformationIntentResponse success](self, "success")}];
    [dictionary setObject:v8 forKeyedSubscript:@"success"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  v4 = [(_INPBFileProperty *)self->_property hash];
  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    v5 = 2654435761 * self->_success;
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
    goto LABEL_12;
  }

  entityName = [(_INPBGetFileInformationIntentResponse *)self entityName];
  entityName2 = [equalCopy entityName];
  if ((entityName != 0) == (entityName2 == 0))
  {
    goto LABEL_11;
  }

  entityName3 = [(_INPBGetFileInformationIntentResponse *)self entityName];
  if (entityName3)
  {
    v8 = entityName3;
    entityName4 = [(_INPBGetFileInformationIntentResponse *)self entityName];
    entityName5 = [equalCopy entityName];
    v11 = [entityName4 isEqual:entityName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  entityName = [(_INPBGetFileInformationIntentResponse *)self property];
  entityName2 = [equalCopy property];
  if ((entityName != 0) == (entityName2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  property = [(_INPBGetFileInformationIntentResponse *)self property];
  if (property)
  {
    v13 = property;
    property2 = [(_INPBGetFileInformationIntentResponse *)self property];
    property3 = [equalCopy property];
    v16 = [property2 isEqual:property3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasSuccess = [(_INPBGetFileInformationIntentResponse *)self hasSuccess];
  if (hasSuccess == [equalCopy hasSuccess])
  {
    if (!-[_INPBGetFileInformationIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetFileInformationIntentResponse allocWithZone:](_INPBGetFileInformationIntentResponse init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBGetFileInformationIntentResponse *)v5 setEntityName:v6];

  v7 = [(_INPBFileProperty *)self->_property copyWithZone:zone];
  [(_INPBGetFileInformationIntentResponse *)v5 setProperty:v7];

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    [(_INPBGetFileInformationIntentResponse *)v5 setSuccess:[(_INPBGetFileInformationIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetFileInformationIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetFileInformationIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetFileInformationIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityName = [(_INPBGetFileInformationIntentResponse *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBGetFileInformationIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  property = [(_INPBGetFileInformationIntentResponse *)self property];

  if (property)
  {
    property2 = [(_INPBGetFileInformationIntentResponse *)self property];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

@end