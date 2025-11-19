@interface ACProtobufKeyValuePair
- (ACProtobufKeyValuePair)initWithValue:(id)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACProtobufKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufKeyValuePair;
  v4 = [(ACProtobufKeyValuePair *)&v8 description];
  v5 = [(ACProtobufKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [v4 setObject:value forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  key = self->_key;
  v6 = a3;
  PBDataWriterWriteStringField();
  value = self->_value;
  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 setKey:key];
  [v5 setValue:self->_value];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_value copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | v4[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | v4[2])
    {
      v7 = [(NSString *)value isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(ACProtobufKeyValuePair *)self setKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(ACProtobufKeyValuePair *)self setValue:?];
    v4 = v5;
  }
}

- (ACProtobufKeyValuePair)initWithValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACProtobufKeyValuePair *)self init];
  v9 = v8;
  if (v8)
  {
    [(ACProtobufKeyValuePair *)v8 setKey:v7];
    [(ACProtobufKeyValuePair *)v9 setValue:v6];
    v10 = v9;
  }

  return v9;
}

@end