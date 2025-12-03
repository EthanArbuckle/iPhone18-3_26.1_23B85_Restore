@interface TransferMailboxPickerController
+ (id)log;
+ (id)signpostLog;
- (MailScene)scene;
- (TransferMailboxPickerAnimationDelegate)animationDelegate;
- (TransferMailboxPickerController)initWithItems:(id)items scene:(id)scene;
- (double)_navigationBarMaxY;
- (double)_yOffsetMaximum;
- (id)_sendersFromItems:(id)items;
- (id)_sourceMailboxesFromItems:(id)items;
- (id)_subjectFromItems:(id)items totalMessageCount:(int64_t)count;
- (id)contentScrollView;
- (unint64_t)signpostID;
- (void)_didReceiveTargetDetailChangedNotification:(id)notification;
- (void)_setPaletteVisible:(BOOL)visible;
- (void)accountList:(id)list didCancel:(BOOL)cancel;
- (void)accountList:(id)list didSelectAccount:(id)account;
- (void)animateMessageToCell:(id)cell;
- (void)animateMessageToPoint:(CGPoint)point inView:(id)view completion:(id)completion;
- (void)dealloc;
- (void)mailAccountsDidChange:(id)change;
- (void)mailboxList:(id)list didSelectMailbox:(id)mailbox;
- (void)messageAnimationDidStop;
- (void)restoreScrollOffset;
- (void)saveScrollOffset;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TransferMailboxPickerController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100253068;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD880 != -1)
  {
    dispatch_once(&qword_1006DD880, block);
  }

  v2 = qword_1006DD878;

  return v2;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025318C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD890 != -1)
  {
    dispatch_once(&qword_1006DD890, block);
  }

  v2 = qword_1006DD888;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (TransferMailboxPickerController)initWithItems:(id)items scene:(id)scene
{
  itemsCopy = items;
  obj = scene;
  v45 = itemsCopy;
  if (!itemsCopy)
  {
    v43 = +[NSAssertionHandler currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"TransferMailboxPickerController.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"nil != items"}];
  }

  v55.receiver = self;
  v55.super_class = TransferMailboxPickerController;
  v8 = [(TransferMailboxPickerController *)&v55 init];
  if (v8)
  {
    v46 = +[NSMutableSet set];
    v9 = [itemsCopy sortedArrayUsingComparator:&stru_100656970];
    sortedMessages = v8->_sortedMessages;
    v8->_sortedMessages = v9;

    v8->_totalMessageCount = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = itemsCopy;
    v12 = [v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v12)
    {
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v8->_totalMessageCount += [*(*(&v51 + 1) + 8 * i) count];
        }

        v12 = [v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v12);
    }

    objc_storeWeak(&v8->_scene, obj);
    v15 = [(TransferMailboxPickerController *)v8 _sendersFromItems:v11];
    senders = v8->_senders;
    v8->_senders = v15;

    v17 = [(TransferMailboxPickerController *)v8 _subjectFromItems:v11 totalMessageCount:v8->_totalMessageCount];
    subject = v8->_subject;
    v8->_subject = v17;

    v19 = [(TransferMailboxPickerController *)v8 _sourceMailboxesFromItems:v11];
    sourceMailboxes = v8->_sourceMailboxes;
    v8->_sourceMailboxes = v19;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v8->_sourceMailboxes;
    v22 = [(NSSet *)v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v22)
    {
      v23 = *v48;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v21);
          }

          account = [*(*(&v47 + 1) + 8 * j) account];
          if (account)
          {
            [v46 addObject:account];
          }

          else
          {
            v26 = +[EFAutoBugCaptureReporter sharedReporter];
            [v26 reportIssueType:@"TransferMailboxPickerController" description:@"account is nil"];
          }
        }

        v22 = [(NSSet *)v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v22);
    }

    if ([v46 count] < 2)
    {
      goto LABEL_27;
    }

    *(v8 + 80) |= 1u;
    v27 = +[NSUserDefaults standardUserDefaults];
    v28 = [v27 stringForKey:@"LastTransferAccount"];

    v29 = +[LocalAccount localAccount];
    uniqueID = [v29 uniqueID];
    v31 = [v28 isEqualToString:uniqueID];

    if (v31)
    {
      account = +[NSUserDefaults standardUserDefaults];
      [account removeObjectForKey:@"LastTransferAccount"];
    }

    else
    {
      if (!v28)
      {
        goto LABEL_27;
      }

      v33 = [MailAccount accountWithUniqueId:v28];
      account = v8->_account;
      v8->_account = v33;
    }

