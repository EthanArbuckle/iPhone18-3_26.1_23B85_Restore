@interface EARSpeechModelInfo
- (EARSpeechModelInfo)initWithCoder:(id)a3;
- (EARSpeechModelInfo)initWithModelInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARSpeechModelInfo

- (EARSpeechModelInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = EARSpeechModelInfo;
  v5 = [(EARSpeechModelInfo *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"samplingRates"];
    samplingRates = v5->_samplingRates;
    v5->_samplingRates = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"tasks"];
    tasks = v5->_tasks;
    v5->_tasks = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneSetVersion"];
    phoneSetVersion = v5->_phoneSetVersion;
    v5->_phoneSetVersion = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acousticProfileVersion"];
    acousticProfileVersion = v5->_acousticProfileVersion;
    v5->_acousticProfileVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acousticModelVersion"];
    acousticModelVersion = v5->_acousticModelVersion;
    v5->_acousticModelVersion = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeObject:version forKey:@"version"];
  [v5 encodeObject:self->_samplingRates forKey:@"samplingRates"];
  [v5 encodeObject:self->_tasks forKey:@"tasks"];
  [v5 encodeObject:self->_language forKey:@"language"];
  [v5 encodeObject:self->_phoneSetVersion forKey:@"phoneSetVersion"];
  [v5 encodeObject:self->_acousticProfileVersion forKey:@"acousticProfileVersion"];
  [v5 encodeObject:self->_acousticModelVersion forKey:@"acousticModelVersion"];
}

- (EARSpeechModelInfo)initWithModelInfo:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = EARSpeechModelInfo;
  v5 = [(EARSpeechModelInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 version];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 samplingRates];
    v9 = [v8 copy];
    samplingRates = v5->_samplingRates;
    v5->_samplingRates = v9;

    v11 = [v4 tasks];
    v12 = [v11 copy];
    tasks = v5->_tasks;
    v5->_tasks = v12;

    v14 = [v4 language];
    language = v5->_language;
    v5->_language = v14;

    v16 = [v4 phoneSetVersion];
    phoneSetVersion = v5->_phoneSetVersion;
    v5->_phoneSetVersion = v16;

    v18 = [v4 acousticProfileVersion];
    acousticProfileVersion = v5->_acousticProfileVersion;
    v5->_acousticProfileVersion = v18;

    v20 = [v4 acousticModelVersion];
    acousticModelVersion = v5->_acousticModelVersion;
    v5->_acousticModelVersion = v20;
  }

  return v5;
}

@end