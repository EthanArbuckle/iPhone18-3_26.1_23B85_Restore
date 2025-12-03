@interface MTRContentLauncherClusterTrackPreferenceStruct
- (MTRContentLauncherClusterTrackPreferenceStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterTrackPreferenceStruct

- (MTRContentLauncherClusterTrackPreferenceStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRContentLauncherClusterTrackPreferenceStruct;
  v2 = [(MTRContentLauncherClusterTrackPreferenceStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    languageCode = v2->_languageCode;
    v2->_languageCode = &stru_284BD0DD8;

    characteristics = v3->_characteristics;
    v3->_characteristics = 0;

    audioOutputIndex = v3->_audioOutputIndex;
    v3->_audioOutputIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterTrackPreferenceStruct);
  languageCode = [(MTRContentLauncherClusterTrackPreferenceStruct *)self languageCode];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setLanguageCode:languageCode];

  characteristics = [(MTRContentLauncherClusterTrackPreferenceStruct *)self characteristics];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setCharacteristics:characteristics];

  audioOutputIndex = [(MTRContentLauncherClusterTrackPreferenceStruct *)self audioOutputIndex];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setAudioOutputIndex:audioOutputIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: languageCode:%@ characteristics:%@; audioOutputIndex:%@; >", v5, self->_languageCode, self->_characteristics, self->_audioOutputIndex];;

  return v6;
}

@end