@interface MPMusicPlayerPlaybackArchiveQueueDescriptor
- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithCoder:(id)coder;
- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithPlaybackArchive:(id)archive;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerPlaybackArchiveQueueDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 11, self->_playbackArchive);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  coderCopy = coder;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_playbackArchive forKey:{@"playbackArchive", v5.receiver, v5.super_class}];
}

- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackArchive"];
    playbackArchive = v5->_playbackArchive;
    v5->_playbackArchive = v6;
  }

  return v5;
}

- (MPMusicPlayerPlaybackArchiveQueueDescriptor)initWithPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerPlaybackArchiveQueueDescriptor;
  _init = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  if (_init)
  {
    v6 = [archiveCopy copy];
    playbackArchive = _init->_playbackArchive;
    _init->_playbackArchive = v6;
  }

  return _init;
}

@end