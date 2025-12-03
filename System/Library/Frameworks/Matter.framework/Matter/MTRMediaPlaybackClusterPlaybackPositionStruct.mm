@interface MTRMediaPlaybackClusterPlaybackPositionStruct
- (MTRMediaPlaybackClusterPlaybackPositionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRMediaPlaybackClusterPlaybackPositionStruct

- (MTRMediaPlaybackClusterPlaybackPositionStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRMediaPlaybackClusterPlaybackPositionStruct;
  v2 = [(MTRMediaPlaybackClusterPlaybackPositionStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    updatedAt = v2->_updatedAt;
    v2->_updatedAt = &unk_284C3E588;

    position = v3->_position;
    v3->_position = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRMediaPlaybackClusterPlaybackPositionStruct);
  updatedAt = [(MTRMediaPlaybackClusterPlaybackPositionStruct *)self updatedAt];
  [(MTRMediaPlaybackClusterPlaybackPositionStruct *)v4 setUpdatedAt:updatedAt];

  position = [(MTRMediaPlaybackClusterPlaybackPositionStruct *)self position];
  [(MTRMediaPlaybackClusterPlaybackPositionStruct *)v4 setPosition:position];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: updatedAt:%@ position:%@; >", v5, self->_updatedAt, self->_position];;

  return v6;
}

@end