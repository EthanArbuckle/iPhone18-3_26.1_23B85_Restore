@interface ADAMAudioDataAnalysisSample
- (ADAMAudioDataAnalysisSample)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initAudioSampleWithType:(unsigned int)type data:(id)data dateInterval:(id)interval metadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADAMAudioDataAnalysisSample

- (id)initAudioSampleWithType:(unsigned int)type data:(id)data dateInterval:(id)interval metadata:(id)metadata
{
  dataCopy = data;
  intervalCopy = interval;
  metadataCopy = metadata;
  v21.receiver = self;
  v21.super_class = ADAMAudioDataAnalysisSample;
  v14 = [(ADAMAudioDataAnalysisSample *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->type = type;
    objc_storeStrong(&v14->data, data);
    objc_storeStrong(&v15->dateInterval, interval);
    v16 = [metadataCopy copy];
    metadata = v15->metadata;
    v15->metadata = v16;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v15->uuid;
    v15->uuid = uUID;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[ADAMAudioDataAnalysisSample type](self forKey:{"type"), @"kADAMAudioDataAnalysisType"}];
  data = [(ADAMAudioDataAnalysisSample *)self data];
  [data doubleValue];
  [coderCopy encodeDouble:@"kADAMAudioDataAnalysisData" forKey:?];

  dateInterval = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  [coderCopy encodeObject:dateInterval forKey:@"kADAMAudioDataAnalysisSampleDateInterval"];

  metadata = [(ADAMAudioDataAnalysisSample *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"kADAMAudioDataAnalysisSampleMetadata"];

  uuid = [(ADAMAudioDataAnalysisSample *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"kADAMAudioDataAnalysisSampleUUID"];
}

- (ADAMAudioDataAnalysisSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ADAMAudioDataAnalysisSample;
  v5 = [(ADAMAudioDataAnalysisSample *)&v21 init];
  if (v5)
  {
    v5->type = [coderCopy decodeInt32ForKey:@"kADAMAudioDataAnalysisType"];
    v6 = MEMORY[0x277CCABB0];
    [coderCopy decodeDoubleForKey:@"kADAMAudioDataAnalysisData"];
    v7 = [v6 numberWithDouble:?];
    data = v5->data;
    v5->data = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kADAMAudioDataAnalysisSampleDateInterval"];
    dateInterval = v5->dateInterval;
    v5->dateInterval = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"kADAMAudioDataAnalysisSampleMetadata"];
    v16 = [v15 copy];
    metadata = v5->metadata;
    v5->metadata = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kADAMAudioDataAnalysisSampleUUID"];
    uuid = v5->uuid;
    v5->uuid = v18;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  type = [(ADAMAudioDataAnalysisSample *)self type];
  data = [(ADAMAudioDataAnalysisSample *)self data];
  dateInterval = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  v9 = [dateInterval copyWithZone:zone];
  metadata = [(ADAMAudioDataAnalysisSample *)self metadata];
  v11 = [metadata copyWithZone:zone];
  v12 = [v5 initAudioSampleWithType:type data:data dateInterval:v9 metadata:v11];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(ADAMAudioDataAnalysisSample *)self uuid];
  data = [(ADAMAudioDataAnalysisSample *)self data];
  v6 = [ADAFUtil stringFromDataType:[(ADAMAudioDataAnalysisSample *)self type]];
  dateInterval = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  metadata = [(ADAMAudioDataAnalysisSample *)self metadata];
  v9 = [v3 stringWithFormat:@"ADAMAudioDataAnalysisSample: uuid = %@, data = %@, type = %@, date= %@, metadata= %@", uuid, data, v6, dateInterval, metadata];

  return v9;
}

@end