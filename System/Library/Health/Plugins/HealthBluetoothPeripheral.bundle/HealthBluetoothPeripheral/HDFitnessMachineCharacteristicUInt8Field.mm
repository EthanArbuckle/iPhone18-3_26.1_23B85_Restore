@interface HDFitnessMachineCharacteristicUInt8Field
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4;
@end

@implementation HDFitnessMachineCharacteristicUInt8Field

- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4
{
  v5 = [HDHealthServiceCharacteristic uint8FromData:a3 before:a4];
  *(&self->super._isSet + 1) = v5 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  v3 = [(HDFitnessMachineCharacteristicUInt8Field *)self value];

  return sub_39F70(self, v3);
}

@end