@interface MPMusicPlayerQueueDescriptor
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (MPMusicPlayerQueueDescriptor)initWithCoder:(id)coder;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setEndTime:(double)time forIdentifiers:(id)identifiers;
- (void)_setStartTime:(double)time forIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerQueueDescriptor

- (void)_setEndTime:(double)time forIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  endTimes = self->_endTimes;
  p_endTimes = &self->_endTimes;
  dictionary = endTimes;
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(p_endTimes, dictionary);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [(NSDictionary *)dictionary setObject:v9 forKey:identifiersCopy];
}

- (void)_setStartTime:(double)time forIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  startTimes = self->_startTimes;
  p_startTimes = &self->_startTimes;
  dictionary = startTimes;
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_storeStrong(p_startTimes, dictionary);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [(NSDictionary *)dictionary setObject:v9 forKey:identifiersCopy];
}

- (BOOL)isEmpty
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPMusicPlayerQueueDescriptor.m" lineNumber:189 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPMusicPlayerQueueDescriptor class]"}];
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 8) = self->_disableQueueModifications;
  *(v4 + 2) = self->_shuffleType;
  *(v4 + 3) = self->_repeatType;
  *(v4 + 9) = self->_isPrivate;
  v5 = [(NSDictionary *)self->_startTimes mutableCopy];
  v6 = *(v4 + 9);
  *(v4 + 9) = v5;

  v7 = [(NSDictionary *)self->_endTimes mutableCopy];
  v8 = *(v4 + 10);
  *(v4 + 10) = v7;

  objc_storeStrong(v4 + 4, self->_requestingBundleIdentifier);
  objc_storeStrong(v4 + 5, self->_requestingBundleVersion);
  objc_storeStrong(v4 + 6, self->_playActivityQueueGroupingID);
  objc_storeStrong(v4 + 7, self->_playActivityFeatureName);
  objc_storeStrong(v4 + 8, self->_playActivityRecommendationData);
  *(v4 + 10) = self->_prioritizeStartupOverQuality;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  disableQueueModifications = self->_disableQueueModifications;
  coderCopy = coder;
  [coderCopy encodeBool:disableQueueModifications forKey:@"disableQueueModifications"];
  [coderCopy encodeInteger:self->_shuffleType forKey:@"shuffleType"];
  [coderCopy encodeInteger:self->_repeatType forKey:@"repeatType"];
  [coderCopy encodeBool:self->_isPrivate forKey:@"private"];
  [coderCopy encodeObject:self->_startTimes forKey:@"MPMusicPlayerQueueDescriptorStartTimes"];
  [coderCopy encodeObject:self->_endTimes forKey:@"MPMusicPlayerQueueDescriptorEndTimes"];
  [coderCopy encodeObject:self->_requestingBundleIdentifier forKey:@"bundleID"];
  [coderCopy encodeObject:self->_requestingBundleVersion forKey:@"bundleVersion"];
  [coderCopy encodeObject:self->_playActivityQueueGroupingID forKey:@"queueGroupingID"];
  [coderCopy encodeObject:self->_playActivityFeatureName forKey:@"featureName"];
  [coderCopy encodeObject:self->_playActivityRecommendationData forKey:@"recommendationData"];
  [coderCopy encodeBool:self->_prioritizeStartupOverQuality forKey:@"prioritizeStartupOverQuality"];
}

- (MPMusicPlayerQueueDescriptor)initWithCoder:(id)coder
{
  v25[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = MPMusicPlayerQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v24 init];
  if (v5)
  {
    v5->_disableQueueModifications = [coderCopy decodeBoolForKey:@"disableQueueModifications"];
    v5->_shuffleType = [coderCopy decodeIntegerForKey:@"shuffleType"];
    v5->_repeatType = [coderCopy decodeIntegerForKey:@"repeatType"];
    v5->_isPrivate = [coderCopy decodeBoolForKey:@"private"];
    v6 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPMusicPlayerQueueDescriptorStartTimes"];
    startTimes = v5->_startTimes;
    v5->_startTimes = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPMusicPlayerQueueDescriptorEndTimes"];
    endTimes = v5->_endTimes;
    v5->_endTimes = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    requestingBundleIdentifier = v5->_requestingBundleIdentifier;
    v5->_requestingBundleIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    requestingBundleVersion = v5->_requestingBundleVersion;
    v5->_requestingBundleVersion = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queueGroupingID"];
    playActivityQueueGroupingID = v5->_playActivityQueueGroupingID;
    v5->_playActivityQueueGroupingID = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureName"];
    playActivityFeatureName = v5->_playActivityFeatureName;
    v5->_playActivityFeatureName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recommendationData"];
    playActivityRecommendationData = v5->_playActivityRecommendationData;
    v5->_playActivityRecommendationData = v21;

    v5->_prioritizeStartupOverQuality = [coderCopy decodeBoolForKey:@"prioritizeStartupOverQuality"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    repeatType = self->_repeatType;
    shuffleType = self->_shuffleType;
    v6 = v5[3];
    v34 = v5[2];
    isPrivate = self->_isPrivate;
    v7 = *(v5 + 9);
    v8 = v5[9];
    v9 = self->_startTimes;
    v10 = v9;
    if (v9 == v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = [(NSDictionary *)v9 isEqual:v8];
    }

    v13 = v5[10];
    v14 = self->_endTimes;
    v15 = v14;
    if (v14 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = [(NSDictionary *)v14 isEqual:v13];
    }

    v17 = v5[6];
    v18 = self->_playActivityQueueGroupingID;
    v19 = v18;
    if (v18 == v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = [(NSString *)v18 isEqual:v17];
    }

    v21 = v5[7];
    v22 = self->_playActivityFeatureName;
    v23 = v22;
    if (v22 == v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = [(NSString *)v22 isEqual:v21];
    }

    v25 = v5[8];
    v26 = self->_playActivityRecommendationData;
    v27 = v26;
    if (v26 == v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = [(NSData *)v26 isEqual:v25];
    }

    v31 = shuffleType == v34 && repeatType == v6 && isPrivate == v7;
    v12 = v31 & v11 & v16 & v20 & v24 & v28;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = MPMusicPlayerQueueDescriptor;
  v2 = [(MPMusicPlayerQueueDescriptor *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_shuffleType = xmmword_1A273DE30;
    if (_MPMusicPlayerGetBundleInfoPair_onceToken != -1)
    {
      dispatch_once(&_MPMusicPlayerGetBundleInfoPair_onceToken, &__block_literal_global_52480);
    }

    v4 = [MEMORY[0x1E69B1470] pairWithFirst:_MPMusicPlayerGetBundleInfoPair___bundleIdentifier second:_MPMusicPlayerGetBundleInfoPair___bundleVersion];
    first = [v4 first];
    requestingBundleIdentifier = v3->_requestingBundleIdentifier;
    v3->_requestingBundleIdentifier = first;

    second = [v4 second];
    requestingBundleVersion = v3->_requestingBundleVersion;
    v3->_requestingBundleVersion = second;

    playActivityFeatureName = v3->_playActivityFeatureName;
    v3->_playActivityFeatureName = @"MusicKit";

    playActivityRecommendationData = v3->_playActivityRecommendationData;
    v3->_playActivityRecommendationData = 0;
  }

  v12.receiver = v3;
  v12.super_class = MPMusicPlayerQueueDescriptor;
  return [(MPMusicPlayerQueueDescriptor *)&v12 init];
}

@end