LABEL_27:
    v34 = v8->_account;
    if (!v34 || ([(MailAccount *)v34 isActive]& 1) == 0)
    {
      anyObject = [v46 anyObject];
      v36 = v8->_account;
      v8->_account = anyObject;
    }

    v37 = [v46 copy];
    sourceAccounts = v8->_sourceAccounts;
    v8->_sourceAccounts = v37;

    v39 = [[MFMessageScreenshotGenerator alloc] initWithScene:obj];
    screenshotGenerator = v8->_screenshotGenerator;
    v8->_screenshotGenerator = v39;

    v41 = +[NSNotificationCenter defaultCenter];
    [v41 addObserver:v8 selector:"mailAccountsDidChange:" name:ECMailAccountsDidChangeNotification object:0];
    [v41 addObserver:v8 selector:"_didReceiveTargetDetailChangedNotification:" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(MailboxListViewControllerMail *)self->_mailboxListController removeFromParentViewController];
  v3.receiver = self;
  v3.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v3 dealloc];
}

- (id)contentScrollView
{
  tableView = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [tableView setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewMailboxListController];

  return tableView;
}

- (void)updateTitle
{
  v3 = +[NSBundle mainBundle];
  v8 = [v3 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];

  displayName = [(MailAccount *)self->_account displayName];
  if ([displayName length])
  {
    v5 = displayName;

    v8 = v5;
  }

  title = [(TransferMailboxPickerController *)self title];
  v7 = [v8 isEqualToString:title];

  if ((v7 & 1) == 0)
  {
    [(TransferMailboxPickerController *)self setTitle:v8];
  }
}

- (double)_yOffsetMaximum
{
  tableView = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [tableView contentSize];
  v4 = v3;
  [tableView bounds];
  v6 = v4 - v5;

  return v6;
}

- (void)saveScrollOffset
{
  if (!qword_1006DD870)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_1006DD870;
    qword_1006DD870 = v3;
  }

  tableView = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [tableView contentOffset];
  v7 = v6;

  [(TransferMailboxPickerController *)self _yOffsetMaximum];
  if (v7 >= v8)
  {
    v7 = INFINITY;
  }

  account = [(MailboxListViewControllerBase *)self->_mailboxListController account];
  uniqueID = [account uniqueID];

  v11 = uniqueID;
  if (uniqueID)
  {
    v12 = qword_1006DD870;
    *&v10 = v7;
    v13 = [NSNumber numberWithFloat:v10];
    [v12 setObject:v13 forKey:uniqueID];

    v11 = uniqueID;
  }
}

- (void)restoreScrollOffset
{
  v3 = qword_1006DD870;
  account = [(MailboxListViewControllerBase *)self->_mailboxListController account];
  uniqueID = [account uniqueID];
  v16 = [v3 objectForKey:uniqueID];

  tableView = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  if (v16)
  {
    [v16 floatValue];
    v8 = v7;
    [(TransferMailboxPickerController *)self _yOffsetMaximum];
    v10 = v9;
    [(TransferMailboxPickerController *)self _navigationBarAndPaletteMaxY];
    v12 = v8;
    if (v10 <= v8)
    {
      v12 = v10;
    }

    v13 = v12 + v11;
    if (v13 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }
  }

  else
  {
    v14 = 0.0;
  }

  [tableView contentInset];
  [tableView setContentOffset:{0.0, v14 - v15}];
}

