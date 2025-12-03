@interface CVADepthTOF
+ (id)classes;
+ (id)withData:(id)data;
- (CVADepthTOF)initWithADJasperPointCloud:(id)cloud timestamp:(double)timestamp;
- (CVADepthTOF)initWithAVPointCloudData:(id)data timestamp:(double)timestamp;
- (CVADepthTOF)initWithCVDataBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp projectorMode:(int64_t)mode;
- (CVADepthTOF)initWithCoder:(id)coder;
- (CVADepthTOF)initWithJasperDepth:(id)depth timestamp:(double)timestamp projectorMode:(int64_t)mode;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
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

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVADepthTOF classes];
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

- (CVADepthTOF)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVADepthTOF *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v7;
    if ([coderCopy containsValueForKey:@"p"])
    {
      v8 = [coderCopy decodeIntegerForKey:@"p"];
    }

    else
    {
      v8 = 0;
    }

    v5->_projectorMode = v8;
    v9 = [coderCopy decodeObjectForKey:@"m"];
    metadata = v5->_metadata;
    v5->_metadata = v9;

    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    v5->_frameId = [coderCopy decodeInt64ForKey:@"fi"];
    v11 = [coderCopy decodeObjectForKey:@"d"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_data forKey:@"d"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInteger:self->_projectorMode forKey:@"p"];
  [coderCopy encodeObject:self->_metadata forKey:@"m"];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  [coderCopy encodeInt64:self->_frameId forKey:@"fi"];
  objc_autoreleasePoolPop(v4);
}

- (CVADepthTOF)initWithADJasperPointCloud:(id)cloud timestamp:(double)timestamp
{
  cloudCopy = cloud;
  v13.receiver = self;
  v13.super_class = CVADepthTOF;
  v8 = [(CVADepthTOF *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    objc_storeStrong(&v8->_pointCloud, cloud);
    v9->_projectorMode = 0;
    dictionaryRepresentation = [(ADJasperPointCloud *)v9->_pointCloud dictionaryRepresentation];
    data = v9->_data;
    v9->_data = dictionaryRepresentation;
  }

  return v9;
}

- (CVADepthTOF)initWithAVPointCloudData:(id)data timestamp:(double)timestamp
{
  dataCopy = data;
  v7 = [MEMORY[0x277CED0A8] makeWithDataBuffer:{objc_msgSend(dataCopy, "pointCloudDataBuffer")}];
  v8 = [(CVADepthTOF *)self initWithADJasperPointCloud:v7 timestamp:timestamp];
  v9 = NSSelectorFromString(&cfstr_Projectormode.isa);
  if (objc_opt_respondsToSelector())
  {
    v10 = [objc_alloc(MEMORY[0x277CCAA80]) initWithTarget:dataCopy selector:v9 object:0];
    [v10 start];
    v13 = 0;
    result = [v10 result];
    [result getValue:&v13];

    v8->_projectorMode = v13;
  }

  return v8;
}

- (CVADepthTOF)initWithCVDataBufferRef:(__CVBuffer *)ref timestamp:(double)timestamp projectorMode:(int64_t)mode
{
  v8 = [MEMORY[0x277CED0A8] makeWithDataBuffer:ref];
  v9 = [(CVADepthTOF *)self initWithADJasperPointCloud:v8 timestamp:timestamp];
  v9->_projectorMode = mode;
  v10 = v9;

  return v10;
}

- (CVADepthTOF)initWithJasperDepth:(id)depth timestamp:(double)timestamp projectorMode:(int64_t)mode
{
  dictionaryRepresentation = [depth dictionaryRepresentation];
  v9 = [objc_alloc(MEMORY[0x277CED0A8]) initWithDictionaryRepresentation:dictionaryRepresentation];
  v10 = [(CVADepthTOF *)self initWithADJasperPointCloud:v9 timestamp:timestamp];
  v10->_projectorMode = mode;
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
  dictionaryRepresentation = [(ADJasperPointCloud *)self->_pointCloud dictionaryRepresentation];
  v12[1] = dictionaryRepresentation;
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
  dictionary = [(CVADepthTOF *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end