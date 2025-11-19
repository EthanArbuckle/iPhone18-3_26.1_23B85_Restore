@interface CVATimedValue
+ (id)classes;
+ (id)withData:(id)a3;
- (CVATimedValue)initWithCoder:(id)a3;
- (CVATimedValue)initWithDictionary:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CVATimedValue

+ (id)classes
{
  if (qword_27E3C8538 == -1)
  {
    v3 = qword_27E3C8530;
  }

  else
  {
    sub_24019CB00();
    v3 = qword_27E3C8530;
  }

  return v3;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVATimedValue classes];
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

- (CVATimedValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CVATimedValue;
  v5 = [(CVATimedValue *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"v"];
    value = v5->_value;
    v5->_value = v6;

    v8 = [v4 objectForKeyedSubscript:@"a"];
    attachments = v5->_attachments;
    v5->_attachments = v8;

    v10 = [v4 objectForKeyedSubscript:@"t"];
    [v10 doubleValue];
    v5->_timestamp = v11;

    v12 = [v4 objectForKeyedSubscript:@"st"];
    v5->_syncTimestamp = [v12 unsignedLongLongValue];

    v13 = [v4 objectForKeyedSubscript:@"fi"];
    v5->_frameId = [v13 unsignedLongLongValue];
  }

  return v5;
}

- (CVATimedValue)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CVATimedValue;
  v5 = [(CVATimedValue *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"v"];
    value = v5->_value;
    v5->_value = v7;

    v9 = [v4 decodeObjectForKey:@"a"];
    attachments = v5->_attachments;
    v5->_attachments = v9;

    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v11;
    v5->_syncTimestamp = [v4 decodeInt64ForKey:@"st"];
    v5->_frameId = [v4 decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_value forKey:@"v"];
  [v5 encodeObject:self->_attachments forKey:@"a"];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeInt64:self->_syncTimestamp forKey:@"st"];
  [v5 encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = @"v";
  v9[1] = @"a";
  v10 = vbslq_s8(vceqzq_s64(*&self->_value), vdupq_n_s64(MEMORY[0x277CBEC10]), *&self->_value);
  v9[2] = @"t";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v11 = v3;
  v9[3] = @"st";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v12 = v4;
  v9[4] = @"fi";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v13 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:v9 count:5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVATimedValue *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end