- (double)_navigationBarMaxY
{
  scene = [(TransferMailboxPickerController *)self scene];
  statusBarManager = [scene statusBarManager];
  [statusBarManager statusBarFrame];
  Height = CGRectGetHeight(v10);

  navigationController = [(TransferMailboxPickerController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  v8 = Height + 0.0 + CGRectGetHeight(v11);

  return v8;
}

- (id)_sendersFromItems:(id)items
{
  itemsCopy = items;
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        senderList = [*(*(&v17 + 1) + 8 * i) senderList];
        firstObject = [senderList firstObject];
        emailAddressValue = [firstObject emailAddressValue];

        displayName = [emailAddressValue displayName];
        if (![displayName length])
        {
          simpleAddress = [emailAddressValue simpleAddress];

          displayName = simpleAddress;
        }

        if ([displayName length])
        {
          if (!displayName)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v14 = +[MUILocalizedMessageListStrings noSenderPlaceholder];

          displayName = v14;
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        if (([v4 containsObject:displayName] & 1) == 0)
        {
          [v3 addObject:displayName];
          [v4 addObject:displayName];
        }

LABEL_14:
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_subjectFromItems:(id)items totalMessageCount:(int64_t)count
{
  itemsCopy = items;
  v6 = itemsCopy;
  if (count != 1)
  {
    v10 = [NSNumberFormatter ef_formatUnsignedInteger:count withGrouping:1];
    v13 = +[NSBundle mainBundle];
    v11 = [v13 localizedStringForKey:@"N_MESSAGES" value:&stru_100662A88 table:@"Main"];

    subjectString = [[NSString alloc] initWithFormat:v11, v10];
    goto LABEL_6;
  }

  lastObject = [itemsCopy lastObject];
  subject = [lastObject subject];
  subjectString = [subject subjectString];

  if (!subjectString || ![subjectString length])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
    v12 = [v11 copy];

    subjectString = v12;
LABEL_6:
  }

  return subjectString;
}

- (id)_sourceMailboxesFromItems:(id)items
{
  itemsCopy = items;
  v3 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = itemsCopy;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:{16, itemsCopy}];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = +[UIApplication sharedApplication];
        mailboxProvider = [v8 mailboxProvider];
        mailboxes = [v7 mailboxes];
        v11 = [mailboxes ef_mapSelector:"objectID"];
        v12 = [mailboxProvider legacyMailboxesForObjectIDs:v11];
        [v3 addObjectsFromArray:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)_setPaletteVisible:(BOOL)visible
{
  if (visible)
  {
    pickerPalette = self->_pickerPalette;
    if (!pickerPalette)
    {
      v5 = [[TransferMailboxPickerPalette alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v6 = self->_pickerPalette;
      self->_pickerPalette = v5;

      pickerPalette = self->_pickerPalette;
    }

    [(TransferMailboxPickerPalette *)pickerPalette setSubject:self->_subject];
    [(TransferMailboxPickerPalette *)self->_pickerPalette setSenders:self->_senders];
    [(TransferMailboxPickerPalette *)self->_pickerPalette setMessageCount:self->_totalMessageCount];
    firstObject = [(NSArray *)self->_sortedMessages firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained transferMailboxPickerController:self viewForItem:firstObject], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(TransferMailboxPickerPalette *)self->_pickerPalette setMessageThumbnailWithView:v9];
    }

    else
    {
      objc_initWeak(&location, self->_pickerPalette);
      objc_initWeak(&from, self->_screenshotGenerator);
      displayMessage = [firstObject displayMessage];
      v12 = +[EFScheduler mainThreadScheduler];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1002548D0;
      v25[3] = &unk_1006569C0;
      v25[4] = self;
      objc_copyWeak(&v26, &from);
      objc_copyWeak(&v27, &location);
      [displayMessage onScheduler:v12 addSuccessBlock:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      v9 = 0;
    }

    navigationController = [(TransferMailboxPickerController *)self navigationController];
    v14 = [navigationController existingPaletteForEdge:2];

    if (!v14)
    {
      v15 = self->_pickerPalette;
      view = [navigationController view];
      [view frame];
      [(TransferMailboxPickerPalette *)v15 sizeThatFits:v17, v18];
      v20 = v19;
      v22 = v21;

      v23 = [navigationController paletteForEdge:2 size:{v20, v22}];
      [v23 bounds];
      [(TransferMailboxPickerPalette *)self->_pickerPalette setFrame:?];
      [v23 addSubview:self->_pickerPalette];
      [navigationController attachPalette:v23 isPinned:0];
    }
  }

  else
  {
    navigationController2 = [(TransferMailboxPickerController *)self navigationController];
    v10 = [navigationController2 existingPaletteForEdge:2];
    if (v10)
    {
      [navigationController2 detachPalette:v10];
    }
  }
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v31 viewDidLoad];
  scene = [(TransferMailboxPickerController *)self scene];
  v30 = scene;
  v4 = [UIView alloc];
  mf_window = [scene mf_window];
  [mf_window bounds];
  v6 = [v4 initWithFrame:?];

  [v6 setAutoresizingMask:18];
  [(TransferMailboxPickerController *)self setView:v6];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  [(TransferMailboxPickerController *)self updateTitle];
  mailboxListController = self->_mailboxListController;
  if (!mailboxListController)
  {
    v12 = [[MailboxListViewControllerMail alloc] initWithScene:scene];
    v13 = self->_mailboxListController;
    self->_mailboxListController = v12;

    mailboxListController = self->_mailboxListController;
  }

  [(MailboxListViewControllerMail *)mailboxListController setShowsDisclosure:0];
  [(MailboxListViewControllerMail *)self->_mailboxListController setShowsRefreshControl:0];
  [(TransferMailboxPickerController *)self addChildViewController:self->_mailboxListController];
  v14 = objc_alloc_init(MailboxListViewingContext);
  [(MailboxListViewingContext *)v14 setAccount:self->_account];
  [(MailboxListViewingContext *)v14 setSelectionTarget:self];
  [(MailboxListViewControllerBase *)self->_mailboxListController setViewingContext:v14];
  v15 = [(NSSet *)self->_sourceMailboxes mutableCopy];
  v29 = v15;
  transferDisabledMailboxUids = [(MailAccount *)self->_account transferDisabledMailboxUids];
  if (transferDisabledMailboxUids)
  {
    [v15 addObjectsFromArray:transferDisabledMailboxUids];
  }

  [(MailboxListViewControllerMail *)self->_mailboxListController disableMailboxes:v15];
  v17 = [NSNumber numberWithInt:6];
  v18 = [NSNumber numberWithInt:106];
  v19 = [NSNumber numberWithInt:5];
  v20 = [NSNumber numberWithInt:105];
  v21 = [NSSet setWithObjects:v17, v18, v19, v20, 0];

  [(MailboxListViewControllerMail *)self->_mailboxListController disableMailboxTypes:v21];
  view = [(MailboxListViewControllerMail *)self->_mailboxListController view];
  [view setFrame:{0.0, 0.0, v8, v10}];
  [v6 addSubview:view];
  [(MailboxListViewControllerMail *)self->_mailboxListController didMoveToParentViewController:self];
  v23 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v23 setSearchResultsUpdater:self];
  [v23 setHidesNavigationBarDuringPresentation:1];
  [v23 setObscuresBackgroundDuringPresentation:0];
  v24 = _EFLocalizedString();
  searchBar = [v23 searchBar];
  [searchBar setPlaceholder:v24];

  searchBar2 = [v23 searchBar];
  searchTextField = [searchBar2 searchTextField];
  [searchTextField setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewMailboxListControllerSearchTextField];

  navigationItem = [(TransferMailboxPickerController *)self navigationItem];
  [navigationItem setSearchController:v23];

  [(TransferMailboxPickerController *)self setDefinesPresentationContext:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v8 viewWillAppear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewWillAppear:appearCopy];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  navigationItem = [(TransferMailboxPickerController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  scene = [(TransferMailboxPickerController *)self scene];
  -[TransferMailboxPickerController _setPaletteVisible:](self, "_setPaletteVisible:", [scene isInExpandedEnvironment] ^ 1);

  [(TransferMailboxPickerController *)self restoreScrollOffset];
}

- (void)_didReceiveTargetDetailChangedNotification:(id)notification
{
  scene = [(TransferMailboxPickerController *)self scene];
  -[TransferMailboxPickerController _setPaletteVisible:](self, "_setPaletteVisible:", [scene isInExpandedEnvironment] ^ 1);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewDidAppear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewWillDisappear:?];
  [(TransferMailboxPickerController *)self saveScrollOffset];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewDidDisappear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewDidDisappear:disappearCopy];
}

- (void)animateMessageToCell:(id)cell
{
  cellCopy = cell;
  objc_storeStrong(&self->_tableCell, cell);
  [(MailboxTableCell *)self->_tableCell destinationPointForAnimation];
  v8 = v7;
  v9 = v6;
  if (v7 == CGPointZero.x && v6 == CGPointZero.y)
  {
    goto LABEL_12;
  }

  view = [(TransferMailboxPickerController *)self view];
  [view setUserInteractionEnabled:0];

  scene = [(TransferMailboxPickerController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  if (isInExpandedEnvironment)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100255C1C;
    v47[3] = &unk_10064C7E8;
    v47[4] = self;
    [(TransferMailboxPickerController *)self animateMessageToPoint:cellCopy inView:v47 completion:v8, v9];
    goto LABEL_14;
  }

  messageThumbnailView = [(TransferMailboxPickerPalette *)self->_pickerPalette messageThumbnailView];

  if (!messageThumbnailView)
  {
LABEL_12:
    sub_1002551CC(self, 1, 0);
    goto LABEL_14;
  }

  messageThumbnailView2 = [(TransferMailboxPickerPalette *)self->_pickerPalette messageThumbnailView];
  animatedView = self->_animatedView;
  self->_animatedView = messageThumbnailView2;

  superview = [(UIView *)self->_animatedView superview];
  for (i = superview; ; i = superview4)
  {
    superview2 = [i superview];
    if (!superview2)
    {
      break;
    }

    superview3 = [i superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    superview4 = [i superview];
  }

  [(UIView *)self->_animatedView frame];
  [i convertRect:superview fromView:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(UIView *)self->_animatedView setFrame:?];
  [i addSubview:self->_animatedView];
  [i convertPoint:self->_tableCell fromView:{v8, v9}];
  v32 = v31;
  v34 = v33;
  Mutable = CGPathCreateMutable();
  v36 = v26 + round(v30 * 0.5);
  CGPathMoveToPoint(Mutable, 0, v24 + round(v28 * 0.5), v36);
  CGPathAddQuadCurveToPoint(Mutable, 0, v32, v36, v32, v34);
  v37 = +[CAKeyframeAnimation animation];
  [v37 setKeyPath:@"position"];
  [v37 setKeyTimes:&off_100675000];
  [v37 setPath:Mutable];
  UIAnimationDragCoefficient();
  [v37 setDuration:v38 * 0.5];
  [v37 setCalculationMode:kCAAnimationLinear];
  [v37 setFillMode:kCAFillModeForwards];
  [v37 setRemovedOnCompletion:0];
  CGPathRelease(Mutable);
  v39 = [CABasicAnimation animationWithKeyPath:@"transform"];
  v40 = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
  [v39 setValueFunction:v40];

  [v39 setFromValue:&off_100674950];
  [v39 setToValue:&off_100674970];
  UIAnimationDragCoefficient();
  [v39 setDuration:v41 * 0.5];
  v42 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v39 setTimingFunction:v42];

  [v39 setAdditive:1];
  [v39 setFillMode:kCAFillModeForwards];
  [v39 setRemovedOnCompletion:0];
  v43 = +[CAAnimationGroup animation];
  v48[0] = v37;
  v48[1] = v39;
  v44 = [NSArray arrayWithObjects:v48 count:2];
  [v43 setAnimations:v44];

  UIAnimationDragCoefficient();
  [v43 setDuration:v45 * 0.5];
  [v43 setFillMode:kCAFillModeForwards];
  [v43 setRemovedOnCompletion:0];
  [v43 setDelegate:self];
  layer = [(UIView *)self->_animatedView layer];
  [layer addAnimation:v43 forKey:0];

LABEL_14:
}

- (void)messageAnimationDidStop
{
  layer = [(UIView *)self->_animatedView layer];
  [layer removeAllAnimations];

  [(UIView *)self->_animatedView removeFromSuperview];
  animatedView = self->_animatedView;
  self->_animatedView = 0;

  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = "";
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v34 = v5;
  v35 = v5;
  [(MailboxTableCell *)self->_tableCell frame];
  *&v34 = v6;
  *(&v34 + 1) = v7;
  *&v35 = v8;
  *(&v35 + 1) = v9;
  superview = [(MailboxTableCell *)self->_tableCell superview];
  lastSuperview = self->_lastSuperview;
  self->_lastSuperview = superview;

  view = [(TransferMailboxPickerController *)self view];
  [view convertPoint:self->_lastSuperview fromView:{v31[4], v31[5]}];
  v13 = v31;
  *(v31 + 4) = v14;
  *(v13 + 5) = v15;

  traitCollection = [(TransferMailboxPickerController *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0)
  {
    v18 = [UIImageView alloc];
    v19 = UIImageGetTableSelectionBackground();
    v20 = [v18 initWithImage:v19];
    backstop = self->_backstop;
    self->_backstop = v20;

    [(UIImageView *)self->_backstop setFrame:v31[4], v31[5], v31[6], v31[7]];
    view2 = [(TransferMailboxPickerController *)self view];
    [view2 addSubview:self->_backstop];
  }

  [(MailboxTableCell *)self->_tableCell setSeparatorStyle:0];
  [(MailboxTableCell *)self->_tableCell setFrame:v31[4], v31[5], v31[6], v31[7]];
  view3 = [(TransferMailboxPickerController *)self view];
  [view3 addSubview:self->_tableCell];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100255F24;
  v28[3] = &unk_1006569E8;
  v29 = mf_useSplitViewStyling;
  v28[4] = self;
  v28[5] = &v30;
  v24 = objc_retainBlock(v28);
  UIAnimationDragCoefficient();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002561E0;
  v26[3] = &unk_10064CA38;
  v27 = mf_useSplitViewStyling;
  v26[4] = self;
  v26[5] = &v30;
  [UIView animateWithDuration:v26 animations:v24 completion:v25 * 0.1];

  _Block_object_dispose(&v30, 8);
}

- (void)animateMessageToPoint:(CGPoint)point inView:(id)view completion:(id)completion
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained transferMailboxPickerController:self animateMessageToPoint:viewCopy inView:completionCopy completion:{x, y}];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)mailboxList:(id)list didSelectMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (![(NSSet *)self->_sourceMailboxes containsObject:?])
  {
    if (*(self + 80))
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      representedAccount = [mailboxCopy representedAccount];
      uniqueID = [representedAccount uniqueID];
      [v5 setObject:uniqueID forKey:@"LastTransferAccount"];
    }

    sub_1002553D8(self, mailboxCopy);
    v8 = [(MailboxListViewControllerMail *)self->_mailboxListController cellForMailbox:mailboxCopy];
    [(TransferMailboxPickerController *)self animateMessageToCell:v8];
  }
}

