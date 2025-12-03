@interface HDFitnessMachineCharacteristicUInt16Field
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)bytes before:(const char *)before;
@end

@implementation HDFitnessMachineCharacteristicUInt16Field

- (void)setValueWithBytes:(const char *)bytes before:(const char *)before
{
  v5 = [HDHealthServiceCharacteristic uint16FromData:bytes before:before];
  *(&self->super._isSet + 1) = v5 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  value = [(HDFitnessMachineCharacteristicUInt16Field *)self value];

  return sub_39F70(self, value);
}

@end