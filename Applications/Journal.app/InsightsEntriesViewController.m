@interface InsightsEntriesViewController
- (_TtC7Journal29InsightsEntriesViewController)initWithCoder:(id)a3;
- (void)viewDidLoad;
@end

@implementation InsightsEntriesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100164140();
}

- (_TtC7Journal29InsightsEntriesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model) = 0;
  v5 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  v6 = type metadata accessor for DateComponents();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for InsightsEntriesViewController();
  v7 = a3;
  v8 = [(JournalEntryCollectionViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end