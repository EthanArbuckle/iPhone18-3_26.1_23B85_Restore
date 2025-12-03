@interface AdvertsSearchResultContentView
- (void)disableAdvertRotationTap;
- (void)layoutSubviews;
@end

@implementation AdvertsSearchResultContentView

- (void)disableAdvertRotationTap
{
  v3 = (self + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    selfCopy = self;
    v6 = sub_10001B5AC(v4);
    v4(v6);

    sub_1000164A8(v4);
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004824C4();
}

@end