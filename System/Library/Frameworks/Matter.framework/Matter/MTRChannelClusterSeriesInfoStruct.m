@interface MTRChannelClusterSeriesInfoStruct
- (MTRChannelClusterSeriesInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterSeriesInfoStruct

- (MTRChannelClusterSeriesInfoStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRChannelClusterSeriesInfoStruct;
  v2 = [(MTRChannelClusterSeriesInfoStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    season = v2->_season;
    v2->_season = &stru_284BD0DD8;

    episode = v3->_episode;
    v3->_episode = &stru_284BD0DD8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterSeriesInfoStruct);
  v5 = [(MTRChannelClusterSeriesInfoStruct *)self season];
  [(MTRChannelClusterSeriesInfoStruct *)v4 setSeason:v5];

  v6 = [(MTRChannelClusterSeriesInfoStruct *)self episode];
  [(MTRChannelClusterSeriesInfoStruct *)v4 setEpisode:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: season:%@ episode:%@; >", v5, self->_season, self->_episode];;

  return v6;
}

@end