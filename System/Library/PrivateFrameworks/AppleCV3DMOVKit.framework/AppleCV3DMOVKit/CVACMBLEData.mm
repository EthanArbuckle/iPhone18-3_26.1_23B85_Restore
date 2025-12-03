@interface CVACMBLEData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMBLEData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMBLEData

+ (id)classes
{
  if (qword_27E3C84F8 == -1)
  {
    v3 = qword_27E3C84F0;
  }

  else
  {
    sub_24019CAB0();
    v3 = qword_27E3C84F0;
  }

  return v3;
}

- (CVACMBLEData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CVACMBLEData;
  v5 = [(CVACMBLEData *)&v16 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"u"];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [coderCopy decodeObjectForKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v9;

    v11 = [coderCopy decodeObjectForKey:@"n"];
    productName = v5->_productName;
    v5->_productName = v11;

    v5->_rssi = [coderCopy decodeIntForKey:@"r"];
    v5->_channel = [coderCopy decodeIntForKey:@"c"];
    v5->_model = [coderCopy decodeIntForKey:@"m"];
    [coderCopy decodeDoubleForKey:@"at"];
    v5->_advertisementTimestamp = v13;
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v14;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMBLEData classes];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_uuid forKey:@"u"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"i"];
  [coderCopy encodeObject:self->_productName forKey:@"n"];
  [coderCopy encodeInt:self->_rssi forKey:@"r"];
  [coderCopy encodeInt:self->_channel forKey:@"c"];
  [coderCopy encodeInt:LODWORD(self->_model) forKey:@"m"];
  [coderCopy encodeDouble:@"at" forKey:self->_advertisementTimestamp];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v24[8] = *MEMORY[0x277D85DE8];
  v16 = @"id";
  uuid = self->_uuid;
  if (uuid)
  {
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v24[0] = uUIDString;
    v17 = @"idsIdentifier";
    idsIdentifier = self->_idsIdentifier;
    if (idsIdentifier)
    {
LABEL_3:
      uUIDString2 = [(NSUUID *)idsIdentifier UUIDString];
      goto LABEL_6;
    }
  }

  else
  {
    uUIDString = @"000000-0000-0000-0000-000000000000";
    v24[0] = @"000000-0000-0000-0000-000000000000";
    v17 = @"idsIdentifier";
    idsIdentifier = self->_idsIdentifier;
    if (idsIdentifier)
    {
      goto LABEL_3;
    }
  }

  uUIDString2 = @"000000-0000-0000-0000-000000000000";
LABEL_6:
  productName = &stru_28521B010;
  if (self->_productName)
  {
    productName = self->_productName;
  }

  v24[1] = uUIDString2;
  v24[2] = productName;
  v18 = @"product";
  v19 = @"rssi";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_rssi];
  v24[3] = v8;
  v20 = @"channel";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_channel];
  v24[4] = v9;
  v21 = @"model";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_model];
  v24[5] = v10;
  v22 = @"advertTimestamp";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_advertisementTimestamp];
  v24[6] = v11;
  v23 = @"timestamp";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v24[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v16 count:8];

  if (idsIdentifier)
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
  dictionary = [(CVACMBLEData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end