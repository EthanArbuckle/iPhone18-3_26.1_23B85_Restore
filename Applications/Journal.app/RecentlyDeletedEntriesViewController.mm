@interface RecentlyDeletedEntriesViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)deleteEntry:(id)entry;
- (void)permanentlyDeleteEntries;
- (void)recoverEntries:(id)entries;
- (void)selectAll:(id)all;
- (void)updateForSizeClass;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation RecentlyDeletedEntriesViewController

- (void)selectAll:(id)all
{
  if (all)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1003027EC();

  sub_100004F84(v6, &qword_100AD13D0);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10078F2AC(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10078F56C();
}

- (void)updateForSizeClass
{
  selfCopy = self;
  sub_100790A80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100790B84(appear);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecentlyDeletedEntriesViewController();
  v2 = v3.receiver;
  [(JournalEntryCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_10023DCC0();
}

- (void)deleteEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1007923C0(entryCopy);
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100799D2C();

  swift_unknownObjectRelease();
}

- (void)recoverEntries:(id)entries
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007961B4(entries);
  swift_unknownObjectRelease();
}

- (void)permanentlyDeleteEntries
{
  selfCopy = self;
  sub_100796FC8();
}

@end