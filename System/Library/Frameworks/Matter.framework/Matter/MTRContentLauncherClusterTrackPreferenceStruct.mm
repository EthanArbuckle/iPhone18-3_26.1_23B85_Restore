@interface MTRContentLauncherClusterTrackPreferenceStruct
- (MTRContentLauncherClusterTrackPreferenceStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRContentLauncherClusterTrackPreferenceStruct);
  v5 = [(MTRContentLauncherClusterTrackPreferenceStruct *)self languageCode];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setLanguageCode:v5];

  v6 = [(MTRContentLauncherClusterTrackPreferenceStruct *)self characteristics];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setCharacteristics:v6];

  v7 = [(MTRContentLauncherClusterTrackPreferenceStruct *)self audioOutputIndex];
  [(MTRContentLauncherClusterTrackPreferenceStruct *)v4 setAudioOutputIndex:v7];

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