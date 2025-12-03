@interface AVTimeRangeForInterstitial
- (AVTimeRangeForInterstitial)initWithInterstice:(id)interstice;
@end

@implementation AVTimeRangeForInterstitial

- (AVTimeRangeForInterstitial)initWithInterstice:(id)interstice
{
  intersticeCopy = interstice;
  v6 = intersticeCopy;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if (intersticeCopy)
  {
    [intersticeCopy timeRange];
  }

  playerInterstitialEvent = [v6 playerInterstitialEvent];

  if (playerInterstitialEvent)
  {
    playerInterstitialEvent2 = [v6 playerInterstitialEvent];
    v9 = playerInterstitialEvent2;
    if (playerInterstitialEvent2)
    {
      [playerInterstitialEvent2 plannedDuration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = 0.0;
  }

  *&time.value = v19;
  time.epoch = *&v20[0];
  v11 = CMTimeGetSeconds(&time);
  time = *(v20 + 8);
  v12 = CMTimeGetSeconds(&time);
  v17.receiver = self;
  v17.super_class = AVTimeRangeForInterstitial;
  v13 = [(AVTimeRange *)&v17 initWithStartTime:v11 duration:v12 insertedDuration:Seconds];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_interstice, interstice);
    if (objc_opt_respondsToSelector())
    {
      startDate = [v6 startDate];
      if (startDate)
      {
        [(AVTimeRange *)v14 startTime];
        [(AVTimeRange *)v14 setMapTime:startDate toDate:?];
      }
    }
  }

  return v14;
}

@end