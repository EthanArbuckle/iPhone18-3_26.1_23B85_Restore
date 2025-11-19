@interface _INPBMediaSubItem
- (BOOL)isEqual:(id)a3;
- (_INPBMediaSubItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setAssetInfo:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMediaSubItem

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_assetInfo)
  {
    v4 = [(_INPBMediaSubItem *)self assetInfo];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"assetInfo"];
  }

  if (self->_identifier)
  {
    v6 = [(_INPBMediaSubItem *)self identifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"identifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBMediaSubItem *)self assetInfo];
  v6 = [v4 assetInfo];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBMediaSubItem *)self assetInfo];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMediaSubItem *)self assetInfo];
    v10 = [v4 assetInfo];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBMediaSubItem *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBMediaSubItem *)self identifier];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBMediaSubItem *)self identifier];
    v15 = [v4 identifier];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMediaSubItem allocWithZone:](_INPBMediaSubItem init];
  v6 = [(NSString *)self->_assetInfo copyWithZone:a3];
  [(_INPBMediaSubItem *)v5 setAssetInfo:v6];

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBMediaSubItem *)v5 setIdentifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMediaSubItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMediaSubItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMediaSubItem *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBMediaSubItem *)self assetInfo];

  if (v4)
  {
    assetInfo = self->_assetInfo;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBMediaSubItem *)self identifier];

  if (v6)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setAssetInfo:(id)a3
{
  v4 = [a3 copy];
  assetInfo = self->_assetInfo;
  self->_assetInfo = v4;

  MEMORY[0x1EEE66BB8](v4, assetInfo);
}

@end