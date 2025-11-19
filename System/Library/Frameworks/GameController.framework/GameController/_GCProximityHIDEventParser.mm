@interface _GCProximityHIDEventParser
- (_GCProximityHIDEventParser)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)parse:(__IOHIDEvent *)a3 into:(id)a4;
@end

@implementation _GCProximityHIDEventParser

- (_GCProximityHIDEventParser)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCProximityHIDEventParser;
  v3 = a3;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:v3];
  v4->_fingerTouchKey = [v3 decodeInt64ForKey:{@"fingerTouchKey", v7.receiver, v7.super_class}];
  v5 = [v3 decodeInt64ForKey:@"levelKey"];

  v4->_levelKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCProximityHIDEventParser;
  v4 = a3;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_fingerTouchKey forKey:{@"fingerTouchKey", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_levelKey forKey:@"levelKey"];
}

- (void)parse:(__IOHIDEvent *)a3 into:(id)a4
{
  v6 = a4;
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

      [v6 setFloatValue:self->_fingerTouchKey forKey:v8];
    }

    if (self->_levelKey)
    {
      IOHIDEventGetDoubleValue();
      *&v9 = v9;
      [v6 setFloatValue:self->_levelKey forKey:v9];
    }

    v10.receiver = self;
    v10.super_class = _GCProximityHIDEventParser;
    [(_GCHIDEventParser *)&v10 parse:a3 into:v6];
  }
}

@end