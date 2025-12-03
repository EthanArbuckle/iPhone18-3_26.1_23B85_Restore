@interface ICSEMainViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShareToFolder:(id)folder;
- (BOOL)canShareToNote:(id)note;
- (BOOL)shouldRetrieveLastSelectedNote;
- (ICSEContainerViewController)containerViewController;
- (ICSEImagesView)imagesView;
- (ICSENoteTitleView)titleView;
- (ICSERootViewController)rootViewController;
- (NSAttributedString)textAfter;
- (NSAttributedString)textBefore;
- (NSLayoutConstraint)bottomTextViewBottomConstraint;
- (NSLayoutConstraint)bottomTextViewMinHeightConstraint;
- (NSLayoutConstraint)bottomTextviewCollapsibleZeroHeightConstraint;
- (NSLayoutConstraint)brickCollapsibleZeroHeightConstraint;
- (NSLayoutConstraint)brickContainerHeightConstraint;
- (NSLayoutConstraint)imageCollapsibleZeroWidthConstraint;
- (NSLayoutConstraint)titleFooterViewHeightConstraint;
- (NSLayoutConstraint)titleViewMinHeightConstraint;
- (NSLayoutConstraint)topTextViewMinHeightConstraint;
- (NSLayoutConstraint)topTextViewTopConstraint;
- (UILabel)saveToHeaderLabel;
- (UILabel)titleFooterLabel;
- (UIScrollView)scrollView;
- (UITextView)bottomTextView;
- (UITextView)topTextView;
- (UIView)brickContainer;
- (UIView)contentViewContainer;
- (UIView)contentViewTopSeparator;
- (UIView)titleFooterView;
- (UIView)titleHeaderView;
- (UIView)titleViewContainer;
- (double)consumedBottomAreaForResizer:(id)resizer;
- (id)stringForTitleFooter;
- (void)attachmentsAvailable;
- (void)cancel:(id)cancel;
- (void)cleanupTemporaryImageFilesIfNecessary;
- (void)cleanupTemporaryNewNoteIfNecesary;
- (void)configureUI;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)dismissRootViewController;
- (void)extensionHostDidBecomeActive:(id)active;
- (void)installBrickForAttachmentInfo:(id)info;
- (void)installImagesViewForAttachments:(id)attachments;
- (void)loadAccountsAndAttachments;
- (void)purgeAttachments;
- (void)saveToNote:(id)note;
- (void)scrollTextToVisibleForTextView:(id)view;
- (void)setBottomTextViewCollapsed:(BOOL)collapsed;
- (void)setBrickViewCollapsed:(BOOL)collapsed;
- (void)setImageViewCollapsed:(BOOL)collapsed;
- (void)setLayoutType:(unint64_t)type;
- (void)setUpForLayoutType:(unint64_t)type;
- (void)showActivityIndicator;
- (void)showSaveButton;
- (void)tabKeyPressed:(id)pressed;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidEndEditing:(id)editing;
- (void)titleViewDidTap:(id)tap;
- (void)updateBrickContainerHeightConstraint;
- (void)updateTextViewsForContentSizeChangeIfNecessary;
- (void)updateTitleFooter;
- (void)updateTitleViewHeightConstraint;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation ICSEMainViewController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSEMainViewController;
  [(ICSEMainViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICSEMainViewController;
  [(ICSEMainViewController *)&v4 viewDidLoad];
  [(ICSEMainViewController *)self configureUI];
  [(ICSEMainViewController *)self loadAccountsAndAttachments];
  v3 = objc_alloc_init(ICRegulatoryLogger);
  [(ICSEMainViewController *)self setRegulatoryLogger:v3];
}

- (void)configureUI
{
  v3 = [[ICScrollViewKeyboardResizer alloc] initWithDelegate:self];
  [(ICSEMainViewController *)self setScrollViewResizer:v3];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Notes" value:&stru_1000F6F48 table:0];
  navigationItem = [(ICSEMainViewController *)self navigationItem];
  [navigationItem setTitle:v5];

  navigationController = [(ICSEMainViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setForceFullHeightInLandscape:1];

  if (+[UIDevice ic_isVision])
  {
    navigationController2 = [(ICSEMainViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setBackgroundColor:0];

    view = [(ICSEMainViewController *)self view];
    [view setBackgroundColor:0];

    scrollView = [(ICSEMainViewController *)self scrollView];
    [scrollView setBackgroundColor:0];
  }

  else
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      +[UIColor ICDarkenedTintColor];
    }

    else
    {
      +[UIColor ICTintColor];
    }
    scrollView = ;
    navigationController3 = [(ICSEMainViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setTintColor:scrollView];
  }

  scrollView2 = [(ICSEMainViewController *)self scrollView];
  [scrollView2 setDelegate:self];

  [(ICSEMainViewController *)self showPlaceholderText:1];
  v16 = +[ICSENoteTitleView newNoteTitleView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addTarget:self action:"titleViewDidTap:" forControlEvents:64];
  if (+[UIDevice ic_isVision])
  {
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    ic_fontWithSingleLineA = [v17 ic_fontWithSingleLineA];
    saveToHeaderLabel = [(ICSEMainViewController *)self saveToHeaderLabel];
    [saveToHeaderLabel setFont:ic_fontWithSingleLineA];

    titleFooterLabel = [(ICSEMainViewController *)self titleFooterLabel];
    [titleFooterLabel setTextAlignment:1];

    titleFooterViewHeightConstraint = [(ICSEMainViewController *)self titleFooterViewHeightConstraint];
    v87 = titleFooterViewHeightConstraint;
    v22 = [NSArray arrayWithObjects:&v87 count:1];
    [NSLayoutConstraint deactivateConstraints:v22];

    titleFooterView = [(ICSEMainViewController *)self titleFooterView];
    bottomAnchor = [titleFooterView bottomAnchor];
    contentViewContainer = [(ICSEMainViewController *)self contentViewContainer];
    topAnchor = [contentViewContainer topAnchor];
    v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor constant:-16.0];
    v86 = v27;
    v28 = [NSArray arrayWithObjects:&v86 count:1];
    [NSLayoutConstraint activateConstraints:v28];
  }

  titleViewContainer = [(ICSEMainViewController *)self titleViewContainer];
  [titleViewContainer ic_applyRoundedCornersWithRadius:26.0];

  titleViewContainer2 = [(ICSEMainViewController *)self titleViewContainer];
  [titleViewContainer2 addSubview:v16];

  v31 = +[UIColor tableCellGroupedBackgroundColor];
  titleViewContainer3 = [(ICSEMainViewController *)self titleViewContainer];
  [titleViewContainer3 setBackgroundColor:v31];

  titleViewContainer4 = [(ICSEMainViewController *)self titleViewContainer];
  [titleViewContainer4 setAccessibilityIdentifier:@"titleViewContainer"];

  [(ICSEMainViewController *)self updateTitleViewHeightConstraint];
  leadingAnchor = [v16 leadingAnchor];
  titleViewContainer5 = [(ICSEMainViewController *)self titleViewContainer];
  layoutMarginsGuide = [titleViewContainer5 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v80 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v85[0] = v80;
  trailingAnchor = [v16 trailingAnchor];
  titleViewContainer6 = [(ICSEMainViewController *)self titleViewContainer];
  layoutMarginsGuide2 = [titleViewContainer6 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v75 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v85[1] = v75;
  topAnchor2 = [v16 topAnchor];
  titleViewContainer7 = [(ICSEMainViewController *)self titleViewContainer];
  topAnchor3 = [titleViewContainer7 topAnchor];
  v36 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v85[2] = v36;
  bottomAnchor2 = [v16 bottomAnchor];
  titleViewContainer8 = [(ICSEMainViewController *)self titleViewContainer];
  [titleViewContainer8 bottomAnchor];
  v40 = v39 = v16;
  v41 = [bottomAnchor2 constraintEqualToAnchor:v40];
  v85[3] = v41;
  v42 = [NSArray arrayWithObjects:v85 count:4];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = v39;
  [(ICSEMainViewController *)self setTitleView:v39];
  contentViewContainer2 = [(ICSEMainViewController *)self contentViewContainer];
  [contentViewContainer2 ic_applyRoundedCornersWithRadius:20.0];

  v45 = +[UIColor tableCellGroupedBackgroundColor];
  contentViewContainer3 = [(ICSEMainViewController *)self contentViewContainer];
  [contentViewContainer3 setBackgroundColor:v45];

  v47 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(ICSEMainViewController *)self setActivityIndicatorView:v47];

  v48 = [UIBarButtonItem alloc];
  activityIndicatorView = [(ICSEMainViewController *)self activityIndicatorView];
  v50 = [v48 initWithCustomView:activityIndicatorView];
  [(ICSEMainViewController *)self setActivityIndicatorBarButtonItem:v50];

  saveToNoteBarButtonItem = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  [saveToNoteBarButtonItem setEnabled:0];

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    +[UIColor ICDarkenedTintColor];
  }

  else
  {
    +[UIColor ICTintColor];
  }
  v52 = ;
  saveToNoteBarButtonItem2 = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  [saveToNoteBarButtonItem2 setTintColor:v52];

  if (![(ICSEMainViewController *)self layoutType])
  {
    [(ICSEMainViewController *)self setUpForLayoutType:3];
  }

  topTextView = [(ICSEMainViewController *)self topTextView];
  [topTextView setDelegate:self];

  bottomTextView = [(ICSEMainViewController *)self bottomTextView];
  [bottomTextView setDelegate:self];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    topTextView2 = [(ICSEMainViewController *)self topTextView];
    [topTextView2 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    topTextView3 = [(ICSEMainViewController *)self topTextView];
    textContainer = [topTextView3 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    bottomTextView2 = [(ICSEMainViewController *)self bottomTextView];
    [bottomTextView2 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    bottomTextView3 = [(ICSEMainViewController *)self bottomTextView];
    textContainer2 = [bottomTextView3 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];
  }

  topTextViewMinHeightConstraint = [(ICSEMainViewController *)self topTextViewMinHeightConstraint];
  [topTextViewMinHeightConstraint setConstant:48.0];

  bottomTextviewCollapsibleZeroHeightConstraint = [(ICSEMainViewController *)self bottomTextviewCollapsibleZeroHeightConstraint];
  [bottomTextviewCollapsibleZeroHeightConstraint setConstant:72.0];

  [(ICSEMainViewController *)self updateTextViewsForContentSizeChangeIfNecessary];
  v67 = +[NSBundle mainBundle];
  v68 = [v67 localizedStringForKey:@"Save" value:&stru_1000F6F48 table:0];
  v69 = [UIKeyCommand ic_keyCommandWithInput:@"\r" modifierFlags:0x100000 action:"saveToNote:" discoverabilityTitle:v68];
  [(ICSEMainViewController *)self addKeyCommand:v69];

  v70 = [UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0 action:"tabKeyPressed:"];
  [(ICSEMainViewController *)self addKeyCommand:v70];

  v71 = [UIKeyCommand keyCommandWithInput:@"\t" modifierFlags:0x20000 action:"tabKeyPressed:"];
  [(ICSEMainViewController *)self addKeyCommand:v71];

  v72 = +[NSNotificationCenter defaultCenter];
  [v72 addObserver:self selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v73 = +[NSNotificationCenter defaultCenter];
  [v73 addObserver:self selector:"updateBrickContainerHeightConstraint" name:ICAttachmentDidChangePreferredSizeNotification object:0];
}

- (void)showActivityIndicator
{
  activityIndicatorBarButtonItem = [(ICSEMainViewController *)self activityIndicatorBarButtonItem];
  navigationItem = [(ICSEMainViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:activityIndicatorBarButtonItem];

  activityIndicatorView = [(ICSEMainViewController *)self activityIndicatorView];
  [activityIndicatorView startAnimating];
}

- (void)showSaveButton
{
  saveToNoteBarButtonItem = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  navigationItem = [(ICSEMainViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveToNoteBarButtonItem];
}

- (void)loadAccountsAndAttachments
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];
  v5 = [ICAccount allActiveAccountsInContextSortedByAccountType:managedObjectContext];

  if (v5 && [v5 count])
  {
    [(ICSEMainViewController *)self setAccounts:v5];
    containerViewController = [(ICSEMainViewController *)self containerViewController];
    tableViewController = [containerViewController tableViewController];
    [tableViewController setAccounts:v5];

    v8 = +[ICNoteContext sharedContext];
    managedObjectContext2 = [v8 managedObjectContext];
    v10 = [ICFolder defaultFolderInContext:managedObjectContext2];
    v11 = [ICNote newEmptyNoteInFolder:v10];

    [v11 markForDeletion];
    [(ICSEMainViewController *)self setTemporaryNewNote:v11];
    v12 = +[ICSharingExtensionAttachmentsManager sharedManager];
    lastNoteSavedTo = [v12 lastNoteSavedTo];

    -[ICSEMainViewController setSelectionToNote:folder:prefersSystemPaper:](self, "setSelectionToNote:folder:prefersSystemPaper:", lastNoteSavedTo, 0, [lastNoteSavedTo isSystemPaper]);
    objc_initWeak(location, self);
    account = [v11 account];
    identifier = [account identifier];
    v16 = +[ICSharingExtensionAttachmentsManager sharedManager];
    [v16 setAccountId:identifier];

    v17 = dispatch_get_global_queue(0, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100022504;
    v18[3] = &unk_1000F2328;
    objc_copyWeak(&v19, location);
    v18[4] = self;
    dispatch_async(v17, v18);

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No sharing extension accounts.", location, 2u);
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICSEMainViewController;
  [(ICSEMainViewController *)&v8 viewDidLayoutSubviews];
  view = [(ICSEMainViewController *)self view];
  window = [view window];

  if (!window)
  {
    [ICAssert handleFailedAssertWithCondition:"((self.view.window) != nil)" functionName:"[ICSEMainViewController viewDidLayoutSubviews]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "self.view.window"];
  }

  scrollViewResizer = [(ICSEMainViewController *)self scrollViewResizer];
  isAutoResizing = [scrollViewResizer isAutoResizing];

  if ((isAutoResizing & 1) == 0)
  {
    scrollViewResizer2 = [(ICSEMainViewController *)self scrollViewResizer];
    [scrollViewResizer2 startAutoResizing];
  }
}

- (void)cleanupTemporaryImageFilesIfNecessary
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  attachments = [(ICSEMainViewController *)self attachments];
  v3 = [attachments countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(attachments);
        }

        [*(*(&v7 + 1) + 8 * v6) deleteTemporaryImageFileIfNecessary];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [attachments countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cleanupTemporaryNewNoteIfNecesary
{
  temporaryNewNote = [(ICSEMainViewController *)self temporaryNewNote];
  managedObjectContext = [temporaryNewNote managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022E48;
  v6[3] = &unk_1000F2390;
  v7 = temporaryNewNote;
  v5 = temporaryNewNote;
  [managedObjectContext performBlockAndWait:v6];

  [(ICSEMainViewController *)self setTemporaryNewNote:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = ICSEMainViewController;
  [(ICSEMainViewController *)&v4 viewSafeAreaInsetsDidChange];
  scrollViewResizer = [(ICSEMainViewController *)self scrollViewResizer];
  [scrollViewResizer reapplyInsets];
}

- (void)updateTitleFooter
{
  stringForTitleFooter = [(ICSEMainViewController *)self stringForTitleFooter];
  titleFooterLabel = [(ICSEMainViewController *)self titleFooterLabel];
  [titleFooterLabel setText:stringForTitleFooter];
}

- (id)stringForTitleFooter
{
  attachments = [(ICSEMainViewController *)self attachments];
  v4 = [attachments count];

  if (!v4)
  {
    v10 = &stru_1000F6F48;
    goto LABEL_174;
  }

  attachments2 = [(ICSEMainViewController *)self attachments];
  v74 = [attachments2 count];

  selectedNote = [(ICSEMainViewController *)self selectedNote];
  selectedFolder = [(ICSEMainViewController *)self selectedFolder];
  v8 = selectedFolder;
  if (selectedFolder)
  {
    folder = selectedFolder;
  }

  else
  {
    folder = [selectedNote folder];
  }

  v11 = folder;

  if (selectedNote)
  {
    title = [selectedNote title];
    v13 = [title ic_truncatedStringWithMaxLength:35 truncated:0];
    ic_quotedString = [v13 ic_quotedString];

    if ([selectedNote isSharedRootObject] && (objc_msgSend(selectedNote, "sharedOwnerName"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v76 = v14;
      v15 = 0;
      v16 = [(__CFString *)v14 length]!= 0;
    }

    else
    {
      v16 = 0;
      v76 = 0;
      v15 = 1;
    }

    v73 = v15 & [selectedNote isSharedRootObject];
  }

  else
  {
    v16 = 0;
    v76 = 0;
    ic_quotedString = 0;
    v73 = 0;
  }

  v78 = v11;
  if (!v11 || ([v11 isDefaultFolderForAccount] & 1) != 0)
  {
    v17 = 0;
LABEL_16:

    v18 = 0;
    v75 = 0;
    v19 = 0;
    ic_quotedString2 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  localizedTitle = [v11 localizedTitle];
  v17 = localizedTitle;
  if (!localizedTitle || ![localizedTitle length])
  {
    goto LABEL_16;
  }

  v34 = [v17 ic_truncatedStringWithMaxLength:35 truncated:0];
  ic_quotedString2 = [v34 ic_quotedString];

  if ([v11 isSharedViaICloud] && (objc_msgSend(v11, "sharedOwnerName"), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v75 = v35;
    v36 = 0;
    v18 = [(__CFString *)v35 length]!= 0;
  }

  else
  {
    v18 = 0;
    v75 = 0;
    v36 = 1;
  }

  v21 = v36 & [v11 isSharedViaICloud];
  v19 = 1;
LABEL_17:
  accounts = [(ICSEMainViewController *)self accounts];
  v23 = [accounts count];

  v79 = selectedNote;
  if (v23 < 2)
  {
    v25 = 0;
    v26 = &stru_1000F6F48;
    if (!selectedNote)
    {
      goto LABEL_44;
    }

LABEL_21:
    if (v19)
    {
      if ((v18 | v21))
      {
        if (v18)
        {
          v27 = +[NSBundle mainBundle];
          v28 = v27;
          v30 = v76;
          v29 = ic_quotedString;
          if (v25)
          {
            v31 = ic_quotedString2;
            if (v74 > 1)
            {
              v32 = @"These attachments will be saved to the note %@ in the folder %@ shared by %@ in your %@ account.";
            }

            else
            {
              v32 = @"This attachment will be saved to the note %@ in the folder %@ shared by %@ in your %@ account.";
            }

            v63 = [v27 localizedStringForKey:v32 value:&stru_1000F6F48 table:0];
            v72 = v26;
          }

          else
          {
            v31 = ic_quotedString2;
            if (v74 > 1)
            {
              v62 = @"These attachments will be saved to the note %@ in the folder %@ shared by %@.";
            }

            else
            {
              v62 = @"This attachment will be saved to the note %@ in the folder %@ shared by %@.";
            }

            v63 = [v27 localizedStringForKey:v62 value:&stru_1000F6F48 table:0];
          }

          v38 = v75;
          v71 = v75;
          goto LABEL_166;
        }

        v30 = v76;
        v29 = ic_quotedString;
        if ((v21 & 1) == 0)
        {
          [ICAssert handleFailedAssertWithCondition:"isOwnedSharedFolder" functionName:"[ICSEMainViewController stringForTitleFooter]" simulateCrash:1 showAlert:0 format:@"Unexpected case in updateTitleFooter"];
        }

        v28 = +[NSBundle mainBundle];
        v31 = ic_quotedString2;
        if (v25)
        {
          v38 = v75;
          if (v74 > 1)
          {
            v54 = @"These attachments will be saved to the note %@ in your shared folder %@ in your %@ account.";
          }

          else
          {
            v54 = @"This attachment will be saved to the note %@ in your shared folder %@ in your %@ account.";
          }

LABEL_163:
          v63 = [v28 localizedStringForKey:v54 value:&stru_1000F6F48 table:0];
          v71 = v26;
LABEL_166:
          v70 = v31;
          goto LABEL_167;
        }

        v38 = v75;
        if (v74 > 1)
        {
          v64 = @"These attachments will be saved to the note %@ in your shared folder %@.";
        }

        else
        {
          v64 = @"This attachment will be saved to the note %@ in your shared folder %@.";
        }

LABEL_165:
        v63 = [v28 localizedStringForKey:v64 value:&stru_1000F6F48 table:0];
        goto LABEL_166;
      }

      v48 = +[NSBundle mainBundle];
      v28 = v48;
      v31 = ic_quotedString2;
      if (v25)
      {
        v38 = v75;
        if (!v16)
        {
          if (v73)
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v54 = @"These attachments will be saved to your shared note %@ in the folder %@ in your %@ account.";
            }

            else
            {
              v54 = @"This attachment will be saved to your shared note %@ in the folder %@ in your %@ account.";
            }
          }

          else
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v54 = @"These attachments will be saved to the note %@ in the folder %@ in your %@ account.";
            }

            else
            {
              v54 = @"This attachment will be saved to the note %@ in the folder %@ in your %@ account.";
            }
          }

          goto LABEL_163;
        }

        if (v74 > 1)
        {
          v49 = @"These attachments will be saved to the note %@ shared by %@ in the folder %@ in your %@ account.";
        }

        else
        {
          v49 = @"This attachment will be saved to the note %@ shared by %@ in the folder %@ in your %@ account.";
        }

        v63 = [v48 localizedStringForKey:v49 value:&stru_1000F6F48 table:0];
        v72 = v26;
      }

      else
      {
        v38 = v75;
        if (!v16)
        {
          if (v73)
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v64 = @"These attachments will be saved to your shared note %@ in the folder %@.";
            }

            else
            {
              v64 = @"This attachment will be saved to your shared note %@ in the folder %@.";
            }
          }

          else
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v64 = @"These attachments will be saved to the note %@ in the folder %@.";
            }

            else
            {
              v64 = @"This attachment will be saved to the note %@ in the folder %@.";
            }
          }

          goto LABEL_165;
        }

        if (v74 > 1)
        {
          v56 = @"These attachments will be saved to the note %@ shared by %@ in the folder %@.";
        }

        else
        {
          v56 = @"This attachment will be saved to the note %@ shared by %@ in the folder %@.";
        }

        v63 = [v48 localizedStringForKey:v56 value:&stru_1000F6F48 table:0];
      }

      v71 = v31;
    }

    else
    {
      v37 = +[NSBundle mainBundle];
      v28 = v37;
      v31 = ic_quotedString2;
      if (v25)
      {
        if (!v16)
        {
          v38 = v75;
          if (v73)
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v55 = @"These attachments will be saved to your shared note %@ in your %@ account.";
            }

            else
            {
              v55 = @"This attachment will be saved to your shared note %@ in your %@ account.";
            }
          }

          else
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v55 = @"These attachments will be saved to the note %@ in your %@ account.";
            }

            else
            {
              v55 = @"This attachment will be saved to the note %@ in your %@ account.";
            }
          }

          v63 = [v37 localizedStringForKey:v55 value:&stru_1000F6F48 table:0];
          v70 = v26;
          goto LABEL_167;
        }

        v38 = v75;
        if (v74 > 1)
        {
          v39 = @"These attachments will be saved to the note %@ shared by %@ in your %@ account.";
        }

        else
        {
          v39 = @"This attachment will be saved to the note %@ shared by %@ in your %@ account.";
        }

        v63 = [v37 localizedStringForKey:v39 value:&stru_1000F6F48 table:0];
        v71 = v26;
      }

      else
      {
        if (!v16)
        {
          v38 = v75;
          if (v73)
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v57 = @"These attachments will be saved to your shared note %@.";
            }

            else
            {
              v57 = @"This attachment will be saved to your shared note %@.";
            }
          }

          else
          {
            v30 = v76;
            v29 = ic_quotedString;
            if (v74 > 1)
            {
              v57 = @"These attachments will be saved to the note %@.";
            }

            else
            {
              v57 = @"This attachment will be saved to the note %@.";
            }
          }

          v63 = [v37 localizedStringForKey:v57 value:&stru_1000F6F48 table:0];
          goto LABEL_167;
        }

        v38 = v75;
        if (v74 > 1)
        {
          v50 = @"These attachments will be saved to the note %@ shared by %@.";
        }

        else
        {
          v50 = @"This attachment will be saved to the note %@ shared by %@.";
        }

        v63 = [v37 localizedStringForKey:v50 value:&stru_1000F6F48 table:0];
      }
    }

    v30 = v76;
    v29 = ic_quotedString;
    v70 = v76;
LABEL_167:
    [NSString localizedStringWithFormat:v63, v29, v70, v71, v72];
    v61 = LABEL_168:;

    selectedNote = v79;
    goto LABEL_169;
  }

  if (selectedNote)
  {
    v24 = selectedNote;
  }

  else
  {
    v24 = v78;
  }

  account = [v24 account];
  if (!account)
  {
    v41 = +[ICNoteContext sharedContext];
    managedObjectContext = [v41 managedObjectContext];
    account = [ICAccount defaultAccountInContext:managedObjectContext];
  }

  localizedName = [account localizedName];
  v44 = localizedName;
  if (localizedName && [localizedName length])
  {
    v26 = [v44 ic_truncatedStringWithMaxLength:35 truncated:0];
    v25 = 1;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  selectedNote = v79;
  if (v79)
  {
    goto LABEL_21;
  }

LABEL_44:
  if (v19)
  {
    v30 = v76;
    v29 = ic_quotedString;
    if (((v18 | v21) & 1) == 0)
    {
      v51 = +[NSBundle mainBundle];
      v28 = v51;
      if (v25)
      {
        v31 = ic_quotedString2;
        if (v74 > 1)
        {
          v52 = @"These attachments will be saved in a new note in the folder %@ in your %@ account.";
        }

        else
        {
          v52 = @"This attachment will be saved in a new note in the folder %@ in your %@ account.";
        }

        v66 = [v51 localizedStringForKey:v52 value:&stru_1000F6F48 table:0];
        [NSString localizedStringWithFormat:v66, ic_quotedString2, v26];
      }

      else
      {
        v31 = ic_quotedString2;
        if (v74 > 1)
        {
          v60 = @"These attachments will be saved in a new note in the folder %@.";
        }

        else
        {
          v60 = @"This attachment will be saved in a new note in the folder %@.";
        }

        v66 = [v51 localizedStringForKey:v60 value:&stru_1000F6F48 table:0];
        [NSString localizedStringWithFormat:v66, ic_quotedString2, v70];
      }
      v61 = ;

      selectedNote = v79;
      v38 = v75;
      goto LABEL_169;
    }

    if (v18)
    {
      v45 = +[NSBundle mainBundle];
      v28 = v45;
      if (v25)
      {
        v31 = ic_quotedString2;
        if (v74 > 1)
        {
          v46 = @"These attachments will be saved in a new note in the folder %@ shared by %@ in your %@ account.";
        }

        else
        {
          v46 = @"This attachment will be saved in a new note in the folder %@ shared by %@ in your %@ account.";
        }

        v63 = [v45 localizedStringForKey:v46 value:&stru_1000F6F48 table:0];
        v71 = v26;
      }

      else
      {
        v31 = ic_quotedString2;
        if (v74 > 1)
        {
          v65 = @"These attachments will be saved in a new note in the folder %@ shared by %@.";
        }

        else
        {
          v65 = @"This attachment will be saved in a new note in the folder %@ shared by %@.";
        }

        v63 = [v45 localizedStringForKey:v65 value:&stru_1000F6F48 table:0];
      }

      v38 = v75;
      v70 = v75;
    }

    else
    {
      if ((v21 & 1) == 0)
      {
        [ICAssert handleFailedAssertWithCondition:"isOwnedSharedFolder" functionName:"[ICSEMainViewController stringForTitleFooter]" simulateCrash:1 showAlert:0 format:@"Unexpected case in updateTitleFooter"];
      }

      v58 = +[NSBundle mainBundle];
      v28 = v58;
      v31 = ic_quotedString2;
      if (v25)
      {
        v38 = v75;
        if (v74 > 1)
        {
          v59 = @"These attachments will be saved in a new note in your shared folder %@ in your %@ account.";
        }

        else
        {
          v59 = @"This attachment will be saved in a new note in your shared folder %@ in your %@ account.";
        }

        v63 = [v58 localizedStringForKey:v59 value:&stru_1000F6F48 table:0];
        v70 = v26;
      }

      else
      {
        v38 = v75;
        if (v74 > 1)
        {
          v67 = @"These attachments will be saved in a new note in your shared folder %@.";
        }

        else
        {
          v67 = @"This attachment will be saved in a new note in your shared folder %@.";
        }

        v63 = [v58 localizedStringForKey:v67 value:&stru_1000F6F48 table:0];
      }
    }

    [NSString localizedStringWithFormat:v63, v31, v70, v71, v72];
    goto LABEL_168;
  }

  v30 = v76;
  v29 = ic_quotedString;
  v31 = ic_quotedString2;
  if ((v25 | ![(ICSEMainViewController *)self prefersSystemPaper]))
  {
    v38 = v75;
    if ([(ICSEMainViewController *)self prefersSystemPaper])
    {
      v28 = +[NSBundle mainBundle];
      if (v74 > 1)
      {
        v47 = @"These attachments will be saved in a new note in the Quick Notes folder in your %@ account.";
      }

      else
      {
        v47 = @"This attachment will be saved in a new note in the Quick Notes folder in your %@ account.";
      }

LABEL_152:
      v68 = [v28 localizedStringForKey:v47 value:&stru_1000F6F48 table:0];
      v61 = [NSString localizedStringWithFormat:v68, v26];

      goto LABEL_169;
    }

    if (v25)
    {
      v28 = +[NSBundle mainBundle];
      if (v74 > 1)
      {
        v47 = @"These attachments will be saved in a new note in your %@ account.";
      }

      else
      {
        v47 = @"This attachment will be saved in a new note in your %@ account.";
      }

      goto LABEL_152;
    }

    v28 = +[NSBundle mainBundle];
    if (v74 > 1)
    {
      v53 = @"These attachments will be saved in a new note.";
    }

    else
    {
      v53 = @"This attachment will be saved in a new note.";
    }
  }

  else
  {
    v28 = +[NSBundle mainBundle];
    v38 = v75;
    if (v74 > 1)
    {
      v53 = @"These attachments will be saved in a new note in the Quick Notes folder.";
    }

    else
    {
      v53 = @"This attachment will be saved in a new note in the Quick Notes folder.";
    }
  }

  v61 = [v28 localizedStringForKey:v53 value:&stru_1000F6F48 table:0];
LABEL_169:

  if (!v61)
  {
    [ICAssert handleFailedAssertWithCondition:"((titleFooterString) != nil)" functionName:"[ICSEMainViewController stringForTitleFooter]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "titleFooterString"];
  }

  if (![v61 length])
  {
    [ICAssert handleFailedAssertWithCondition:"titleFooterString.length > 0" functionName:"[ICSEMainViewController stringForTitleFooter]" simulateCrash:1 showAlert:0 format:@"title footer string is empty"];
  }

  v10 = v61;

LABEL_174:

  return v10;
}

- (BOOL)canShareToNote:(id)note
{
  noteCopy = note;
  if ([noteCopy isPasswordProtected] & 1) != 0 || !objc_msgSend(noteCopy, "isEditable") || (objc_msgSend(noteCopy, "isDeletedOrInTrash"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [noteCopy markedForDeletion] ^ 1;
  }

  return v4;
}

- (BOOL)canShareToFolder:(id)folder
{
  folderCopy = folder;
  if (![folderCopy canMoveAddOrDeleteContents] || (objc_msgSend(folderCopy, "isDeleted") & 1) != 0 || (objc_msgSend(folderCopy, "isTrashFolder") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [folderCopy markedForDeletion] ^ 1;
  }

  return v4;
}

- (BOOL)shouldRetrieveLastSelectedNote
{
  selectedNote = [(ICSEMainViewController *)self selectedNote];

  selectedFolder = [(ICSEMainViewController *)self selectedFolder];

  selectedNote2 = [(ICSEMainViewController *)self selectedNote];
  v6 = [(ICSEMainViewController *)self canShareToNote:selectedNote2];

  selectedFolder2 = [(ICSEMainViewController *)self selectedFolder];
  v8 = [(ICSEMainViewController *)self canShareToFolder:selectedFolder2];

  if (!selectedNote || v6)
  {
    return (selectedFolder != 0) & (v8 ^ 1);
  }

  else
  {
    return 1;
  }
}

- (NSAttributedString)textBefore
{
  if ([(ICSEMainViewController *)self isShowingPlaceholderText])
  {
    attributedText = 0;
  }

  else
  {
    topTextView = [(ICSEMainViewController *)self topTextView];
    text = [topTextView text];
    ic_trimmedString = [text ic_trimmedString];

    if ([ic_trimmedString length])
    {
      topTextView2 = [(ICSEMainViewController *)self topTextView];
      attributedText = [topTextView2 attributedText];
    }

    else
    {
      attributedText = 0;
    }
  }

  return attributedText;
}

- (NSAttributedString)textAfter
{
  bottomTextView = [(ICSEMainViewController *)self bottomTextView];
  text = [bottomTextView text];
  ic_trimmedString = [text ic_trimmedString];

  if ([ic_trimmedString length])
  {
    bottomTextView2 = [(ICSEMainViewController *)self bottomTextView];
    attributedText = [bottomTextView2 attributedText];
  }

  else
  {
    attributedText = 0;
  }

  return attributedText;
}

- (void)tabKeyPressed:(id)pressed
{
  bottomTextViewCollapsed = [(ICSEMainViewController *)self bottomTextViewCollapsed];
  topTextView = [(ICSEMainViewController *)self topTextView];
  ic_isFirstResponder = [topTextView ic_isFirstResponder];

  if (bottomTextViewCollapsed)
  {
    if (ic_isFirstResponder)
    {
      return;
    }

    topTextView2 = [(ICSEMainViewController *)self topTextView];
  }

  else
  {
    topTextView2 = [(ICSEMainViewController *)self topTextView];
    if (ic_isFirstResponder)
    {
      v9 = topTextView2;
      ic_isFirstResponder2 = [topTextView2 ic_isFirstResponder];

      if (!ic_isFirstResponder2)
      {
        return;
      }

      topTextView2 = [(ICSEMainViewController *)self bottomTextView];
    }
  }

  v10 = topTextView2;
  [topTextView2 ic_becomeFirstResponder];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("saveToNote:" == action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containerViewController = [(ICSEMainViewController *)self containerViewController];
      if ([containerViewController isShowingTableContainer])
      {
        LOBYTE(self) = 0;
      }

      else
      {
        saveToNoteBarButtonItem = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
        LOBYTE(self) = [saveToNoteBarButtonItem isEnabled];
      }

      goto LABEL_10;
    }
  }

  if ("tabKeyPressed:" == action)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containerViewController = [(ICSEMainViewController *)self containerViewController];
      LODWORD(self) = [containerViewController isShowingTableContainer] ^ 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v10.receiver = self;
  v10.super_class = ICSEMainViewController;
  LOBYTE(self) = [(ICSEMainViewController *)&v10 canPerformAction:action withSender:senderCopy];
LABEL_11:

  return self;
}

- (void)saveToNote:(id)note
{
  selectedNote = [(ICSEMainViewController *)self selectedNote];
  if (selectedNote)
  {
    v5 = selectedNote;
    selectedNote2 = [(ICSEMainViewController *)self selectedNote];
    isEditable = [selectedNote2 isEditable];

    if ((isEditable & 1) == 0)
    {
      v36 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4300(v36);
      }

      goto LABEL_59;
    }
  }

  selectedFolder = [(ICSEMainViewController *)self selectedFolder];
  if (selectedFolder)
  {
    v9 = selectedFolder;
    selectedFolder2 = [(ICSEMainViewController *)self selectedFolder];
    canMoveAddOrDeleteContents = [selectedFolder2 canMoveAddOrDeleteContents];

    if ((canMoveAddOrDeleteContents & 1) == 0)
    {
      v36 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4344(v36);
      }

      goto LABEL_59;
    }
  }

  [(ICSEMainViewController *)self setIsSaving:1];
  [(ICSEMainViewController *)self showActivityIndicator];
  textBefore = [(ICSEMainViewController *)self textBefore];
  textAfter = [(ICSEMainViewController *)self textAfter];
  selectedNote3 = [(ICSEMainViewController *)self selectedNote];

  v85 = textAfter;
  if (!selectedNote3)
  {
    attachments = [(ICSEMainViewController *)self attachments];
    v38 = [attachments count];
    v39 = +[ICCloudConfiguration sharedConfiguration];
    maxAttachmentsPerNote = [v39 maxAttachmentsPerNote];

    if (v38 <= maxAttachmentsPerNote)
    {
      v43 = [textBefore length];
      v44 = &v43[[textAfter length]];
      if (v44 < +[ICNote maxNoteTextLength])
      {
        goto LABEL_8;
      }

LABEL_29:
      v42 = 0;
      v25 = 0;
      v41 = 1;
      goto LABEL_32;
    }

LABEL_27:
    v41 = 0;
    v25 = 0;
    v42 = 1;
    goto LABEL_32;
  }

  selectedNote4 = [(ICSEMainViewController *)self selectedNote];
  attachments2 = [(ICSEMainViewController *)self attachments];
  v17 = [selectedNote4 canAddAttachments:{objc_msgSend(attachments2, "count")}];

  if (!v17)
  {
    goto LABEL_27;
  }

  selectedNote5 = [(ICSEMainViewController *)self selectedNote];
  selectedNote6 = [(ICSEMainViewController *)self selectedNote];
  textStorage = [selectedNote6 textStorage];
  v21 = [selectedNote5 allowsNewTextLength:{objc_msgSend(textAfter, "length") + objc_msgSend(textBefore, "length") + objc_msgSend(textStorage, "length")}];

  if ((v21 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v84 = textBefore;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  attachments3 = [(ICSEMainViewController *)self attachments];
  v23 = [attachments3 countByEnumeratingWithState:&v94 objects:v98 count:16];
  if (!v23)
  {
    v25 = 0;
    goto LABEL_31;
  }

  v24 = v23;
  v25 = 0;
  v26 = *v95;
  do
  {
    for (i = 0; i != v24; i = i + 1)
    {
      if (*v95 != v26)
      {
        objc_enumerationMutation(attachments3);
      }

      v28 = *(*(&v94 + 1) + 8 * i);
      mediaData = [v28 mediaData];
      unsignedLongLongValue = [mediaData length];

      if (unsignedLongLongValue)
      {
LABEL_14:
        selectedNote7 = [(ICSEMainViewController *)self selectedNote];
        v32 = [selectedNote7 attachmentExceedsMaxSizeAllowed:unsignedLongLongValue];

        v25 |= v32;
        continue;
      }

      mediaURL = [v28 mediaURL];
      v93 = 0;
      v34 = [mediaURL getResourceValue:&v93 forKey:NSURLFileSizeKey error:0];
      v35 = v93;

      if (v34)
      {
        unsignedLongLongValue = [v35 unsignedLongLongValue];

        if (unsignedLongLongValue)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v24 = [attachments3 countByEnumeratingWithState:&v94 objects:v98 count:16];
  }

  while (v24);
LABEL_31:

  v42 = 0;
  v41 = 0;
  textBefore = v84;
LABEL_32:
  selectedFolder3 = [(ICSEMainViewController *)self selectedFolder];
  v46 = selectedFolder3;
  if (selectedFolder3)
  {
    folder = selectedFolder3;
  }

  else
  {
    temporaryNewNote = [(ICSEMainViewController *)self temporaryNewNote];
    folder = [temporaryNewNote folder];
  }

  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_100024BC8;
  v89[3] = &unk_1000F2CF8;
  v89[4] = self;
  v36 = textBefore;
  v90 = v36;
  v49 = v85;
  v91 = v49;
  v50 = folder;
  v92 = v50;
  v51 = objc_retainBlock(v89);
  v86 = v49;
  if (v42)
  {
    v52 = +[ICCloudConfiguration sharedConfiguration];
    maxAttachmentsPerNote2 = [v52 maxAttachmentsPerNote];

    selectedNote8 = [(ICSEMainViewController *)self selectedNote];
    if (!selectedNote8 || (v55 = selectedNote8, -[ICSEMainViewController selectedNote](self, "selectedNote"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 visibleTopLevelAttachmentsCount], v56, v55, v57 < maxAttachmentsPerNote2))
    {
      selectedNote9 = [(ICSEMainViewController *)self selectedNote];

      if (selectedNote9)
      {
        selectedNote10 = [(ICSEMainViewController *)self selectedNote];
        maxAttachmentsPerNote2 -= [selectedNote10 visibleTopLevelAttachmentsCount];

        v60 = @"At most %lu more attachments can be added.";
      }

      else
      {
        v60 = @"At most %lu attachments can be added.";
      }

      v77 = +[NSBundle mainBundle];
      v78 = [v77 localizedStringForKey:v60 value:&stru_1000F6F48 table:0];
      v76 = [NSString localizedStringWithFormat:v78, maxAttachmentsPerNote2];

      v62 = +[NSBundle mainBundle];
      rootViewController = [v62 localizedStringForKey:@"Too many attachments." value:&stru_1000F6F48 table:0];
      goto LABEL_54;
    }

    v61 = +[NSBundle mainBundle];
    v62 = v61;
    v63 = @"Maximum attachments reached.";
LABEL_51:
    rootViewController = [v61 localizedStringForKey:v63 value:&stru_1000F6F48 table:0];
    v76 = 0;
    goto LABEL_54;
  }

  if (v41)
  {
    v61 = +[NSBundle mainBundle];
    v62 = v61;
    v63 = @"Maximum note length reached.";
    goto LABEL_51;
  }

  if (v25)
  {
    v64 = +[ICCloudConfiguration sharedConfiguration];
    maximumAttachmentSizeMB = [v64 maximumAttachmentSizeMB];
    v66 = [maximumAttachmentSizeMB unsignedLongLongValue] << 20;

    v62 = [NSByteCountFormatter stringFromByteCount:v66 countStyle:3];
    attachments4 = [(ICSEMainViewController *)self attachments];
    v68 = [attachments4 count];

    v69 = +[NSBundle mainBundle];
    v70 = v69;
    if (v68 == 1)
    {
      v71 = @"Large Attachment.";
    }

    else
    {
      v71 = @"Large Attachments";
    }

    if (v68 == 1)
    {
      v72 = @"To add this attachment to your note, you’ll need to make it smaller than %@.";
    }

    else
    {
      v72 = @"Some of these attachments are too large. Each attachment must be smaller than %@.";
    }

    rootViewController = [v69 localizedStringForKey:v71 value:&stru_1000F6F48 table:0];

    v74 = +[NSBundle mainBundle];
    v75 = [v74 localizedStringForKey:v72 value:&stru_1000F6F48 table:0];
    v76 = [NSString localizedStringWithFormat:v75, v62];

LABEL_54:
    if (rootViewController)
    {
      v79 = [UIAlertController alertControllerWithTitle:rootViewController message:v76 preferredStyle:1];
      v80 = +[NSBundle mainBundle];
      v81 = [v80 localizedStringForKey:@"OK" value:&stru_1000F6F48 table:0];
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_100024F6C;
      v87[3] = &unk_1000F2D20;
      v88 = v51;
      v82 = [UIAlertAction actionWithTitle:v81 style:0 handler:v87];
      [v79 addAction:v82];

      [(ICSEMainViewController *)self presentViewController:v79 animated:1 completion:0];
      goto LABEL_58;
    }
  }

  else
  {
    v76 = 0;
  }

  v83 = +[ICBackgroundTaskScheduler sharedScheduler];
  [v83 scheduleTask:objc_opt_class() completion:&stru_1000F2D40];

  rootViewController = [(ICSEMainViewController *)self rootViewController];
  [rootViewController dismissWithCompletion:v51];
LABEL_58:

LABEL_59:
}

- (void)titleViewDidTap:(id)tap
{
  if (![(ICSEMainViewController *)self titleViewTapped])
  {
    rootViewController = [(ICSEMainViewController *)self rootViewController];
    tableViewController = [rootViewController tableViewController];
    selectedNote = [(ICSEMainViewController *)self selectedNote];
    [tableViewController pushFolderViewForNote:selectedNote];

    [(ICSEMainViewController *)self setTitleViewTapped:1];
  }

  topTextView = [(ICSEMainViewController *)self topTextView];
  [topTextView resignFirstResponder];

  bottomTextView = [(ICSEMainViewController *)self bottomTextView];
  [bottomTextView resignFirstResponder];

  rootViewController2 = [(ICSEMainViewController *)self rootViewController];
  [rootViewController2 setIsShowingSearchResults:1 animated:1];
}

- (void)cancel:(id)cancel
{
  [(ICSEMainViewController *)self purgeAttachments];

  [(ICSEMainViewController *)self dismissRootViewController];
}

- (void)purgeAttachments
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  attachments = [(ICSEMainViewController *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 deleteTemporaryImageFileIfNecessary];
        attachment = [v8 attachment];
        v10 = attachment;
        if (attachment)
        {
          [attachment purgeAttachmentPreviewImages];
          [ICAttachment purgeAttachment:v10];
        }
      }

      v5 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(ICSEMainViewController *)self setAttachments:0];
  v11 = +[ICNoteContext sharedContext];
  [v11 save];
}

- (void)dismissRootViewController
{
  rootViewController = [(ICSEMainViewController *)self rootViewController];
  [rootViewController setDidCancel:1];

  rootViewController2 = [(ICSEMainViewController *)self rootViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025304;
  v5[3] = &unk_1000F2390;
  v5[4] = self;
  [rootViewController2 dismissWithCompletion:v5];
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  topTextView = [(ICSEMainViewController *)self topTextView];
  if (topTextView == editingCopy)
  {
    isShowingPlaceholderText = [(ICSEMainViewController *)self isShowingPlaceholderText];

    if (isShowingPlaceholderText)
    {
      [(ICSEMainViewController *)self showPlaceholderText:0];
    }
  }

  else
  {
  }

  [(ICSEMainViewController *)self scrollTextToVisibleForTextView:editingCopy];
  [editingCopy becomeFirstResponder];
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  topTextView = [(ICSEMainViewController *)self topTextView];

  if (topTextView == editingCopy)
  {
    dispatchMainAfterDelay();
  }

  [editingCopy resignFirstResponder];
}

- (void)extensionHostDidBecomeActive:(id)active
{
  if ([(ICSEMainViewController *)self shouldRetrieveLastSelectedNote])
  {
    v4 = +[ICSharingExtensionAttachmentsManager sharedManager];
    lastNoteSavedTo = [v4 lastNoteSavedTo];

    selectedFolder = [(ICSEMainViewController *)self selectedFolder];
    -[ICSEMainViewController setSelectionToNote:folder:prefersSystemPaper:](self, "setSelectionToNote:folder:prefersSystemPaper:", lastNoteSavedTo, selectedFolder, [lastNoteSavedTo isSystemPaper]);
  }
}

- (void)scrollTextToVisibleForTextView:(id)view
{
  viewCopy = view;
  selectedTextRange = [viewCopy selectedTextRange];
  start = [selectedTextRange start];
  [viewCopy caretRectForPosition:start];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  scrollView = [(ICSEMainViewController *)self scrollView];
  [scrollView convertRect:viewCopy fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  if (!CGRectIsInfinite(v28))
  {
    scrollView2 = [(ICSEMainViewController *)self scrollView];
    [scrollView2 bounds];
    v30.origin.x = v16;
    v30.origin.y = v18;
    v30.size.width = v20;
    v30.size.height = v22;
    v24 = CGRectContainsRect(v29, v30);

    if (!v24)
    {
      scrollView3 = [(ICSEMainViewController *)self scrollView];
      [scrollView3 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];
    }
  }
}

- (void)attachmentsAvailable
{
  [(ICSEMainViewController *)self showSaveButton];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  attachments = [(ICSEMainViewController *)self attachments];
  v6 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(attachments);
        }

        string = *(*(&v29 + 1) + 8 * i);
        attributedContentText = [string attributedContentText];
        v10 = [attributedContentText length];

        if (v10)
        {
          [(ICSEMainViewController *)self showPlaceholderText:0];
          attributedContentText2 = [string attributedContentText];
          string = [attributedContentText2 string];
          attributedContentText = [(ICSEMainViewController *)self topTextView];
          [attributedContentText setText:string];

          goto LABEL_11;
        }
      }

      v7 = [attachments countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  attachments2 = [(ICSEMainViewController *)self attachments];
  firstObject = [attachments2 firstObject];

  attachment = [firstObject attachment];

  if (attachment)
  {
    [(ICSEMainViewController *)self setLayoutType:1];
    attachment2 = [firstObject attachment];
    [(ICSEMainViewController *)self installBrickForAttachmentInfo:firstObject];
    attachmentModel = [attachment2 attachmentModel];
    needToGeneratePreviews = [attachmentModel needToGeneratePreviews];

    if (needToGeneratePreviews)
    {
      v18 = dispatch_get_global_queue(0, 0);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100025B60;
      v26 = &unk_1000F23B8;
      v27 = attachment2;
      selfCopy = self;
      dispatch_async(v18, &v23);
    }

    goto LABEL_27;
  }

  attributedContentText3 = [firstObject attributedContentText];
  if (![attributedContentText3 length])
  {

LABEL_18:
    mediaUTI = [firstObject mediaUTI];
    if (mediaUTI)
    {
      string = [firstObject mediaUTI];
      attributedContentText = [UTType typeWithIdentifier:string];
      if ([attributedContentText conformsToType:UTTypeImage])
      {
        goto LABEL_22;
      }
    }

    mediaUTI2 = [firstObject mediaUTI];
    if (([ICAttachment typeUTIIsPlayableMovie:mediaUTI2]& 1) == 0)
    {
      image = [firstObject image];

      if (mediaUTI)
      {
      }

      if (!image)
      {
        [(ICSEMainViewController *)self setLayoutType:1];
        [(ICSEMainViewController *)self installBrickForAttachmentInfo:firstObject];
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (mediaUTI)
    {
LABEL_22:
    }

LABEL_26:
    [(ICSEMainViewController *)self setLayoutType:2];
    attachment2 = [(ICSEMainViewController *)self attachments];
    [(ICSEMainViewController *)self installImagesViewForAttachments:attachment2];
LABEL_27:

    goto LABEL_28;
  }

  string = [(ICSEMainViewController *)self attachments];
  attributedContentText = [string count];

  if (attributedContentText != 1)
  {
    goto LABEL_18;
  }

  [(ICSEMainViewController *)self setLayoutType:4];
LABEL_28:
  [(ICSEMainViewController *)self updateTitleFooter:v23];
}

- (void)installBrickForAttachmentInfo:(id)info
{
  infoCopy = info;
  mediaURL = [infoCopy mediaURL];
  if (mediaURL)
  {
  }

  else
  {
    attachment = [infoCopy attachment];

    if (!attachment)
    {
      goto LABEL_5;
    }
  }

  brickContainer = [(ICSEMainViewController *)self brickContainer];
  subviews = [brickContainer subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  +[ICAttachmentBrickView defaultBrickSize];
  brickContainer2 = [(ICSEMainViewController *)self brickContainer];
  [brickContainer2 bounds];

  v9 = [[ICAttachmentBrickView alloc] initWithType:3];
  [(ICSEMainViewController *)self setAttachmentBrickView:v9];

  attachmentBrickView = [(ICSEMainViewController *)self attachmentBrickView];
  [attachmentBrickView setShareExtensionAttachmentInfo:infoCopy];

  attachmentBrickView2 = [(ICSEMainViewController *)self attachmentBrickView];
  brickContainer3 = [(ICSEMainViewController *)self brickContainer];
  [brickContainer3 addSubview:attachmentBrickView2];

  leadingAnchor = [attachmentBrickView2 leadingAnchor];
  brickContainer4 = [(ICSEMainViewController *)self brickContainer];
  leadingAnchor2 = [brickContainer4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  topAnchor = [attachmentBrickView2 topAnchor];
  brickContainer5 = [(ICSEMainViewController *)self brickContainer];
  topAnchor2 = [brickContainer5 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v20 setActive:1];

  bottomAnchor = [attachmentBrickView2 bottomAnchor];
  brickContainer6 = [(ICSEMainViewController *)self brickContainer];
  bottomAnchor2 = [brickContainer6 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v24 setActive:1];

  widthAnchor = [attachmentBrickView2 widthAnchor];
  brickContainer7 = [(ICSEMainViewController *)self brickContainer];
  widthAnchor2 = [brickContainer7 widthAnchor];
  v28 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0];

  LODWORD(v29) = 1148829696;
  [v28 setPriority:v29];
  [v28 setActive:1];
  trailingAnchor = [attachmentBrickView2 trailingAnchor];
  brickContainer8 = [(ICSEMainViewController *)self brickContainer];
  trailingAnchor2 = [brickContainer8 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  LODWORD(v34) = 1148682240;
  [v33 setPriority:v34];
  [v33 setActive:1];
  [(ICSEMainViewController *)self updateBrickContainerHeightConstraint];

LABEL_5:
}

- (void)contentSizeCategoryChanged:(id)changed
{
  [(ICSEMainViewController *)self updateTextViewsForContentSizeChangeIfNecessary];
  [(ICSEMainViewController *)self updateTitleViewHeightConstraint];

  [(ICSEMainViewController *)self updateBrickContainerHeightConstraint];
}

- (void)updateTitleViewHeightConstraint
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v3 = 88.0;
  }

  else
  {
    v3 = sub_1000032EC();
  }

  titleViewMinHeightConstraint = [(ICSEMainViewController *)self titleViewMinHeightConstraint];
  [titleViewMinHeightConstraint setConstant:v3];
}

- (void)updateBrickContainerHeightConstraint
{
  attachmentBrickView = [(ICSEMainViewController *)self attachmentBrickView];
  [attachmentBrickView computedSize];
  v4 = v3;
  brickContainerHeightConstraint = [(ICSEMainViewController *)self brickContainerHeightConstraint];
  [brickContainerHeightConstraint setConstant:v4];
}

- (void)setLayoutType:(unint64_t)type
{
  if (self->_layoutType != type)
  {
    self->_layoutType = type;
    [(ICSEMainViewController *)self setUpForLayoutType:?];
  }
}

- (void)setUpForLayoutType:(unint64_t)type
{
  if (type - 3 < 2)
  {
    v5 = 1;
    v6 = 64.0;
    v4 = 1;
  }

  else
  {
    if (type == 1)
    {
      v5 = 0;
      v4 = 1;
    }

    else
    {
      if (type == 2)
      {
        v4 = 0;
        v5 = 1;
        v6 = 175.0;
        goto LABEL_9;
      }

      v5 = 0;
      v4 = 0;
    }

    v6 = 48.0;
  }

LABEL_9:
  [(ICSEMainViewController *)self setBrickViewCollapsed:v5];
  [(ICSEMainViewController *)self setBottomTextViewCollapsed:v5];
  [(ICSEMainViewController *)self setImageViewCollapsed:v4];
  topTextViewMinHeightConstraint = [(ICSEMainViewController *)self topTextViewMinHeightConstraint];
  [topTextViewMinHeightConstraint setConstant:v6];
}

- (void)setImageViewCollapsed:(BOOL)collapsed
{
  self->_imageViewCollapsed = collapsed;
  if (collapsed)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  imageCollapsibleZeroWidthConstraint = [(ICSEMainViewController *)self imageCollapsibleZeroWidthConstraint];
  *&v6 = v4;
  [imageCollapsibleZeroWidthConstraint setPriority:v6];

  imageViewCollapsed = self->_imageViewCollapsed;
  imagesView = [(ICSEMainViewController *)self imagesView];
  [imagesView setHidden:imageViewCollapsed];
}

- (void)setBrickViewCollapsed:(BOOL)collapsed
{
  self->_brickViewCollapsed = collapsed;
  if (collapsed)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  brickCollapsibleZeroHeightConstraint = [(ICSEMainViewController *)self brickCollapsibleZeroHeightConstraint];
  *&v6 = v4;
  [brickCollapsibleZeroHeightConstraint setPriority:v6];

  brickViewCollapsed = self->_brickViewCollapsed;
  brickContainer = [(ICSEMainViewController *)self brickContainer];
  [brickContainer setHidden:brickViewCollapsed];
}

- (void)setBottomTextViewCollapsed:(BOOL)collapsed
{
  self->_bottomTextViewCollapsed = collapsed;
  if (collapsed)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  bottomTextviewCollapsibleZeroHeightConstraint = [(ICSEMainViewController *)self bottomTextviewCollapsibleZeroHeightConstraint];
  *&v6 = v4;
  [bottomTextviewCollapsibleZeroHeightConstraint setPriority:v6];

  bottomTextViewCollapsed = self->_bottomTextViewCollapsed;
  bottomTextView = [(ICSEMainViewController *)self bottomTextView];
  [bottomTextView setHidden:bottomTextViewCollapsed];
}

- (ICSERootViewController)rootViewController
{
  containerViewController = [(ICSEMainViewController *)self containerViewController];
  rootViewController = [containerViewController rootViewController];

  return rootViewController;
}

- (void)updateTextViewsForContentSizeChangeIfNecessary
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  ic_fontWithSingleLineA = [v3 ic_fontWithSingleLineA];
  topTextView = [(ICSEMainViewController *)self topTextView];
  [topTextView setFont:ic_fontWithSingleLineA];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  ic_fontWithSingleLineA2 = [v8 ic_fontWithSingleLineA];
  bottomTextView = [(ICSEMainViewController *)self bottomTextView];
  [bottomTextView setFont:ic_fontWithSingleLineA2];
}

- (void)installImagesViewForAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000266E8;
  v7[3] = &unk_1000F23B8;
  v7[4] = self;
  v8 = attachmentsCopy;
  v6 = attachmentsCopy;
  dispatch_async(v5, v7);
}

- (double)consumedBottomAreaForResizer:(id)resizer
{
  view = [(ICSEMainViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  return v5;
}

- (ICSEContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (UITextView)topTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_topTextView);

  return WeakRetained;
}

- (UITextView)bottomTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomTextView);

  return WeakRetained;
}

- (UILabel)saveToHeaderLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_saveToHeaderLabel);

  return WeakRetained;
}

- (UIView)brickContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_brickContainer);

  return WeakRetained;
}

