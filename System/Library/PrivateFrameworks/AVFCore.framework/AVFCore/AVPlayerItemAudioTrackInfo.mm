@interface AVPlayerItemAudioTrackInfo
+ (id)playerItemTrackInfoForTrack:(id)track;
- (AVPlayerItemAudioTrackInfo)init;
- (BOOL)isEqual:(id)equal;
@end

@implementation AVPlayerItemAudioTrackInfo

- (AVPlayerItemAudioTrackInfo)init
{
  v3.receiver = self;
  v3.super_class = AVPlayerItemAudioTrackInfo;
  result = [(AVPlayerItemAudioTrackInfo *)&v3 init];
  if (result)
  {
    *&result->trackID = 0;
  }

  return result;
}

+ (id)playerItemTrackInfoForTrack:(id)track
{
  if (track)
  {
    v4 = objc_alloc_init(AVPlayerItemAudioTrackInfo);
    v4->trackID = [track trackID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (equal)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->trackID == *(equal + 2);
    }
  }

  return 0;
}

@end