@interface HDFitnessMachineCharacteristicField
- (HDFitnessMachineCharacteristicField)initWithCorrespondingFlagBit:(unsigned __int8)a3 fieldLength:(unsigned __int8)a4 factor:(unsigned __int8)a5;
- (id)valueAsData;
- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4;
@end

@implementation HDFitnessMachineCharacteristicField

- (HDFitnessMachineCharacteristicField)initWithCorrespondingFlagBit:(unsigned __int8)a3 fieldLength:(unsigned __int8)a4 factor:(unsigned __int8)a5
{
  if (a5)
  {
    v11.receiver = self;
    v11.super_class = HDFitnessMachineCharacteristicField;
    v8 = [(HDFitnessMachineCharacteristicField *)&v11 init];
    if (v8)
    {
      v8->_correspondingFlagBit = a3;
      v8->_fieldLength = a4;
      v8->_factor = a5;
      v8->_isSet = 0;
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setValueWithBytes:(const char *)a3 before:(const char *)a4
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