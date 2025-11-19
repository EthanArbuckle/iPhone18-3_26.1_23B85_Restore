@interface BLSBacklightChangeSourceEventDisplaySwipeMetadata
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithCoder:(id)a3;
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithDirection:(int64_t)a3;
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSBacklightChangeSourceEventDisplaySwipeMetadata

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithDirection:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = BLSBacklightChangeSourceEventDisplaySwipeMetadata;
  result = [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)&v5 init];
  if (result)
  {
    result->_direction = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  v5 = self->_direction - 1;
  if (v5 > 3)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278428E78[v5];
  }

  [v3 appendString:v6 withName:@"direction"];
  v7 = [v4 build];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_direction];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      direction = self->_direction;
      v6 = direction == [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)v4 direction];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  int64 = xpc_dictionary_get_int64(v4, [@"direction" UTF8String]);

  return [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)self initWithDirection:int64];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_int64(xdict, [@"direction" UTF8String], self->_direction);
}

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"direction"];

  return [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)self initWithDirection:v4];
}

@end