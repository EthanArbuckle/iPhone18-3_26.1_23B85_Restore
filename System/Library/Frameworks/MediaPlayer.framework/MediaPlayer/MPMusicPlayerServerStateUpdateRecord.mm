@interface MPMusicPlayerServerStateUpdateRecord
- (MPMusicPlayerServerStateUpdateRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerServerStateUpdateRecord

- (void)encodeWithCoder:(id)a3
{
  hasQueueDescriptor = self->_hasQueueDescriptor;
  v5 = a3;
  [v5 encodeBool:hasQueueDescriptor forKey:@"hd"];
  [v5 encodeObject:self->_queueDescriptor forKey:@"d"];
  [v5 encodeBool:self->_hasNowPlaying forKey:@"hn"];
  [v5 encodeObject:self->_nowPlaying forKey:@"n"];
  [v5 encodeBool:self->_hasTimeSnapshot forKey:@"ht"];
  [v5 encodeObject:self->_timeSnapshot forKey:@"t"];
  [v5 encodeBool:self->_hasRepeatMode forKey:@"hr"];
  [v5 encodeInteger:self->_repeatMode forKey:@"r"];
  [v5 encodeBool:self->_hasShuffleMode forKey:@"hs"];
  [v5 encodeInteger:self->_shuffleMode forKey:@"s"];
  [v5 encodeBool:self->_hasContentItemIDs forKey:@"hi"];
  [v5 encodeObject:self->_contentItemIDs forKey:@"i"];
  [v5 encodeBool:self->_queueDidChange forKey:@"qc"];
  [v5 encodeBool:self->_itemDidEnd forKey:@"ie"];
  [v5 encodeBool:self->_queueDidEnd forKey:@"qe"];
  [v5 encodeBool:self->_audioFormatDidChange forKey:@"af"];
  [v5 encodeBool:self->_hasTimeMetadata forKey:@"tm"];
}

- (MPMusicPlayerServerStateUpdateRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MPMusicPlayerServerStateUpdateRecord;
  v5 = [(MPMusicPlayerServerStateUpdateRecord *)&v18 init];
  if (v5)
  {
    v5->_hasQueueDescriptor = [v4 decodeBoolForKey:@"hd"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    queueDescriptor = v5->_queueDescriptor;
    v5->_queueDescriptor = v6;

    v5->_hasNowPlaying = [v4 decodeBoolForKey:@"hn"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    nowPlaying = v5->_nowPlaying;
    v5->_nowPlaying = v8;

    v5->_hasTimeSnapshot = [v4 decodeBoolForKey:@"ht"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timeSnapshot = v5->_timeSnapshot;
    v5->_timeSnapshot = v10;

    v5->_hasRepeatMode = [v4 decodeBoolForKey:@"hr"];
    v5->_repeatMode = [v4 decodeIntegerForKey:@"r"];
    v5->_hasShuffleMode = [v4 decodeBoolForKey:@"hs"];
    v5->_shuffleMode = [v4 decodeIntegerForKey:@"s"];
    v5->_hasContentItemIDs = [v4 decodeBoolForKey:@"hi"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"i"];
    contentItemIDs = v5->_contentItemIDs;
    v5->_contentItemIDs = v15;

    v5->_queueDidChange = [v4 decodeBoolForKey:@"qc"];
    v5->_itemDidEnd = [v4 decodeBoolForKey:@"ie"];
    v5->_queueDidEnd = [v4 decodeBoolForKey:@"qe"];
    v5->_audioFormatDidChange = [v4 decodeBoolForKey:@"af"];
    v5->_hasTimeMetadata = [v4 decodeBoolForKey:@"tm"];
  }

  return v5;
}

@end