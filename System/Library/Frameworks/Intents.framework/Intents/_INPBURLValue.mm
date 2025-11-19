@interface _INPBURLValue
- (BOOL)isEqual:(id)a3;
- (_INPBURLValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAbsoluteString:(id)a3;
- (void)setScope:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBURLValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_absoluteString)
  {
    v4 = [(_INPBURLValue *)self absoluteString];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"absoluteString"];
  }

  if (self->_scope)
  {
    v6 = [(_INPBURLValue *)self scope];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"scope"];
  }

  v8 = [(_INPBURLValue *)self valueMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_absoluteString hash];
  v4 = [(NSData *)self->_scope hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBURLValue *)self absoluteString];
  v6 = [v4 absoluteString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBURLValue *)self absoluteString];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBURLValue *)self absoluteString];
    v10 = [v4 absoluteString];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBURLValue *)self scope];
  v6 = [v4 scope];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBURLValue *)self scope];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBURLValue *)self scope];
    v15 = [v4 scope];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBURLValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBURLValue *)self valueMetadata];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBURLValue *)self valueMetadata];
    v20 = [v4 valueMetadata];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBURLValue allocWithZone:](_INPBURLValue init];
  v6 = [(NSString *)self->_absoluteString copyWithZone:a3];
  [(_INPBURLValue *)v5 setAbsoluteString:v6];

  v7 = [(NSData *)self->_scope copyWithZone:a3];
  [(_INPBURLValue *)v5 setScope:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBURLValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBURLValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBURLValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBURLValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBURLValue *)self absoluteString];

  if (v4)
  {
    absoluteString = self->_absoluteString;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBURLValue *)self scope];

  if (v6)
  {
    scope = self->_scope;
    PBDataWriterWriteDataField();
  }

  v8 = [(_INPBURLValue *)self valueMetadata];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBURLValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setScope:(id)a3
{
  v4 = [a3 copy];
  scope = self->_scope;
  self->_scope = v4;

  MEMORY[0x1EEE66BB8](v4, scope);
}

- (void)setAbsoluteString:(id)a3
{
  v4 = [a3 copy];
  absoluteString = self->_absoluteString;
  self->_absoluteString = v4;

  MEMORY[0x1EEE66BB8](v4, absoluteString);
}

@end