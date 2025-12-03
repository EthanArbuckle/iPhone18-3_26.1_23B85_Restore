@interface _INPBResolveObjectReferenceResponse
- (BOOL)isEqual:(id)equal;
- (_INPBResolveObjectReferenceResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setResolvedReference:(id)reference;
- (void)writeTo:(id)to;
@end

@implementation _INPBResolveObjectReferenceResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_resolvedReference)
  {
    resolvedReference = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
    v5 = [resolvedReference copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resolvedReference"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resolvedReference = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
    resolvedReference2 = [equalCopy resolvedReference];
    v7 = resolvedReference2;
    if ((resolvedReference != 0) != (resolvedReference2 == 0))
    {
      resolvedReference3 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
      if (!resolvedReference3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resolvedReference3;
      resolvedReference4 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
      resolvedReference5 = [equalCopy resolvedReference];
      v12 = [resolvedReference4 isEqual:resolvedReference5];

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
  v5 = [+[_INPBResolveObjectReferenceResponse allocWithZone:](_INPBResolveObjectReferenceResponse init];
  v6 = [(NSData *)self->_resolvedReference copyWithZone:zone];
  [(_INPBResolveObjectReferenceResponse *)v5 setResolvedReference:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBResolveObjectReferenceResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBResolveObjectReferenceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBResolveObjectReferenceResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resolvedReference = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];

  if (resolvedReference)
  {
    resolvedReference = self->_resolvedReference;
    PBDataWriterWriteDataField();
  }
}

- (void)setResolvedReference:(id)reference
{
  v4 = [reference copy];
  resolvedReference = self->_resolvedReference;
  self->_resolvedReference = v4;

  MEMORY[0x1EEE66BB8](v4, resolvedReference);
}

@end