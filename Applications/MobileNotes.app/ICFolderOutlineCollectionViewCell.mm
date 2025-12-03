@interface ICFolderOutlineCollectionViewCell
+ (NSManagedObjectContext)legacyWorkerContext;
+ (NSManagedObjectContext)modernWorkerContext;
+ (OS_dispatch_queue)updateCountsQueue;
- (BOOL)allowsEditing;
- (BOOL)allowsReordering;
- (BOOL)isSmartFolder;
- (BOOL)shouldUseAccompaniedSidebarCellConfiguration;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICFolderOutlineCollectionViewCell)initWithFrame:(CGRect)frame;
- (ICNAViewController)presentingViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)createActionMenu;
- (unint64_t)accessibilityTraits;
- (void)onUnsupportedFolderInfoPressed:(id)pressed;
- (void)setNoteCollection:(id)collection;
- (void)setNoteContainer:(id)container;
- (void)setRecentlyCreated:(BOOL)created;
- (void)setVirtualSmartFolder:(id)folder;
- (void)updateAccessories;
- (void)updateAccessoriesUsingState:(id)state;
- (void)updateActionMenu;
- (void)updateBackgroundConfigurationUsingState:(id)state;
- (void)updateConfigurationUsingState:(id)state;
- (void)updateContentConfigurationUsingState:(id)state;
- (void)updateNoteCount;
- (void)updateSubfolderCount;
@end

@implementation ICFolderOutlineCollectionViewCell

