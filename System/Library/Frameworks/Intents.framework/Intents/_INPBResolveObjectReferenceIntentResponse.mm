@interface _INPBResolveObjectReferenceIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBResolveObjectReferenceIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setResolvedReferences:(id)references;
- (void)writeTo:(id)to;
@end

@implementation _INPBResolveObjectReferenceIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_resolvedReferences)
  {
    resolvedReferences = [(_INPBResolveObjectReferenceIntentResponse *)self resolvedReferences];
    v5 = [resolvedReferences copy];
    [dictionary setObject:v5 forKeyedSubscript:@"resolvedReferences"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resolvedReferences = [(_INPBResolveObjectReferenceIntentResponse *)self resolvedReferences];
    resolvedReferences2 = [equalCopy resolvedReferences];
    v7 = resolvedReferences2;
    if ((resolvedReferences != 0) != (resolvedReferences2 == 0))
    {
      resolvedReferences3 = [(_INPBResolveObjectReferenceIntentResponse *)self resolvedReferences];
      if (!resolvedReferences3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = resolvedReferences3;
      resolvedReferences4 = [(_INPBResolveObjectReferenceIntentResponse *)self resolvedReferences];
      resolvedReferences5 = [equalCopy resolvedReferences];
      v12 = [resolvedReferences4 isEqual:resolvedReferences5];

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
  v5 = [+[_INPBResolveObjectReferenceIntentResponse allocWithZone:](_INPBResolveObjectReferenceIntentResponse init];
  v6 = [(NSData *)self->_resolvedReferences copyWithZone:zone];
  [(_INPBResolveObjectReferenceIntentResponse *)v5 setResolvedReferences:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBResolveObjectReferenceIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBResolveObjectReferenceIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBResolveObjectReferenceIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  resolvedReferences = [(_INPBResolveObjectReferenceIntentResponse *)self resolvedReferences];

  if (resolvedReferences)
  {
    resolvedReferences = self->_resolvedReferences;
    PBDataWriterWriteDataField();
  }
}

- (void)setResolvedReferences:(id)references
{
  v4 = [references copy];
  resolvedReferences = self->_resolvedReferences;
  self->_resolvedReferences = v4;

  MEMORY[0x1EEE66BB8](v4, resolvedReferences);
}

@end