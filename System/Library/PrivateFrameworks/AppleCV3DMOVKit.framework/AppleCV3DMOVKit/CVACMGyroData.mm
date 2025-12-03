@interface CVACMGyroData
+ (id)withData:(id)data;
- (CVACMGyroData)init;
- (CVACMGyroData)initWithCoder:(id)coder;
- (CVACMGyroData)initWithDictionary:(id)dictionary;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMGyroData

- (CVACMGyroData)init
{
  v6.receiver = self;
  v6.super_class = CVACMGyroData;
  v2 = [(CVACMGyroData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rotationRate = v2->_rotationRate;
    v2->_rotationRate = v3;
  }

  return v2;
}

- (CVACMGyroData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(CVACMGyroData *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"x"];
    [v6 floatValue];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setX:?];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"y"];
    [v7 floatValue];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setY:?];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"z"];
    [v8 floatValue];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setZ:?];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"p"];
    [v9 floatValue];
    v5->_temperature = v10;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"t"];
    [v11 doubleValue];
    v5->_timestamp = v12;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"st"];
    v5->_syncTimestamp = [v13 unsignedLongLongValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sn"];
    v5->_sequenceNumber = [v14 unsignedLongLongValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"fi"];
    v5->_frameId = [v15 unsignedLongLongValue];
  }

  return v5;
}

+ (id)withData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v12 = 0;
  v4 = [CVAMetadataWrapper decodeClass:dataCopy class:objc_opt_class() error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [CVAMetadataWrapper decodeCommon:dataCopy];
    if (v7)
    {
      v6 = [[CVACMGyroData alloc] initWithDictionary:v7];
    }

    else
    {
      if (v5)
      {
        v8 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v5 localizedDescription];
          *buf = 138412290;
          v14 = localizedDescription;
          _os_log_impl(&dword_24016D000, v8, OS_LOG_TYPE_ERROR, "CVACMGyroData - ERROR - cannot deserialize data: %@", buf, 0xCu);
        }
      }

      v6 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (CVACMGyroData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVACMGyroData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [coderCopy decodeFloatForKey:@"x"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setX:?];
    [coderCopy decodeFloatForKey:@"y"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setY:?];
    [coderCopy decodeFloatForKey:@"z"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setZ:?];
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    [coderCopy decodeFloatForKey:@"p"];
    v5->_temperature = v8;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    v5->_sequenceNumber = [coderCopy decodeInt64ForKey:@"sn"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  [coderCopy encodeFloat:@"x" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  [coderCopy encodeFloat:@"y" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  [coderCopy encodeFloat:@"z" forKey:?];
  *&v5 = self->_temperature;
  [coderCopy encodeFloat:@"p" forKey:v5];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_sequenceNumber forKey:@"sn"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v19[8] = *MEMORY[0x277D85DE8];
  v18[0] = @"x";
  v3 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  v4 = [v3 numberWithFloat:?];
  v19[0] = v4;
  v18[1] = @"y";
  v5 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  v6 = [v5 numberWithFloat:?];
  v19[1] = v6;
  v18[2] = @"z";
  v7 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  v8 = [v7 numberWithFloat:?];
  v19[2] = v8;
  v18[3] = @"p";
  *&v9 = self->_temperature;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v19[3] = v10;
  v18[4] = @"t";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v19[4] = v11;
  v18[5] = @"st";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v19[5] = v12;
  v18[6] = @"sn";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
  v19[6] = v13;
  v18[7] = @"fi";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v19[7] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMGyroData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end