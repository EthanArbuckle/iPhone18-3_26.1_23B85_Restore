@interface _INPBResolveObjectReferenceResponse
- (BOOL)isEqual:(id)a3;
- (_INPBResolveObjectReferenceResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setResolvedReference:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBResolveObjectReferenceResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_resolvedReference)
  {
    v4 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"resolvedReference"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
    v6 = [v4 resolvedReference];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];
      v11 = [v4 resolvedReference];
      v12 = [v10 isEqual:v11];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBResolveObjectReferenceResponse allocWithZone:](_INPBResolveObjectReferenceResponse init];
  v6 = [(NSData *)self->_resolvedReference copyWithZone:a3];
  [(_INPBResolveObjectReferenceResponse *)v5 setResolvedReference:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBResolveObjectReferenceResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBResolveObjectReferenceResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBResolveObjectReferenceResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_INPBResolveObjectReferenceResponse *)self resolvedReference];

  if (v4)
  {
    resolvedReference = self->_resolvedReference;
    PBDataWriterWriteDataField();
  }
}

- (void)setResolvedReference:(id)a3
{
  v4 = [a3 copy];
  resolvedReference = self->_resolvedReference;
  self->_resolvedReference = v4;

  MEMORY[0x1EEE66BB8](v4, resolvedReference);
}

@end