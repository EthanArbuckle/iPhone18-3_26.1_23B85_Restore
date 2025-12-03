@interface EARSpeechModelInfo
- (EARSpeechModelInfo)initWithCoder:(id)coder;
- (EARSpeechModelInfo)initWithModelInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARSpeechModelInfo

- (EARSpeechModelInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = EARSpeechModelInfo;
  v5 = [(EARSpeechModelInfo *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"samplingRates"];
    samplingRates = v5->_samplingRates;
    v5->_samplingRates = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"tasks"];
    tasks = v5->_tasks;
    v5->_tasks = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSetVersion"];
    phoneSetVersion = v5->_phoneSetVersion;
    v5->_phoneSetVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acousticProfileVersion"];
    acousticProfileVersion = v5->_acousticProfileVersion;
    v5->_acousticProfileVersion = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acousticModelVersion"];
    acousticModelVersion = v5->_acousticModelVersion;
    v5->_acousticModelVersion = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"version"];
  [coderCopy encodeObject:self->_samplingRates forKey:@"samplingRates"];
  [coderCopy encodeObject:self->_tasks forKey:@"tasks"];
  [coderCopy encodeObject:self->_language forKey:@"language"];
  [coderCopy encodeObject:self->_phoneSetVersion forKey:@"phoneSetVersion"];
  [coderCopy encodeObject:self->_acousticProfileVersion forKey:@"acousticProfileVersion"];
  [coderCopy encodeObject:self->_acousticModelVersion forKey:@"acousticModelVersion"];
}

- (EARSpeechModelInfo)initWithModelInfo:(id)info
{
  infoCopy = info;
  v23.receiver = self;
  v23.super_class = EARSpeechModelInfo;
  v5 = [(EARSpeechModelInfo *)&v23 init];
  if (v5)
  {
    version = [infoCopy version];
    version = v5->_version;
    v5->_version = version;

    samplingRates = [infoCopy samplingRates];
    v9 = [samplingRates copy];
    samplingRates = v5->_samplingRates;
    v5->_samplingRates = v9;

    tasks = [infoCopy tasks];
    v12 = [tasks copy];
    tasks = v5->_tasks;
    v5->_tasks = v12;

    language = [infoCopy language];
    language = v5->_language;
    v5->_language = language;

    phoneSetVersion = [infoCopy phoneSetVersion];
    phoneSetVersion = v5->_phoneSetVersion;
    v5->_phoneSetVersion = phoneSetVersion;

    acousticProfileVersion = [infoCopy acousticProfileVersion];
    acousticProfileVersion = v5->_acousticProfileVersion;
    v5->_acousticProfileVersion = acousticProfileVersion;

    acousticModelVersion = [infoCopy acousticModelVersion];
    acousticModelVersion = v5->_acousticModelVersion;
    v5->_acousticModelVersion = acousticModelVersion;
  }

  return v5;
}

@end