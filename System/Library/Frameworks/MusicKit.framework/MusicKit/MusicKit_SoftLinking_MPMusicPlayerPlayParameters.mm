@interface MusicKit_SoftLinking_MPMusicPlayerPlayParameters
- (MusicKit_SoftLinking_MPMusicPlayerPlayParameters)initWithDictionary:(id)dictionary;
@end

@implementation MusicKit_SoftLinking_MPMusicPlayerPlayParameters

- (MusicKit_SoftLinking_MPMusicPlayerPlayParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPMusicPlayerPlayParameters;
  v5 = [(MusicKit_SoftLinking_MPMusicPlayerPlayParameters *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getMPMusicPlayerPlayParametersClass_softClass;
    v16 = getMPMusicPlayerPlayParametersClass_softClass;
    if (!getMPMusicPlayerPlayParametersClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getMPMusicPlayerPlayParametersClass_block_invoke;
      v12[3] = &unk_278229610;
      v12[4] = &v13;
      __getMPMusicPlayerPlayParametersClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [[v6 alloc] initWithDictionary:dictionaryCopy];
    underlyingPlayParameters = v5->_underlyingPlayParameters;
    v5->_underlyingPlayParameters = v8;

    if (!v5->_underlyingPlayParameters)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end