@interface HDFitnessMachineCharacteristicUInt24Field
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)bytes before:(const char *)before;
@end

@implementation HDFitnessMachineCharacteristicUInt24Field

- (void)setValueWithBytes:(const char *)bytes before:(const char *)before
{
  v5 = [HDHealthServiceCharacteristic uint24FromData:bytes before:before];
  self->_value = v5 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  value = [(HDFitnessMachineCharacteristicUInt24Field *)self value];

  return sub_39F70(self, value);
}

@end