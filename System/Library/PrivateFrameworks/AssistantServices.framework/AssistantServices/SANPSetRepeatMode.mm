@interface SANPSetRepeatMode
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSetRepeatMode

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  repeatMode = [(SANPSetRepeatMode *)self repeatMode];
  v9 = [repeatMode isEqualToString:SANPRepeatModeNoneValue];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    repeatMode2 = [(SANPSetRepeatMode *)self repeatMode];
    v12 = [repeatMode2 isEqualToString:SANPRepeatModeOneValue];

    if (v12)
    {
      v10 = 2;
    }

    else
    {
      repeatMode3 = [(SANPSetRepeatMode *)self repeatMode];
      v14 = [repeatMode3 isEqualToString:SANPRepeatModeAllValue];

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

  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(25, self, v16, targetQueue, handlerCopy);
}

@end