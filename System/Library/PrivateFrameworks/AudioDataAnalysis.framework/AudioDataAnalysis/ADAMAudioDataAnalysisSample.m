@interface ADAMAudioDataAnalysisSample
- (ADAMAudioDataAnalysisSample)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initAudioSampleWithType:(unsigned int)a3 data:(id)a4 dateInterval:(id)a5 metadata:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAMAudioDataAnalysisSample

- (id)initAudioSampleWithType:(unsigned int)a3 data:(id)a4 dateInterval:(id)a5 metadata:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = ADAMAudioDataAnalysisSample;
  v14 = [(ADAMAudioDataAnalysisSample *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->type = a3;
    objc_storeStrong(&v14->data, a4);
    objc_storeStrong(&v15->dateInterval, a5);
    v16 = [v13 copy];
    metadata = v15->metadata;
    v15->metadata = v16;

    v18 = [MEMORY[0x277CCAD78] UUID];
    uuid = v15->uuid;
    v15->uuid = v18;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[ADAMAudioDataAnalysisSample type](self forKey:{"type"), @"kADAMAudioDataAnalysisType"}];
  v5 = [(ADAMAudioDataAnalysisSample *)self data];
  [v5 doubleValue];
  [v4 encodeDouble:@"kADAMAudioDataAnalysisData" forKey:?];

  v6 = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  [v4 encodeObject:v6 forKey:@"kADAMAudioDataAnalysisSampleDateInterval"];

  v7 = [(ADAMAudioDataAnalysisSample *)self metadata];
  [v4 encodeObject:v7 forKey:@"kADAMAudioDataAnalysisSampleMetadata"];

  v8 = [(ADAMAudioDataAnalysisSample *)self uuid];
  [v4 encodeObject:v8 forKey:@"kADAMAudioDataAnalysisSampleUUID"];
}

- (ADAMAudioDataAnalysisSample)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ADAMAudioDataAnalysisSample;
  v5 = [(ADAMAudioDataAnalysisSample *)&v21 init];
  if (v5)
  {
    v5->type = [v4 decodeInt32ForKey:@"kADAMAudioDataAnalysisType"];
    v6 = MEMORY[0x277CCABB0];
    [v4 decodeDoubleForKey:@"kADAMAudioDataAnalysisData"];
    v7 = [v6 numberWithDouble:?];
    data = v5->data;
    v5->data = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kADAMAudioDataAnalysisSampleDateInterval"];
    dateInterval = v5->dateInterval;
    v5->dateInterval = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kADAMAudioDataAnalysisSampleMetadata"];
    v16 = [v15 copy];
    metadata = v5->metadata;
    v5->metadata = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kADAMAudioDataAnalysisSampleUUID"];
    uuid = v5->uuid;
    v5->uuid = v18;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(ADAMAudioDataAnalysisSample *)self type];
  v7 = [(ADAMAudioDataAnalysisSample *)self data];
  v8 = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  v9 = [v8 copyWithZone:a3];
  v10 = [(ADAMAudioDataAnalysisSample *)self metadata];
  v11 = [v10 copyWithZone:a3];
  v12 = [v5 initAudioSampleWithType:v6 data:v7 dateInterval:v9 metadata:v11];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ADAMAudioDataAnalysisSample *)self uuid];
  v5 = [(ADAMAudioDataAnalysisSample *)self data];
  v6 = [ADAFUtil stringFromDataType:[(ADAMAudioDataAnalysisSample *)self type]];
  v7 = [(ADAMAudioDataAnalysisSample *)self dateInterval];
  v8 = [(ADAMAudioDataAnalysisSample *)self metadata];
  v9 = [v3 stringWithFormat:@"ADAMAudioDataAnalysisSample: uuid = %@, data = %@, type = %@, date= %@, metadata= %@", v4, v5, v6, v7, v8];

  return v9;
}

@end