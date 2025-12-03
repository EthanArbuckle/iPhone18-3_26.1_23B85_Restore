@interface _GCForceHIDEventParser
- (_GCForceHIDEventParser)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)parse:(__IOHIDEvent *)parse into:(id)into;
@end

@implementation _GCForceHIDEventParser

- (_GCForceHIDEventParser)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _GCForceHIDEventParser;
  coderCopy = coder;
  v4 = [(_GCHIDEventParser *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeInt64ForKey:{@"_forceKey", v7.receiver, v7.super_class}];

  v4->_forceKey = v5;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _GCForceHIDEventParser;
  coderCopy = coder;
  [(_GCHIDEventParser *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_forceKey forKey:{@"_forceKey", v5.receiver, v5.super_class}];
}

- (void)parse:(__IOHIDEvent *)parse into:(id)into
{
  intoCopy = into;
  if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 32 && IOHIDEventGetIntegerValue() == 1172)
  {
    if (self->_forceKey)
    {
      v7 = *IOHIDEventGetDataValue();
      *&v7 = v7;
      [intoCopy setFloatValue:self->_forceKey forKey:v7];
    }

    v8.receiver = self;
    v8.super_class = _GCForceHIDEventParser;
    [(_GCHIDEventParser *)&v8 parse:parse into:intoCopy];
  }
}

@end