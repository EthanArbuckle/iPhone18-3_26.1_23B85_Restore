@interface RAPLookAroundDetailsEditorViewController
- (BOOL)_shouldShowPrivacyFooterForSection:(int64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (RAPLookAroundDetailsEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightforFooterInSection:(int64_t)a4;
- (id)_sendButtonItem;
- (id)_userInfoCell;
- (id)commentHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 resolveHomeImageryCellForIndexPath:(id)a4;
- (id)tableView:(id)a3 resolveHomeImageryCellWithNoAccountForIndexPath:(id)a4;
- (id)tableView:(id)a3 resolveSimpleFeedbackCellForIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_presentPrivacyView;
- (void)_sendRAP;
- (void)_setupTableView;
- (void)addressTableViewCell:(id)a3 updatedAddress:(id)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5;
- (void)userTappedOnAddressTableViewCell:(id)a3;
- (void)valueForCorrectableItemKind:(int64_t)a3 changedTo:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RAPLookAroundDetailsEditorViewController

- (void)_presentPrivacyView
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (id)_userInfoCell
{
  if (!self->_userInfoCell)
  {
    v3 = [[RAPDisplayUserContentTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    userInfoCell = self->_userInfoCell;
    self->_userInfoCell = v3;

    if (sub_10000FA08(self) == 5)
    {
      v5 = +[UIColor systemBackgroundColor];
      [(RAPDisplayUserContentTableViewCell *)self->_userInfoCell setBackgroundColor:v5];
    }
  }

  v6 = self->_userInfoCell;

  return v6;
}

- (id)tableView:(id)a3 resolveSimpleFeedbackCellForIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_account)
  {
    commentCell = self->_commentCell;
    if (!commentCell)
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"RAPLookAroundCommentTableViewCell" forIndexPath:v7];
      objc_storeStrong(&self->_commentCell, v9);
      v14 = [(RAPLookAroundQuestion *)self->_question localizedDescription];
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setPlaceholderText:v14];

      v15 = [(RAPLookAroundQuestion *)self->_question commentQuestion];
      objc_initWeak(&location, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1009440C4;
      v19[3] = &unk_101636260;
      v12 = v15;
      v20 = v12;
      objc_copyWeak(&v21, &location);
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setTextDidChange:v19];
      objc_destroyWeak(&v21);
      v13 = v20;
      goto LABEL_8;
    }

LABEL_9:
    v16 = commentCell;
    goto LABEL_10;
  }

  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0 || [v7 section])
  {
    commentCell = self->_commentCell;
    if (!commentCell)
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"RAPLookAroundCommentTableViewCell" forIndexPath:v7];
      objc_storeStrong(&self->_commentCell, v9);
      v10 = [(RAPLookAroundQuestion *)self->_question localizedDescription];
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setPlaceholderText:v10];

      v11 = [(RAPLookAroundQuestion *)self->_question commentQuestion];
      objc_initWeak(&location, self);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100944058;
      v22[3] = &unk_101636260;
      v12 = v11;
      v23 = v12;
      objc_copyWeak(&v24, &location);
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setTextDidChange:v22];
      objc_destroyWeak(&v24);
      v13 = v23;
LABEL_8:

      objc_destroyWeak(&location);
      commentCell = self->_commentCell;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v16 = [(RAPLookAroundDetailsEditorViewController *)self _userInfoCell];
LABEL_10:
  v17 = v16;

  return v17;
}

- (id)tableView:(id)a3 resolveHomeImageryCellWithNoAccountForIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"RAPLookAroundEmailTableViewCell" forIndexPath:v7];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setPlaceholder:v10];

    v11 = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
    v12 = [v11 value];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setValue:v12];

    [(RAPMultilineAddressLabelTableViewCell *)v8 setPreferredKeyboardType:7];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setAccessibilityIdentifier:@"RAPLookAroundEmailCell"];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setDelegate:self];
  }

  else
  {
    addressCell = self->_addressCell;
    if (!addressCell)
    {
      v14 = [v6 dequeueReusableCellWithIdentifier:@"RAPAddressTableViewCell" forIndexPath:v7];
      v15 = self->_addressCell;
      self->_addressCell = v14;
      v16 = v14;

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setDelegate:self];
      v17 = +[RAPAddressLayoutOptions allFieldsDisabledOptions];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setLayoutOptions:v17];

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setEditableAndTappable:1];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setAccessibilityIdentifier:@"RAPLookAroundAddressCell"];
      v18 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setParentTableView:v18];

      addressCell = self->_addressCell;
    }

    v8 = addressCell;
  }

  return v8;
}

