@interface RAPLookAroundDetailsEditorViewController
- (BOOL)_shouldShowPrivacyFooterForSection:(int64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (RAPLookAroundDetailsEditorViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightforFooterInSection:(int64_t)section;
- (id)_sendButtonItem;
- (id)_userInfoCell;
- (id)commentHeaderView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view resolveHomeImageryCellForIndexPath:(id)path;
- (id)tableView:(id)view resolveHomeImageryCellWithNoAccountForIndexPath:(id)path;
- (id)tableView:(id)view resolveSimpleFeedbackCellForIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_presentPrivacyView;
- (void)_sendRAP;
- (void)_setupTableView;
- (void)addressTableViewCell:(id)cell updatedAddress:(id)address;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)rapSearchAutocompleteViewController:(id)controller finishedPickingAutocompleteResult:(id)result isAutocompleteResult:(BOOL)autocompleteResult;
- (void)userTappedOnAddressTableViewCell:(id)cell;
- (void)valueForCorrectableItemKind:(int64_t)kind changedTo:(id)to;
- (void)viewDidAppear:(BOOL)appear;
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

- (id)tableView:(id)view resolveSimpleFeedbackCellForIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (!self->_account)
  {
    commentCell = self->_commentCell;
    if (!commentCell)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPLookAroundCommentTableViewCell" forIndexPath:pathCopy];
      objc_storeStrong(&self->_commentCell, v9);
      localizedDescription = [(RAPLookAroundQuestion *)self->_question localizedDescription];
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setPlaceholderText:localizedDescription];

      commentQuestion = [(RAPLookAroundQuestion *)self->_question commentQuestion];
      objc_initWeak(&location, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1009440C4;
      v19[3] = &unk_101636260;
      v12 = commentQuestion;
      v20 = v12;
      objc_copyWeak(&v21, &location);
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setTextDidChange:v19];
      objc_destroyWeak(&v21);
      v13 = v20;
      goto LABEL_8;
    }

LABEL_9:
    _userInfoCell = commentCell;
    goto LABEL_10;
  }

  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0 || [pathCopy section])
  {
    commentCell = self->_commentCell;
    if (!commentCell)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPLookAroundCommentTableViewCell" forIndexPath:pathCopy];
      objc_storeStrong(&self->_commentCell, v9);
      localizedDescription2 = [(RAPLookAroundQuestion *)self->_question localizedDescription];
      [(RAPReportComposerCommentTableViewCell *)self->_commentCell setPlaceholderText:localizedDescription2];

      commentQuestion2 = [(RAPLookAroundQuestion *)self->_question commentQuestion];
      objc_initWeak(&location, self);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100944058;
      v22[3] = &unk_101636260;
      v12 = commentQuestion2;
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

  _userInfoCell = [(RAPLookAroundDetailsEditorViewController *)self _userInfoCell];
LABEL_10:
  v17 = _userInfoCell;

  return v17;
}

- (id)tableView:(id)view resolveHomeImageryCellWithNoAccountForIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPLookAroundEmailTableViewCell" forIndexPath:pathCopy];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setPlaceholder:v10];

    emailAddressCorrectableString = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
    value = [emailAddressCorrectableString value];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setValue:value];

    [(RAPMultilineAddressLabelTableViewCell *)v8 setPreferredKeyboardType:7];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setAccessibilityIdentifier:@"RAPLookAroundEmailCell"];
    [(RAPMultilineAddressLabelTableViewCell *)v8 setDelegate:self];
  }

  else
  {
    addressCell = self->_addressCell;
    if (!addressCell)
    {
      v14 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPAddressTableViewCell" forIndexPath:pathCopy];
      v15 = self->_addressCell;
      self->_addressCell = v14;
      v16 = v14;

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setDelegate:self];
      v17 = +[RAPAddressLayoutOptions allFieldsDisabledOptions];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setLayoutOptions:v17];

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setEditableAndTappable:1];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setAccessibilityIdentifier:@"RAPLookAroundAddressCell"];
      tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setParentTableView:tableView];

      addressCell = self->_addressCell;
    }

    v8 = addressCell;
  }

  return v8;
}

