@interface _INPBUncompressFileIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBUncompressFileIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBUncompressFileIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entityName = [(_INPBUncompressFileIntentResponse *)self entityName];
  dictionaryRepresentation = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityName"];

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBUncompressFileIntentResponse success](self, "success")}];
    [dictionary setObject:v6 forKeyedSubscript:@"success"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    v4 = 2654435761 * self->_success;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  entityName = [(_INPBUncompressFileIntentResponse *)self entityName];
  entityName2 = [equalCopy entityName];
  v7 = entityName2;
  if ((entityName != 0) != (entityName2 == 0))
  {
    entityName3 = [(_INPBUncompressFileIntentResponse *)self entityName];
    if (entityName3)
    {
      v9 = entityName3;
      entityName4 = [(_INPBUncompressFileIntentResponse *)self entityName];
      entityName5 = [equalCopy entityName];
      v12 = [entityName4 isEqual:entityName5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasSuccess = [(_INPBUncompressFileIntentResponse *)self hasSuccess];
    if (hasSuccess == [equalCopy hasSuccess])
    {
      if (!-[_INPBUncompressFileIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBUncompressFileIntentResponse allocWithZone:](_INPBUncompressFileIntentResponse init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBUncompressFileIntentResponse *)v5 setEntityName:v6];

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    [(_INPBUncompressFileIntentResponse *)v5 setSuccess:[(_INPBUncompressFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUncompressFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUncompressFileIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUncompressFileIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityName = [(_INPBUncompressFileIntentResponse *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBUncompressFileIntentResponse *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBUncompressFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }
}

@end