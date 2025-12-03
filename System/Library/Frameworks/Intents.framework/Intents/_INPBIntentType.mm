@interface _INPBIntentType
- (BOOL)isEqual:(id)equal;
- (_INPBIntentType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentType

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_type)
  {
    type = [(_INPBIntentType *)self type];
    v5 = [type copy];
    [dictionary setObject:v5 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    type = [(_INPBIntentType *)self type];
    type2 = [equalCopy type];
    v7 = type2;
    if ((type != 0) != (type2 == 0))
    {
      type3 = [(_INPBIntentType *)self type];
      if (!type3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = type3;
      type4 = [(_INPBIntentType *)self type];
      type5 = [equalCopy type];
      v12 = [type4 isEqual:type5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentType allocWithZone:](_INPBIntentType init];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  [(_INPBIntentType *)v5 setType:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentType *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentType *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = [(_INPBIntentType *)self type];

  if (type)
  {
    type = self->_type;
    PBDataWriterWriteStringField();
  }
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8](v4, type);
}

@end