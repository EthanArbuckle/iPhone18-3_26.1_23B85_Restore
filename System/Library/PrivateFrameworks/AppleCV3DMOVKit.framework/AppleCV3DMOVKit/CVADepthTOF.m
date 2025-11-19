@interface CVADepthTOF
+ (id)classes;
+ (id)withData:(id)a3;
- (CVADepthTOF)initWithADJasperPointCloud:(id)a3 timestamp:(double)a4;
- (CVADepthTOF)initWithAVPointCloudData:(id)a3 timestamp:(double)a4;
- (CVADepthTOF)initWithCVDataBufferRef:(__CVBuffer *)a3 timestamp:(double)a4 projectorMode:(int64_t)a5;
- (CVADepthTOF)initWithCoder:(id)a3;
- (CVADepthTOF)initWithJasperDepth:(id)a3 timestamp:(double)a4 projectorMode:(int64_t)a5;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CVADepthTOF

+ (id)classes
{
  if (qword_27E3C8598 == -1)
  {
    v3 = qword_27E3C8590;
  }

  else
  {
    sub_24019CB78();
    v3 = qword_27E3C8590;
  }

  return v3;
}

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVADepthTOF classes];
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

- (CVADepthTOF)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CVADepthTOF *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    if ([v4 containsValueForKey:@"p"])
    {
      v8 = [v4 decodeIntegerForKey:@"p"];
    }

    else
    {
      v8 = 0;
    }

    v5->_projectorMode = v8;
    v9 = [v4 decodeObjectForKey:@"m"];
    metadata = v5->_metadata;
    v5->_metadata = v9;

    v5->_syncTimestamp = [v4 decodeInt64ForKey:@"st"];
    v5->_frameId = [v4 decodeInt64ForKey:@"fi"];
    v11 = [v4 decodeObjectForKey:@"d"];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CED0A8]) initWithDictionaryRepresentation:v11];
      pointCloud = v5->_pointCloud;
      v5->_pointCloud = v12;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_data forKey:@"d"];
  [v5 encodeDouble:@"t" forKey:self->_timestamp];
  [v5 encodeInteger:self->_projectorMode forKey:@"p"];
  [v5 encodeObject:self->_metadata forKey:@"m"];
  [v5 encodeInt64:self->_syncTimestamp forKey:@"st"];
  [v5 encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (CVADepthTOF)initWithADJasperPointCloud:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CVADepthTOF;
  v8 = [(CVADepthTOF *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = a4;
    objc_storeStrong(&v8->_pointCloud, a3);
    v9->_projectorMode = 0;
    v10 = [(ADJasperPointCloud *)v9->_pointCloud dictionaryRepresentation];
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (CVADepthTOF)initWithAVPointCloudData:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CED0A8] makeWithDataBuffer:{objc_msgSend(v6, "pointCloudDataBuffer")}];
  v8 = [(CVADepthTOF *)self initWithADJasperPointCloud:v7 timestamp:a4];
  v9 = NSSelectorFromString(&cfstr_Projectormode.isa);
  if (objc_opt_respondsToSelector())
  {
    v10 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:v6 selector:v9 object:0];
    [v10 start];
    v13 = 0;
    v11 = [v10 result];
    [v11 getValue:&v13];

    v8->_projectorMode = v13;
  }

  return v8;
}

- (CVADepthTOF)initWithCVDataBufferRef:(__CVBuffer *)a3 timestamp:(double)a4 projectorMode:(int64_t)a5
{
  v8 = [MEMORY[0x277CED0A8] makeWithDataBuffer:a3];
  v9 = [(CVADepthTOF *)self initWithADJasperPointCloud:v8 timestamp:a4];
  v9->_projectorMode = a5;
  v10 = v9;

  return v10;
}

- (CVADepthTOF)initWithJasperDepth:(id)a3 timestamp:(double)a4 projectorMode:(int64_t)a5
{
  v8 = [a3 dictionaryRepresentation];
  v9 = [objc_alloc(MEMORY[0x277CED0A8]) initWithDictionaryRepresentation:v8];
  v10 = [(CVADepthTOF *)self initWithADJasperPointCloud:v9 timestamp:a4];
  v10->_projectorMode = a5;
  v11 = v10;

  return v11;
}

- (id)dictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"t";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v12[0] = v3;
  v11[1] = @"pc";
  v4 = [(ADJasperPointCloud *)self->_pointCloud dictionaryRepresentation];
  v12[1] = v4;
  v11[2] = @"p";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_projectorMode];
  v12[2] = v5;
  v11[3] = @"st";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  v12[3] = v6;
  v11[4] = @"fi";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frameId];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CVADepthTOF *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end