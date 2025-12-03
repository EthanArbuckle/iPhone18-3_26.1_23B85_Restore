@interface _INPBResolveObjectReferenceIntent
- (BOOL)isEqual:(id)equal;
- (_INPBResolveObjectReferenceIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setReference:(id)reference;
- (void)writeTo:(id)to;
@end

@implementation _INPBResolveObjectReferenceIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_reference)
  {
    reference = [(_INPBResolveObjectReferenceIntent *)self reference];
    v7 = [reference copy];
    [dictionary setObject:v7 forKeyedSubscript:@"reference"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBResolveObjectReferenceIntent *)self reference];
  intentMetadata2 = [equalCopy reference];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    reference = [(_INPBResolveObjectReferenceIntent *)self reference];
    if (!reference)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = reference;
    reference2 = [(_INPBResolveObjectReferenceIntent *)self reference];
    reference3 = [equalCopy reference];
    v16 = [reference2 isEqual:reference3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBResolveObjectReferenceIntent allocWithZone:](_INPBResolveObjectReferenceIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBResolveObjectReferenceIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSData *)self->_reference copyWithZone:zone];
  [(_INPBResolveObjectReferenceIntent *)v5 setReference:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBResolveObjectReferenceIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBResolveObjectReferenceIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBResolveObjectReferenceIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  intentMetadata = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBResolveObjectReferenceIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  reference = [(_INPBResolveObjectReferenceIntent *)self reference];

  if (reference)
  {
    reference = self->_reference;
    PBDataWriterWriteDataField();
  }
}

- (void)setReference:(id)reference
{
  v4 = [reference copy];
  reference = self->_reference;
  self->_reference = v4;

  MEMORY[0x1EEE66BB8](v4, reference);
}

@end