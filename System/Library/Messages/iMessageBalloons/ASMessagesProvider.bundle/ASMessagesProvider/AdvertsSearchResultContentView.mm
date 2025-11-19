@interface AdvertsSearchResultContentView
- (void)disableAdvertRotationTap;
- (void)layoutSubviews;
@end

@implementation AdvertsSearchResultContentView

- (void)disableAdvertRotationTap
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = self;
    v6 = sub_F714(v4);
    v4(v6);

    sub_F704(v4);
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_22B6DC();
}

@end