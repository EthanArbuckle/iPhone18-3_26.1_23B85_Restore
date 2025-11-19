@interface TTRISECreateRemindersViewController
- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRISECreateRemindersViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001C4A4();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRISECreateRemindersViewController *)&v3 viewWillLayoutSubviews];
  sub_10001DFC4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10001E610(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10001E728(a3);
}

- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  sub_100049EF0();
  v7 = sub_10004C720();
  v8 = a3;
  v9 = self;
  v10 = sub_1000273AC(v7);

  return v10;
}

@end