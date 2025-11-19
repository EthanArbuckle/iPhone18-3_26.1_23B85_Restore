@interface TVAppExtensionService
- (void)dismiss;
- (void)finishLoading;
- (void)openWithUrl:(id)a3;
- (void)playTrailer:(id)a3;
@end

@implementation TVAppExtensionService

- (void)openWithUrl:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007AD4(v4);
}

- (void)dismiss
{
  v2 = self;
  sub_100007E68();
}

- (void)finishLoading
{
  v2 = self;
  sub_100007EC4();
}

- (void)playTrailer:(id)a3
{
  v4 = sub_100008E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008E50();
  v9 = self;
  sub_10000814C();

  (*(v5 + 8))(v8, v4);
}

@end