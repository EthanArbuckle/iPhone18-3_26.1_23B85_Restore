@interface HDFitnessMachineCharacteristicField
- (HDFitnessMachineCharacteristicField)initWithCorrespondingFlagBit:(unsigned __int8)bit fieldLength:(unsigned __int8)length factor:(unsigned __int8)factor;
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)bytes before:(const char *)before;
@end

@implementation HDFitnessMachineCharacteristicField

- (HDFitnessMachineCharacteristicField)initWithCorrespondingFlagBit:(unsigned __int8)bit fieldLength:(unsigned __int8)length factor:(unsigned __int8)factor
{
  if (factor)
  {
    v11.receiver = self;
    v11.super_class = HDFitnessMachineCharacteristicField;
    v8 = [(HDFitnessMachineCharacteristicField *)&v11 init];
    if (v8)
    {
      v8->_correspondingFlagBit = bit;
      v8->_fieldLength = length;
      v8->_factor = factor;
      v8->_isSet = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setValueWithBytes:(const char *)bytes before:(const char *)before
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)valueAsData
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return +[NSData data];
}

@end