@interface _INPBRefinementItem
- (BOOL)isEqual:(id)a3;
- (_INPBRefinementItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setSubKeyPath:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRefinementItem

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBRefinementItem *)self item];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"item"];

  if (self->_subKeyPath)
  {
    v6 = [(_INPBRefinementItem *)self subKeyPath];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"subKeyPath"];
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

  v5 = [(_INPBRefinementItem *)self item];
  v6 = [v4 item];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBRefinementItem *)self item];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRefinementItem *)self item];
    v10 = [v4 item];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBRefinementItem *)self subKeyPath];
  v6 = [v4 subKeyPath];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBRefinementItem *)self subKeyPath];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBRefinementItem *)self subKeyPath];
    v15 = [v4 subKeyPath];
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
  v5 = [+[_INPBRefinementItem allocWithZone:](_INPBRefinementItem init];
  v6 = [(_INPBSelectionItem *)self->_item copyWithZone:a3];
  [(_INPBRefinementItem *)v5 setItem:v6];

  v7 = [(NSString *)self->_subKeyPath copyWithZone:a3];
  [(_INPBRefinementItem *)v5 setSubKeyPath:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRefinementItem *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRefinementItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRefinementItem *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBRefinementItem *)self item];

  if (v4)
  {
    v5 = [(_INPBRefinementItem *)self item];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBRefinementItem *)self subKeyPath];

  if (v6)
  {
    subKeyPath = self->_subKeyPath;
    PBDataWriterWriteStringField();
  }
}

- (void)setSubKeyPath:(id)a3
{
  v4 = [a3 copy];
  subKeyPath = self->_subKeyPath;
  self->_subKeyPath = v4;

  MEMORY[0x1EEE66BB8](v4, subKeyPath);
}

@end