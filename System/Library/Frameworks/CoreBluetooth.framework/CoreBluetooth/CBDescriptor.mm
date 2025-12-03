@interface CBDescriptor
- (CBCharacteristic)characteristic;
- (CBDescriptor)initWithCharacteristic:(id)characteristic dictionary:(id)dictionary;
- (id)description;
- (id)handleValueUpdated:(id)updated;
@end

@implementation CBDescriptor

- (CBDescriptor)initWithCharacteristic:(id)characteristic dictionary:(id)dictionary
{
  characteristicCopy = characteristic;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v9 = [CBUUID UUIDWithData:v8];
  v18.receiver = self;
  v18.super_class = CBDescriptor;
  v10 = [(CBAttribute *)&v18 initWithUUID:v9];

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgDescriptorHandle"];
    handle = v10->_handle;
    v10->_handle = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgData"];
    value = v10->_value;
    v10->_value = v13;

    peripheral = [characteristicCopy peripheral];
    peripheral = v10->_peripheral;
    v10->_peripheral = peripheral;

    objc_storeWeak(&v10->_characteristic, characteristicCopy);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(CBAttribute *)self UUID];
  v6 = [v3 stringWithFormat:@"<%@: %p, UUID = %@, value = %@>", v4, self, uUID, self->_value];

  return v6;
}

- (id)handleValueUpdated:(id)updated
{
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgData"];
  [(CBDescriptor *)self setValue:v4];

  return self;
}

- (CBCharacteristic)characteristic
{
  WeakRetained = objc_loadWeakRetained(&self->_characteristic);

  return WeakRetained;
}

@end