@interface AVPlayerItemAudioTrackInfo
+ (id)playerItemTrackInfoForTrack:(id)a3;
- (AVPlayerItemAudioTrackInfo)init;
- (BOOL)isEqual:(id)a3;
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

+ (id)playerItemTrackInfoForTrack:(id)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(AVPlayerItemAudioTrackInfo);
    v4->trackID = [a3 trackID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->trackID == *(a3 + 2);
    }
  }

  return 0;
}

@end