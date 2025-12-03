@interface _INPBURLValue
- (BOOL)isEqual:(id)equal;
- (_INPBURLValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAbsoluteString:(id)string;
- (void)setScope:(id)scope;
- (void)writeTo:(id)to;
@end

@implementation _INPBURLValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_absoluteString)
  {
    absoluteString = [(_INPBURLValue *)self absoluteString];
    v5 = [absoluteString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"absoluteString"];
  }

  if (self->_scope)
  {
    scope = [(_INPBURLValue *)self scope];
    v7 = [scope copy];
    [dictionary setObject:v7 forKeyedSubscript:@"scope"];
  }

  valueMetadata = [(_INPBURLValue *)self valueMetadata];
  dictionaryRepresentation = [valueMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"valueMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_absoluteString hash];
  v4 = [(NSData *)self->_scope hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  absoluteString = [(_INPBURLValue *)self absoluteString];
  absoluteString2 = [equalCopy absoluteString];
  if ((absoluteString != 0) == (absoluteString2 == 0))
  {
    goto LABEL_16;
  }

  absoluteString3 = [(_INPBURLValue *)self absoluteString];
  if (absoluteString3)
  {
    v8 = absoluteString3;
    absoluteString4 = [(_INPBURLValue *)self absoluteString];
    absoluteString5 = [equalCopy absoluteString];
    v11 = [absoluteString4 isEqual:absoluteString5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  absoluteString = [(_INPBURLValue *)self scope];
  absoluteString2 = [equalCopy scope];
  if ((absoluteString != 0) == (absoluteString2 == 0))
  {
    goto LABEL_16;
  }

  scope = [(_INPBURLValue *)self scope];
  if (scope)
  {
    v13 = scope;
    scope2 = [(_INPBURLValue *)self scope];
    scope3 = [equalCopy scope];
    v16 = [scope2 isEqual:scope3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  absoluteString = [(_INPBURLValue *)self valueMetadata];
  absoluteString2 = [equalCopy valueMetadata];
  if ((absoluteString != 0) != (absoluteString2 == 0))
  {
    valueMetadata = [(_INPBURLValue *)self valueMetadata];
    if (!valueMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = valueMetadata;
    valueMetadata2 = [(_INPBURLValue *)self valueMetadata];
    valueMetadata3 = [equalCopy valueMetadata];
    v21 = [valueMetadata2 isEqual:valueMetadata3];

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
  v5 = [+[_INPBURLValue allocWithZone:](_INPBURLValue init];
  v6 = [(NSString *)self->_absoluteString copyWithZone:zone];
  [(_INPBURLValue *)v5 setAbsoluteString:v6];

  v7 = [(NSData *)self->_scope copyWithZone:zone];
  [(_INPBURLValue *)v5 setScope:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:zone];
  [(_INPBURLValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBURLValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBURLValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBURLValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  absoluteString = [(_INPBURLValue *)self absoluteString];

  if (absoluteString)
  {
    absoluteString = self->_absoluteString;
    PBDataWriterWriteStringField();
  }

  scope = [(_INPBURLValue *)self scope];

  if (scope)
  {
    scope = self->_scope;
    PBDataWriterWriteDataField();
  }

  valueMetadata = [(_INPBURLValue *)self valueMetadata];

  v9 = toCopy;
  if (valueMetadata)
  {
    valueMetadata2 = [(_INPBURLValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setScope:(id)scope
{
  v4 = [scope copy];
  scope = self->_scope;
  self->_scope = v4;

  MEMORY[0x1EEE66BB8](v4, scope);
}

- (void)setAbsoluteString:(id)string
{
  v4 = [string copy];
  absoluteString = self->_absoluteString;
  self->_absoluteString = v4;

  MEMORY[0x1EEE66BB8](v4, absoluteString);
}

@end