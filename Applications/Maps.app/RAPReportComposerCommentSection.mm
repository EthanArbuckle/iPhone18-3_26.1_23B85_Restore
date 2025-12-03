@interface RAPReportComposerCommentSection
- (RAPCommentPartHeaderView)headerView;
- (RAPReportComposerCommentSection)initWithQuestion:(id)question;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)beginEditingCommentIfPossible;
- (void)registerReuseIdentifiersForCells;
@end

@implementation RAPReportComposerCommentSection

- (void)beginEditingCommentIfPossible
{
  v3 = [NSIndexPath indexPathForRow:0 inSection:[(RAPTablePartSection *)self sectionIndex]];
  tableView = [(RAPTablePartSection *)self tableView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D1675C;
  v8[3] = &unk_101661A90;
  v8[4] = self;
  v9 = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100D167B8;
  v6[3] = &unk_101661570;
  v6[4] = self;
  v7 = v9;
  v5 = v9;
  [tableView _performBatchUpdates:v8 completion:v6];
}

- (id)cellForRowAtIndex:(int64_t)index
{
  tableView = [(RAPTablePartSection *)self tableView];
  [tableView setKeyboardDismissMode:1];

  v5 = [(RAPTablePartSection *)self dequeueCellWithNamespacedReuseIdentifier:@"TextViewCell"];
  [v5 setPropertiesFromQuestion:self->_question];
  v6 = self->_question;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100D17318;
  v9[3] = &unk_10165EF00;
  v10 = v6;
  v7 = v6;
  [v5 setTextDidChange:v9];

  return v5;
}

- (void)registerReuseIdentifiersForCells
{
  v3 = objc_opt_class();

  [(RAPTablePartSection *)self registerClass:v3 forNamespacedReuseIdentifier:@"TextViewCell"];
}

- (RAPReportComposerCommentSection)initWithQuestion:(id)question
{
  questionCopy = question;
  v9.receiver = self;
  v9.super_class = RAPReportComposerCommentSection;
  v6 = [(RAPTablePartSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_question, question);
    if (objc_opt_respondsToSelector())
    {
      [(RAPQuestion *)v7->_question addObserver:v7 changeHandler:&stru_1016515F0];
    }
  }

  return v7;
}

- (RAPCommentPartHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [[RAPCommentPartHeaderView alloc] initWithQuestion:self->_question reuseIdentifier:@"RAPCommentPartHeaderView"];
    v5 = self->_headerView;
    self->_headerView = v4;

    headerView = self->_headerView;
  }

  return headerView;
}

@end