- (id)tableView:(id)a3 resolveHomeImageryCellForIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_account)
  {
    v15 = [(RAPLookAroundDetailsEditorViewController *)self tableView:v6 resolveHomeImageryCellWithNoAccountForIndexPath:v7];
LABEL_9:
    v16 = v15;
    goto LABEL_10;
  }

  if (![v7 section])
  {
    v15 = [(RAPLookAroundDetailsEditorViewController *)self _userInfoCell];
    goto LABEL_9;
  }

  if ([v8 section] == 1)
  {
    addressCell = self->_addressCell;
    if (!addressCell)
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"RAPAddressTableViewCell" forIndexPath:v8];
      v11 = self->_addressCell;
      self->_addressCell = v10;
      v12 = v10;

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setDelegate:self];
      v13 = +[RAPAddressLayoutOptions allFieldsDisabledOptions];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setLayoutOptions:v13];

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setEditableAndTappable:1];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setAccessibilityIdentifier:@"RAPLookAroundAddressCell"];
      v14 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setParentTableView:v14];

      addressCell = self->_addressCell;
    }

    v15 = addressCell;
    goto LABEL_9;
  }

  v16 = [v6 dequeueReusableCellWithIdentifier:@"RAPLookAroundEmailTableViewCell" forIndexPath:v8];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
  [v16 setPlaceholder:v19];

  v20 = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
  v21 = [v20 value];
  [v16 setValue:v21];

  [v16 setPreferredKeyboardType:7];
  [v16 setAccessibilityIdentifier:@"RAPLookAroundEmailCell"];
  [v16 setDelegate:self];
LABEL_10:

  return v16;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  question = self->_question;
  v7 = a4;
  v8 = a3;
  if ([(RAPLookAroundQuestion *)question selectedQuestionType]== 5)
  {
    [(RAPLookAroundDetailsEditorViewController *)self tableView:v8 resolveHomeImageryCellForIndexPath:v7];
  }

  else
  {
    [(RAPLookAroundDetailsEditorViewController *)self tableView:v8 resolveSimpleFeedbackCellForIndexPath:v7];
  }
  v9 = ;

  return v9;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[RAPLookAroundQuestion selectedQuestionType](self->_question, "selectedQuestionType") != 5 || !self->_account || [v5 section];

  return v6;
}

- (double)tableView:(id)a3 heightforFooterInSection:(int64_t)a4
{
  if (a4)
  {
    return 2.22507386e-308;
  }

  v7 = [(RAPLookAroundQuestion *)self->_question selectedQuestionType:a3];
  result = UITableViewAutomaticDimension;
  if (v7 == 5)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = +[TableViewFooterOptions defaultRAPUserContentOptions];
  v7 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"RAPUserContentTableViewFooterView" options:v6];
  [(TableViewSelectableFooterView *)v7 setTarget:self action:"_presentPrivacyView"];
  if ([(RAPLookAroundDetailsEditorViewController *)self _shouldShowPrivacyFooterForSection:a4])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  account = self->_account;
  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5)
  {
    goto LABEL_6;
  }

  v6 = 1;
  if (account)
  {
    v6 = 2;
  }

  if (v6 == a4)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Email Disclosure [Report a Problem]" value:@"localized string not found" table:0];
  }

  else
  {
LABEL_6:
    v8 = &stru_1016631F0;
  }

  return v8;
}

