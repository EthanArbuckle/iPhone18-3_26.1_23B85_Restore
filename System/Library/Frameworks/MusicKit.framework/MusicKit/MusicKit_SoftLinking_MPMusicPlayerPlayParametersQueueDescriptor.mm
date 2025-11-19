@interface MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor
- (MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(id)a3;
- (void)setContainerPlayParameters:(id)a3;
- (void)setEndTime:(double)a3 forItemWithPlayParameters:(id)a4;
- (void)setPlayActivityFeatureName:(id)a3;
- (void)setPlayActivityRecommendationData:(id)a3;
- (void)setStartItemPlayParameters:(id)a3;
- (void)setStartTime:(double)a3 forItemWithPlayParameters:(id)a4;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor

- (MusicKit_SoftLinking_MPMusicPlayerPlayParametersQueueDescriptor)initWithPlayParametersQueue:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = v4;
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

          v11 = [*(*(&v19 + 1) + 8 * v10) _underlyingPlayParameters];
          [v6 addObject:v11];

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

- (void)setPlayActivityFeatureName:(id)a3
{
  v4 = a3;
  playActivityFeatureName = self->_playActivityFeatureName;
  if (playActivityFeatureName != v4)
  {
    v8 = v4;
    if (([(NSString *)playActivityFeatureName isEqual:v4]& 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_playActivityFeatureName;
      self->_playActivityFeatureName = v6;

      [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setPlayActivityFeatureName:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPlayActivityRecommendationData:(id)a3
{
  v4 = a3;
  playActivityRecommendationData = self->_playActivityRecommendationData;
  if (playActivityRecommendationData != v4)
  {
    v8 = v4;
    if (([(NSData *)playActivityRecommendationData isEqual:v4]& 1) == 0)
    {
      v6 = [(NSData *)v8 copy];
      v7 = self->_playActivityRecommendationData;
      self->_playActivityRecommendationData = v6;

      [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setPlayActivityRecommendationData:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setStartItemPlayParameters:(id)a3
{
  v5 = a3;
  p_startItemPlayParameters = &self->_startItemPlayParameters;
  if (self->_startItemPlayParameters != v5)
  {
    v8 = v5;
    objc_storeStrong(p_startItemPlayParameters, a3);
    v7 = [(MusicKit_SoftLinking_MPMusicPlayerPlayParameters *)self->_startItemPlayParameters _underlyingPlayParameters];
    [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setStartItemPlayParameters:v7];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_startItemPlayParameters, v5);
}

- (void)setContainerPlayParameters:(id)a3
{
  v5 = a3;
  p_containerPlayParameters = &self->_containerPlayParameters;
  if (self->_containerPlayParameters != v5)
  {
    v8 = v5;
    objc_storeStrong(p_containerPlayParameters, a3);
    v7 = [(MusicKit_SoftLinking_MPMusicPlayerPlayParameters *)self->_containerPlayParameters _underlyingPlayParameters];
    [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setContainerPlayParameters:v7];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_containerPlayParameters, v5);
}

- (void)setStartTime:(double)a3 forItemWithPlayParameters:(id)a4
{
  v6 = [a4 _underlyingPlayParameters];
  [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setStartTime:v6 forItemWithPlayParameters:a3];
}

- (void)setEndTime:(double)a3 forItemWithPlayParameters:(id)a4
{
  v6 = [a4 _underlyingPlayParameters];
  [(MPMusicPlayerPlayParametersQueueDescriptor *)self->_underlyingQueueDescriptor setEndTime:v6 forItemWithPlayParameters:a3];
}

@end