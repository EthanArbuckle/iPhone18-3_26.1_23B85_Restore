@interface _INPBAirline
- (BOOL)isEqual:(id)a3;
- (_INPBAirline)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIataCode:(id)a3;
- (void)setIcaoCode:(id)a3;
- (void)setName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAirline

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_iataCode)
  {
    v4 = [(_INPBAirline *)self iataCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"iataCode"];
  }

  if (self->_icaoCode)
  {
    v6 = [(_INPBAirline *)self icaoCode];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"icaoCode"];
  }

  if (self->_name)
  {
    v8 = [(_INPBAirline *)self name];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"name"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_iataCode hash];
  v4 = [(NSString *)self->_icaoCode hash]^ v3;
  return v4 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBAirline *)self iataCode];
  v6 = [v4 iataCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBAirline *)self iataCode];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAirline *)self iataCode];
    v10 = [v4 iataCode];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAirline *)self icaoCode];
  v6 = [v4 icaoCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBAirline *)self icaoCode];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAirline *)self icaoCode];
    v15 = [v4 icaoCode];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAirline *)self name];
  v6 = [v4 name];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBAirline *)self name];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBAirline *)self name];
    v20 = [v4 name];
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
  v5 = [+[_INPBAirline allocWithZone:](_INPBAirline init];
  v6 = [(NSString *)self->_iataCode copyWithZone:a3];
  [(_INPBAirline *)v5 setIataCode:v6];

  v7 = [(NSString *)self->_icaoCode copyWithZone:a3];
  [(_INPBAirline *)v5 setIcaoCode:v7];

  v8 = [(NSString *)self->_name copyWithZone:a3];
  [(_INPBAirline *)v5 setName:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAirline *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAirline)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAirline *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBAirline *)self iataCode];

  if (v4)
  {
    iataCode = self->_iataCode;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBAirline *)self icaoCode];

  if (v6)
  {
    icaoCode = self->_icaoCode;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBAirline *)self name];

  v9 = v11;
  if (v8)
  {
    name = self->_name;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8](v4, name);
}

- (void)setIcaoCode:(id)a3
{
  v4 = [a3 copy];
  icaoCode = self->_icaoCode;
  self->_icaoCode = v4;

  MEMORY[0x1EEE66BB8](v4, icaoCode);
}

- (void)setIataCode:(id)a3
{
  v4 = [a3 copy];
  iataCode = self->_iataCode;
  self->_iataCode = v4;

  MEMORY[0x1EEE66BB8](v4, iataCode);
}

@end