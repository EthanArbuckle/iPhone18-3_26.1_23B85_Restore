@interface SANPSetShuffleMode
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSetShuffleMode

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  shuffleMode = [(SANPSetShuffleMode *)self shuffleMode];
  v9 = [shuffleMode isEqualToString:SANPShuffleModeOffValue];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    shuffleMode2 = [(SANPSetShuffleMode *)self shuffleMode];
    v12 = [shuffleMode2 isEqualToString:SANPShuffleModeAlbumsValue];

    if (v12)
    {
      v10 = 2;
    }

    else
    {
      shuffleMode3 = [(SANPSetShuffleMode *)self shuffleMode];
      v14 = [shuffleMode3 isEqualToString:SANPShuffleModeSongsValue];

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

  v18 = kMRMediaRemoteOptionShuffleMode;
  v15 = [NSNumber numberWithInt:v10];
  v19 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(26, self, v16, targetQueue, handlerCopy);
}

@end