- (id)tableView:(id)view resolveHomeImageryCellForIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (!self->_account)
  {
    _userInfoCell = [(RAPLookAroundDetailsEditorViewController *)self tableView:viewCopy resolveHomeImageryCellWithNoAccountForIndexPath:pathCopy];
LABEL_9:
    v16 = _userInfoCell;
    goto LABEL_10;
  }

  if (![pathCopy section])
  {
    _userInfoCell = [(RAPLookAroundDetailsEditorViewController *)self _userInfoCell];
    goto LABEL_9;
  }

  if ([v8 section] == 1)
  {
    addressCell = self->_addressCell;
    if (!addressCell)
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPAddressTableViewCell" forIndexPath:v8];
      v11 = self->_addressCell;
      self->_addressCell = v10;
      v12 = v10;

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setDelegate:self];
      v13 = +[RAPAddressLayoutOptions allFieldsDisabledOptions];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setLayoutOptions:v13];

      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setEditableAndTappable:1];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setAccessibilityIdentifier:@"RAPLookAroundAddressCell"];
      tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
      [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setParentTableView:tableView];

      addressCell = self->_addressCell;
    }

    _userInfoCell = addressCell;
    goto LABEL_9;
  }

  v16 = [viewCopy dequeueReusableCellWithIdentifier:@"RAPLookAroundEmailTableViewCell" forIndexPath:v8];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Email Address [Report a Problem]" value:@"localized string not found" table:0];
  [v16 setPlaceholder:v19];

  emailAddressCorrectableString = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
  value = [emailAddressCorrectableString value];
  [v16 setValue:value];

  [v16 setPreferredKeyboardType:7];
  [v16 setAccessibilityIdentifier:@"RAPLookAroundEmailCell"];
  [v16 setDelegate:self];
LABEL_10:

  return v16;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  question = self->_question;
  pathCopy = path;
  viewCopy = view;
  if ([(RAPLookAroundQuestion *)question selectedQuestionType]== 5)
  {
    [(RAPLookAroundDetailsEditorViewController *)self tableView:viewCopy resolveHomeImageryCellForIndexPath:pathCopy];
  }

  else
  {
    [(RAPLookAroundDetailsEditorViewController *)self tableView:viewCopy resolveSimpleFeedbackCellForIndexPath:pathCopy];
  }
  v9 = ;

  return v9;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RAPLookAroundQuestion selectedQuestionType](self->_question, "selectedQuestionType") != 5 || !self->_account || [pathCopy section];

  return v6;
}

