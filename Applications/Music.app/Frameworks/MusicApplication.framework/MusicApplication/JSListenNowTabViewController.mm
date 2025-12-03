@interface JSListenNowTabViewController
- (_TtC16MusicApplication28JSListenNowTabViewController)initWithCoder:(id)coder;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JSListenNowTabViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(JSDrivenViewController *)&v5 viewWillAppear:appearCopy];
  if (qword_DE6C18 != -1)
  {
    swift_once();
  }

  *(qword_E71848 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights) = 1;
  sub_449D54(1, UIScreen.Dimensions.size.getter, 0);
}

- (_TtC16MusicApplication28JSListenNowTabViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(JSTabViewController *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end