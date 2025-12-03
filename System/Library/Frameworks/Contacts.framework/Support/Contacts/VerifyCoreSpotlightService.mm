@interface VerifyCoreSpotlightService
+ (BOOL)verifyIndex;
+ (void)run;
@end

@implementation VerifyCoreSpotlightService

+ (void)run
{
  v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
  NSLog(@"%@ is verifying CoreSpotlight index.", v3);

  if (([self verifyIndex] & 1) == 0)
  {
    v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [self activityIdentifier]);
    NSLog(@"%@ failed to verify CoreSpotlight index.", v4);
  }
}

+ (BOOL)verifyIndex
{
  v2 = +[IndexService sharedInstance];
  v15 = 0;
  v3 = [v2 verifyIndexLoggingSummary:1 error:&v15];
  v4 = v15;

  if ([v4 code] == 1004)
  {
    v5 = 1;
    v6 = [[CNCountdownLatch alloc] initWithStartingCount:1];
    v7 = +[IndexService sharedInstance];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000DD54;
    v13 = &unk_1000455E8;
    v14 = v6;
    v8 = v6;
    [v7 reindexSearchableItemsWithIdentifiers:0 completionHandler:&v10];

    [v8 await];
  }

  else
  {
    v5 = v4 == 0;
  }

  return v5;
}

@end