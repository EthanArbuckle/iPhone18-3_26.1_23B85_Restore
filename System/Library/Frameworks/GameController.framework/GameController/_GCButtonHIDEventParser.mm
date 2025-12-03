@interface _GCButtonHIDEventParser
- (_GCButtonHIDEventParser)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)parse:(__IOHIDEvent *)parse into:(id)into;
@end

@implementation _GCButtonHIDEventParser

- (_GCButtonHIDEventParser)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _GCButtonHIDEventParser;
  coderCopy = coder;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:coderCopy];
  v4->_requiredButtonNumber = [coderCopy decodeIntegerForKey:{@"requiredButtonNumber", v7.receiver, v7.super_class}];
  v4->_buttonStateKey = [coderCopy decodeInt64ForKey:@"buttonStateKey"];
  v5 = [coderCopy decodeInt64ForKey:@"buttonPressureKey"];

  v4->_buttonPressureKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _GCButtonHIDEventParser;
  coderCopy = coder;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_requiredButtonNumber forKey:{@"requiredButtonNumber", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_buttonStateKey forKey:@"buttonStateKey"];
  [coderCopy encodeInt64:self->_buttonPressureKey forKey:@"buttonPressureKey"];
}

- (void)parse:(__IOHIDEvent *)parse into:(id)into
{
  intoCopy = into;
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

      [intoCopy setFloatValue:self->_buttonStateKey forKey:v8];
    }

    if (self->_buttonPressureKey)
    {
      IOHIDEventGetDoubleValue();
      *&v9 = v9;
      [intoCopy setFloatValue:self->_buttonPressureKey forKey:v9];
    }

    v10.receiver = self;
    v10.super_class = _GCButtonHIDEventParser;
    [(_GCHIDEventParser *)&v10 parse:parse into:intoCopy];
  }
}

@end