- (void)accountList:(id)list didSelectAccount:(id)account
{
  listCopy = list;
  accountCopy = account;
  [(MailboxListViewControllerMail *)self->_mailboxListController setAccount:accountCopy];
  [(TransferMailboxPickerController *)self setAccount:accountCopy];
  [(TransferMailboxPickerController *)self updateTitle];
  splitViewController = [listCopy splitViewController];
  if ([splitViewController isCollapsed])
  {
    [splitViewController showColumn:1];
  }

  else
  {
    [(MailboxListViewControllerMail *)self->_mailboxListController viewWillAppear:0];
    [(MailboxListViewControllerMail *)self->_mailboxListController viewDidAppear:0];
  }

  [(TransferMailboxPickerController *)self restoreScrollOffset];
  navigationController = [(TransferMailboxPickerController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [navigationController updatePrompt];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  mailboxListController = self->_mailboxListController;
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(MailboxListViewControllerMail *)mailboxListController filterMailboxesContainingText:text];
}

- (TransferMailboxPickerAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)mailAccountsDidChange:(id)change
{
  if (self)
  {
    sub_1000079D8(self, 0);
  }
}

- (void)accountList:(id)list didCancel:(BOOL)cancel
{
  if (self)
  {
    sub_1000079D8(self, 0);
  }
}

@end