- (BOOL)_shouldShowPrivacyFooterForSection:(int64_t)a3
{
  account = self->_account;
  if (!a3 && account)
  {
    v6 = 1;
LABEL_8:
    v7 = [(RAPLookAroundDetailsEditorViewController *)self _requiresPrivacyElements];
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!a3 && !account)
  {
    v6 = [(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5;
    account = self->_account;
  }

  if (account)
  {
    goto LABEL_8;
  }

  v8 = 0;
LABEL_11:
  if (MapsFeature_IsEnabled_RAPCommunityID())
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if ([(RAPLookAroundDetailsEditorViewController *)self _requiresPrivacyElements:a3])
  {
    return UITableViewAutomaticDimension;
  }

  v6 = [(RAPLookAroundDetailsEditorViewController *)self commentHeaderView];
  [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v7;

  return v5;
}

- (id)commentHeaderView
{
  if (!self->_commentHeaderView)
  {
    v3 = [RAPCommentPartHeaderView alloc];
    v4 = [(RAPLookAroundQuestion *)self->_question commentQuestion];
    v5 = [(RAPCommentPartHeaderView *)v3 initWithQuestion:v4 reuseIdentifier:@"CommentHeaderView"];
    commentHeaderView = self->_commentHeaderView;
    self->_commentHeaderView = v5;
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Details [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPHeaderFooterView *)self->_commentHeaderView setTitleLabelText:v8];

  v9 = self->_commentHeaderView;

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5)
  {
    if (MapsFeature_IsEnabled_RAPCommunityID() || (account = self->_account, a4) && account || !a4 && !account)
    {
      v13 = [(RAPLookAroundDetailsEditorViewController *)self commentHeaderView];
      goto LABEL_19;
    }
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Address [RAP]" value:@"localized string not found" table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Contact Information [Report a Problem]" value:@"localized string not found" table:0];

  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5)
  {
    goto LABEL_17;
  }

  if (self->_account)
  {
    v11 = v8;
    if (a4 != 1)
    {
      v11 = v10;
      if (a4 != 2)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v11 = v8;
    if (a4)
    {
      if (a4 != 1)
      {
LABEL_17:
        v14 = &stru_1016631F0;
        goto LABEL_18;
      }

      v11 = v10;
    }
  }

  v14 = v11;
LABEL_18:
  v13 = [v6 _maps_groupedHeaderViewWithTitle:v14];

LABEL_19:

  return v13;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_account)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (MapsFeature_IsEnabled_RAPCommunityID())
  {
    if (![(RAPLookAroundDetailsEditorViewController *)self _requiresPrivacyElements])
    {
      return 1;
    }
  }

  else if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5)
  {
    if (self->_account)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (void)userTappedOnAddressTableViewCell:(id)a3
{
  v4 = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  v5 = [v4 freeformAddress];
  v6 = [v5 value];
  v15 = [RAPSearchAutocompleteViewController addressAutocompleteViewControllerWithInitialSearchString:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Home Address [RAP]" value:@"localized string not found" table:0];
  [v15 setTitleText:v8];

  [v15 setDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v15];
  [v9 setModalPresentationStyle:2];
  [v9 setModalInPresentation:1];
  v10 = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
  [v9 setOverrideUserInterfaceStyle:{objc_msgSend(v10, "overrideUserInterfaceStyle")}];

  [v9 setAccessibilityIdentifier:@"RAPHomeAddressAutocompleteView"];
  v11 = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
  [v15 setOverrideUserInterfaceStyle:{objc_msgSend(v11, "overrideUserInterfaceStyle")}];

  v12 = [(RAPLookAroundDetailsEditorViewController *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 5)
  {
    [v15 setOverrideUserInterfaceStyle:1];
    v14 = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
    [v14 pushViewController:v15 animated:1];
  }

  else
  {
    [(RAPLookAroundDetailsEditorViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)addressTableViewCell:(id)a3 updatedAddress:(id)a4
{
  v7 = [a4 freeformAddress];
  v5 = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  v6 = [v5 freeformAddress];
  [v6 setValue:v7];
}

- (void)rapSearchAutocompleteViewController:(id)a3 finishedPickingAutocompleteResult:(id)a4 isAutocompleteResult:(BOOL)a5
{
  if (a5)
  {
    question = self->_question;
    v7 = a4;
    v8 = [(RAPLookAroundQuestion *)question addressCorrectableString];
    v9 = [v7 selectedMapItem];

    [v8 updateFreeformAddressFromMapItem:v9];
  }

  else
  {
    v10 = a4;
    v8 = [v10 searchBarText];

    v9 = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
    v11 = [v9 freeformAddress];
    [v11 setValue:v8];
  }

  v12 = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  v13 = [v12 freeformAddress];
  v14 = [v13 value];
  [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setFreeformAddress:v14];

  v15 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v15 _maps_reloadCellHeights];
}

- (void)valueForCorrectableItemKind:(int64_t)a3 changedTo:(id)a4
{
  question = self->_question;
  v5 = a4;
  v6 = [(RAPLookAroundQuestion *)question emailAddressCorrectableString];
  [v6 setValue:v5];
}

- (void)_sendRAP
{
  v3 = [(RAPLookAroundDetailsEditorViewController *)self view];
  [v3 endEditing:1];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10094516C;
  v7[3] = &unk_101653830;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]== 5)
  {
    v5 = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
    v6 = [v5 value];
    [RAPPrivacy performPrivacyCheckWithAppearance:1 userEnteredEmailAddress:v6 completion:v4];
  }

  else if (MapsFeature_IsEnabled_RAPCommunityID())
  {
    (v4[2])(v4, 1, 0, 0);
  }

  else
  {
    [RAPPrivacy performPrivacyCheckWithAppearance:1 completion:v4];
  }
}

- (id)_sendButtonItem
{
  sendButtonItem = self->_sendButtonItem;
  if (!sendButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_sendRAP"];
    [(UIBarButtonItem *)v4 setEnabled:[(RAPReport *)self->_report canCreateSubmittableProblem]];
    [(UIBarButtonItem *)v4 setAccessibilityIdentifier:@"RAPSubmitButton"];
    [(RAPReport *)self->_report addObserver:self changeHandler:&stru_10162F460];
    v5 = self->_sendButtonItem;
    self->_sendButtonItem = v4;

    sendButtonItem = self->_sendButtonItem;
  }

  return sendButtonItem;
}

- (void)keyboardWillHide:(id)a3
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v7 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v8 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v8 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v15 = +[UIScreen mainScreen];
  v16 = [v15 coordinateSpace];
  [v14 convertRect:v16 fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  v19 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v19 setContentInset:{0.0, 0.0, v18, 0.0}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundDetailsEditorViewController;
  [(RAPLookAroundDetailsEditorViewController *)&v5 viewDidAppear:a3];
  commentCell = self->_commentCell;
  if (commentCell)
  {
    [(RAPReportComposerCommentTableViewCell *)commentCell beginEditingCommentIfPossible];
  }
}

- (void)_setupTableView
{
  v3 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v3 setDataSource:self];

  v4 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPAddressTableViewCell"];

  v5 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPLookAroundCommentTableViewCell"];

  v6 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPLookAroundEmailTableViewCell"];

  v7 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v7 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPUserContentTableViewCell"];

  v8 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v8 _maps_initializeRAPAppearance];

  v9 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"CommentHeaderView"];

  v10 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MacRAPTableViewFooterView"];

  v11 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"RAPUserContentTableViewFooterView"];

  v13 = +[UIColor systemBackgroundColor];
  v12 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v12 setBackgroundColor:v13];
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = RAPLookAroundDetailsEditorViewController;
  [(RAPLookAroundDetailsEditorViewController *)&v40 viewDidLoad];
  v3 = +[GEOUserAccountInfo primaryICloudAccount];
  account = self->_account;
  self->_account = v3;

  v39 = objc_alloc_init(NSMutableArray);
  v5 = [(RAPLookAroundQuestion *)self->_question localizedDetailsNavigationTitle];
  v6 = [(RAPLookAroundDetailsEditorViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [(RAPLookAroundDetailsEditorViewController *)self _sendButtonItem];
  v8 = [(RAPLookAroundDetailsEditorViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v10 = [(RAPLookAroundQuestion *)self->_question selectedQuestionType];
  if (v10 - 1 > 5)
  {
    v11 = @"RAPLookAroundCategoryTypeImageQuality";
  }

  else
  {
    v11 = *(&off_101651138 + v10 - 1);
  }

  v12 = v11;
  [v9 setAccessibilityIdentifier:v12];

  v13 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v15 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [v14 addSubview:v15];

  v38 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v36 = [v38 leadingAnchor];
  v37 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v32 = [v33 trailingAnchor];
  v16 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v17 = [v16 trailingAnchor];
  v18 = [v32 constraintEqualToAnchor:v17];
  v41[1] = v18;
  v19 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v20 = [v19 topAnchor];
  v21 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v41[2] = v23;
  v24 = [NSArray arrayWithObjects:v41 count:3];
  [v39 addObjectsFromArray:v24];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardDidShowNotification object:0];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardDidHideNotification object:0];

  [(RAPLookAroundDetailsEditorViewController *)self _setupTableView];
  v27 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v28 = [v27 bottomAnchor];
  v29 = [(RAPLookAroundDetailsEditorViewController *)self view];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v39 addObject:v31];

  [NSLayoutConstraint activateConstraints:v39];
}

- (RAPLookAroundDetailsEditorViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = RAPLookAroundDetailsEditorViewController;
  v12 = [(RAPLookAroundDetailsEditorViewController *)&v18 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = v12->_tableView;
    v12->_tableView = v13;

    [(UITableView *)v12->_tableView setRowHeight:UITableViewAutomaticDimension];
    [(UITableView *)v12->_tableView setDelegate:v12];
    [(UITableView *)v12->_tableView setDataSource:v12];
    objc_storeStrong(&v12->_report, a3);
    objc_storeStrong(&v12->_question, a4);
    v15 = [v11 copy];
    completion = v12->_completion;
    v12->_completion = v15;

    [(RAPReport *)v12->_report updateIfNeeded];
  }

  return v12;
}

@end