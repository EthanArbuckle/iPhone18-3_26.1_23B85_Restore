@interface TVAppExtensionService
- (void)dismiss;
- (void)finishLoading;
- (void)openWithUrl:(id)url;
- (void)playTrailer:(id)trailer;
@end

@implementation TVAppExtensionService

- (void)openWithUrl:(id)url
{
  urlCopy = url;
  selfCopy = self;
  sub_100007AD4(urlCopy);
}

- (void)dismiss
{
  selfCopy = self;
  sub_100007E68();
}

- (void)finishLoading
{
  selfCopy = self;
  sub_100007EC4();
}

- (void)playTrailer:(id)trailer
{
  v4 = sub_100008E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008E50();
  selfCopy = self;
  sub_10000814C();

  (*(v5 + 8))(v8, v4);
}

@end