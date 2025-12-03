@interface HeadphoneAnnounceCustomizeViewController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation HeadphoneAnnounceCustomizeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneAnnounceCustomizeViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100093ABC(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = UITableViewAutomaticDimension;
  if ((section & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = sub_1000946A0(section);

  return v4;
}

@end