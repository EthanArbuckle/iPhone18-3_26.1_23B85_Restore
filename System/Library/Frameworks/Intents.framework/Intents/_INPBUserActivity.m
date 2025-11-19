@interface _INPBUserActivity
- (BOOL)isEqual:(id)a3;
- (_INPBUserActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setData:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUri:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBUserActivity

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_data)
  {
    v4 = [(_INPBUserActivity *)self data];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"data"];
  }

  if (self->_title)
  {
    v6 = [(_INPBUserActivity *)self title];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"title"];
  }

  if (self->_uri)
  {
    v8 = [(_INPBUserActivity *)self uri];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"uri"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_data hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  return v4 ^ [(NSString *)self->_uri hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBUserActivity *)self data];
  v6 = [v4 data];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBUserActivity *)self data];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBUserActivity *)self data];
    v10 = [v4 data];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBUserActivity *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBUserActivity *)self title];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBUserActivity *)self title];
    v15 = [v4 title];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBUserActivity *)self uri];
  v6 = [v4 uri];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBUserActivity *)self uri];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBUserActivity *)self uri];
    v20 = [v4 uri];
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
  v5 = [+[_INPBUserActivity allocWithZone:](_INPBUserActivity init];
  v6 = [(NSData *)self->_data copyWithZone:a3];
  [(_INPBUserActivity *)v5 setData:v6];

  v7 = [(NSString *)self->_title copyWithZone:a3];
  [(_INPBUserActivity *)v5 setTitle:v7];

  v8 = [(NSString *)self->_uri copyWithZone:a3];
  [(_INPBUserActivity *)v5 setUri:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBUserActivity *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBUserActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBUserActivity *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBUserActivity *)self data];

  if (v4)
  {
    data = self->_data;
    PBDataWriterWriteDataField();
  }

  v6 = [(_INPBUserActivity *)self title];

  if (v6)
  {
    title = self->_title;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBUserActivity *)self uri];

  v9 = v11;
  if (v8)
  {
    uri = self->_uri;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setUri:(id)a3
{
  v4 = [a3 copy];
  uri = self->_uri;
  self->_uri = v4;

  MEMORY[0x1EEE66BB8](v4, uri);
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8](v4, title);
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  data = self->_data;
  self->_data = v4;

  MEMORY[0x1EEE66BB8](v4, data);
}

@end