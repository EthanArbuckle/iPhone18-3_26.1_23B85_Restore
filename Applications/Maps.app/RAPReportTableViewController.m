@interface RAPReportTableViewController
- (RAPReportTableViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (RAPUserInfoPart)userInfoPart;
- (void)_send;
- (void)_updateTablePartsScrolling:(BOOL)a3;
- (void)setNeedsTablePartsUpdateWithSender:(id)a3 scroll:(BOOL)a4;
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

- (void)setNeedsTablePartsUpdateWithSender:(id)a3 scroll:(BOOL)a4
{
  obj = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_storeWeak(&self->_lastTablePartsUpdateSender, obj);
  }

  if (!a4)
  {
    self->_scrollingSuppressed = 1;
  }

  [(RAPReportTableViewController *)self _maps_setNeedsUpdateWithSelector:"_updateTableParts"];
}

- (void)_updateTablePartsScrolling:(BOOL)a3
{
  v3 = a3;
  v5 = [(RAPReportTableViewController *)self tableParts];
  if (v5)
  {
    v15 = v5;
    v6 = [(RAPTableViewController *)self dataSource];
    v7 = [v6 tableParts];
    v8 = [v7 isEqual:v15];

    if ((v8 & 1) == 0)
    {
      v9 = [(RAPTableViewController *)self dataSource];
      [v9 setTableParts:v15 withRowAnimation:0];
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }

      v14 = objc_loadWeakRetained(&self->_lastTablePartsUpdateSender);
      v12 = [v14 partController];
    }

    if (v12)
    {
      [(RAPTableViewController *)self scrollToPartAfterPartAnimated:v12];

LABEL_11:
      objc_storeWeak(&self->_lastTablePartsUpdateSender, 0);
      self->_scrollingSuppressed = 0;
      v5 = v15;
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
  v3 = [(RAPReportTableViewController *)self view];
  [v3 endEditing:1];

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

- (RAPReportTableViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = RAPReportTableViewController;
  v11 = [(RAPTableViewController *)&v19 init];
  if (v11)
  {
    v12 = [[RAPReportViewControllerDelegate alloc] initWithReport:v8 completion:v10 delegate:v11];
    rapDelegate = v11->_rapDelegate;
    v11->_rapDelegate = v12;

    if (v9)
    {
      [v9 localizedTitle];
    }

    else
    {
      +[RAPQuestion RAPTitle];
    }
    v14 = ;
    [(RAPReportTableViewController *)v11 setTitle:v14];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    v17 = [(RAPReportTableViewController *)v11 navigationItem];
    [v17 setBackButtonTitle:v16];
  }

  return v11;
}

@end