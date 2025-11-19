@interface TransferMailboxPickerController
+ (id)log;
+ (id)signpostLog;
- (MailScene)scene;
- (TransferMailboxPickerAnimationDelegate)animationDelegate;
- (TransferMailboxPickerController)initWithItems:(id)a3 scene:(id)a4;
- (double)_navigationBarMaxY;
- (double)_yOffsetMaximum;
- (id)_sendersFromItems:(id)a3;
- (id)_sourceMailboxesFromItems:(id)a3;
- (id)_subjectFromItems:(id)a3 totalMessageCount:(int64_t)a4;
- (id)contentScrollView;
- (unint64_t)signpostID;
- (void)_didReceiveTargetDetailChangedNotification:(id)a3;
- (void)_setPaletteVisible:(BOOL)a3;
- (void)accountList:(id)a3 didCancel:(BOOL)a4;
- (void)accountList:(id)a3 didSelectAccount:(id)a4;
- (void)animateMessageToCell:(id)a3;
- (void)animateMessageToPoint:(CGPoint)a3 inView:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)mailAccountsDidChange:(id)a3;
- (void)mailboxList:(id)a3 didSelectMailbox:(id)a4;
- (void)messageAnimationDidStop;
- (void)restoreScrollOffset;
- (void)saveScrollOffset;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TransferMailboxPickerController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100253068;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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
  block[4] = a1;
  if (qword_1006DD890 != -1)
  {
    dispatch_once(&qword_1006DD890, block);
  }

  v2 = qword_1006DD888;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (TransferMailboxPickerController)initWithItems:(id)a3 scene:(id)a4
{
  v7 = a3;
  obj = a4;
  v45 = v7;
  if (!v7)
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
    v9 = [v7 sortedArrayUsingComparator:&stru_100656970];
    sortedMessages = v8->_sortedMessages;
    v8->_sortedMessages = v9;

    v8->_totalMessageCount = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = v7;
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

          v25 = [*(*(&v47 + 1) + 8 * j) account];
          if (v25)
          {
            [v46 addObject:v25];
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
    v30 = [v29 uniqueID];
    v31 = [v28 isEqualToString:v30];

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
      v35 = [v46 anyObject];
      v36 = v8->_account;
      v8->_account = v35;
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
  v2 = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [v2 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewMailboxListController];

  return v2;
}

- (void)updateTitle
{
  v3 = +[NSBundle mainBundle];
  v8 = [v3 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];

  v4 = [(MailAccount *)self->_account displayName];
  if ([v4 length])
  {
    v5 = v4;

    v8 = v5;
  }

  v6 = [(TransferMailboxPickerController *)self title];
  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(TransferMailboxPickerController *)self setTitle:v8];
  }
}

- (double)_yOffsetMaximum
{
  v2 = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [v2 contentSize];
  v4 = v3;
  [v2 bounds];
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

  v5 = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
  [v5 contentOffset];
  v7 = v6;

  [(TransferMailboxPickerController *)self _yOffsetMaximum];
  if (v7 >= v8)
  {
    v7 = INFINITY;
  }

  v9 = [(MailboxListViewControllerBase *)self->_mailboxListController account];
  v14 = [v9 uniqueID];

  v11 = v14;
  if (v14)
  {
    v12 = qword_1006DD870;
    *&v10 = v7;
    v13 = [NSNumber numberWithFloat:v10];
    [v12 setObject:v13 forKey:v14];

    v11 = v14;
  }
}

- (void)restoreScrollOffset
{
  v3 = qword_1006DD870;
  v4 = [(MailboxListViewControllerBase *)self->_mailboxListController account];
  v5 = [v4 uniqueID];
  v16 = [v3 objectForKey:v5];

  v6 = [(MailboxListViewControllerMail *)self->_mailboxListController tableView];
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

  [v6 contentInset];
  [v6 setContentOffset:{0.0, v14 - v15}];
}

