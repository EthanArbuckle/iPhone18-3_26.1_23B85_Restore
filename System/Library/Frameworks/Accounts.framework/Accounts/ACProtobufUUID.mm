@interface ACProtobufUUID
- (ACProtobufUUID)initWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSUUID)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)setUuid:(id)uuid;
@end

@implementation ACProtobufUUID

- (ACProtobufUUID)initWithUUID:(id)d
{
  dCopy = d;
  if (dCopy && (self = [(ACProtobufUUID *)self init]) != 0)
  {
    uUIDString = [dCopy UUIDString];
    [(ACProtobufUUID *)self setValue:uUIDString];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setUuid:(id)uuid
{
  uUIDString = [uuid UUIDString];
  [(ACProtobufUUID *)self setValue:uUIDString];
}

- (NSUUID)uuid
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  value = [(ACProtobufUUID *)self value];
  v5 = [v3 initWithUUIDString:value];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufUUID;
  v4 = [(ACProtobufUUID *)&v8 description];
  dictionaryRepresentation = [(ACProtobufUUID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
    {
      v6 = [(NSString *)value isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(ACProtobufUUID *)self setValue:?];
  }
}

@end