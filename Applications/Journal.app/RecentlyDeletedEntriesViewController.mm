@interface RecentlyDeletedEntriesViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)deleteEntry:(id)a3;
- (void)permanentlyDeleteEntries;
- (void)recoverEntries:(id)a3;
- (void)selectAll:(id)a3;
- (void)updateForSizeClass;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation RecentlyDeletedEntriesViewController

- (void)selectAll:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1003027EC();

  sub_100004F84(v6, &qword_100AD13D0);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10078F2AC(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10078F56C();
}

- (void)updateForSizeClass
{
  v2 = self;
  sub_100790A80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100790B84(a3);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecentlyDeletedEntriesViewController();
  v2 = v3.receiver;
  [(JournalEntryCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_10023DCC0();
}

- (void)deleteEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007923C0(v4);
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  sub_100799D2C();

  swift_unknownObjectRelease();
}

- (void)recoverEntries:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1007961B4(a3);
  swift_unknownObjectRelease();
}

- (void)permanentlyDeleteEntries
{
  v2 = self;
  sub_100796FC8();
}

@end