- (double)_navigationBarMaxY
{
  v3 = [(TransferMailboxPickerController *)self scene];
  v4 = [v3 statusBarManager];
  [v4 statusBarFrame];
  Height = CGRectGetHeight(v10);

  v6 = [(TransferMailboxPickerController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 bounds];
  v8 = Height + 0.0 + CGRectGetHeight(v11);

  return v8;
}

- (id)_sendersFromItems:(id)a3
{
  v16 = a3;
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableSet);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v16;
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

        v9 = [*(*(&v17 + 1) + 8 * i) senderList];
        v10 = [v9 firstObject];
        v11 = [v10 emailAddressValue];

        v12 = [v11 displayName];
        if (![v12 length])
        {
          v13 = [v11 simpleAddress];

          v12 = v13;
        }

        if ([v12 length])
        {
          if (!v12)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v14 = +[MUILocalizedMessageListStrings noSenderPlaceholder];

          v12 = v14;
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        if (([v4 containsObject:v12] & 1) == 0)
        {
          [v3 addObject:v12];
          [v4 addObject:v12];
        }

LABEL_14:
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_subjectFromItems:(id)a3 totalMessageCount:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 != 1)
  {
    v10 = [NSNumberFormatter ef_formatUnsignedInteger:a4 withGrouping:1];
    v13 = +[NSBundle mainBundle];
    v11 = [v13 localizedStringForKey:@"N_MESSAGES" value:&stru_100662A88 table:@"Main"];

    v9 = [[NSString alloc] initWithFormat:v11, v10];
    goto LABEL_6;
  }

  v7 = [v5 lastObject];
  v8 = [v7 subject];
  v9 = [v8 subjectString];

  if (!v9 || ![v9 length])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
    v12 = [v11 copy];

    v9 = v12;
LABEL_6:
  }

  return v9;
}

- (id)_sourceMailboxesFromItems:(id)a3
{
  v14 = a3;
  v3 = objc_alloc_init(NSMutableSet);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v14;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:{16, v14}];
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
        v9 = [v8 mailboxProvider];
        v10 = [v7 mailboxes];
        v11 = [v10 ef_mapSelector:"objectID"];
        v12 = [v9 legacyMailboxesForObjectIDs:v11];
        [v3 addObjectsFromArray:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)_setPaletteVisible:(BOOL)a3
{
  if (a3)
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
    v7 = [(NSArray *)self->_sortedMessages firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained transferMailboxPickerController:self viewForItem:v7], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [(TransferMailboxPickerPalette *)self->_pickerPalette setMessageThumbnailWithView:v9];
    }

    else
    {
      objc_initWeak(&location, self->_pickerPalette);
      objc_initWeak(&from, self->_screenshotGenerator);
      v11 = [v7 displayMessage];
      v12 = +[EFScheduler mainThreadScheduler];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1002548D0;
      v25[3] = &unk_1006569C0;
      v25[4] = self;
      objc_copyWeak(&v26, &from);
      objc_copyWeak(&v27, &location);
      [v11 onScheduler:v12 addSuccessBlock:v25];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      v9 = 0;
    }

    v13 = [(TransferMailboxPickerController *)self navigationController];
    v14 = [v13 existingPaletteForEdge:2];

    if (!v14)
    {
      v15 = self->_pickerPalette;
      v16 = [v13 view];
      [v16 frame];
      [(TransferMailboxPickerPalette *)v15 sizeThatFits:v17, v18];
      v20 = v19;
      v22 = v21;

      v23 = [v13 paletteForEdge:2 size:{v20, v22}];
      [v23 bounds];
      [(TransferMailboxPickerPalette *)self->_pickerPalette setFrame:?];
      [v23 addSubview:self->_pickerPalette];
      [v13 attachPalette:v23 isPinned:0];
    }
  }

  else
  {
    v24 = [(TransferMailboxPickerController *)self navigationController];
    v10 = [v24 existingPaletteForEdge:2];
    if (v10)
    {
      [v24 detachPalette:v10];
    }
  }
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v31 viewDidLoad];
  v3 = [(TransferMailboxPickerController *)self scene];
  v30 = v3;
  v4 = [UIView alloc];
  v5 = [v3 mf_window];
  [v5 bounds];
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
    v12 = [[MailboxListViewControllerMail alloc] initWithScene:v3];
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
  v16 = [(MailAccount *)self->_account transferDisabledMailboxUids];
  if (v16)
  {
    [v15 addObjectsFromArray:v16];
  }

  [(MailboxListViewControllerMail *)self->_mailboxListController disableMailboxes:v15];
  v17 = [NSNumber numberWithInt:6];
  v18 = [NSNumber numberWithInt:106];
  v19 = [NSNumber numberWithInt:5];
  v20 = [NSNumber numberWithInt:105];
  v21 = [NSSet setWithObjects:v17, v18, v19, v20, 0];

  [(MailboxListViewControllerMail *)self->_mailboxListController disableMailboxTypes:v21];
  v22 = [(MailboxListViewControllerMail *)self->_mailboxListController view];
  [v22 setFrame:{0.0, 0.0, v8, v10}];
  [v6 addSubview:v22];
  [(MailboxListViewControllerMail *)self->_mailboxListController didMoveToParentViewController:self];
  v23 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v23 setSearchResultsUpdater:self];
  [v23 setHidesNavigationBarDuringPresentation:1];
  [v23 setObscuresBackgroundDuringPresentation:0];
  v24 = _EFLocalizedString();
  v25 = [v23 searchBar];
  [v25 setPlaceholder:v24];

  v26 = [v23 searchBar];
  v27 = [v26 searchTextField];
  [v27 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewMailboxListControllerSearchTextField];

  v28 = [(TransferMailboxPickerController *)self navigationItem];
  [v28 setSearchController:v23];

  [(TransferMailboxPickerController *)self setDefinesPresentationContext:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v8 viewWillAppear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewWillAppear:v3];
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  v6 = [(TransferMailboxPickerController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(TransferMailboxPickerController *)self scene];
  -[TransferMailboxPickerController _setPaletteVisible:](self, "_setPaletteVisible:", [v7 isInExpandedEnvironment] ^ 1);

  [(TransferMailboxPickerController *)self restoreScrollOffset];
}