- (ICFolderOutlineCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICFolderOutlineCollectionViewCell;
  v3 = [(ICFolderOutlineCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_showsNoteCount = 1;
    v3->_allowsExpandCollapse = 1;
    [(ICFolderOutlineCollectionViewCell *)v3 setAutomaticallyUpdatesContentConfiguration:0];
  }

  return v4;
}

- (void)setRecentlyCreated:(BOOL)created
{
  createdCopy = created;
  self->_recentlyCreated = created;
  [(ICFolderOutlineCollectionViewCell *)self setNeedsUpdateConfiguration];
  if (createdCopy)
  {
    dispatchMainAfterDelay();
  }
}

- (void)setNoteCollection:(id)collection
{
  collectionCopy = collection;
  objc_storeStrong(&self->_noteCollection, collection);
  if (collectionCopy)
  {
    noteContainer = self->_noteContainer;
    self->_noteContainer = 0;

    virtualSmartFolder = self->_virtualSmartFolder;
    self->_virtualSmartFolder = 0;
  }

  [(ICFolderOutlineCollectionViewCell *)self ic_annotateWithNoteCollection:collectionCopy];
  [(ICFolderOutlineCollectionViewCell *)self updateTextAndStatus];
  [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  [(ICFolderOutlineCollectionViewCell *)self updateNoteCount];
}

- (void)setNoteContainer:(id)container
{
  containerCopy = container;
  objc_storeStrong(&self->_noteContainer, container);
  if (containerCopy)
  {
    noteCollection = self->_noteCollection;
    self->_noteCollection = 0;

    virtualSmartFolder = self->_virtualSmartFolder;
    self->_virtualSmartFolder = 0;
  }

  [(ICFolderOutlineCollectionViewCell *)self ic_annotateWithNoteContainer:containerCopy];
  [(ICFolderOutlineCollectionViewCell *)self updateTextAndStatus];
  [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  [(ICFolderOutlineCollectionViewCell *)self updateNoteCount];
}

- (void)setVirtualSmartFolder:(id)folder
{
  folderCopy = folder;
  objc_storeStrong(&self->_virtualSmartFolder, folder);
  if (folderCopy)
  {
    noteCollection = self->_noteCollection;
    self->_noteCollection = 0;

    noteContainer = self->_noteContainer;
    self->_noteContainer = 0;
  }

  [(ICFolderOutlineCollectionViewCell *)self updateTextAndStatus];
  [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  [(ICFolderOutlineCollectionViewCell *)self updateNoteCount];
}

- (void)updateSubfolderCount
{
  updateCountsQueue = [objc_opt_class() updateCountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF0C4;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(updateCountsQueue, block);
}

- (void)updateNoteCount
{
  updateCountsQueue = [objc_opt_class() updateCountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF654;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(updateCountsQueue, block);
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (([stateCopy isReordering] & 1) == 0)
  {
    [(ICFolderOutlineCollectionViewCell *)self updateAccessoriesUsingState:stateCopy];
    [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  }

  [(ICFolderOutlineCollectionViewCell *)self updateContentConfigurationUsingState:stateCopy];
  [(ICFolderOutlineCollectionViewCell *)self updateBackgroundConfigurationUsingState:stateCopy];
}

- (void)updateAccessories
{
  configurationState = [(ICFolderOutlineCollectionViewCell *)self configurationState];
  [(ICFolderOutlineCollectionViewCell *)self updateAccessoriesUsingState:configurationState];
}

- (id)accessibilityLabel
{
  noteCollection = [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  if (noteCollection)
  {
    [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  }

  else
  {
    [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  }
  v4 = ;
  titleForTableViewCell = [v4 titleForTableViewCell];

  virtualSmartFolder = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
  title = [virtualSmartFolder title];

  isSmartFolder = [(ICFolderOutlineCollectionViewCell *)self isSmartFolder];
  v9 = @"Smart Folder";
  if (!isSmartFolder)
  {
    v9 = 0;
  }

  v10 = v9;
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  shareDescription = 0;
  if ([noteContainer isSharedViaICloud])
  {
    noteContainer2 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    shareDescription = [noteContainer2 shareDescription];
  }

  v14 = __ICAccessibilityStringForVariables();

  return v14;
}

- (id)accessibilityValue
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Subfolder of %@" value:&stru_100661CF0 table:0];

  objc_opt_class();
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v6 = ICDynamicCast();

  parent = [v6 parent];
  title = [parent title];

  if (title)
  {
    v9 = [NSString localizedStringWithFormat:v4, title];
  }

  else
  {
    v9 = 0;
  }

  if ([(ICFolderOutlineCollectionViewCell *)self showsNoteCount])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"ICAX_NUM_NOTES_%lu" value:&stru_100661CF0 table:0];

    noteCount = [(ICFolderOutlineCollectionViewCell *)self noteCount];
    v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v11, [noteCount unsignedIntValue]);
  }

  else
  {
    v13 = 0;
  }

  subfoldersCount = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
  unsignedIntValue = [subfoldersCount unsignedIntValue];

  if (unsignedIntValue)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"NUM_SUBFOLDERS_%lu" value:&stru_100661CF0 table:0];

    subfoldersCount2 = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
    v19 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v17, [subfoldersCount2 unsignedIntValue]);
  }

  else
  {
    v19 = 0;
  }

  v20 = __ICAccessibilityStringForVariables();

  return v20;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ICFolderOutlineCollectionViewCell;
  accessibilityTraits = [(ICFolderOutlineCollectionViewCell *)&v8 accessibilityTraits];
  isSelected = [(ICFolderOutlineCollectionViewCell *)self isSelected];
  v5 = UIAccessibilityTraitSelected;
  if (!isSelected)
  {
    v5 = 0;
  }

  v6 = v5 | accessibilityTraits;
  if (![(ICFolderOutlineCollectionViewCell *)self allowsEditing]&& [(ICFolderOutlineCollectionViewCell *)self isEditing])
  {
    v6 |= UIAccessibilityTraitNotEnabled;
  }

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  if ([(ICFolderOutlineCollectionViewCell *)self allowsEditing])
  {
    v5.receiver = self;
    v5.super_class = ICFolderOutlineCollectionViewCell;
    accessibilityDragSourceDescriptors = [(ICFolderOutlineCollectionViewCell *)&v5 accessibilityDragSourceDescriptors];
  }

  else
  {
    accessibilityDragSourceDescriptors = 0;
  }

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityCustomActions
{
  accessibilityCustomActionsDelegate = [(ICFolderOutlineCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    if (noteContainer)
    {
      [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    }

    else
    {
      [(ICFolderOutlineCollectionViewCell *)self noteCollection];
    }
    v7 = ;
    objectID = [v7 objectID];

    accessibilityCustomActionsDelegate2 = [(ICFolderOutlineCollectionViewCell *)self accessibilityCustomActionsDelegate];
    v6 = [accessibilityCustomActionsDelegate2 customAccessibilityActionsForObjectID:objectID galleryView:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (OS_dispatch_queue)updateCountsQueue
{
  if (qword_1006CB308 != -1)
  {
    sub_1004DEE74();
  }

  v3 = qword_1006CB310;

  return v3;
}

+ (NSManagedObjectContext)modernWorkerContext
{
  if (qword_1006CB318 != -1)
  {
    sub_1004DEE88();
  }

  v3 = qword_1006CB320;

  return v3;
}

+ (NSManagedObjectContext)legacyWorkerContext
{
  if (qword_1006CB328 != -1)
  {
    sub_1004DEE9C();
  }

  v3 = qword_1006CB338;

  return v3;
}

- (void)updateAccessoriesUsingState:(id)state
{
  stateCopy = state;
  v5 = +[NSMutableArray array];
  if ([(ICFolderOutlineCollectionViewCell *)self showsCheckmark])
  {
    v6 = objc_alloc_init(UICellAccessoryCheckmark);
    [v6 setDisplayedState:2];
    [v5 addObject:v6];
  }

  if (!-[ICFolderOutlineCollectionViewCell showsNoteCount](self, "showsNoteCount") || (ICAccessibilityAccessibilityLargerTextSizesEnabled() & 1) != 0 || (-[ICFolderOutlineCollectionViewCell noteContainer](self, "noteContainer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isUnsupported], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    noteCount = [(ICFolderOutlineCollectionViewCell *)self noteCount];
    if (noteCount)
    {
      noteCount2 = [(ICFolderOutlineCollectionViewCell *)self noteCount];
      v45 = [NSString localizedStringWithFormat:@"%@", noteCount2];
    }

    else
    {
      v45 = &stru_100661CF0;
    }

    v46 = [[UICellAccessoryLabel alloc] initWithText:v45];
    [v46 setDisplayedState:2];
    [v5 addObject:v46];

    v9 = 1;
  }

  if ([(ICFolderOutlineCollectionViewCell *)self allowsExpandCollapse])
  {
    subfoldersCount = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
    if ([subfoldersCount unsignedIntValue])
    {
      noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      isUnsupported = [noteContainer isUnsupported];

      if ((isUnsupported & 1) == 0)
      {
        v13 = objc_alloc_init(UICellAccessoryOutlineDisclosure);
        [v13 setStyle:2];
        v14 = v13;
LABEL_15:
        [v14 setDisplayedState:2];
LABEL_19:
        [v5 addObject:v13];

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if ([(ICFolderOutlineCollectionViewCell *)self hasDisclosureIndicator])
  {
    noteContainer2 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    isUnsupported2 = [noteContainer2 isUnsupported];

    if (isUnsupported2)
    {
      goto LABEL_20;
    }

    v14 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    v13 = v14;
    goto LABEL_15;
  }

  if (v9 && [(ICFolderOutlineCollectionViewCell *)self shouldIndentNoteCount])
  {
    v17 = [UICellAccessoryCustomView alloc];
    v18 = objc_opt_new();
    v13 = [v17 initWithCustomView:v18 placement:1];

    [v13 setDisplayedState:2];
    v19 = objc_opt_class();
    v20 = UICellAccessoryPositionAfterAccessoryOfClass(v19);
    [v13 setPosition:v20];

    [v13 setReservedLayoutWidth:UICellAccessoryStandardDimensionDisclosure];
    goto LABEL_19;
  }

LABEL_20:
  noteContainer3 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  if ([noteContainer3 isUnsupported])
  {
    unsupportedFolderInfoButtonTapHandler = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];

    if (!unsupportedFolderInfoButtonTapHandler)
    {
      goto LABEL_26;
    }

    unsupportedFolderButton = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderButton];

    if (!unsupportedFolderButton)
    {
      v24 = +[UIButtonConfiguration plainButtonConfiguration];
      v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      v26 = [UIImageSymbolConfiguration configurationWithFont:v25];

      v27 = [UIImage systemImageNamed:@"info.circle" withConfiguration:v26];
      [v24 setImage:v27];

      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@"Unsupported Folder Info" value:&stru_100661CF0 table:0];
      [v24 setAccessibilityLabel:v29];

      objc_initWeak(&location, self);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000D0C08;
      v57[3] = &unk_100647A30;
      objc_copyWeak(&v58, &location);
      v30 = [UIAction actionWithHandler:v57];
      v31 = [UIButton buttonWithConfiguration:v24 primaryAction:v30];
      [(ICFolderOutlineCollectionViewCell *)self setUnsupportedFolderButton:v31];

      objc_destroyWeak(&v58);
      objc_destroyWeak(&location);
    }

    v32 = [UICellAccessoryCustomView alloc];
    unsupportedFolderButton2 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderButton];
    noteContainer3 = [v32 initWithCustomView:unsupportedFolderButton2 placement:1];

    [noteContainer3 setDisplayedState:2];
    [v5 addObject:noteContainer3];
  }

LABEL_26:
  if ([(ICFolderOutlineCollectionViewCell *)self allowsReordering])
  {
    v34 = objc_alloc_init(UICellAccessoryReorder);
    [v34 setDisplayedState:1];
    [v5 addObject:v34];
  }

  if ([(ICFolderOutlineCollectionViewCell *)self allowsEditing])
  {
    noteContainer4 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    if ([noteContainer4 isUnsupported])
    {
LABEL_41:

      goto LABEL_42;
    }

    isEditing = [(ICFolderOutlineCollectionViewCell *)self isEditing];

    if (isEditing)
    {
      v37 = [UIFont ic_preferredFontForBodyTextWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      noteContainer4 = [UIImageSymbolConfiguration configurationWithFont:v37];

      v38 = [UIImage systemImageNamed:@"ellipsis.circle" withConfiguration:noteContainer4];
      actionButton = [(ICFolderOutlineCollectionViewCell *)self actionButton];

      if (actionButton)
      {
        actionButton2 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        configuration = [actionButton2 configuration];

        [configuration setImage:v38];
        actionButton3 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        [actionButton3 setConfiguration:configuration];
      }

      else
      {
        configuration = +[UIButtonConfiguration plainButtonConfiguration];
        [configuration setImage:v38];
        [configuration setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
        v47 = +[NSBundle mainBundle];
        v48 = [v47 localizedStringForKey:@"Folder Actions" value:&stru_100661CF0 table:0];
        [configuration setAccessibilityLabel:v48];

        v49 = [UIButton buttonWithConfiguration:configuration primaryAction:0];
        [(ICFolderOutlineCollectionViewCell *)self setActionButton:v49];

        actionButton3 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        [actionButton3 setShowsMenuAsPrimaryAction:1];
      }

      [(ICFolderOutlineCollectionViewCell *)self updateActionMenu];
      v50 = +[NSUserDefaults standardUserDefaults];
      v51 = [v50 BOOLForKey:@"ICDisableWorkaroundFor156158984"];

      if ((v51 & 1) == 0)
      {
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000D0C68;
        v56[3] = &unk_100645E30;
        v56[4] = self;
        [UIView performWithoutAnimation:v56];
      }

      v52 = [UICellAccessoryCustomView alloc];
      actionButton4 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
      v54 = [v52 initWithCustomView:actionButton4 placement:1];

      [v54 setDisplayedState:1];
      [v54 setMaintainsFixedSize:v51 ^ 1];
      [v5 addObject:v54];

      goto LABEL_41;
    }
  }

LABEL_42:
  v55 = [v5 copy];
  [(ICFolderOutlineCollectionViewCell *)self setAccessories:v55];
}

- (id)createActionMenu
{
  ic_viewControllerManager = [(ICFolderOutlineCollectionViewCell *)self ic_viewControllerManager];
  presentingViewController = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];

  if (presentingViewController)
  {
    noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];

    if (noteContainer)
    {
      noteContainer2 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      presentingViewController2 = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];
      v8 = [(ICNoteContainerActionMenu *)ICFolderListActionMenu menuWithNoteContainer:noteContainer2 presentingViewController:presentingViewController2 presentingBarButtonItem:0 viewControllerManager:ic_viewControllerManager completion:0];
LABEL_6:
      v10 = v8;

      goto LABEL_8;
    }

    virtualSmartFolder = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];

    if (virtualSmartFolder)
    {
      noteContainer2 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
      presentingViewController2 = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];
      v8 = [(ICNoteContainerActionMenu *)ICFolderListActionMenu menuWithVirtualSmartFolder:noteContainer2 presentingViewController:presentingViewController2 presentingBarButtonItem:0 viewControllerManager:ic_viewControllerManager completion:0];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)updateActionMenu
{
  createActionMenu = [(ICFolderOutlineCollectionViewCell *)self createActionMenu];
  actionButton = [(ICFolderOutlineCollectionViewCell *)self actionButton];
  [actionButton setMenu:createActionMenu];
}

- (void)onUnsupportedFolderInfoPressed:(id)pressed
{
  pressedCopy = pressed;
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  if (noteContainer)
  {
    [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  }

  else
  {
    [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  }
  v5 = ;
  objectID = [v5 objectID];

  unsupportedFolderInfoButtonTapHandler = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];

  if (unsupportedFolderInfoButtonTapHandler)
  {
    unsupportedFolderInfoButtonTapHandler2 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];
    (unsupportedFolderInfoButtonTapHandler2)[2](unsupportedFolderInfoButtonTapHandler2, objectID, pressedCopy);
  }
}

- (BOOL)allowsEditing
{
  objc_opt_class();
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v4 = ICDynamicCast();

  if (!v4)
  {
    goto LABEL_7;
  }

  LOBYTE(v5) = 0;
  folderType = [v4 folderType];
  if (folderType <= 1)
  {
    if (!folderType)
    {
      v5 = [v4 isDefaultFolderForAccount] ^ 1;
    }

    goto LABEL_8;
  }

  if (folderType == 2)
  {
    LOBYTE(v5) = 1;
    goto LABEL_8;
  }

  if (folderType != 3)
  {
LABEL_7:
    virtualSmartFolder = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];

    LOBYTE(v5) = virtualSmartFolder != 0;
  }

LABEL_8:

  return v5;
}

- (BOOL)isSmartFolder
{
  objc_opt_class();
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v4 = ICDynamicCast();

  if (v4)
  {
    v5 = [v4 folderType] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowsReordering
{
  objc_opt_class();
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v4 = ICDynamicCast();

  if (v4 && [(ICFolderOutlineCollectionViewCell *)self allowsEditing])
  {
    isMovable = [v4 isMovable];
  }

  else
  {
    isMovable = 0;
  }

  return isMovable;
}

- (BOOL)shouldUseAccompaniedSidebarCellConfiguration
{
  traitCollection = [(ICFolderOutlineCollectionViewCell *)self traitCollection];
  v3 = [traitCollection _splitViewControllerContext] == 2;

  return v3;
}

- (void)updateContentConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(ICFolderOutlineCollectionViewCell *)self hasGroupInset])
  {
    v4 = +[UIListContentConfiguration subtitleCellConfiguration];
    v5 = +[UIColor secondaryLabelColor];
    secondaryTextProperties = [v4 secondaryTextProperties];
    [secondaryTextProperties setColor:v5];
  }

  else
  {
    if ([(ICFolderOutlineCollectionViewCell *)self shouldUseAccompaniedSidebarCellConfiguration])
    {
      +[UIListContentConfiguration accompaniedSidebarSubtitleCellConfiguration];
    }

    else
    {
      +[UIListContentConfiguration sidebarSubtitleCellConfiguration];
    }
    v4 = ;
  }

  if (+[UIDevice ic_isVision](UIDevice, "ic_isVision") && [stateCopy cellDropState] == 2)
  {
    [stateCopy setCellDropState:1];
  }

  if (-[ICFolderOutlineCollectionViewCell forceDisabledAppearance](self, "forceDisabledAppearance") || [stateCopy isEditing] && !-[ICFolderOutlineCollectionViewCell allowsEditing](self, "allowsEditing") || (-[ICFolderOutlineCollectionViewCell noteContainer](self, "noteContainer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isUnsupported"), v7, v8))
  {
    [stateCopy setDisabled:1];
    accessibilityTraits = [(ICFolderOutlineCollectionViewCell *)self accessibilityTraits];
    [(ICFolderOutlineCollectionViewCell *)self setAccessibilityTraits:UIAccessibilityTraitNotEnabled | accessibilityTraits];
  }

  [v4 setTextToSecondaryTextHorizontalPadding:0.0];
  [v4 setTextToSecondaryTextVerticalPadding:0.0];
  v10 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
  noteContainer = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  titleForTableViewCell = [noteContainer titleForTableViewCell];
  v13 = titleForTableViewCell;
  if (titleForTableViewCell)
  {
    title = titleForTableViewCell;
  }

  else
  {
    noteCollection = [(ICFolderOutlineCollectionViewCell *)self noteCollection];
    titleForTableViewCell2 = [noteCollection titleForTableViewCell];
    v17 = titleForTableViewCell2;
    if (titleForTableViewCell2)
    {
      title = titleForTableViewCell2;
    }

    else
    {
      virtualSmartFolder = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
      title = [virtualSmartFolder title];
    }
  }

  [v4 setText:title];
  v19 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleBody];
  textProperties = [v4 textProperties];
  [textProperties setFont:v19];

  textProperties2 = [v4 textProperties];
  [textProperties2 setNumberOfLines:v10];

  noteContainer2 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  LODWORD(textProperties) = [noteContainer2 isSharedRootObject];

  if (textProperties)
  {
    noteContainer3 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    shareDescription = [noteContainer3 shareDescription];
  }

  else
  {
    shareDescription = 0;
  }

  if (![(ICFolderOutlineCollectionViewCell *)self showsNoteCount]|| !ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
LABEL_28:
    if (!shareDescription)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  noteCount = [(ICFolderOutlineCollectionViewCell *)self noteCount];
  v26 = noteCount;
  if (shareDescription)
  {
    v27 = [(__CFString *)shareDescription stringByAppendingFormat:@"\n%@", noteCount];

    shareDescription = v27;
    goto LABEL_28;
  }

  stringValue = [noteCount stringValue];
  v42 = stringValue;
  v43 = @" ";
  if (stringValue)
  {
    v43 = stringValue;
  }

  shareDescription = v43;

LABEL_29:
  [v4 setSecondaryText:shareDescription];
  v28 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleCaption1];
  secondaryTextProperties2 = [v4 secondaryTextProperties];
  [secondaryTextProperties2 setFont:v28];

  secondaryTextProperties3 = [v4 secondaryTextProperties];
  [secondaryTextProperties3 setNumberOfLines:v10];

  secondaryTextProperties4 = [v4 secondaryTextProperties];
  [secondaryTextProperties4 setAdjustsFontSizeToFitWidth:0];

LABEL_30:
  if ((ICAccessibilityAccessibilityLargerTextSizesEnabled() & 1) == 0)
  {
    virtualSmartFolder2 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
    systemImageName = [virtualSmartFolder2 systemImageName];
    v34 = systemImageName;
    if (systemImageName)
    {
      v35 = systemImageName;
    }

    else
    {
      objc_opt_class();
      noteContainer4 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      v37 = ICDynamicCast();
      systemImageName2 = [v37 systemImageName];
      v39 = systemImageName2;
      if (systemImageName2)
      {
        v40 = systemImageName2;
      }

      else
      {
        v40 = +[ICFolder defaultSystemImageName];
      }

      v35 = v40;
    }

    v44 = [UIImage ic_systemImageNamed:v35];
    [v4 setImage:v44];
  }

  if (+[UIDevice ic_isVision])
  {
    traitCollection = [(ICFolderOutlineCollectionViewCell *)self traitCollection];
    userInterfaceLevel = [traitCollection userInterfaceLevel];

    if (userInterfaceLevel == 1)
    {
      if ([stateCopy isDisabled])
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v47 = ;
      textProperties3 = [v4 textProperties];
      [textProperties3 setColor:v47];

      if ([stateCopy isDisabled])
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v49 = ;
      imageProperties = [v4 imageProperties];
      [imageProperties setTintColor:v49];
    }
  }

  v51 = [v4 updatedConfigurationForState:stateCopy];
  [(ICFolderOutlineCollectionViewCell *)self setContentConfiguration:v51];
}

- (void)updateBackgroundConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(ICFolderOutlineCollectionViewCell *)self hasGroupInset])
  {
    v4 = +[UIBackgroundConfiguration _listInsetGroupedCellConfiguration];
  }

  else
  {
    if ([(ICFolderOutlineCollectionViewCell *)self shouldUseAccompaniedSidebarCellConfiguration])
    {
      +[UIBackgroundConfiguration listAccompaniedSidebarCellConfiguration];
    }

    else
    {
      +[UIBackgroundConfiguration listSidebarCellConfiguration];
    }
    v4 = ;
  }

  v5 = v4;
  if (-[ICFolderOutlineCollectionViewCell isRecentlyCreated](self, "isRecentlyCreated") && ([stateCopy isSelected] & 1) == 0)
  {
    [stateCopy setSwiped:1];
    v6 = +[UIBackgroundConfiguration listSidebarCellConfiguration];
    v7 = [v6 updatedConfigurationForState:stateCopy];
    backgroundColor = [v7 backgroundColor];
    [v5 setBackgroundColor:backgroundColor];
  }

  else
  {
    [v5 updatedConfigurationForState:stateCopy];
    v5 = v6 = v5;
  }

  [(ICFolderOutlineCollectionViewCell *)self setBackgroundConfiguration:v5];
}

- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityCustomActionsDelegate);

  return WeakRetained;
}

- (ICNAViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end