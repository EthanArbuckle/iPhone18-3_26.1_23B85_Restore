@interface InsightsEntriesViewController
- (_TtC7Journal29InsightsEntriesViewController)initWithCoder:(id)coder;
- (void)viewDidLoad;
@end

@implementation InsightsEntriesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100164140();
}

- (_TtC7Journal29InsightsEntriesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model) = 0;
  v5 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  v6 = type metadata accessor for DateComponents();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for InsightsEntriesViewController();
  coderCopy = coder;
  v8 = [(JournalEntryCollectionViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end