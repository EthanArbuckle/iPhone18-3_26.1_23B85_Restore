@interface HDFitnessMachineCharacteristicInt16Field
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4;
@end

@implementation HDFitnessMachineCharacteristicInt16Field

- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4
{
  v5 = [HDHealthServiceCharacteristic int16FromData:a3 before:a4];
  *(&self->super._isSet + 1) = v5 / [(HDFitnessMachineCharacteristicField *)self factor];
  self->super._isSet = 1;
}

- (id)valueAsData
{
  v3 = [(HDFitnessMachineCharacteristicInt16Field *)self value];

  return sub_39F70(self, v3);
}

@end