- (double)tableView:(id)view heightforFooterInSection:(int64_t)section
{
  if (section)
  {
    return 2.22507386e-308;
  }

  v7 = [(RAPLookAroundQuestion *)self->_question selectedQuestionType:view];
  result = UITableViewAutomaticDimension;
  if (v7 == 5)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v6 = +[TableViewFooterOptions defaultRAPUserContentOptions];
  v7 = [[TableViewSelectableFooterView alloc] initWithReuseIdentifier:@"RAPUserContentTableViewFooterView" options:v6];
  [(TableViewSelectableFooterView *)v7 setTarget:self action:"_presentPrivacyView"];
  if ([(RAPLookAroundDetailsEditorViewController *)self _shouldShowPrivacyFooterForSection:section])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
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

  if (v6 == section)
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

- (BOOL)_shouldShowPrivacyFooterForSection:(int64_t)section
{
  account = self->_account;
  if (!section && account)
  {
    v6 = 1;
LABEL_8:
    _requiresPrivacyElements = [(RAPLookAroundDetailsEditorViewController *)self _requiresPrivacyElements];
    if (section)
    {
      v8 = 0;
    }

    else
    {
      v8 = _requiresPrivacyElements;
    }

    goto LABEL_11;
  }

  v6 = 0;
  if (!section && !account)
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if ([(RAPLookAroundDetailsEditorViewController *)self _requiresPrivacyElements:view])
  {
    return UITableViewAutomaticDimension;
  }

  commentHeaderView = [(RAPLookAroundDetailsEditorViewController *)self commentHeaderView];
  [commentHeaderView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v7;

  return v5;
}

- (id)commentHeaderView
{
  if (!self->_commentHeaderView)
  {
    v3 = [RAPCommentPartHeaderView alloc];
    commentQuestion = [(RAPLookAroundQuestion *)self->_question commentQuestion];
    v5 = [(RAPCommentPartHeaderView *)v3 initWithQuestion:commentQuestion reuseIdentifier:@"CommentHeaderView"];
    commentHeaderView = self->_commentHeaderView;
    self->_commentHeaderView = v5;
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Details [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPHeaderFooterView *)self->_commentHeaderView setTitleLabelText:v8];

  v9 = self->_commentHeaderView;

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]!= 5)
  {
    if (MapsFeature_IsEnabled_RAPCommunityID() || (account = self->_account, section) && account || !section && !account)
    {
      commentHeaderView = [(RAPLookAroundDetailsEditorViewController *)self commentHeaderView];
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
    if (section != 1)
    {
      v11 = v10;
      if (section != 2)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v11 = v8;
    if (section)
    {
      if (section != 1)
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
  commentHeaderView = [viewCopy _maps_groupedHeaderViewWithTitle:v14];

LABEL_19:

  return commentHeaderView;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (void)userTappedOnAddressTableViewCell:(id)cell
{
  addressCorrectableString = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  freeformAddress = [addressCorrectableString freeformAddress];
  value = [freeformAddress value];
  v15 = [RAPSearchAutocompleteViewController addressAutocompleteViewControllerWithInitialSearchString:value];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Home Address [RAP]" value:@"localized string not found" table:0];
  [v15 setTitleText:v8];

  [v15 setDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v15];
  [v9 setModalPresentationStyle:2];
  [v9 setModalInPresentation:1];
  navigationController = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
  [v9 setOverrideUserInterfaceStyle:{objc_msgSend(navigationController, "overrideUserInterfaceStyle")}];

  [v9 setAccessibilityIdentifier:@"RAPHomeAddressAutocompleteView"];
  navigationController2 = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
  [v15 setOverrideUserInterfaceStyle:{objc_msgSend(navigationController2, "overrideUserInterfaceStyle")}];

  traitCollection = [(RAPLookAroundDetailsEditorViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [v15 setOverrideUserInterfaceStyle:1];
    navigationController3 = [(RAPLookAroundDetailsEditorViewController *)self navigationController];
    [navigationController3 pushViewController:v15 animated:1];
  }

  else
  {
    [(RAPLookAroundDetailsEditorViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)addressTableViewCell:(id)cell updatedAddress:(id)address
{
  freeformAddress = [address freeformAddress];
  addressCorrectableString = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  freeformAddress2 = [addressCorrectableString freeformAddress];
  [freeformAddress2 setValue:freeformAddress];
}

- (void)rapSearchAutocompleteViewController:(id)controller finishedPickingAutocompleteResult:(id)result isAutocompleteResult:(BOOL)autocompleteResult
{
  if (autocompleteResult)
  {
    question = self->_question;
    resultCopy = result;
    addressCorrectableString = [(RAPLookAroundQuestion *)question addressCorrectableString];
    selectedMapItem = [resultCopy selectedMapItem];

    [addressCorrectableString updateFreeformAddressFromMapItem:selectedMapItem];
  }

  else
  {
    resultCopy2 = result;
    addressCorrectableString = [resultCopy2 searchBarText];

    selectedMapItem = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
    freeformAddress = [selectedMapItem freeformAddress];
    [freeformAddress setValue:addressCorrectableString];
  }

  addressCorrectableString2 = [(RAPLookAroundQuestion *)self->_question addressCorrectableString];
  freeformAddress2 = [addressCorrectableString2 freeformAddress];
  value = [freeformAddress2 value];
  [(RAPMultilineAddressLabelTableViewCell *)self->_addressCell setFreeformAddress:value];

  tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView _maps_reloadCellHeights];
}

- (void)valueForCorrectableItemKind:(int64_t)kind changedTo:(id)to
{
  question = self->_question;
  toCopy = to;
  emailAddressCorrectableString = [(RAPLookAroundQuestion *)question emailAddressCorrectableString];
  [emailAddressCorrectableString setValue:toCopy];
}

- (void)_sendRAP
{
  view = [(RAPLookAroundDetailsEditorViewController *)self view];
  [view endEditing:1];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10094516C;
  v7[3] = &unk_101653830;
  v7[4] = self;
  v4 = objc_retainBlock(v7);
  if ([(RAPLookAroundQuestion *)self->_question selectedQuestionType]== 5)
  {
    emailAddressCorrectableString = [(RAPLookAroundQuestion *)self->_question emailAddressCorrectableString];
    value = [emailAddressCorrectableString value];
    [RAPPrivacy performPrivacyCheckWithAppearance:1 userEnteredEmailAddress:value completion:v4];
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

- (void)keyboardWillHide:(id)hide
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  tableView2 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  v15 = +[UIScreen mainScreen];
  coordinateSpace = [v15 coordinateSpace];
  [tableView convertRect:coordinateSpace fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  tableView2 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView2 setContentInset:{0.0, 0.0, v18, 0.0}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundDetailsEditorViewController;
  [(RAPLookAroundDetailsEditorViewController *)&v5 viewDidAppear:appear];
  commentCell = self->_commentCell;
  if (commentCell)
  {
    [(RAPReportComposerCommentTableViewCell *)commentCell beginEditingCommentIfPossible];
  }
}

- (void)_setupTableView
{
  tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPAddressTableViewCell"];

  tableView3 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPLookAroundCommentTableViewCell"];

  tableView4 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPLookAroundEmailTableViewCell"];

  tableView5 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"RAPUserContentTableViewCell"];

  tableView6 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView6 _maps_initializeRAPAppearance];

  tableView7 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"CommentHeaderView"];

  tableView8 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"MacRAPTableViewFooterView"];

  tableView9 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"RAPUserContentTableViewFooterView"];

  v13 = +[UIColor systemBackgroundColor];
  tableView10 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView10 setBackgroundColor:v13];
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
  localizedDetailsNavigationTitle = [(RAPLookAroundQuestion *)self->_question localizedDetailsNavigationTitle];
  navigationItem = [(RAPLookAroundDetailsEditorViewController *)self navigationItem];
  [navigationItem setTitle:localizedDetailsNavigationTitle];

  _sendButtonItem = [(RAPLookAroundDetailsEditorViewController *)self _sendButtonItem];
  navigationItem2 = [(RAPLookAroundDetailsEditorViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:_sendButtonItem];

  view = [(RAPLookAroundDetailsEditorViewController *)self view];
  selectedQuestionType = [(RAPLookAroundQuestion *)self->_question selectedQuestionType];
  if (selectedQuestionType - 1 > 5)
  {
    v11 = @"RAPLookAroundCategoryTypeImageQuality";
  }

  else
  {
    v11 = *(&off_101651138 + selectedQuestionType - 1);
  }

  v12 = v11;
  [view setAccessibilityIdentifier:v12];

  tableView = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(RAPLookAroundDetailsEditorViewController *)self view];
  tableView2 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  [view2 addSubview:tableView2];

  tableView3 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  leadingAnchor = [tableView3 leadingAnchor];
  view3 = [(RAPLookAroundDetailsEditorViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[0] = v34;
  tableView4 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  trailingAnchor = [tableView4 trailingAnchor];
  view4 = [(RAPLookAroundDetailsEditorViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[1] = v18;
  tableView5 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  topAnchor = [tableView5 topAnchor];
  view5 = [(RAPLookAroundDetailsEditorViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v41[2] = v23;
  v24 = [NSArray arrayWithObjects:v41 count:3];
  [v39 addObjectsFromArray:v24];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardDidShowNotification object:0];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardDidHideNotification object:0];

  [(RAPLookAroundDetailsEditorViewController *)self _setupTableView];
  tableView6 = [(RAPLookAroundDetailsEditorViewController *)self tableView];
  bottomAnchor = [tableView6 bottomAnchor];
  view6 = [(RAPLookAroundDetailsEditorViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v39 addObject:v31];

  [NSLayoutConstraint activateConstraints:v39];
}

- (RAPLookAroundDetailsEditorViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
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
    objc_storeStrong(&v12->_report, report);
    objc_storeStrong(&v12->_question, question);
    v15 = [completionCopy copy];
    completion = v12->_completion;
    v12->_completion = v15;

    [(RAPReport *)v12->_report updateIfNeeded];
  }

  return v12;
}

@end