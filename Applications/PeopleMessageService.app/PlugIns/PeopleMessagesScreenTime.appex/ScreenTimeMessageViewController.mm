@interface ScreenTimeMessageViewController
- (_TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController)initWithCoder:(id)a3;
- (_TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation ScreenTimeMessageViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001648C();
}

- (_TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100027154();
    v6 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
    v7 = enum case for FirstPartyApps.screentime(_:);
    v8 = sub_100026974();
    (*(*(v8 - 8) + 104))(self + v6, v7, v8);
    v9 = a4;
    v10 = sub_100027124();
  }

  else
  {
    v11 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
    v12 = enum case for FirstPartyApps.screentime(_:);
    v13 = sub_100026974();
    (*(*(v13 - 8) + 104))(self + v11, v12, v13);
    v14 = a4;
    v10 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for ScreenTimeMessageViewController();
  v15 = [(RequestMessageViewController *)&v17 initWithNibName:v10 bundle:a4];

  return v15;
}

- (_TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC24PeopleMessagesScreenTime31ScreenTimeMessageViewController_fallbackThumbnail;
  v6 = enum case for FirstPartyApps.screentime(_:);
  v7 = sub_100026974();
  (*(*(v7 - 8) + 104))(self + v5, v6, v7);
  v11.receiver = self;
  v11.super_class = type metadata accessor for ScreenTimeMessageViewController();
  v8 = a3;
  v9 = [(RequestMessageViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end