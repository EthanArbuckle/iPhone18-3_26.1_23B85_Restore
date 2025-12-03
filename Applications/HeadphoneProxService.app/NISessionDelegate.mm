@interface NISessionDelegate
- (_TtC20HeadphoneProxServiceP33_7F40A8BD0FFA2DB164E8C23B672FD2D917NISessionDelegate)init;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)sessionDidStartRunning:(id)running;
@end

@implementation NISessionDelegate

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  sub_10009B284(runningCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_10009B428(sessionCopy);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_10009A944(sessionCopy);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_10009B648(sessionCopy, reason);
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  sessionCopy = session;
  selfCopy = self;
  sub_10009ACDC(sessionCopy, ended, suspended);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  sub_10009B918(objectCopy, region);
}

- (_TtC20HeadphoneProxServiceP33_7F40A8BD0FFA2DB164E8C23B672FD2D917NISessionDelegate)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for NISessionDelegate();
  return [(NISessionDelegate *)&v4 init];
}

@end