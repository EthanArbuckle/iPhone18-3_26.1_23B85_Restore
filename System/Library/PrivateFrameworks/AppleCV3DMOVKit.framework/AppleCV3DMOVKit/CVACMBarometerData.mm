@interface CVACMBarometerData
+ (id)classes;
+ (id)withData:(id)a3;
- (CVACMBarometerData)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CVACMBarometerData

+ (id)classes
{
  if (qword_27E3C8508 == -1)
  {
    v3 = qword_27E3C8500;
  }

  else
  {
    sub_24019CAC4();
    v3 = qword_27E3C8500;
  }

  return v3;
}

- (CVACMBarometerData)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CVACMBarometerData;
  v5 = [(CVACMBarometerData *)&v10 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [v4 decodeFloatForKey:@"pr"];
    v5->_pressure = v7;
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v8;
    v5->_syncTimestamp = [v4 decodeInt64ForKey:@"st"];
    v5->_sequenceNumber = [v4 decodeInt64ForKey:@"sn"];
    v5->_frameId = [v4 decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVACMBarometerData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  *&v5 = self->_pressure;
  [v6 encodeFloat:@"pr" forKey:v5];
  [v6 encodeDouble:@"t" forKey:self->_timestamp];
  [v6 encodeInt64:self->_syncTimestamp forKey:@"st"];
  [v6 encodeInt64:self->_sequenceNumber forKey:@"sn"];
  [v6 encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v13[5] = *MEMORY[0x277D85DE8];
  v12[0] = @"pr";
  *&v2 = self->_pressure;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v13[0] = v4;
  v12[1] = @"t";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v13[1] = v5;
  v12[2] = @"st";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v13[2] = v6;
  v12[3] = @"sn";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
  v13[3] = v7;
  v12[4] = @"fi";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v13[4] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVACMBarometerData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end