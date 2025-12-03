@interface DeleteJournalMoveEntriesViewController
- (CGSize)preferredContentSize;
- (_TtC7Journal38DeleteJournalMoveEntriesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapDelete;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DeleteJournalMoveEntriesViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeleteJournalMoveEntriesViewController();
  v2 = v3.receiver;
  [(DeleteJournalMoveEntriesViewController *)&v3 viewDidLoad];
  sub_1004A1564();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1004A0FD4();
}

- (CGSize)preferredContentSize
{
  selfCopy = self;
  view = [(DeleteJournalMoveEntriesViewController *)selfCopy view];
  if (!view)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = view;
  [view layoutIfNeeded];

  view2 = [(DeleteJournalMoveEntriesViewController *)selfCopy view];
  if (!view2)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v10 = view2;
  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [view2 systemLayoutSizeFittingSize:350.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v8, v9}];
  v12 = v11;

  v4 = 350.0;
  v5 = v12;
LABEL_6:
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)didTapDelete
{
  selfCopy = self;
  sub_1004A4AA8();
}

- (_TtC7Journal38DeleteJournalMoveEntriesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end