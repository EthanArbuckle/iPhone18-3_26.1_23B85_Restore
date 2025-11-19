@interface DeleteJournalMoveEntriesViewController
- (CGSize)preferredContentSize;
- (_TtC7Journal38DeleteJournalMoveEntriesViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_1004A0FD4();
}

- (CGSize)preferredContentSize
{
  v2 = self;
  v3 = [(DeleteJournalMoveEntriesViewController *)v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = v3;
  [v3 layoutIfNeeded];

  v7 = [(DeleteJournalMoveEntriesViewController *)v2 view];
  if (!v7)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v10 = v7;
  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [v7 systemLayoutSizeFittingSize:350.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v8, v9}];
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
  v2 = self;
  sub_1004A4AA8();
}

- (_TtC7Journal38DeleteJournalMoveEntriesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end