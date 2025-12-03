@interface MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor
- (MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(id)queue;
- (void)setContainerPlayParameters:(id)parameters;
- (void)setEndTime:(double)time forItemWithPlayParameters:(id)parameters;
- (void)setPlayActivityFeatureName:(id)name;
- (void)setPlayActivityRecommendationData:(id)data;
- (void)setStartItemPlayParameters:(id)parameters;
- (void)setStartTime:(double)time forItemWithPlayParameters:(id)parameters;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor

- (MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(id)queue
{
  v30 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor;
  v5 = [(MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor *)&v23 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = queueCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          _underlyingPlayParameters = [*(*(&v19 + 1) + 8 * v10) _underlyingPlayParameters];
          [v6 addObject:_underlyingPlayParameters];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = [v6 copy];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getMPMusicPlayerPlayParametersQueueDescriptorClass_softClass;
    v28 = getMPMusicPlayerPlayParametersQueueDescriptorClass_softClass;
    if (!getMPMusicPlayerPlayParametersQueueDescriptorClass_softClass)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke;
      v24[3] = &unk_278229610;
      v24[4] = &v25;
      __getMPMusicPlayerPlayParametersQueueDescriptorClass_block_invoke(v24);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [[v13 alloc] initWithPlayParametersQueue:v12];
    underlyingQueueDescriptor = v5->_underlyingQueueDescriptor;
    v5->_underlyingQueueDescriptor = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setPlayActivityFeatureName:(id)name
{
  nameCopy = name;
  playActivityFeatureName = self->_playActivityFeatureName;
  if (playActivityFeatureName != nameCopy)
  {
    v8 = nameCopy;
    if (([(NSString *)playActivityFeatureName isEqual:nameCopy]& 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_playActivityFeatureName;
      self->_playActivityFeatureName = v6;

      [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setPlayActivityFeatureName:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPlayActivityRecommendationData:(id)data
{
  dataCopy = data;
  playActivityRecommendationData = self->_playActivityRecommendationData;
  if (playActivityRecommendationData != dataCopy)
  {
    v8 = dataCopy;
    if (([(NSData *)playActivityRecommendationData isEqual:dataCopy]& 1) == 0)
    {
      v6 = [(NSData *)v8 copy];
      v7 = self->_playActivityRecommendationData;
      self->_playActivityRecommendationData = v6;

      [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setPlayActivityRecommendationData:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setStartItemPlayParameters:(id)parameters
{
  parametersCopy = parameters;
  p_startItemPlayParameters = &self->_startItemPlayParameters;
  if (self->_startItemPlayParameters != parametersCopy)
  {
    v8 = parametersCopy;
    objc_storeStrong(p_startItemPlayParameters, parameters);
    _underlyingPlayParameters = [(MusicKit_SoftLinking_MPMusicPlayerPlayParameters *)self->_startItemPlayParameters _underlyingPlayParameters];
    [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setStartItemPlayParameters:_underlyingPlayParameters];

    parametersCopy = v8;
  }

  MEMORY[0x2821F96F8](p_startItemPlayParameters, parametersCopy);
}

- (void)setContainerPlayParameters:(id)parameters
{
  parametersCopy = parameters;
  p_containerPlayParameters = &self->_containerPlayParameters;
  if (self->_containerPlayParameters != parametersCopy)
  {
    v8 = parametersCopy;
    objc_storeStrong(p_containerPlayParameters, parameters);
    _underlyingPlayParameters = [(MusicKit_SoftLinking_MPMusicPlayerPlayParameters *)self->_containerPlayParameters _underlyingPlayParameters];
    [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setContainerPlayParameters:_underlyingPlayParameters];

    parametersCopy = v8;
  }

  MEMORY[0x2821F96F8](p_containerPlayParameters, parametersCopy);
}

- (void)setStartTime:(double)time forItemWithPlayParameters:(id)parameters
{
  _underlyingPlayParameters = [parameters _underlyingPlayParameters];
  [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setStartTime:_underlyingPlayParameters forItemWithPlayParameters:time];
}

- (void)setEndTime:(double)time forItemWithPlayParameters:(id)parameters
{
  _underlyingPlayParameters = [parameters _underlyingPlayParameters];
  [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setEndTime:_underlyingPlayParameters forItemWithPlayParameters:time];
}

@end