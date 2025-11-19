@interface ICSEMainViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShareToFolder:(id)a3;
- (BOOL)canShareToNote:(id)a3;
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
- (double)consumedBottomAreaForResizer:(id)a3;
- (id)stringForTitleFooter;
- (void)attachmentsAvailable;
- (void)cancel:(id)a3;
- (void)cleanupTemporaryImageFilesIfNecessary;
- (void)cleanupTemporaryNewNoteIfNecesary;
- (void)configureUI;
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)dismissRootViewController;
- (void)extensionHostDidBecomeActive:(id)a3;
- (void)installBrickForAttachmentInfo:(id)a3;
- (void)installImagesViewForAttachments:(id)a3;
- (void)loadAccountsAndAttachments;
- (void)purgeAttachments;
- (void)saveToNote:(id)a3;
- (void)scrollTextToVisibleForTextView:(id)a3;
- (void)setBottomTextViewCollapsed:(BOOL)a3;
- (void)setBrickViewCollapsed:(BOOL)a3;
- (void)setImageViewCollapsed:(BOOL)a3;
- (void)setLayoutType:(unint64_t)a3;
- (void)setUpForLayoutType:(unint64_t)a3;
- (void)showActivityIndicator;
- (void)showSaveButton;
- (void)tabKeyPressed:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)titleViewDidTap:(id)a3;
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
  v6 = [(ICSEMainViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [(ICSEMainViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 setForceFullHeightInLandscape:1];

  if (+[UIDevice ic_isVision])
  {
    v9 = [(ICSEMainViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 setBackgroundColor:0];

    v11 = [(ICSEMainViewController *)self view];
    [v11 setBackgroundColor:0];

    v12 = [(ICSEMainViewController *)self scrollView];
    [v12 setBackgroundColor:0];
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
    v12 = ;
    v13 = [(ICSEMainViewController *)self navigationController];
    v14 = [v13 navigationBar];
    [v14 setTintColor:v12];
  }

  v15 = [(ICSEMainViewController *)self scrollView];
  [v15 setDelegate:self];

  [(ICSEMainViewController *)self showPlaceholderText:1];
  v16 = +[ICSENoteTitleView newNoteTitleView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addTarget:self action:"titleViewDidTap:" forControlEvents:64];
  if (+[UIDevice ic_isVision])
  {
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v18 = [v17 ic_fontWithSingleLineA];
    v19 = [(ICSEMainViewController *)self saveToHeaderLabel];
    [v19 setFont:v18];

    v20 = [(ICSEMainViewController *)self titleFooterLabel];
    [v20 setTextAlignment:1];

    v21 = [(ICSEMainViewController *)self titleFooterViewHeightConstraint];
    v87 = v21;
    v22 = [NSArray arrayWithObjects:&v87 count:1];
    [NSLayoutConstraint deactivateConstraints:v22];

    v23 = [(ICSEMainViewController *)self titleFooterView];
    v24 = [v23 bottomAnchor];
    v25 = [(ICSEMainViewController *)self contentViewContainer];
    v26 = [v25 topAnchor];
    v27 = [v24 constraintLessThanOrEqualToAnchor:v26 constant:-16.0];
    v86 = v27;
    v28 = [NSArray arrayWithObjects:&v86 count:1];
    [NSLayoutConstraint activateConstraints:v28];
  }

  v29 = [(ICSEMainViewController *)self titleViewContainer];
  [v29 ic_applyRoundedCornersWithRadius:26.0];

  v30 = [(ICSEMainViewController *)self titleViewContainer];
  [v30 addSubview:v16];

  v31 = +[UIColor tableCellGroupedBackgroundColor];
  v32 = [(ICSEMainViewController *)self titleViewContainer];
  [v32 setBackgroundColor:v31];

  v33 = [(ICSEMainViewController *)self titleViewContainer];
  [v33 setAccessibilityIdentifier:@"titleViewContainer"];

  [(ICSEMainViewController *)self updateTitleViewHeightConstraint];
  v83 = [v16 leadingAnchor];
  v84 = [(ICSEMainViewController *)self titleViewContainer];
  v82 = [v84 layoutMarginsGuide];
  v81 = [v82 leadingAnchor];
  v80 = [v83 constraintEqualToAnchor:v81 constant:8.0];
  v85[0] = v80;
  v78 = [v16 trailingAnchor];
  v79 = [(ICSEMainViewController *)self titleViewContainer];
  v77 = [v79 layoutMarginsGuide];
  v76 = [v77 trailingAnchor];
  v75 = [v78 constraintEqualToAnchor:v76 constant:-8.0];
  v85[1] = v75;
  v74 = [v16 topAnchor];
  v34 = [(ICSEMainViewController *)self titleViewContainer];
  v35 = [v34 topAnchor];
  v36 = [v74 constraintEqualToAnchor:v35];
  v85[2] = v36;
  v37 = [v16 bottomAnchor];
  v38 = [(ICSEMainViewController *)self titleViewContainer];
  [v38 bottomAnchor];
  v40 = v39 = v16;
  v41 = [v37 constraintEqualToAnchor:v40];
  v85[3] = v41;
  v42 = [NSArray arrayWithObjects:v85 count:4];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = v39;
  [(ICSEMainViewController *)self setTitleView:v39];
  v44 = [(ICSEMainViewController *)self contentViewContainer];
  [v44 ic_applyRoundedCornersWithRadius:20.0];

  v45 = +[UIColor tableCellGroupedBackgroundColor];
  v46 = [(ICSEMainViewController *)self contentViewContainer];
  [v46 setBackgroundColor:v45];

  v47 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(ICSEMainViewController *)self setActivityIndicatorView:v47];

  v48 = [UIBarButtonItem alloc];
  v49 = [(ICSEMainViewController *)self activityIndicatorView];
  v50 = [v48 initWithCustomView:v49];
  [(ICSEMainViewController *)self setActivityIndicatorBarButtonItem:v50];

  v51 = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  [v51 setEnabled:0];

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    +[UIColor ICDarkenedTintColor];
  }

  else
  {
    +[UIColor ICTintColor];
  }
  v52 = ;
  v53 = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  [v53 setTintColor:v52];

  if (![(ICSEMainViewController *)self layoutType])
  {
    [(ICSEMainViewController *)self setUpForLayoutType:3];
  }

  v54 = [(ICSEMainViewController *)self topTextView];
  [v54 setDelegate:self];

  v55 = [(ICSEMainViewController *)self bottomTextView];
  [v55 setDelegate:self];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v59 = [(ICSEMainViewController *)self topTextView];
    [v59 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    v60 = [(ICSEMainViewController *)self topTextView];
    v61 = [v60 textContainer];
    [v61 setLineFragmentPadding:0.0];

    v62 = [(ICSEMainViewController *)self bottomTextView];
    [v62 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];

    v63 = [(ICSEMainViewController *)self bottomTextView];
    v64 = [v63 textContainer];
    [v64 setLineFragmentPadding:0.0];
  }

  v65 = [(ICSEMainViewController *)self topTextViewMinHeightConstraint];
  [v65 setConstant:48.0];

  v66 = [(ICSEMainViewController *)self bottomTextviewCollapsibleZeroHeightConstraint];
  [v66 setConstant:72.0];

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
  v3 = [(ICSEMainViewController *)self activityIndicatorBarButtonItem];
  v4 = [(ICSEMainViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [(ICSEMainViewController *)self activityIndicatorView];
  [v5 startAnimating];
}

- (void)showSaveButton
{
  v4 = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
  v3 = [(ICSEMainViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)loadAccountsAndAttachments
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];
  v5 = [ICAccount allActiveAccountsInContextSortedByAccountType:v4];

  if (v5 && [v5 count])
  {
    [(ICSEMainViewController *)self setAccounts:v5];
    v6 = [(ICSEMainViewController *)self containerViewController];
    v7 = [v6 tableViewController];
    [v7 setAccounts:v5];

    v8 = +[ICNoteContext sharedContext];
    v9 = [v8 managedObjectContext];
    v10 = [ICFolder defaultFolderInContext:v9];
    v11 = [ICNote newEmptyNoteInFolder:v10];

    [v11 markForDeletion];
    [(ICSEMainViewController *)self setTemporaryNewNote:v11];
    v12 = +[ICSharingExtensionAttachmentsManager sharedManager];
    v13 = [v12 lastNoteSavedTo];

    -[ICSEMainViewController setSelectionToNote:folder:prefersSystemPaper:](self, "setSelectionToNote:folder:prefersSystemPaper:", v13, 0, [v13 isSystemPaper]);
    objc_initWeak(location, self);
    v14 = [v11 account];
    v15 = [v14 identifier];
    v16 = +[ICSharingExtensionAttachmentsManager sharedManager];
    [v16 setAccountId:v15];

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
  v3 = [(ICSEMainViewController *)self view];
  v4 = [v3 window];

  if (!v4)
  {
    [ICAssert handleFailedAssertWithCondition:"((self.view.window) != nil)" functionName:"[ICSEMainViewController viewDidLayoutSubviews]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "self.view.window"];
  }

  v5 = [(ICSEMainViewController *)self scrollViewResizer];
  v6 = [v5 isAutoResizing];

  if ((v6 & 1) == 0)
  {
    v7 = [(ICSEMainViewController *)self scrollViewResizer];
    [v7 startAutoResizing];
  }
}

- (void)cleanupTemporaryImageFilesIfNecessary
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICSEMainViewController *)self attachments];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) deleteTemporaryImageFileIfNecessary];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)cleanupTemporaryNewNoteIfNecesary
{
  v3 = [(ICSEMainViewController *)self temporaryNewNote];
  v4 = [v3 managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022E48;
  v6[3] = &unk_1000F2390;
  v7 = v3;
  v5 = v3;
  [v4 performBlockAndWait:v6];

  [(ICSEMainViewController *)self setTemporaryNewNote:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = ICSEMainViewController;
  [(ICSEMainViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(ICSEMainViewController *)self scrollViewResizer];
  [v3 reapplyInsets];
}

- (void)updateTitleFooter
{
  v4 = [(ICSEMainViewController *)self stringForTitleFooter];
  v3 = [(ICSEMainViewController *)self titleFooterLabel];
  [v3 setText:v4];
}

- (id)stringForTitleFooter
{
  v3 = [(ICSEMainViewController *)self attachments];
  v4 = [v3 count];

  if (!v4)
  {
    v10 = &stru_1000F6F48;
    goto LABEL_174;
  }

  v5 = [(ICSEMainViewController *)self attachments];
  v74 = [v5 count];

  v6 = [(ICSEMainViewController *)self selectedNote];
  v7 = [(ICSEMainViewController *)self selectedFolder];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 folder];
  }

  v11 = v9;

  if (v6)
  {
    v12 = [v6 title];
    v13 = [v12 ic_truncatedStringWithMaxLength:35 truncated:0];
    v77 = [v13 ic_quotedString];

    if ([v6 isSharedRootObject] && (objc_msgSend(v6, "sharedOwnerName"), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
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

    v73 = v15 & [v6 isSharedRootObject];
  }

  else
  {
    v16 = 0;
    v76 = 0;
    v77 = 0;
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
    v20 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  v33 = [v11 localizedTitle];
  v17 = v33;
  if (!v33 || ![v33 length])
  {
    goto LABEL_16;
  }

  v34 = [v17 ic_truncatedStringWithMaxLength:35 truncated:0];
  v20 = [v34 ic_quotedString];

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
  v22 = [(ICSEMainViewController *)self accounts];
  v23 = [v22 count];

  v79 = v6;
  if (v23 < 2)
  {
    v25 = 0;
    v26 = &stru_1000F6F48;
    if (!v6)
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
          v29 = v77;
          if (v25)
          {
            v31 = v20;
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
            v31 = v20;
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
        v29 = v77;
        if ((v21 & 1) == 0)
        {
          [ICAssert handleFailedAssertWithCondition:"isOwnedSharedFolder" functionName:"[ICSEMainViewController stringForTitleFooter]" simulateCrash:1 showAlert:0 format:@"Unexpected case in updateTitleFooter"];
        }

        v28 = +[NSBundle mainBundle];
        v31 = v20;
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
      v31 = v20;
      if (v25)
      {
        v38 = v75;
        if (!v16)
        {
          if (v73)
          {
            v30 = v76;
            v29 = v77;
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
            v29 = v77;
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
            v29 = v77;
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
            v29 = v77;
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
      v31 = v20;
      if (v25)
      {
        if (!v16)
        {
          v38 = v75;
          if (v73)
          {
            v30 = v76;
            v29 = v77;
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
            v29 = v77;
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
            v29 = v77;
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
            v29 = v77;
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
    v29 = v77;
    v70 = v76;
LABEL_167:
    [NSString localizedStringWithFormat:v63, v29, v70, v71, v72];
    v61 = LABEL_168:;

    v6 = v79;
    goto LABEL_169;
  }

  if (v6)
  {
    v24 = v6;
  }

  else
  {
    v24 = v78;
  }

  v40 = [v24 account];
  if (!v40)
  {
    v41 = +[ICNoteContext sharedContext];
    v42 = [v41 managedObjectContext];
    v40 = [ICAccount defaultAccountInContext:v42];
  }

  v43 = [v40 localizedName];
  v44 = v43;
  if (v43 && [v43 length])
  {
    v26 = [v44 ic_truncatedStringWithMaxLength:35 truncated:0];
    v25 = 1;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v6 = v79;
  if (v79)
  {
    goto LABEL_21;
  }

LABEL_44:
  if (v19)
  {
    v30 = v76;
    v29 = v77;
    if (((v18 | v21) & 1) == 0)
    {
      v51 = +[NSBundle mainBundle];
      v28 = v51;
      if (v25)
      {
        v31 = v20;
        if (v74 > 1)
        {
          v52 = @"These attachments will be saved in a new note in the folder %@ in your %@ account.";
        }

        else
        {
          v52 = @"This attachment will be saved in a new note in the folder %@ in your %@ account.";
        }

        v66 = [v51 localizedStringForKey:v52 value:&stru_1000F6F48 table:0];
        [NSString localizedStringWithFormat:v66, v20, v26];
      }

      else
      {
        v31 = v20;
        if (v74 > 1)
        {
          v60 = @"These attachments will be saved in a new note in the folder %@.";
        }

        else
        {
          v60 = @"This attachment will be saved in a new note in the folder %@.";
        }

        v66 = [v51 localizedStringForKey:v60 value:&stru_1000F6F48 table:0];
        [NSString localizedStringWithFormat:v66, v20, v70];
      }
      v61 = ;

      v6 = v79;
      v38 = v75;
      goto LABEL_169;
    }

    if (v18)
    {
      v45 = +[NSBundle mainBundle];
      v28 = v45;
      if (v25)
      {
        v31 = v20;
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
        v31 = v20;
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
      v31 = v20;
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
  v29 = v77;
  v31 = v20;
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

- (BOOL)canShareToNote:(id)a3
{
  v3 = a3;
  if ([v3 isPasswordProtected] & 1) != 0 || !objc_msgSend(v3, "isEditable") || (objc_msgSend(v3, "isDeletedOrInTrash"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 markedForDeletion] ^ 1;
  }

  return v4;
}

- (BOOL)canShareToFolder:(id)a3
{
  v3 = a3;
  if (![v3 canMoveAddOrDeleteContents] || (objc_msgSend(v3, "isDeleted") & 1) != 0 || (objc_msgSend(v3, "isTrashFolder") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 markedForDeletion] ^ 1;
  }

  return v4;
}

- (BOOL)shouldRetrieveLastSelectedNote
{
  v3 = [(ICSEMainViewController *)self selectedNote];

  v4 = [(ICSEMainViewController *)self selectedFolder];

  v5 = [(ICSEMainViewController *)self selectedNote];
  v6 = [(ICSEMainViewController *)self canShareToNote:v5];

  v7 = [(ICSEMainViewController *)self selectedFolder];
  v8 = [(ICSEMainViewController *)self canShareToFolder:v7];

  if (!v3 || v6)
  {
    return (v4 != 0) & (v8 ^ 1);
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
    v3 = 0;
  }

  else
  {
    v4 = [(ICSEMainViewController *)self topTextView];
    v5 = [v4 text];
    v6 = [v5 ic_trimmedString];

    if ([v6 length])
    {
      v7 = [(ICSEMainViewController *)self topTextView];
      v3 = [v7 attributedText];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSAttributedString)textAfter
{
  v3 = [(ICSEMainViewController *)self bottomTextView];
  v4 = [v3 text];
  v5 = [v4 ic_trimmedString];

  if ([v5 length])
  {
    v6 = [(ICSEMainViewController *)self bottomTextView];
    v7 = [v6 attributedText];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tabKeyPressed:(id)a3
{
  v4 = [(ICSEMainViewController *)self bottomTextViewCollapsed];
  v5 = [(ICSEMainViewController *)self topTextView];
  v6 = [v5 ic_isFirstResponder];

  if (v4)
  {
    if (v6)
    {
      return;
    }

    v7 = [(ICSEMainViewController *)self topTextView];
  }

  else
  {
    v7 = [(ICSEMainViewController *)self topTextView];
    if (v6)
    {
      v9 = v7;
      v8 = [v7 ic_isFirstResponder];

      if (!v8)
      {
        return;
      }

      v7 = [(ICSEMainViewController *)self bottomTextView];
    }
  }

  v10 = v7;
  [v7 ic_becomeFirstResponder];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("saveToNote:" == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ICSEMainViewController *)self containerViewController];
      if ([v7 isShowingTableContainer])
      {
        LOBYTE(self) = 0;
      }

      else
      {
        v8 = [(ICSEMainViewController *)self saveToNoteBarButtonItem];
        LOBYTE(self) = [v8 isEnabled];
      }

      goto LABEL_10;
    }
  }

  if ("tabKeyPressed:" == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ICSEMainViewController *)self containerViewController];
      LODWORD(self) = [v7 isShowingTableContainer] ^ 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v10.receiver = self;
  v10.super_class = ICSEMainViewController;
  LOBYTE(self) = [(ICSEMainViewController *)&v10 canPerformAction:a3 withSender:v6];
LABEL_11:

  return self;
}

- (void)saveToNote:(id)a3
{
  v4 = [(ICSEMainViewController *)self selectedNote];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICSEMainViewController *)self selectedNote];
    v7 = [v6 isEditable];

    if ((v7 & 1) == 0)
    {
      v36 = os_log_create("com.apple.notes", "SharingExtension");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4300(v36);
      }

      goto LABEL_59;
    }
  }

  v8 = [(ICSEMainViewController *)self selectedFolder];
  if (v8)
  {
    v9 = v8;
    v10 = [(ICSEMainViewController *)self selectedFolder];
    v11 = [v10 canMoveAddOrDeleteContents];

    if ((v11 & 1) == 0)
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
  v12 = [(ICSEMainViewController *)self textBefore];
  v13 = [(ICSEMainViewController *)self textAfter];
  v14 = [(ICSEMainViewController *)self selectedNote];

  v85 = v13;
  if (!v14)
  {
    v37 = [(ICSEMainViewController *)self attachments];
    v38 = [v37 count];
    v39 = +[ICCloudConfiguration sharedConfiguration];
    v40 = [v39 maxAttachmentsPerNote];

    if (v38 <= v40)
    {
      v43 = [v12 length];
      v44 = &v43[[v13 length]];
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

  v15 = [(ICSEMainViewController *)self selectedNote];
  v16 = [(ICSEMainViewController *)self attachments];
  v17 = [v15 canAddAttachments:{objc_msgSend(v16, "count")}];

  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = [(ICSEMainViewController *)self selectedNote];
  v19 = [(ICSEMainViewController *)self selectedNote];
  v20 = [v19 textStorage];
  v21 = [v18 allowsNewTextLength:{objc_msgSend(v13, "length") + objc_msgSend(v12, "length") + objc_msgSend(v20, "length")}];

  if ((v21 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v84 = v12;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v22 = [(ICSEMainViewController *)self attachments];
  v23 = [v22 countByEnumeratingWithState:&v94 objects:v98 count:16];
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
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v94 + 1) + 8 * i);
      v29 = [v28 mediaData];
      v30 = [v29 length];

      if (v30)
      {
LABEL_14:
        v31 = [(ICSEMainViewController *)self selectedNote];
        v32 = [v31 attachmentExceedsMaxSizeAllowed:v30];

        v25 |= v32;
        continue;
      }

      v33 = [v28 mediaURL];
      v93 = 0;
      v34 = [v33 getResourceValue:&v93 forKey:NSURLFileSizeKey error:0];
      v35 = v93;

      if (v34)
      {
        v30 = [v35 unsignedLongLongValue];

        if (v30)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v24 = [v22 countByEnumeratingWithState:&v94 objects:v98 count:16];
  }

  while (v24);
LABEL_31:

  v42 = 0;
  v41 = 0;
  v12 = v84;
LABEL_32:
  v45 = [(ICSEMainViewController *)self selectedFolder];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v48 = [(ICSEMainViewController *)self temporaryNewNote];
    v47 = [v48 folder];
  }

  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_100024BC8;
  v89[3] = &unk_1000F2CF8;
  v89[4] = self;
  v36 = v12;
  v90 = v36;
  v49 = v85;
  v91 = v49;
  v50 = v47;
  v92 = v50;
  v51 = objc_retainBlock(v89);
  v86 = v49;
  if (v42)
  {
    v52 = +[ICCloudConfiguration sharedConfiguration];
    v53 = [v52 maxAttachmentsPerNote];

    v54 = [(ICSEMainViewController *)self selectedNote];
    if (!v54 || (v55 = v54, -[ICSEMainViewController selectedNote](self, "selectedNote"), v56 = objc_claimAutoreleasedReturnValue(), v57 = [v56 visibleTopLevelAttachmentsCount], v56, v55, v57 < v53))
    {
      v58 = [(ICSEMainViewController *)self selectedNote];

      if (v58)
      {
        v59 = [(ICSEMainViewController *)self selectedNote];
        v53 -= [v59 visibleTopLevelAttachmentsCount];

        v60 = @"At most %lu more attachments can be added.";
      }

      else
      {
        v60 = @"At most %lu attachments can be added.";
      }

      v77 = +[NSBundle mainBundle];
      v78 = [v77 localizedStringForKey:v60 value:&stru_1000F6F48 table:0];
      v76 = [NSString localizedStringWithFormat:v78, v53];

      v62 = +[NSBundle mainBundle];
      v73 = [v62 localizedStringForKey:@"Too many attachments." value:&stru_1000F6F48 table:0];
      goto LABEL_54;
    }

    v61 = +[NSBundle mainBundle];
    v62 = v61;
    v63 = @"Maximum attachments reached.";
LABEL_51:
    v73 = [v61 localizedStringForKey:v63 value:&stru_1000F6F48 table:0];
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
    v65 = [v64 maximumAttachmentSizeMB];
    v66 = [v65 unsignedLongLongValue] << 20;

    v62 = [NSByteCountFormatter stringFromByteCount:v66 countStyle:3];
    v67 = [(ICSEMainViewController *)self attachments];
    v68 = [v67 count];

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

    v73 = [v69 localizedStringForKey:v71 value:&stru_1000F6F48 table:0];

    v74 = +[NSBundle mainBundle];
    v75 = [v74 localizedStringForKey:v72 value:&stru_1000F6F48 table:0];
    v76 = [NSString localizedStringWithFormat:v75, v62];

LABEL_54:
    if (v73)
    {
      v79 = [UIAlertController alertControllerWithTitle:v73 message:v76 preferredStyle:1];
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

  v73 = [(ICSEMainViewController *)self rootViewController];
  [v73 dismissWithCompletion:v51];
LABEL_58:

LABEL_59:
}

- (void)titleViewDidTap:(id)a3
{
  if (![(ICSEMainViewController *)self titleViewTapped])
  {
    v4 = [(ICSEMainViewController *)self rootViewController];
    v5 = [v4 tableViewController];
    v6 = [(ICSEMainViewController *)self selectedNote];
    [v5 pushFolderViewForNote:v6];

    [(ICSEMainViewController *)self setTitleViewTapped:1];
  }

  v7 = [(ICSEMainViewController *)self topTextView];
  [v7 resignFirstResponder];

  v8 = [(ICSEMainViewController *)self bottomTextView];
  [v8 resignFirstResponder];

  v9 = [(ICSEMainViewController *)self rootViewController];
  [v9 setIsShowingSearchResults:1 animated:1];
}

- (void)cancel:(id)a3
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
  v3 = [(ICSEMainViewController *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 deleteTemporaryImageFileIfNecessary];
        v9 = [v8 attachment];
        v10 = v9;
        if (v9)
        {
          [v9 purgeAttachmentPreviewImages];
          [ICAttachment purgeAttachment:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(ICSEMainViewController *)self setAttachments:0];
  v11 = +[ICNoteContext sharedContext];
  [v11 save];
}

- (void)dismissRootViewController
{
  v3 = [(ICSEMainViewController *)self rootViewController];
  [v3 setDidCancel:1];

  v4 = [(ICSEMainViewController *)self rootViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025304;
  v5[3] = &unk_1000F2390;
  v5[4] = self;
  [v4 dismissWithCompletion:v5];
}

- (void)textViewDidBeginEditing:(id)a3
{
  v6 = a3;
  v4 = [(ICSEMainViewController *)self topTextView];
  if (v4 == v6)
  {
    v5 = [(ICSEMainViewController *)self isShowingPlaceholderText];

    if (v5)
    {
      [(ICSEMainViewController *)self showPlaceholderText:0];
    }
  }

  else
  {
  }

  [(ICSEMainViewController *)self scrollTextToVisibleForTextView:v6];
  [v6 becomeFirstResponder];
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(ICSEMainViewController *)self topTextView];

  if (v5 == v4)
  {
    dispatchMainAfterDelay();
  }

  [v4 resignFirstResponder];
}

- (void)extensionHostDidBecomeActive:(id)a3
{
  if ([(ICSEMainViewController *)self shouldRetrieveLastSelectedNote])
  {
    v4 = +[ICSharingExtensionAttachmentsManager sharedManager];
    v6 = [v4 lastNoteSavedTo];

    v5 = [(ICSEMainViewController *)self selectedFolder];
    -[ICSEMainViewController setSelectionToNote:folder:prefersSystemPaper:](self, "setSelectionToNote:folder:prefersSystemPaper:", v6, v5, [v6 isSystemPaper]);
  }
}

- (void)scrollTextToVisibleForTextView:(id)a3
{
  v4 = a3;
  v26 = [v4 selectedTextRange];
  v5 = [v26 start];
  [v4 caretRectForPosition:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ICSEMainViewController *)self scrollView];
  [v14 convertRect:v4 fromView:{v7, v9, v11, v13}];
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
    v23 = [(ICSEMainViewController *)self scrollView];
    [v23 bounds];
    v30.origin.x = v16;
    v30.origin.y = v18;
    v30.size.width = v20;
    v30.size.height = v22;
    v24 = CGRectContainsRect(v29, v30);

    if (!v24)
    {
      v25 = [(ICSEMainViewController *)self scrollView];
      [v25 scrollRectToVisible:1 animated:{v16, v18, v20, v22}];
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
  v5 = [(ICSEMainViewController *)self attachments];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v5);
        }

        v2 = *(*(&v29 + 1) + 8 * i);
        v3 = [v2 attributedContentText];
        v10 = [v3 length];

        if (v10)
        {
          [(ICSEMainViewController *)self showPlaceholderText:0];
          v11 = [v2 attributedContentText];
          v2 = [v11 string];
          v3 = [(ICSEMainViewController *)self topTextView];
          [v3 setText:v2];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [(ICSEMainViewController *)self attachments];
  v13 = [v12 firstObject];

  v14 = [v13 attachment];

  if (v14)
  {
    [(ICSEMainViewController *)self setLayoutType:1];
    v15 = [v13 attachment];
    [(ICSEMainViewController *)self installBrickForAttachmentInfo:v13];
    v16 = [v15 attachmentModel];
    v17 = [v16 needToGeneratePreviews];

    if (v17)
    {
      v18 = dispatch_get_global_queue(0, 0);
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_100025B60;
      v26 = &unk_1000F23B8;
      v27 = v15;
      v28 = self;
      dispatch_async(v18, &v23);
    }

    goto LABEL_27;
  }

  v19 = [v13 attributedContentText];
  if (![v19 length])
  {

LABEL_18:
    v20 = [v13 mediaUTI];
    if (v20)
    {
      v2 = [v13 mediaUTI];
      v3 = [UTType typeWithIdentifier:v2];
      if ([v3 conformsToType:UTTypeImage])
      {
        goto LABEL_22;
      }
    }

    v21 = [v13 mediaUTI];
    if (([ICAttachment typeUTIIsPlayableMovie:v21]& 1) == 0)
    {
      v22 = [v13 image];

      if (v20)
      {
      }

      if (!v22)
      {
        [(ICSEMainViewController *)self setLayoutType:1];
        [(ICSEMainViewController *)self installBrickForAttachmentInfo:v13];
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (v20)
    {
LABEL_22:
    }

LABEL_26:
    [(ICSEMainViewController *)self setLayoutType:2];
    v15 = [(ICSEMainViewController *)self attachments];
    [(ICSEMainViewController *)self installImagesViewForAttachments:v15];
LABEL_27:

    goto LABEL_28;
  }

  v2 = [(ICSEMainViewController *)self attachments];
  v3 = [v2 count];

  if (v3 != 1)
  {
    goto LABEL_18;
  }

  [(ICSEMainViewController *)self setLayoutType:4];
LABEL_28:
  [(ICSEMainViewController *)self updateTitleFooter:v23];
}

- (void)installBrickForAttachmentInfo:(id)a3
{
  v35 = a3;
  v4 = [v35 mediaURL];
  if (v4)
  {
  }

  else
  {
    v5 = [v35 attachment];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [(ICSEMainViewController *)self brickContainer];
  v7 = [v6 subviews];
  [v7 makeObjectsPerformSelector:"removeFromSuperview"];

  +[ICAttachmentBrickView defaultBrickSize];
  v8 = [(ICSEMainViewController *)self brickContainer];
  [v8 bounds];

  v9 = [[ICAttachmentBrickView alloc] initWithType:3];
  [(ICSEMainViewController *)self setAttachmentBrickView:v9];

  v10 = [(ICSEMainViewController *)self attachmentBrickView];
  [v10 setShareExtensionAttachmentInfo:v35];

  v11 = [(ICSEMainViewController *)self attachmentBrickView];
  v12 = [(ICSEMainViewController *)self brickContainer];
  [v12 addSubview:v11];

  v13 = [v11 leadingAnchor];
  v14 = [(ICSEMainViewController *)self brickContainer];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [v11 topAnchor];
  v18 = [(ICSEMainViewController *)self brickContainer];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v11 bottomAnchor];
  v22 = [(ICSEMainViewController *)self brickContainer];
  v23 = [v22 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v24 setActive:1];

  v25 = [v11 widthAnchor];
  v26 = [(ICSEMainViewController *)self brickContainer];
  v27 = [v26 widthAnchor];
  v28 = [v25 constraintLessThanOrEqualToAnchor:v27 multiplier:1.0];

  LODWORD(v29) = 1148829696;
  [v28 setPriority:v29];
  [v28 setActive:1];
  v30 = [v11 trailingAnchor];
  v31 = [(ICSEMainViewController *)self brickContainer];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];

  LODWORD(v34) = 1148682240;
  [v33 setPriority:v34];
  [v33 setActive:1];
  [(ICSEMainViewController *)self updateBrickContainerHeightConstraint];

LABEL_5:
}

- (void)contentSizeCategoryChanged:(id)a3
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

  v4 = [(ICSEMainViewController *)self titleViewMinHeightConstraint];
  [v4 setConstant:v3];
}

- (void)updateBrickContainerHeightConstraint
{
  v6 = [(ICSEMainViewController *)self attachmentBrickView];
  [v6 computedSize];
  v4 = v3;
  v5 = [(ICSEMainViewController *)self brickContainerHeightConstraint];
  [v5 setConstant:v4];
}

- (void)setLayoutType:(unint64_t)a3
{
  if (self->_layoutType != a3)
  {
    self->_layoutType = a3;
    [(ICSEMainViewController *)self setUpForLayoutType:?];
  }
}

- (void)setUpForLayoutType:(unint64_t)a3
{
  if (a3 - 3 < 2)
  {
    v5 = 1;
    v6 = 64.0;
    v4 = 1;
  }

  else
  {
    if (a3 == 1)
    {
      v5 = 0;
      v4 = 1;
    }

    else
    {
      if (a3 == 2)
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
  v7 = [(ICSEMainViewController *)self topTextViewMinHeightConstraint];
  [v7 setConstant:v6];
}

- (void)setImageViewCollapsed:(BOOL)a3
{
  self->_imageViewCollapsed = a3;
  if (a3)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(ICSEMainViewController *)self imageCollapsibleZeroWidthConstraint];
  *&v6 = v4;
  [v5 setPriority:v6];

  imageViewCollapsed = self->_imageViewCollapsed;
  v8 = [(ICSEMainViewController *)self imagesView];
  [v8 setHidden:imageViewCollapsed];
}

- (void)setBrickViewCollapsed:(BOOL)a3
{
  self->_brickViewCollapsed = a3;
  if (a3)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(ICSEMainViewController *)self brickCollapsibleZeroHeightConstraint];
  *&v6 = v4;
  [v5 setPriority:v6];

  brickViewCollapsed = self->_brickViewCollapsed;
  v8 = [(ICSEMainViewController *)self brickContainer];
  [v8 setHidden:brickViewCollapsed];
}

- (void)setBottomTextViewCollapsed:(BOOL)a3
{
  self->_bottomTextViewCollapsed = a3;
  if (a3)
  {
    v4 = 999.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(ICSEMainViewController *)self bottomTextviewCollapsibleZeroHeightConstraint];
  *&v6 = v4;
  [v5 setPriority:v6];

  bottomTextViewCollapsed = self->_bottomTextViewCollapsed;
  v8 = [(ICSEMainViewController *)self bottomTextView];
  [v8 setHidden:bottomTextViewCollapsed];
}

- (ICSERootViewController)rootViewController
{
  v2 = [(ICSEMainViewController *)self containerViewController];
  v3 = [v2 rootViewController];

  return v3;
}

- (void)updateTextViewsForContentSizeChangeIfNecessary
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v4 = [v3 ic_fontWithSingleLineA];
  v5 = [(ICSEMainViewController *)self topTextView];
  [v5 setFont:v4];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v6 = [v8 ic_fontWithSingleLineA];
  v7 = [(ICSEMainViewController *)self bottomTextView];
  [v7 setFont:v6];
}

- (void)installImagesViewForAttachments:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000266E8;
  v7[3] = &unk_1000F23B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (double)consumedBottomAreaForResizer:(id)a3
{
  v3 = [(ICSEMainViewController *)self view];
  [v3 safeAreaInsets];
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