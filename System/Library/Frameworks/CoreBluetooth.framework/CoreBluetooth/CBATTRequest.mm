@interface CBATTRequest
- (CBATTRequest)initWithCentral:(id)central characteristic:(id)characteristic offset:(unint64_t)offset transactionID:(id)d;
- (id)description;
- (void)appendValueData:(id)data;
@end

@implementation CBATTRequest

- (CBATTRequest)initWithCentral:(id)central characteristic:(id)characteristic offset:(unint64_t)offset transactionID:(id)d
{
  centralCopy = central;
  characteristicCopy = characteristic;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CBATTRequest;
  v14 = [(CBATTRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_central, central);
    objc_storeStrong(&v15->_characteristic, characteristic);
    v15->_offset = offset;
    objc_storeStrong(&v15->_transactionID, d);
    value = v15->_value;
    v15->_value = 0;

    v15->_ignoreResponse = 0;
  }

  return v15;
}

- (void)appendValueData:(id)data
{
  value = self->_value;
  if (value)
  {
    dataCopy = data;
    [(NSMutableData *)value appendData:dataCopy];
    v4 = dataCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695DF88];
    dataCopy2 = data;
    v8 = [[v6 alloc] initWithData:dataCopy2];

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