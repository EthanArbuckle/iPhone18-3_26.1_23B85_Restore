@interface _GCButtonHIDEventParser
- (_GCButtonHIDEventParser)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parse:(__IOHIDEvent *)a3 into:(id)a4;
@end

@implementation _GCButtonHIDEventParser

- (_GCButtonHIDEventParser)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCButtonHIDEventParser;
  v3 = a3;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:v3];
  v4->_requiredButtonNumber = [v3 decodeIntegerForKey:{@"requiredButtonNumber", v7.receiver, v7.super_class}];
  v4->_buttonStateKey = [v3 decodeInt64ForKey:@"buttonStateKey"];
  v5 = [v3 decodeInt64ForKey:@"buttonPressureKey"];

  v4->_buttonPressureKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCButtonHIDEventParser;
  v4 = a3;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_requiredButtonNumber forKey:{@"requiredButtonNumber", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_buttonStateKey forKey:@"buttonStateKey"];
  [v4 encodeInt64:self->_buttonPressureKey forKey:@"buttonPressureKey"];
}

- (void)parse:(__IOHIDEvent *)a3 into:(id)a4
{
  v6 = a4;
  if (IOHIDEventGetType() == 2 && IOHIDEventGetIntegerValue() == self->_requiredButtonNumber)
  {
    if (self->_buttonStateKey)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      LODWORD(v8) = 1.0;
      if (!IntegerValue)
      {
        *&v8 = 0.0;
      }

      [v6 setFloatValue:self->_buttonStateKey forKey:v8];
    }

    if (self->_buttonPressureKey)
    {
      IOHIDEventGetDoubleValue();
      *&v9 = v9;
      [v6 setFloatValue:self->_buttonPressureKey forKey:v9];
    }

    v10.receiver = self;
    v10.super_class = _GCButtonHIDEventParser;
    [(_GCHIDEventParser *)&v10 parse:a3 into:v6];
  }
}

@end