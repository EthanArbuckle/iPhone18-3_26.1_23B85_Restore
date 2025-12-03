@interface ACProtobufVariableKeyValuePair
- (ACProtobufVariableKeyValuePair)initWithObjectValue:(id)value forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufVariableKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufVariableKeyValuePair;
  v4 = [(ACProtobufVariableKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(ACProtobufVariableKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(ACProtobufVariableValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  key = self->_key;
  toCopy = to;
  PBDataWriterWriteStringField();
  value = self->_value;
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  key = self->_key;
  toCopy = to;
  [toCopy setKey:key];
  [toCopy setValue:self->_value];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ACProtobufVariableValue *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(ACProtobufVariableValue *)value isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(ACProtobufVariableKeyValuePair *)self setKey:?];
    fromCopy = v7;
  }

  value = self->_value;
  v6 = fromCopy[2];
  if (value)
  {
    if (v6)
    {
      [(ACProtobufVariableValue *)value mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ACProtobufVariableKeyValuePair *)self setValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (ACProtobufVariableKeyValuePair)initWithObjectValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v8 = [[ACProtobufVariableValue alloc] initWithObjectValue:valueCopy];

  if (v8 && (v9 = [(ACProtobufVariableKeyValuePair *)self init], (self = v9) != 0))
  {
    [(ACProtobufVariableKeyValuePair *)v9 setKey:keyCopy];
    [(ACProtobufVariableKeyValuePair *)self setValue:v8];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end