- (UIView)titleHeaderView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleHeaderView);

  return WeakRetained;
}

- (UIView)titleViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_titleViewContainer);

  return WeakRetained;
}

- (UIView)titleFooterView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleFooterView);

  return WeakRetained;
}

- (UIView)contentViewTopSeparator
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewTopSeparator);

  return WeakRetained;
}

- (UIView)contentViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewContainer);

  return WeakRetained;
}

- (UILabel)titleFooterLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleFooterLabel);

  return WeakRetained;
}

- (ICSEImagesView)imagesView
{
  WeakRetained = objc_loadWeakRetained(&self->_imagesView);

  return WeakRetained;
}

- (ICSENoteTitleView)titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleView);

  return WeakRetained;
}

- (NSLayoutConstraint)brickCollapsibleZeroHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_brickCollapsibleZeroHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)imageCollapsibleZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCollapsibleZeroWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomTextviewCollapsibleZeroHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomTextviewCollapsibleZeroHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)topTextViewTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_topTextViewTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)topTextViewMinHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_topTextViewMinHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomTextViewMinHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomTextViewMinHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)bottomTextViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomTextViewBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)brickContainerHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_brickContainerHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)titleViewMinHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_titleViewMinHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)titleFooterViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_titleFooterViewHeightConstraint);

  return WeakRetained;
}

@end