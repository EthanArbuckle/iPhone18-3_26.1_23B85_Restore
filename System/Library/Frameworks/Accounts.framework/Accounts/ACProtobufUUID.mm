@interface ACProtobufUUID
- (ACProtobufUUID)initWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSUUID)uuid;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)setUuid:(id)a3;
@end

@implementation ACProtobufUUID

- (ACProtobufUUID)initWithUUID:(id)a3
{
  v4 = a3;
  if (v4 && (self = [(ACProtobufUUID *)self init]) != 0)
  {
    v5 = [v4 UUIDString];
    [(ACProtobufUUID *)self setValue:v5];

    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUuid:(id)a3
{
  v4 = [a3 UUIDString];
  [(ACProtobufUUID *)self setValue:v4];
}

- (NSUUID)uuid
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [(ACProtobufUUID *)self value];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufUUID;
  v4 = [(ACProtobufUUID *)&v8 description];
  v5 = [(ACProtobufUUID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(ACProtobufUUID *)self setValue:?];
  }
}

@end