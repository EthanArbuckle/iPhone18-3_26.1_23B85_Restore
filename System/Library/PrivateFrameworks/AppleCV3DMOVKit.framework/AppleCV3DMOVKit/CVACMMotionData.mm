@interface CVACMMotionData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMMotionData)init;
- (CVACMMotionData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMMotionData

+ (id)classes
{
  if (qword_27E3C85D8 == -1)
  {
    v3 = qword_27E3C85D0;
  }

  else
  {
    sub_24019CBC8();
    v3 = qword_27E3C85D0;
  }

  return v3;
}

- (CVACMMotionData)init
{
  v10.receiver = self;
  v10.super_class = CVACMMotionData;
  v2 = [(CVACMMotionData *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    quaternion = v2->_quaternion;
    v2->_quaternion = v3;

    v5 = objc_opt_new();
    acceleration = v2->_acceleration;
    v2->_acceleration = v5;

    v7 = objc_opt_new();
    rotationRate = v2->_rotationRate;
    v2->_rotationRate = v7;
  }

  return v2;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMMotionData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

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

- (CVACMMotionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVACMMotionData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [coderCopy decodeDoubleForKey:@"qx"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setX:?];
    [coderCopy decodeDoubleForKey:@"qy"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setY:?];
    [coderCopy decodeDoubleForKey:@"qz"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setZ:?];
    [coderCopy decodeDoubleForKey:@"qw"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setW:?];
    [coderCopy decodeFloatForKey:@"ax"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setX:?];
    [coderCopy decodeFloatForKey:@"ay"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setY:?];
    [coderCopy decodeFloatForKey:@"az"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setZ:?];
    [coderCopy decodeFloatForKey:@"rx"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setX:?];
    [coderCopy decodeFloatForKey:@"ry"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setY:?];
    [coderCopy decodeFloatForKey:@"rz"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setZ:?];
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
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
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  [coderCopy encodeDouble:@"qx" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  [coderCopy encodeDouble:@"qy" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  [coderCopy encodeDouble:@"qz" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  [coderCopy encodeDouble:@"qw" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration x];
  [coderCopy encodeFloat:@"ax" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration y];
  [coderCopy encodeFloat:@"ay" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration z];
  [coderCopy encodeFloat:@"az" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  [coderCopy encodeFloat:@"rx" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  [coderCopy encodeFloat:@"ry" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  [coderCopy encodeFloat:@"rz" forKey:?];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_sequenceNumber forKey:@"sn"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v31[14] = *MEMORY[0x277D85DE8];
  v30[0] = @"qx";
  v3 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  v29 = [v3 numberWithDouble:?];
  v31[0] = v29;
  v30[1] = @"qy";
  v4 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  v28 = [v4 numberWithDouble:?];
  v31[1] = v28;
  v30[2] = @"qz";
  v5 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  v27 = [v5 numberWithDouble:?];
  v31[2] = v27;
  v30[3] = @"qw";
  v6 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  v26 = [v6 numberWithDouble:?];
  v31[3] = v26;
  v30[4] = @"ax";
  v7 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration x];
  v25 = [v7 numberWithFloat:?];
  v31[4] = v25;
  v30[5] = @"ay";
  v8 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration y];
  v9 = [v8 numberWithFloat:?];
  v31[5] = v9;
  v30[6] = @"az";
  v10 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_acceleration z];
  v11 = [v10 numberWithFloat:?];
  v31[6] = v11;
  v30[7] = @"rx";
  v12 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  v13 = [v12 numberWithFloat:?];
  v31[7] = v13;
  v30[8] = @"ry";
  v14 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  v15 = [v14 numberWithFloat:?];
  v31[8] = v15;
  v30[9] = @"rz";
  v16 = MEMORY[0x277CCABB0];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  v17 = [v16 numberWithFloat:?];
  v31[9] = v17;
  v30[10] = @"t";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v31[10] = v18;
  v30[11] = @"st";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v31[11] = v19;
  v30[12] = @"sn";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_sequenceNumber];
  v31[12] = v20;
  v30[13] = @"fi";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v31[13] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:14];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end