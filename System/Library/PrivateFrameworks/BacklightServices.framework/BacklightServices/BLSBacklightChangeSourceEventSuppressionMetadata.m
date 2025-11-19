@interface BLSBacklightChangeSourceEventSuppressionMetadata
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithCoder:(id)a3;
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithType:(unint64_t)a3 reason:(unint64_t)a4;
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSBacklightChangeSourceEventSuppressionMetadata

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithType:(unint64_t)a3 reason:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BLSBacklightChangeSourceEventSuppressionMetadata;
  result = [(BLSBacklightChangeSourceEventSuppressionMetadata *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_reason = a4;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_type == 1)
  {
    v5 = @"Suppress";
  }

  else
  {
    v5 = @"Unsuppress";
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = NSStringFromBLSAlwaysOnSuppressionReason(self->_reason);
  [v4 appendString:v6 withName:@"reason"];

  v7 = [v4 build];

  return v7;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:self->_type];
  v5 = [v3 appendInteger:self->_reason];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  type = self->_type;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__BLSBacklightChangeSourceEventSuppressionMetadata_isEqual___block_invoke;
  v18[3] = &unk_278428B28;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendInteger:type counterpart:v18];
  reason = self->_reason;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__BLSBacklightChangeSourceEventSuppressionMetadata_isEqual___block_invoke_2;
  v16 = &unk_278428B28;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendInteger:reason counterpart:&v13];
  LOBYTE(reason) = [v5 isEqual];

  return reason;
}

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"type" UTF8String];
  v6 = [@"reason" UTF8String];
  int64 = xpc_dictionary_get_int64(v4, v5);
  v8 = xpc_dictionary_get_int64(v4, v6);

  return [(BLSBacklightChangeSourceEventSuppressionMetadata *)self initWithType:int64 reason:v8];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [@"type" UTF8String];
  v5 = [@"reason" UTF8String];
  xpc_dictionary_set_int64(xdict, v4, self->_type);
  xpc_dictionary_set_int64(xdict, v5, self->_reason);
}

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeIntegerForKey:@"reason"];

  return [(BLSBacklightChangeSourceEventSuppressionMetadata *)self initWithType:v5 reason:v6];
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_reason forKey:@"reason"];
}

@end