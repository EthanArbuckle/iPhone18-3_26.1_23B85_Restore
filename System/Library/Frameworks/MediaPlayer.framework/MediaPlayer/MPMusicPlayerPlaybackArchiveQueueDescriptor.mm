@interface MPMusicPlayerPlaybackArchiveQueueDescriptor
- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithCoder:(id)a3;
- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithPlaybackArchive:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerPlaybackArchiveQueueDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 11, self->_playbackArchive);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v4 = a3;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_playbackArchive forKey:{@"playbackArchive", v5.receiver, v5.super_class}];
}

- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playbackArchive"];
    playbackArchive = v5->_playbackArchive;
    v5->_playbackArchive = v6;
  }

  return v5;
}

- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithPlaybackArchive:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    playbackArchive = v5->_playbackArchive;
    v5->_playbackArchive = v6;
  }

  return v5;
}

@end