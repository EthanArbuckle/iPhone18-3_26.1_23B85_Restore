@interface CVACMUWBData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMUWBData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
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

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMUWBData classes];
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

- (CVACMUWBData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CVACMUWBData;
  v5 = [(CVACMUWBData *)&v15 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"u"];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [coderCopy decodeObjectForKey:@"b"];
    blePeerId = v5->_blePeerId;
    v5->_blePeerId = v9;

    [coderCopy decodeFloatForKey:@"r"];
    v5->_range = v11;
    v5->_model = [coderCopy decodeIntForKey:@"m"];
    v5->_quality = [coderCopy decodeIntForKey:@"q"];
    [coderCopy decodeDoubleForKey:@"st"];
    v5->_sampleTimestamp = v12;
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v13;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_uuid forKey:@"u"];
  [coderCopy encodeObject:self->_blePeerId forKey:@"b"];
  *&v5 = self->_range;
  [coderCopy encodeFloat:@"r" forKey:v5];
  [coderCopy encodeInt:LODWORD(self->_model) forKey:@"m"];
  [coderCopy encodeInt:LODWORD(self->_quality) forKey:@"q"];
  [coderCopy encodeDouble:@"st" forKey:self->_sampleTimestamp];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v23[7] = *MEMORY[0x277D85DE8];
  v16 = @"uuid";
  uuid = self->_uuid;
  if (uuid)
  {
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v23[0] = uUIDString;
    v17 = @"blePeerId";
    blePeerId = self->_blePeerId;
    if (blePeerId)
    {
LABEL_3:
      uUIDString2 = [(NSUUID *)blePeerId UUIDString];
      goto LABEL_6;
    }
  }

  else
  {
    uUIDString = @"000000-0000-0000-0000-000000000000";
    v23[0] = @"000000-0000-0000-0000-000000000000";
    v17 = @"blePeerId";
    blePeerId = self->_blePeerId;
    if (blePeerId)
    {
      goto LABEL_3;
    }
  }

  uUIDString2 = @"000000-0000-0000-0000-000000000000";
LABEL_6:
  v23[1] = uUIDString2;
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
  dictionary = [(CVACMUWBData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end