@interface _SFSpeechRecognizerModelOptions
- (BOOL)isEqual:(id)equal;
- (_SFSpeechRecognizerModelOptions)initWithCoder:(id)coder;
- (_SFSpeechRecognizerModelOptions)initWithFarField:(BOOL)field geoLMRegionID:(id)d supplementalModelURL:(id)l modelOverrideURL:(id)rL speechProfileURLs:(id)ls userIdMask:(id)mask taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)self0 enableParallelLoading:(BOOL)self1 speechProfileContainers:(id)self2 enableFullPayloadCorrection:(BOOL)self3 customLm:(id)self4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if ([(_SFSpeechRecognizerModelOptions *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (_SFSpeechRecognizerModelOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = _SFSpeechRecognizerModelOptions;
  v5 = [(_SFSpeechRecognizerModelOptions *)&v24 init];
  if (v5)
  {
    v5->_farField = [coderCopy decodeBoolForKey:@"_farField"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_geoLMRegionID"];
    geoLMRegionID = v5->_geoLMRegionID;
    v5->_geoLMRegionID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_supplementalModelURL"];
    supplementalModelURL = v5->_supplementalModelURL;
    v5->_supplementalModelURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_speechProfileURLs"];
    speechProfileURLs = v5->_speechProfileURLs;
    v5->_speechProfileURLs = v12;

    v14 = objc_opt_class();
    v15 = [coderCopy decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"_userIdMask"];
    userIdMask = v5->_userIdMask;
    v5->_userIdMask = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_taskForMemoryLock"];
    taskForMemoryLock = v5->_taskForMemoryLock;
    v5->_taskForMemoryLock = v17;

    v5->_atypicalSpeech = [coderCopy decodeBoolForKey:@"_atypicalSpeech"];
    v5->_enableParallelLoading = [coderCopy decodeBoolForKey:@"_enableParallelLoading"];
    v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_speechProfileContainers"];
    speechProfileContainers = v5->_speechProfileContainers;
    v5->_speechProfileContainers = v19;

    v5->_enableFullPayloadCorrection = [coderCopy decodeBoolForKey:@"_enableFullPayloadCorrection"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_customLm"];
    customLm = v5->_customLm;
    v5->_customLm = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  farField = self->_farField;
  coderCopy = coder;
  [coderCopy encodeBool:farField forKey:@"_farField"];
  [coderCopy encodeObject:self->_geoLMRegionID forKey:@"_geoLMRegionID"];
  [coderCopy encodeObject:self->_supplementalModelURL forKey:@"_supplementalModelURL"];
  [coderCopy encodeObject:self->_modelOverrideURL forKey:@"_modelOverrideURL"];
  [coderCopy encodeObject:self->_speechProfileURLs forKey:@"_speechProfileURLs"];
  [coderCopy encodeObject:self->_userIdMask forKey:@"_userIdMask"];
  [coderCopy encodeObject:self->_taskForMemoryLock forKey:@"_taskForMemoryLock"];
  [coderCopy encodeBool:self->_atypicalSpeech forKey:@"_atypicalSpeech"];
  [coderCopy encodeBool:self->_enableParallelLoading forKey:@"_enableParallelLoading"];
  [coderCopy encodeObject:self->_speechProfileContainers forKey:@"_speechProfileContainers"];
  [coderCopy encodeBool:self->_enableFullPayloadCorrection forKey:@"_enableFullPayloadCorrection"];
  [coderCopy encodeObject:self->_customLm forKey:@"_customLm"];
}

- (_SFSpeechRecognizerModelOptions)initWithFarField:(BOOL)field geoLMRegionID:(id)d supplementalModelURL:(id)l modelOverrideURL:(id)rL speechProfileURLs:(id)ls userIdMask:(id)mask taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)self0 enableParallelLoading:(BOOL)self1 speechProfileContainers:(id)self2 enableFullPayloadCorrection:(BOOL)self3 customLm:(id)self4
{
  dCopy = d;
  obj = l;
  lCopy = l;
  rLCopy = rL;
  rLCopy2 = rL;
  lsCopy = ls;
  lsCopy2 = ls;
  maskCopy = mask;
  maskCopy2 = mask;
  lockCopy = lock;
  containersCopy = containers;
  lmCopy = lm;
  v36.receiver = self;
  v36.super_class = _SFSpeechRecognizerModelOptions;
  v27 = [(_SFSpeechRecognizerModelOptions *)&v36 init];
  v28 = v27;
  if (v27)
  {
    v27->_farField = field;
    objc_storeStrong(&v27->_geoLMRegionID, d);
    objc_storeStrong(&v28->_supplementalModelURL, obj);
    objc_storeStrong(&v28->_modelOverrideURL, rLCopy);
    objc_storeStrong(&v28->_speechProfileURLs, lsCopy);
    objc_storeStrong(&v28->_userIdMask, maskCopy);
    objc_storeStrong(&v28->_taskForMemoryLock, lock);
    v28->_atypicalSpeech = speech;
    v28->_enableParallelLoading = loading;
    objc_storeStrong(&v28->_speechProfileContainers, containers);
    v28->_enableFullPayloadCorrection = correction;
    objc_storeStrong(&v28->_customLm, lm);
  }

  return v28;
}

@end