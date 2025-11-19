@interface CVACMMotionData
+ (id)classes;
+ (id)withData:(id)a3;
- (CVACMMotionData)init;
- (CVACMMotionData)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
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

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVACMMotionData classes];
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

- (CVACMMotionData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CVACMMotionData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [v4 decodeDoubleForKey:@"qx"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setX:?];
    [v4 decodeDoubleForKey:@"qy"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setY:?];
    [v4 decodeDoubleForKey:@"qz"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setZ:?];
    [v4 decodeDoubleForKey:@"qw"];
    [(CVACLMotionTypeDoubleVector4 *)v5->_quaternion setW:?];
    [v4 decodeFloatForKey:@"ax"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setX:?];
    [v4 decodeFloatForKey:@"ay"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setY:?];
    [v4 decodeFloatForKey:@"az"];
    [(CVACLMotionTypeVector3 *)v5->_acceleration setZ:?];
    [v4 decodeFloatForKey:@"rx"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setX:?];
    [v4 decodeFloatForKey:@"ry"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setY:?];
    [v4 decodeFloatForKey:@"rz"];
    [(CVACLMotionTypeVector3 *)v5->_rotationRate setZ:?];
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    v5->_syncTimestamp = [v4 decodeInt64ForKey:@"st"];
    v5->_sequenceNumber = [v4 decodeInt64ForKey:@"sn"];
    v5->_frameId = [v4 decodeInt64ForKey:@"fi"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion x];
  [v5 encodeDouble:@"qx" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion y];
  [v5 encodeDouble:@"qy" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion z];
  [v5 encodeDouble:@"qz" forKey:?];
  [(CVACLMotionTypeDoubleVector4 *)self->_quaternion w];
  [v5 encodeDouble:@"qw" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration x];
  [v5 encodeFloat:@"ax" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration y];
  [v5 encodeFloat:@"ay" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_acceleration z];
  [v5 encodeFloat:@"az" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate x];
  [v5 encodeFloat:@"rx" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate y];
  [v5 encodeFloat:@"ry" forKey:?];
  [(CVACLMotionTypeVector3 *)self->_rotationRate z];
  [v5 encodeFloat:@"rz" forKey:?];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeInt64:self->_syncTimestamp forKey:@"st"];
  [v5 encodeInt64:self->_sequenceNumber forKey:@"sn"];
  [v5 encodeInt64:self->_frameId forKey:@"fi"];
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
  v5 = [(CVACMMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end