@interface CVACalibration
+ (id)classes;
+ (id)withData:(id)data;
- (CVACalibration)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACalibration

+ (id)classes
{
  if (qword_27E3C8578 == -1)
  {
    v3 = qword_27E3C8570;
  }

  else
  {
    sub_24019CB50();
    v3 = qword_27E3C8570;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACalibration classes];
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

- (CVACalibration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CVACalibration;
  v5 = [(CVACalibration *)&v12 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"ccl"];
    cameraCalibrations = v5->_cameraCalibrations;
    v5->_cameraCalibrations = v7;

    v9 = [coderCopy decodeObjectForKey:@"imui"];
    imuCalibration = v5->_imuCalibration;
    v5->_imuCalibration = v9;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_cameraCalibrations forKey:@"ccl"];
  [coderCopy encodeObject:self->_imuCalibration forKey:@"imui"];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_cameraCalibrations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionary = [*(*(&v14 + 1) + 8 * i) dictionary];
        [v3 addObject:dictionary];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v18[0] = @"ccl";
  v18[1] = @"imui";
  v19[0] = v3;
  dictionary2 = [(CVAIMUCalibration *)self->_imuCalibration dictionary];
  v19[1] = dictionary2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACalibration *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end