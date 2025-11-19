@interface _SFSpeechRecognizerModelOptions
- (BOOL)isEqual:(id)a3;
- (_SFSpeechRecognizerModelOptions)initWithCoder:(id)a3;
- (_SFSpeechRecognizerModelOptions)initWithFarField:(BOOL)a3 geoLMRegionID:(id)a4 supplementalModelURL:(id)a5 modelOverrideURL:(id)a6 speechProfileURLs:(id)a7 userIdMask:(id)a8 taskForMemoryLock:(id)a9 atypicalSpeech:(BOOL)a10 enableParallelLoading:(BOOL)a11 speechProfileContainers:(id)a12 enableFullPayloadCorrection:(BOOL)a13 customLm:(id)a14;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFSpeechRecognizerModelOptions

- (unint64_t)hash
{
  if (self->_farField)
  {
    v3 = 1364;
  }

  else
  {
    v3 = 2263;
  }

  v4 = v3 + [(NSString *)self->_geoLMRegionID hash];
  v5 = [(NSURL *)self->_supplementalModelURL hash]- v4 + 32 * v4;
  v6 = [(NSURL *)self->_modelOverrideURL hash]- v5 + 32 * v5;
  v7 = [(NSArray *)self->_speechProfileURLs hash]- v6 + 32 * v6;
  v8 = [(NSDictionary *)self->_userIdMask hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_taskForMemoryLock hash]- v8 + 32 * v8;
  if (self->_atypicalSpeech)
  {
    v10 = 13;
  }

  else
  {
    v10 = 42;
  }

  v11 = v10 - v9 + 32 * v9;
  if (self->_enableParallelLoading)
  {
    v12 = 13;
  }

  else
  {
    v12 = 42;
  }

  v13 = [(NSArray *)self->_speechProfileContainers hash]- (v12 - v11 + 32 * v11) + 32 * (v12 - v11 + 32 * v11);
  if (self->_enableFullPayloadCorrection)
  {
    v14 = 13;
  }

  else
  {
    v14 = 42;
  }

  return v14 - v13 + 32 * v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if ([(_SFSpeechRecognizerModelOptions *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    farField = v5->_farField;
    v27 = self->_farField;
    geoLMRegionID = self->_geoLMRegionID;
    if (geoLMRegionID | v5->_geoLMRegionID)
    {
      v25 = [(NSString *)geoLMRegionID isEqual:?]^ 1;
    }

    else
    {
      v25 = 0;
    }

    supplementalModelURL = self->_supplementalModelURL;
    if (supplementalModelURL | v5->_supplementalModelURL)
    {
      v24 = [(NSURL *)supplementalModelURL isEqual:?]^ 1;
    }

    else
    {
      v24 = 0;
    }

    modelOverrideURL = self->_modelOverrideURL;
    if (modelOverrideURL | v5->_modelOverrideURL)
    {
      v23 = [(NSURL *)modelOverrideURL isEqual:?]^ 1;
    }

    else
    {
      v23 = 0;
    }

    speechProfileURLs = self->_speechProfileURLs;
    if (speechProfileURLs | v5->_speechProfileURLs)
    {
      v22 = ![(NSArray *)speechProfileURLs isEqualToArray:?];
    }

    else
    {
      v22 = 0;
    }

    userIdMask = self->_userIdMask;
    if (userIdMask | v5->_userIdMask)
    {
      v12 = ![(NSDictionary *)userIdMask isEqualToDictionary:?];
    }

    else
    {
      v12 = 0;
    }

    taskForMemoryLock = self->_taskForMemoryLock;
    if (taskForMemoryLock | v5->_taskForMemoryLock)
    {
      v14 = ![(NSString *)taskForMemoryLock isEqualToString:?];
    }

    else
    {
      v14 = 0;
    }

    atypicalSpeech = self->_atypicalSpeech;
    v16 = v5->_atypicalSpeech;
    enableParallelLoading = self->_enableParallelLoading;
    v18 = v5->_enableParallelLoading;
    speechProfileContainers = self->_speechProfileContainers;
    if (speechProfileContainers | v5->_speechProfileContainers)
    {
      v20 = [(NSArray *)speechProfileContainers isEqualToArray:?];
    }

    else
    {
      v20 = 1;
    }

    v7 = 0;
    if (!((v27 != farField) | (v25 | v24 | v23 | v22 | v12 | v14) & 1) && atypicalSpeech == v16 && enableParallelLoading == v18)
    {
      if (self->_enableFullPayloadCorrection == v5->_enableFullPayloadCorrection)
      {
        v7 = v20;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_SFSpeechRecognizerModelOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFSpeechRecognizerModelOptions;
  v5 = [(_SFSpeechRecognizerModelOptions *)&v24 init];
  if (v5)
  {
    v5->_farField = [v4 decodeBoolForKey:@"_farField"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_geoLMRegionID"];
    geoLMRegionID = v5->_geoLMRegionID;
    v5->_geoLMRegionID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_supplementalModelURL"];
    supplementalModelURL = v5->_supplementalModelURL;
    v5->_supplementalModelURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_speechProfileURLs"];
    speechProfileURLs = v5->_speechProfileURLs;
    v5->_speechProfileURLs = v12;

    v14 = objc_opt_class();
    v15 = [v4 decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"_userIdMask"];
    userIdMask = v5->_userIdMask;
    v5->_userIdMask = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_taskForMemoryLock"];
    taskForMemoryLock = v5->_taskForMemoryLock;
    v5->_taskForMemoryLock = v17;

    v5->_atypicalSpeech = [v4 decodeBoolForKey:@"_atypicalSpeech"];
    v5->_enableParallelLoading = [v4 decodeBoolForKey:@"_enableParallelLoading"];
    v19 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_speechProfileContainers"];
    speechProfileContainers = v5->_speechProfileContainers;
    v5->_speechProfileContainers = v19;

    v5->_enableFullPayloadCorrection = [v4 decodeBoolForKey:@"_enableFullPayloadCorrection"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_customLm"];
    customLm = v5->_customLm;
    v5->_customLm = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  farField = self->_farField;
  v5 = a3;
  [v5 encodeBool:farField forKey:@"_farField"];
  [v5 encodeObject:self->_geoLMRegionID forKey:@"_geoLMRegionID"];
  [v5 encodeObject:self->_supplementalModelURL forKey:@"_supplementalModelURL"];
  [v5 encodeObject:self->_modelOverrideURL forKey:@"_modelOverrideURL"];
  [v5 encodeObject:self->_speechProfileURLs forKey:@"_speechProfileURLs"];
  [v5 encodeObject:self->_userIdMask forKey:@"_userIdMask"];
  [v5 encodeObject:self->_taskForMemoryLock forKey:@"_taskForMemoryLock"];
  [v5 encodeBool:self->_atypicalSpeech forKey:@"_atypicalSpeech"];
  [v5 encodeBool:self->_enableParallelLoading forKey:@"_enableParallelLoading"];
  [v5 encodeObject:self->_speechProfileContainers forKey:@"_speechProfileContainers"];
  [v5 encodeBool:self->_enableFullPayloadCorrection forKey:@"_enableFullPayloadCorrection"];
  [v5 encodeObject:self->_customLm forKey:@"_customLm"];
}

- (_SFSpeechRecognizerModelOptions)initWithFarField:(BOOL)a3 geoLMRegionID:(id)a4 supplementalModelURL:(id)a5 modelOverrideURL:(id)a6 speechProfileURLs:(id)a7 userIdMask:(id)a8 taskForMemoryLock:(id)a9 atypicalSpeech:(BOOL)a10 enableParallelLoading:(BOOL)a11 speechProfileContainers:(id)a12 enableFullPayloadCorrection:(BOOL)a13 customLm:(id)a14
{
  v20 = a4;
  obj = a5;
  v21 = a5;
  v32 = a6;
  v22 = a6;
  v33 = a7;
  v35 = a7;
  v34 = a8;
  v23 = a8;
  v24 = a9;
  v25 = a12;
  v26 = a14;
  v36.receiver = self;
  v36.super_class = _SFSpeechRecognizerModelOptions;
  v27 = [(_SFSpeechRecognizerModelOptions *)&v36 init];
  v28 = v27;
  if (v27)
  {
    v27->_farField = a3;
    objc_storeStrong(&v27->_geoLMRegionID, a4);
    objc_storeStrong(&v28->_supplementalModelURL, obj);
    objc_storeStrong(&v28->_modelOverrideURL, v32);
    objc_storeStrong(&v28->_speechProfileURLs, v33);
    objc_storeStrong(&v28->_userIdMask, v34);
    objc_storeStrong(&v28->_taskForMemoryLock, a9);
    v28->_atypicalSpeech = a10;
    v28->_enableParallelLoading = a11;
    objc_storeStrong(&v28->_speechProfileContainers, a12);
    v28->_enableFullPayloadCorrection = a13;
    objc_storeStrong(&v28->_customLm, a14);
  }

  return v28;
}

@end