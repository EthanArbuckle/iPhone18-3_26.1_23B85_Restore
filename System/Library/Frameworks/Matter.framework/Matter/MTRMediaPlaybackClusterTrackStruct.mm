@interface MTRMediaPlaybackClusterTrackStruct
- (MTRMediaPlaybackClusterTrackStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMediaPlaybackClusterTrackStruct

- (MTRMediaPlaybackClusterTrackStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRMediaPlaybackClusterTrackStruct;
  v2 = [(MTRMediaPlaybackClusterTrackStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    id = v2->_id;
    v2->_id = &stru_284BD0DD8;

    trackAttributes = v3->_trackAttributes;
    v3->_trackAttributes = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMediaPlaybackClusterTrackStruct);
  v5 = [(MTRMediaPlaybackClusterTrackStruct *)self id];
  [(MTRMediaPlaybackClusterTrackStruct *)v4 setId:v5];

  trackAttributes = [(MTRMediaPlaybackClusterTrackStruct *)self trackAttributes];
  [(MTRMediaPlaybackClusterTrackStruct *)v4 setTrackAttributes:trackAttributes];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: id:%@ trackAttributes:%@; >", v5, self->_id, self->_trackAttributes];;

  return v6;
}

@end