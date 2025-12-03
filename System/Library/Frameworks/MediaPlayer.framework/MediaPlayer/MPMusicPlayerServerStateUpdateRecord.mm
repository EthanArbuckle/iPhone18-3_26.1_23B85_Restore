@interface MPMusicPlayerServerStateUpdateRecord
- (MPMusicPlayerServerStateUpdateRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerServerStateUpdateRecord

- (void)encodeWithCoder:(id)coder
{
  hasQueueDescriptor = self->_hasQueueDescriptor;
  coderCopy = coder;
  [coderCopy encodeBool:hasQueueDescriptor forKey:@"hd"];
  [coderCopy encodeObject:self->_queueDescriptor forKey:@"d"];
  [coderCopy encodeBool:self->_hasNowPlaying forKey:@"hn"];
  [coderCopy encodeObject:self->_nowPlaying forKey:@"n"];
  [coderCopy encodeBool:self->_hasTimeSnapshot forKey:@"ht"];
  [coderCopy encodeObject:self->_timeSnapshot forKey:@"t"];
  [coderCopy encodeBool:self->_hasRepeatMode forKey:@"hr"];
  [coderCopy encodeInteger:self->_repeatMode forKey:@"r"];
  [coderCopy encodeBool:self->_hasShuffleMode forKey:@"hs"];
  [coderCopy encodeInteger:self->_shuffleMode forKey:@"s"];
  [coderCopy encodeBool:self->_hasContentItemIDs forKey:@"hi"];
  [coderCopy encodeObject:self->_contentItemIDs forKey:@"i"];
  [coderCopy encodeBool:self->_queueDidChange forKey:@"qc"];
  [coderCopy encodeBool:self->_itemDidEnd forKey:@"ie"];
  [coderCopy encodeBool:self->_queueDidEnd forKey:@"qe"];
  [coderCopy encodeBool:self->_audioFormatDidChange forKey:@"af"];
  [coderCopy encodeBool:self->_hasTimeMetadata forKey:@"tm"];
}

- (MPMusicPlayerServerStateUpdateRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MPMusicPlayerServerStateUpdateRecord;
  v5 = [(MPMusicPlayerServerStateUpdateRecord *)&v18 init];
  if (v5)
  {
    v5->_hasQueueDescriptor = [coderCopy decodeBoolForKey:@"hd"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    queueDescriptor = v5->_queueDescriptor;
    v5->_queueDescriptor = v6;

    v5->_hasNowPlaying = [coderCopy decodeBoolForKey:@"hn"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    nowPlaying = v5->_nowPlaying;
    v5->_nowPlaying = v8;

    v5->_hasTimeSnapshot = [coderCopy decodeBoolForKey:@"ht"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timeSnapshot = v5->_timeSnapshot;
    v5->_timeSnapshot = v10;

    v5->_hasRepeatMode = [coderCopy decodeBoolForKey:@"hr"];
    v5->_repeatMode = [coderCopy decodeIntegerForKey:@"r"];
    v5->_hasShuffleMode = [coderCopy decodeBoolForKey:@"hs"];
    v5->_shuffleMode = [coderCopy decodeIntegerForKey:@"s"];
    v5->_hasContentItemIDs = [coderCopy decodeBoolForKey:@"hi"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"i"];
    contentItemIDs = v5->_contentItemIDs;
    v5->_contentItemIDs = v15;

    v5->_queueDidChange = [coderCopy decodeBoolForKey:@"qc"];
    v5->_itemDidEnd = [coderCopy decodeBoolForKey:@"ie"];
    v5->_queueDidEnd = [coderCopy decodeBoolForKey:@"qe"];
    v5->_audioFormatDidChange = [coderCopy decodeBoolForKey:@"af"];
    v5->_hasTimeMetadata = [coderCopy decodeBoolForKey:@"tm"];
  }

  return v5;
}

@end