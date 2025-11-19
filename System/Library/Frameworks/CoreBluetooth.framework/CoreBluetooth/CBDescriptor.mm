@interface CBDescriptor
- (CBCharacteristic)characteristic;
- (CBDescriptor)initWithCharacteristic:(id)a3 dictionary:(id)a4;
- (id)description;
- (id)handleValueUpdated:(id)a3;
@end

@implementation CBDescriptor

- (CBDescriptor)initWithCharacteristic:(id)a3 dictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v9 = [CBUUID UUIDWithData:v8];
  v18.receiver = self;
  v18.super_class = CBDescriptor;
  v10 = [(CBAttribute *)&v18 initWithUUID:v9];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"kCBMsgArgDescriptorHandle"];
    handle = v10->_handle;
    v10->_handle = v11;

    v13 = [v7 objectForKeyedSubscript:@"kCBMsgArgData"];
    value = v10->_value;
    v10->_value = v13;

    v15 = [v6 peripheral];
    peripheral = v10->_peripheral;
    v10->_peripheral = v15;

    objc_storeWeak(&v10->_characteristic, v6);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CBAttribute *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@: %p, UUID = %@, value = %@>", v4, self, v5, self->_value];

  return v6;
}

- (id)handleValueUpdated:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgData"];
  [(CBDescriptor *)self setValue:v4];

  return self;
}

- (CBCharacteristic)characteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_characteristic);

  return WeakRetained;
}

@end