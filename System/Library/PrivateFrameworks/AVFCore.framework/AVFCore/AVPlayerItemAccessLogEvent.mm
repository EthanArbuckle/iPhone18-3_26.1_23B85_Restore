@interface AVPlayerItemAccessLogEvent
- (AVPlayerItemAccessLogEvent)init;
- (AVPlayerItemAccessLogEvent)initWithDictionary:(id)dictionary;
- (NSDate)playbackStartDate;
- (NSInteger)downloadOverdue;
- (NSInteger)mediaRequestsWWAN;
- (NSInteger)numberOfDroppedVideoFrames;
- (NSInteger)numberOfMediaRequests;
- (NSInteger)numberOfServerAddressChanges;
- (NSInteger)numberOfStalls;
- (NSString)URI;
- (NSString)playbackSessionID;
- (NSString)playbackType;
- (NSString)serverAddress;
- (NSTimeInterval)durationWatched;
- (NSTimeInterval)playbackStartOffset;
- (NSTimeInterval)segmentsDownloadedDuration;
- (NSTimeInterval)startupTime;
- (NSTimeInterval)transferDuration;
- (double)averageAudioBitrate;
- (double)averageVideoBitrate;
- (double)currentObservedBitrate;
- (double)indicatedAverageBitrate;
- (double)indicatedBitrate;
- (double)observedBitrate;
- (double)observedBitrateStandardDeviation;
- (double)observedMaxBitrate;
- (double)observedMinBitrate;
- (double)switchBitrate;
- (id)_common_init;
- (id)performanceMetrics;
- (id)serviceIdentifier;
- (int64_t)entryReasonCode;
- (uint64_t)numberOfBytesTransferred;
- (void)dealloc;
@end

@implementation AVPlayerItemAccessLogEvent

- (id)_common_init
{
  v3 = objc_alloc_init(AVPlayerItemAccessLogEventInternal);
  self->_playerItemAccessLogEvent = v3;
  if (v3)
  {
    CFRetain(v3);
    self->_playerItemAccessLogEvent->dict = 0;
  }

  else
  {

    return 0;
  }

  return self;
}

- (AVPlayerItemAccessLogEvent)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemAccessLogEvent;
  result = [(AVPlayerItemAccessLogEvent *)&v3 init];
  if (result)
  {
    return [(AVPlayerItemAccessLogEvent *)result _common_init];
  }

  return result;
}

- (AVPlayerItemAccessLogEvent)initWithDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = AVPlayerItemAccessLogEvent;
  v4 = [(AVPlayerItemAccessLogEvent *)&v8 init];
  if (!v4)
  {
    return 0;
  }

  _common_init = [(AVPlayerItemAccessLogEvent *)v4 _common_init];
  v6 = _common_init;
  if (dictionary && _common_init)
  {
    *(*(_common_init + 8) + 8) = dictionary;
  }

  return v6;
}

- (void)dealloc
{
  playerItemAccessLogEvent = self->_playerItemAccessLogEvent;
  if (playerItemAccessLogEvent)
  {

    CFRelease(self->_playerItemAccessLogEvent);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerItemAccessLogEvent;
  [(AVPlayerItemAccessLogEvent *)&v4 dealloc];
}

- (NSInteger)numberOfMediaRequests
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B48]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (NSDate)playbackStartDate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B80]];

  return v2;
}

- (NSString)URI
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BD8]];

  return v2;
}

- (NSString)serverAddress
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B98]];

  return v2;
}

- (NSInteger)numberOfServerAddressChanges
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BA0]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (NSString)playbackSessionID
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B78]];

  return v2;
}

- (NSTimeInterval)playbackStartOffset
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B88]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSTimeInterval)segmentsDownloadedDuration
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B18]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSTimeInterval)durationWatched
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B28]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSInteger)numberOfStalls
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BB0]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (uint64_t)numberOfBytesTransferred
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B00]];
  if (!v2)
  {
    return -1;
  }

  return [v2 longLongValue];
}

- (NSTimeInterval)transferDuration
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BD0]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)observedBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B58]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)currentObservedBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B08]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)indicatedBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B40]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)indicatedAverageBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B38]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)averageVideoBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970AF8]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)averageAudioBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970AF0]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSInteger)numberOfDroppedVideoFrames
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B20]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (NSTimeInterval)startupTime
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BC0]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSInteger)downloadOverdue
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B10]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (int64_t)entryReasonCode
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B30]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (double)observedMaxBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B68]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)observedMinBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B70]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (double)observedBitrateStandardDeviation
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B60]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (NSString)playbackType
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B90]];

  return v2;
}

- (NSInteger)mediaRequestsWWAN
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970B50]];
  if (!v2)
  {
    return -1;
  }

  return [v2 integerValue];
}

- (double)switchBitrate
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BC8]];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (id)performanceMetrics
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BB8]];

  return v2;
}

- (id)serviceIdentifier
{
  v2 = [(NSDictionary *)self->_playerItemAccessLogEvent->dict valueForKey:*MEMORY[0x1E6970BA8]];

  return v2;
}

@end