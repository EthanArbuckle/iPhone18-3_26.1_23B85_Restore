@interface AskToBuyMessageViewController
- (_TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController)initWithCoder:(id)coder;
- (_TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation AskToBuyMessageViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100016048();
}

- (_TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100024EB0();
    v6 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
    v7 = enum case for FirstPartyApps.appstore(_:);
    v8 = sub_100024610();
    (*(*(v8 - 8) + 104))(self + v6, v7, v8);
    bundleCopy = bundle;
    v10 = sub_100024E80();
  }

  else
  {
    v11 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
    v12 = enum case for FirstPartyApps.appstore(_:);
    v13 = sub_100024610();
    (*(*(v13 - 8) + 104))(self + v11, v12, v13);
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for AskToBuyMessageViewController();
  v15 = [(RequestMessageViewController *)&v17 initWithNibName:v10 bundle:bundle];

  return v15;
}

- (_TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC22PeopleMessagesAskToBuy29AskToBuyMessageViewController_fallbackThumbnail;
  v6 = enum case for FirstPartyApps.appstore(_:);
  v7 = sub_100024610();
  (*(*(v7 - 8) + 104))(self + v5, v6, v7);
  v11.receiver = self;
  v11.super_class = type metadata accessor for AskToBuyMessageViewController();
  coderCopy = coder;
  v9 = [(RequestMessageViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end