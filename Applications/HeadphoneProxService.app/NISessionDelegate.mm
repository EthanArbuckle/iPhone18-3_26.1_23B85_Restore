@interface NISessionDelegate
- (_TtC20HeadphoneProxServiceP33_7F40A8BD0FFA2DB164E8C23B672FD2D917NISessionDelegate)init;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
- (void)sessionDidStartRunning:(id)a3;
@end

@implementation NISessionDelegate

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10009B284(v4);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10009B428(v6);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10009A944(v6);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10009B648(v6, a4);
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_10009ACDC(v8, a4, a5);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10009B918(v11, a5);
}

- (_TtC20HeadphoneProxServiceP33_7F40A8BD0FFA2DB164E8C23B672FD2D917NISessionDelegate)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for NISessionDelegate();
  return [(NISessionDelegate *)&v4 init];
}

@end