@interface CBATTRequest
- (CBATTRequest)initWithCentral:(id)a3 characteristic:(id)a4 offset:(unint64_t)a5 transactionID:(id)a6;
- (id)description;
- (void)appendValueData:(id)a3;
@end

@implementation CBATTRequest

- (CBATTRequest)initWithCentral:(id)a3 characteristic:(id)a4 offset:(unint64_t)a5 transactionID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CBATTRequest;
  v14 = [(CBATTRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_central, a3);
    objc_storeStrong(&v15->_characteristic, a4);
    v15->_offset = a5;
    objc_storeStrong(&v15->_transactionID, a6);
    value = v15->_value;
    v15->_value = 0;

    v15->_ignoreResponse = 0;
  }

  return v15;
}

- (void)appendValueData:(id)a3
{
  value = self->_value;
  if (value)
  {
    v9 = a3;
    [(NSMutableData *)value appendData:v9];
    v4 = v9;
  }

  else
  {
    v6 = MEMORY[0x1E695DF88];
    v7 = a3;
    v8 = [[v6 alloc] initWithData:v7];

    v4 = self->_value;
    self->_value = v8;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  offset = self->_offset;
  return [v3 stringWithFormat:@"<%@: %p Central = %@, Characteristic = %@, Offset = %lu, Value = %@>", v4, self, self->_central, self->_characteristic, offset, self->_value];
}

@end