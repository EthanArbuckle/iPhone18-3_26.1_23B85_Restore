@interface RAPReportTableViewController
- (RAPReportTableViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (RAPUserInfoPart)userInfoPart;
- (void)_send;
- (void)_updateTablePartsScrolling:(BOOL)scrolling;
- (void)setNeedsTablePartsUpdateWithSender:(id)sender scroll:(BOOL)scroll;
- (void)updateTablePartsIfNeeded;
- (void)viewDidLoad;
@end

@implementation RAPReportTableViewController

- (void)updateTablePartsIfNeeded
{
  if ([(RAPReportTableViewController *)self _maps_needsUpdateWithSelector:"_updateTableParts"])
  {
    [(RAPReportTableViewController *)self _maps_setNeedsUpdate:0 withSelector:"_updateTableParts"];

    [(RAPReportTableViewController *)self _updateTableParts];
  }
}

- (void)setNeedsTablePartsUpdateWithSender:(id)sender scroll:(BOOL)scroll
{
  obj = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_storeWeak(&self->_lastTablePartsUpdateSender, obj);
  }

  if (!scroll)
  {
    self->_scrollingSuppressed = 1;
  }

  [(RAPReportTableViewController *)self _maps_setNeedsUpdateWithSelector:"_updateTableParts"];
}

- (void)_updateTablePartsScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  tableParts = [(RAPReportTableViewController *)self tableParts];
  if (tableParts)
  {
    v15 = tableParts;
    dataSource = [(RAPTableViewController *)self dataSource];
    tableParts2 = [dataSource tableParts];
    v8 = [tableParts2 isEqual:v15];

    if ((v8 & 1) == 0)
    {
      dataSource2 = [(RAPTableViewController *)self dataSource];
      [dataSource2 setTableParts:v15 withRowAnimation:0];
    }

    if (!scrollingCopy)
    {
      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    partController = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }

      v14 = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
      partController = [v14 partController];
    }

    if (partController)
    {
      [(RAPTableViewController *)self scrollToPartAfterPartAnimated:partController];

LABEL_11:
      objc_storeWeak(&self->_lastTablePartsUpdateSender, 0);
      self->_scrollingSuppressed = 0;
      tableParts = v15;
      goto LABEL_12;
    }

LABEL_10:
    [(RAPTableViewController *)self scrollToBottomAnimated];
    goto LABEL_11;
  }

LABEL_12:
}

- (RAPUserInfoPart)userInfoPart
{
  userInfoPart = self->_userInfoPart;
  if (!userInfoPart)
  {
    v4 = objc_alloc_init(RAPUserInfoPart);
    v5 = self->_userInfoPart;
    self->_userInfoPart = v4;

    userInfoPart = self->_userInfoPart;
  }

  return userInfoPart;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPReportTableViewController;
  [(RAPTableViewController *)&v3 viewDidLoad];
  [(RAPReportTableViewController *)self _maps_setNeedsUpdate:0 withSelector:"_updateTableParts"];
  [(RAPReportTableViewController *)self _updateTablePartsScrolling:0];
}

- (void)_send
{
  view = [(RAPReportTableViewController *)self view];
  [view endEditing:1];

  if (MapsFeature_IsEnabled_RAPCommunityID() && !self->_userInfoPart)
  {

    [(RAPReportTableViewController *)self invokeCompletionWithOutcome:1];
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100D88C74;
    v4[3] = &unk_101653830;
    v4[4] = self;
    [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v4];
  }
}

- (RAPReportTableViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = RAPReportTableViewController;
  v11 = [(RAPTableViewController *)&v19 init];
  if (v11)
  {
    v12 = [[RAPReportViewControllerDelegate alloc] initWithReport:reportCopy completion:completionCopy delegate:v11];
    rapDelegate = v11->_rapDelegate;
    v11->_rapDelegate = v12;

    if (questionCopy)
    {
      [questionCopy localizedTitle];
    }

    else
    {
      +[RAPQuestion RAPTitle];
    }
    v14 = ;
    [(RAPReportTableViewController *)v11 setTitle:v14];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    navigationItem = [(RAPReportTableViewController *)v11 navigationItem];
    [navigationItem setBackButtonTitle:v16];
  }

  return v11;
}

@end