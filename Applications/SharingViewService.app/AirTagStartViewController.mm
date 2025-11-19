@interface AirTagStartViewController
- (_TtC18SharingViewService25AirTagStartViewController)initWithContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AirTagStartViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006C01C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10006C88C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(AirTagStartViewController *)&v8 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC18SharingViewService25AirTagStartViewController_invalidateBubbleMonitor];
  if (v5)
  {
    v6 = *&v4[OBJC_IVAR____TtC18SharingViewService25AirTagStartViewController_invalidateBubbleMonitor + 8];

    v5(v7);

    sub_100025EF4(v5, v6);
  }

  else
  {
  }
}

- (_TtC18SharingViewService25AirTagStartViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = &self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService25AirTagStartViewController_invalidateBubbleMonitor];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AirTagMovieViewController *)&v8 initWithContentView:a3];
}

@end