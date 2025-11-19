@interface AVTimeRangeForInterstitial
- (AVTimeRangeForInterstitial)initWithInterstice:(id)a3;
@end

@implementation AVTimeRangeForInterstitial

- (AVTimeRangeForInterstitial)initWithInterstice:(id)a3
{
  v5 = a3;
  v6 = v5;
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if (v5)
  {
    [v5 timeRange];
  }

  v7 = [v6 playerInterstitialEvent];

  if (v7)
  {
    v8 = [v6 playerInterstitialEvent];
    v9 = v8;
    if (v8)
    {
      [v8 plannedDuration];
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
    objc_storeStrong(&v13->_interstice, a3);
    if (objc_opt_respondsToSelector())
    {
      v15 = [v6 startDate];
      if (v15)
      {
        [(AVTimeRange *)v14 startTime];
        [(AVTimeRange *)v14 setMapTime:v15 toDate:?];
      }
    }
  }

  return v14;
}

@end