@interface MTRMediaPlaybackClusterTrackAttributesStruct
- (MTRMediaPlaybackClusterTrackAttributesStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRMediaPlaybackClusterTrackAttributesStruct

- (MTRMediaPlaybackClusterTrackAttributesStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRMediaPlaybackClusterTrackAttributesStruct;
  v2 = [(MTRMediaPlaybackClusterTrackAttributesStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    languageCode = v2->_languageCode;
    v2->_languageCode = &stru_284BD0DD8;

    displayName = v3->_displayName;
    v3->_displayName = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRMediaPlaybackClusterTrackAttributesStruct);
  v5 = [(MTRMediaPlaybackClusterTrackAttributesStruct *)self languageCode];
  [(MTRMediaPlaybackClusterTrackAttributesStruct *)v4 setLanguageCode:v5];

  v6 = [(MTRMediaPlaybackClusterTrackAttributesStruct *)self displayName];
  [(MTRMediaPlaybackClusterTrackAttributesStruct *)v4 setDisplayName:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: languageCode:%@ displayName:%@; >", v5, self->_languageCode, self->_displayName];;

  return v6;
}

@end