- (void)_didReceiveTargetDetailChangedNotification:(id)a3
{
  v4 = [(TransferMailboxPickerController *)self scene];
  -[TransferMailboxPickerController _setPaletteVisible:](self, "_setPaletteVisible:", [v4 isInExpandedEnvironment] ^ 1);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewDidAppear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewWillDisappear:?];
  [(TransferMailboxPickerController *)self saveScrollOffset];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TransferMailboxPickerController;
  [(TransferMailboxPickerController *)&v5 viewDidDisappear:?];
  [(MailboxListViewControllerMail *)self->_mailboxListController viewDidDisappear:v3];
}

- (void)animateMessageToCell:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_tableCell, a3);
  [(MailboxTableCell *)self->_tableCell destinationPointForAnimation];
  v8 = v7;
  v9 = v6;
  if (v7 == CGPointZero.x && v6 == CGPointZero.y)
  {
    goto LABEL_12;
  }

  v11 = [(TransferMailboxPickerController *)self view];
  [v11 setUserInteractionEnabled:0];

  v12 = [(TransferMailboxPickerController *)self scene];
  v13 = [v12 isInExpandedEnvironment];

  if (v13)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100255C1C;
    v47[3] = &unk_10064C7E8;
    v47[4] = self;
    [(TransferMailboxPickerController *)self animateMessageToPoint:v5 inView:v47 completion:v8, v9];
    goto LABEL_14;
  }

  v14 = [(TransferMailboxPickerPalette *)self->_pickerPalette messageThumbnailView];

  if (!v14)
  {
LABEL_12:
    sub_1002551CC(self, 1, 0);
    goto LABEL_14;
  }

  v15 = [(TransferMailboxPickerPalette *)self->_pickerPalette messageThumbnailView];
  animatedView = self->_animatedView;
  self->_animatedView = v15;

  v17 = [(UIView *)self->_animatedView superview];
  for (i = v17; ; i = v22)
  {
    v19 = [i superview];
    if (!v19)
    {
      break;
    }

    v20 = [i superview];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    v22 = [i superview];
  }

  [(UIView *)self->_animatedView frame];
  [i convertRect:v17 fromView:?];
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
  v46 = [(UIView *)self->_animatedView layer];
  [v46 addAnimation:v43 forKey:0];

