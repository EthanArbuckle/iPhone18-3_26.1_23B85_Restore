@interface HDFitnessMachineCharacteristicUInt24Field
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4;
@end

@implementation HDFitnessMachineCharacteristicUInt24Field

- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4
{
  v5 = [HDHealthServiceCharacteristic uint24FromData:a3 before:a4];
  self->_value = v5 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  v3 = [(HDFitnessMachineCharacteristicUInt24Field *)self value];

  return sub_39F70(self, v3);
}

@end