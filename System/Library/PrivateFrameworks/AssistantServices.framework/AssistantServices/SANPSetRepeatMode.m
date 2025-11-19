@interface SANPSetRepeatMode
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPSetRepeatMode

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SANPSetRepeatMode *)self repeatMode];
  v9 = [v8 isEqualToString:SANPRepeatModeNoneValue];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(SANPSetRepeatMode *)self repeatMode];
    v12 = [v11 isEqualToString:SANPRepeatModeOneValue];

    if (v12)
    {
      v10 = 2;
    }

    else
    {
      v13 = [(SANPSetRepeatMode *)self repeatMode];
      v14 = [v13 isEqualToString:SANPRepeatModeAllValue];

      if (v14)
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  v18 = kMRMediaRemoteOptionRepeatMode;
  v15 = [NSNumber numberWithInt:v10];
  v19 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v17 = [v7 targetQueue];

  sub_1001B7630(25, self, v16, v17, v6);
}

@end