LABEL_14:
}

- (void)messageAnimationDidStop
{
  v3 = [(UIView *)self->_animatedView layer];
  [v3 removeAllAnimations];

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
  v10 = [(MailboxTableCell *)self->_tableCell superview];
  lastSuperview = self->_lastSuperview;
  self->_lastSuperview = v10;

  v12 = [(TransferMailboxPickerController *)self view];
  [v12 convertPoint:self->_lastSuperview fromView:{v31[4], v31[5]}];
  v13 = v31;
  *(v31 + 4) = v14;
  *(v13 + 5) = v15;

  v16 = [(TransferMailboxPickerController *)self traitCollection];
  v17 = [v16 mf_useSplitViewStyling];

  if ((v17 & 1) == 0)
  {
    v18 = [UIImageView alloc];
    v19 = UIImageGetTableSelectionBackground();
    v20 = [v18 initWithImage:v19];
    backstop = self->_backstop;
    self->_backstop = v20;

    [(UIImageView *)self->_backstop setFrame:v31[4], v31[5], v31[6], v31[7]];
    v22 = [(TransferMailboxPickerController *)self view];
    [v22 addSubview:self->_backstop];
  }

  [(MailboxTableCell *)self->_tableCell setSeparatorStyle:0];
  [(MailboxTableCell *)self->_tableCell setFrame:v31[4], v31[5], v31[6], v31[7]];
  v23 = [(TransferMailboxPickerController *)self view];
  [v23 addSubview:self->_tableCell];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100255F24;
  v28[3] = &unk_1006569E8;
  v29 = v17;
  v28[4] = self;
  v28[5] = &v30;
  v24 = objc_retainBlock(v28);
  UIAnimationDragCoefficient();
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1002561E0;
  v26[3] = &unk_10064CA38;
  v27 = v17;
  v26[4] = self;
  v26[5] = &v30;
  [UIView animateWithDuration:v26 animations:v24 completion:v25 * 0.1];

  _Block_object_dispose(&v30, 8);
}

- (void)animateMessageToPoint:(CGPoint)a3 inView:(id)a4 completion:(id)a5
{
  y = a3.y;
  x = a3.x;
  v11 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained transferMailboxPickerController:self animateMessageToPoint:v11 inView:v9 completion:{x, y}];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)mailboxList:(id)a3 didSelectMailbox:(id)a4
{
  v9 = a4;
  if (![(NSSet *)self->_sourceMailboxes containsObject:?])
  {
    if (*(self + 80))
    {
      v5 = +[NSUserDefaults standardUserDefaults];
      v6 = [v9 representedAccount];
      v7 = [v6 uniqueID];
      [v5 setObject:v7 forKey:@"LastTransferAccount"];
    }

    sub_1002553D8(self, v9);
    v8 = [(MailboxListViewControllerMail *)self->_mailboxListController cellForMailbox:v9];
    [(TransferMailboxPickerController *)self animateMessageToCell:v8];
  }
}

- (void)accountList:(id)a3 didSelectAccount:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(MailboxListViewControllerMail *)self->_mailboxListController setAccount:v6];
  [(TransferMailboxPickerController *)self setAccount:v6];
  [(TransferMailboxPickerController *)self updateTitle];
  v7 = [v9 splitViewController];
  if ([v7 isCollapsed])
  {
    [v7 showColumn:1];
  }

  else
  {
    [(MailboxListViewControllerMail *)self->_mailboxListController viewWillAppear:0];
    [(MailboxListViewControllerMail *)self->_mailboxListController viewDidAppear:0];
  }

  [(TransferMailboxPickerController *)self restoreScrollOffset];
  v8 = [(TransferMailboxPickerController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 updatePrompt];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  mailboxListController = self->_mailboxListController;
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(MailboxListViewControllerMail *)mailboxListController filterMailboxesContainingText:v4];
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

- (void)mailAccountsDidChange:(id)a3
{
  if (self)
  {
    sub_1000079D8(self, 0);
  }
}

- (void)accountList:(id)a3 didCancel:(BOOL)a4
{
  if (self)
  {
    sub_1000079D8(self, 0);
  }
}

@end