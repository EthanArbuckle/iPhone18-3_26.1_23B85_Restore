@interface CVACMUWBData
+ (id)classes;
+ (id)withData:(id)a3;
- (CVACMUWBData)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CVACMUWBData

+ (id)classes
{
  if (qword_27E3C8638 == -1)
  {
    v3 = qword_27E3C8630;
  }

  else
  {
    sub_24019CC2C();
    v3 = qword_27E3C8630;
  }

  return v3;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVACMUWBData classes];
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

- (CVACMUWBData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CVACMUWBData;
  v5 = [(CVACMUWBData *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"u"];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [v4 decodeObjectForKey:@"b"];
    blePeerId = v5->_blePeerId;
    v5->_blePeerId = v9;

    [v4 decodeFloatForKey:@"r"];
    v5->_range = v11;
    v5->_model = [v4 decodeIntForKey:@"m"];
    v5->_quality = [v4 decodeIntForKey:@"q"];
    [v4 decodeDoubleForKey:@"st"];
    v5->_sampleTimestamp = v12;
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v13;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  [v6 encodeObject:self->_uuid forKey:@"u"];
  [v6 encodeObject:self->_blePeerId forKey:@"b"];
  *&v5 = self->_range;
  [v6 encodeFloat:@"r" forKey:v5];
  [v6 encodeInt:LODWORD(self->_model) forKey:@"m"];
  [v6 encodeInt:LODWORD(self->_quality) forKey:@"q"];
  [v6 encodeDouble:@"st" forKey:self->_sampleTimestamp];
  [v6 encodeDouble:@"t" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v23[7] = *MEMORY[0x277D85DE8];
  v16 = @"uuid";
  uuid = self->_uuid;
  if (uuid)
  {
    v5 = [(NSUUID *)self->_uuid UUIDString];
    v23[0] = v5;
    v17 = @"blePeerId";
    blePeerId = self->_blePeerId;
    if (blePeerId)
    {
LABEL_3:
      v7 = [(NSUUID *)blePeerId UUIDString];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = @"000000-0000-0000-0000-000000000000";
    v23[0] = @"000000-0000-0000-0000-000000000000";
    v17 = @"blePeerId";
    blePeerId = self->_blePeerId;
    if (blePeerId)
    {
      goto LABEL_3;
    }
  }

  v7 = @"000000-0000-0000-0000-000000000000";
LABEL_6:
  v23[1] = v7;
  v18 = @"range";
  *&v2 = self->_range;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v23[2] = v8;
  v19 = @"model";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_model];
  v23[3] = v9;
  v20 = @"quality";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_quality];
  v23[4] = v10;
  v21 = @"sampleTimestamp";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sampleTimestamp];
  v23[5] = v11;
  v22 = @"timestamp";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v23[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v16 count:7];

  if (blePeerId)
  {
  }

  if (uuid)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVACMUWBData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end