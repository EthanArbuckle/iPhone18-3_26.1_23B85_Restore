@interface SRElectrocardiogramData
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToECGData:(id)data;
- (NSMeasurement)value;
- (SRElectrocardiogramData)init;
- (SRElectrocardiogramData)initWithCoder:(id)coder;
- (SRElectrocardiogramData)initWithFlags:(unint64_t)flags value:(double)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRElectrocardiogramData

- (SRElectrocardiogramData)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRElectrocardiogramData)initWithFlags:(unint64_t)flags value:(double)value
{
  v7.receiver = self;
  v7.super_class = SRElectrocardiogramData;
  result = [(SRElectrocardiogramData *)&v7 init];
  if (result)
  {
    result->_val = value;
    result->_flags = flags;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRElectrocardiogramData *)self isEqualToECGData:equal];
}

- (BOOL)isEqualToECGData:(id)data
{
  v5 = -[NSMeasurement isEqual:](-[SRElectrocardiogramData value](self, "value"), "isEqual:", [data value]);
  if (v5)
  {
    flags = self->_flags;
    LOBYTE(v5) = flags == [data flags];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): flags: %lu, value: %@", NSStringFromClass(v4), self, self->_flags, -[SRElectrocardiogramData value](self, "value")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeDouble:@"value" forKey:self->_val];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flags];

  [coder encodeObject:v6 forKey:@"flags"];
}

- (SRElectrocardiogramData)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder decodeDoubleForKey:@"value"];
  v7 = v6;
  v8 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"flags", "unsignedIntegerValue"}];

  return [(SRElectrocardiogramData *)self initWithFlags:v8 value:v7];
}

- (NSMeasurement)value
{
  v3 = objc_alloc(MEMORY[0x1E696AD28]);
  v4 = [v3 initWithDoubleValue:objc_msgSend(MEMORY[0x1E696B020] unit:{"microvolts"), self->_val}];

  return v4;
}

@end