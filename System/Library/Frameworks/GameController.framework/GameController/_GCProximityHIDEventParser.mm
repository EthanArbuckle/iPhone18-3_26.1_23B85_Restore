@interface _GCProximityHIDEventParser
- (_GCProximityHIDEventParser)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)parse:(__IOHIDEvent *)parse into:(id)into;
@end

@implementation _GCProximityHIDEventParser

- (_GCProximityHIDEventParser)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _GCProximityHIDEventParser;
  coderCopy = coder;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:coderCopy];
  v4->_fingerTouchKey = [coderCopy decodeInt64ForKey:{@"fingerTouchKey", v7.receiver, v7.super_class}];
  v5 = [coderCopy decodeInt64ForKey:@"levelKey"];

  v4->_levelKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _GCProximityHIDEventParser;
  coderCopy = coder;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_fingerTouchKey forKey:{@"fingerTouchKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_levelKey forKey:@"levelKey"];
}

- (void)parse:(__IOHIDEvent *)parse into:(id)into
{
  intoCopy = into;
  if (IOHIDEventGetType() == 14)
  {
    if (self->_fingerTouchKey)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      LODWORD(v8) = 1.0;
      if ((IntegerValue & 0x20) == 0)
      {
        *&v8 = 0.0;
      }

      [intoCopy setFloatValue:self->_fingerTouchKey forKey:v8];
    }

    if (self->_levelKey)
    {
      IOHIDEventGetDoubleValue();
      *&v9 = v9;
      [intoCopy setFloatValue:self->_levelKey forKey:v9];
    }

    v10.receiver = self;
    v10.super_class = _GCProximityHIDEventParser;
    [(_GCHIDEventParser *)&v10 parse:parse into:intoCopy];
  }
}

@end