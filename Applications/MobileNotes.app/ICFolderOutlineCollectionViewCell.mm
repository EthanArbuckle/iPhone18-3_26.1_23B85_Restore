@interface ICFolderOutlineCollectionViewCell
+ (NSManagedObjectContext)legacyWorkerContext;
+ (NSManagedObjectContext)modernWorkerContext;
+ (OS_dispatch_queue)updateCountsQueue;
- (BOOL)allowsEditing;
- (BOOL)allowsReordering;
- (BOOL)isSmartFolder;
- (BOOL)shouldUseAccompaniedSidebarCellConfiguration;
- (ICAccessibilityCustomActionsDelegate)accessibilityCustomActionsDelegate;
- (ICFolderOutlineCollectionViewCell)initWithFrame:(CGRect)a3;
- (ICNAViewController)presentingViewController;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)createActionMenu;
- (unint64_t)accessibilityTraits;
- (void)onUnsupportedFolderInfoPressed:(id)a3;
- (void)setNoteCollection:(id)a3;
- (void)setNoteContainer:(id)a3;
- (void)setRecentlyCreated:(BOOL)a3;
- (void)setVirtualSmartFolder:(id)a3;
- (void)updateAccessories;
- (void)updateAccessoriesUsingState:(id)a3;
- (void)updateActionMenu;
- (void)updateBackgroundConfigurationUsingState:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
- (void)updateContentConfigurationUsingState:(id)a3;
- (void)updateNoteCount;
- (void)updateSubfolderCount;
@end

@implementation ICFolderOutlineCollectionViewCell

- (ICFolderOutlineCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICFolderOutlineCollectionViewCell;
  v3 = [(ICFolderOutlineCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_showsNoteCount = 1;
    v3->_allowsExpandCollapse = 1;
    [(ICFolderOutlineCollectionViewCell *)v3 setAutomaticallyUpdatesContentConfiguration:0];
  }

  return v4;
}

- (void)setRecentlyCreated:(BOOL)a3
{
  v3 = a3;
  self->_recentlyCreated = a3;
  [(ICFolderOutlineCollectionViewCell *)self setNeedsUpdateConfiguration];
  if (v3)
  {
    dispatchMainAfterDelay();
  }
}

- (void)setNoteCollection:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_noteCollection, a3);
  if (v7)
  {
    noteContainer = self->_noteContainer;
    self->_noteContainer = 0;

    virtualSmartFolder = self->_virtualSmartFolder;
    self->_virtualSmartFolder = 0;
  }

  [(ICFolderOutlineCollectionViewCell *)self ic_annotateWithNoteCollection:v7];
  [(ICFolderOutlineCollectionViewCell *)self updateTextAndStatus];
  [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  [(ICFolderOutlineCollectionViewCell *)self updateNoteCount];
}

- (void)setNoteContainer:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_noteContainer, a3);
  if (v7)
  {
    noteCollection = self->_noteCollection;
    self->_noteCollection = 0;

    virtualSmartFolder = self->_virtualSmartFolder;
    self->_virtualSmartFolder = 0;
  }

  [(ICFolderOutlineCollectionViewCell *)self ic_annotateWithNoteContainer:v7];
  [(ICFolderOutlineCollectionViewCell *)self updateTextAndStatus];
  [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  [(ICFolderOutlineCollectionViewCell *)self updateNoteCount];
}

- (void)setVirtualSmartFolder:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_virtualSmartFolder, a3);
  if (v7)
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
  v3 = [objc_opt_class() updateCountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF0C4;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateNoteCount
{
  v3 = [objc_opt_class() updateCountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF654;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  if (([v4 isReordering] & 1) == 0)
  {
    [(ICFolderOutlineCollectionViewCell *)self updateAccessoriesUsingState:v4];
    [(ICFolderOutlineCollectionViewCell *)self updateSubfolderCount];
  }

  [(ICFolderOutlineCollectionViewCell *)self updateContentConfigurationUsingState:v4];
  [(ICFolderOutlineCollectionViewCell *)self updateBackgroundConfigurationUsingState:v4];
}

- (void)updateAccessories
{
  v3 = [(ICFolderOutlineCollectionViewCell *)self configurationState];
  [(ICFolderOutlineCollectionViewCell *)self updateAccessoriesUsingState:v3];
}

- (id)accessibilityLabel
{
  v3 = [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  if (v3)
  {
    [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  }

  else
  {
    [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  }
  v4 = ;
  v5 = [v4 titleForTableViewCell];

  v6 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
  v7 = [v6 title];

  v8 = [(ICFolderOutlineCollectionViewCell *)self isSmartFolder];
  v9 = @"Smart Folder";
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v12 = 0;
  if ([v11 isSharedViaICloud])
  {
    v13 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    v12 = [v13 shareDescription];
  }

  v14 = __ICAccessibilityStringForVariables();

  return v14;
}

- (id)accessibilityValue
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Subfolder of %@" value:&stru_100661CF0 table:0];

  objc_opt_class();
  v5 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v6 = ICDynamicCast();

  v7 = [v6 parent];
  v8 = [v7 title];

  if (v8)
  {
    v9 = [NSString localizedStringWithFormat:v4, v8];
  }

  else
  {
    v9 = 0;
  }

  if ([(ICFolderOutlineCollectionViewCell *)self showsNoteCount])
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"ICAX_NUM_NOTES_%lu" value:&stru_100661CF0 table:0];

    v12 = [(ICFolderOutlineCollectionViewCell *)self noteCount];
    v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v11, [v12 unsignedIntValue]);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
  v15 = [v14 unsignedIntValue];

  if (v15)
  {
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"NUM_SUBFOLDERS_%lu" value:&stru_100661CF0 table:0];

    v18 = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
    v19 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v17, [v18 unsignedIntValue]);
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
  v3 = [(ICFolderOutlineCollectionViewCell *)&v8 accessibilityTraits];
  v4 = [(ICFolderOutlineCollectionViewCell *)self isSelected];
  v5 = UIAccessibilityTraitSelected;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
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
    v3 = [(ICFolderOutlineCollectionViewCell *)&v5 accessibilityDragSourceDescriptors];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [(ICFolderOutlineCollectionViewCell *)self accessibilityCustomActionsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    if (v5)
    {
      [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    }

    else
    {
      [(ICFolderOutlineCollectionViewCell *)self noteCollection];
    }
    v7 = ;
    v8 = [v7 objectID];

    v9 = [(ICFolderOutlineCollectionViewCell *)self accessibilityCustomActionsDelegate];
    v6 = [v9 customAccessibilityActionsForObjectID:v8 galleryView:0];
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

- (void)updateAccessoriesUsingState:(id)a3
{
  v4 = a3;
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
    v43 = [(ICFolderOutlineCollectionViewCell *)self noteCount];
    if (v43)
    {
      v44 = [(ICFolderOutlineCollectionViewCell *)self noteCount];
      v45 = [NSString localizedStringWithFormat:@"%@", v44];
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
    v10 = [(ICFolderOutlineCollectionViewCell *)self subfoldersCount];
    if ([v10 unsignedIntValue])
    {
      v11 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      v12 = [v11 isUnsupported];

      if ((v12 & 1) == 0)
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
    v15 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    v16 = [v15 isUnsupported];

    if (v16)
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
  v21 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  if ([v21 isUnsupported])
  {
    v22 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];

    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderButton];

    if (!v23)
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
    v33 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderButton];
    v21 = [v32 initWithCustomView:v33 placement:1];

    [v21 setDisplayedState:2];
    [v5 addObject:v21];
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
    v35 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    if ([v35 isUnsupported])
    {
LABEL_41:

      goto LABEL_42;
    }

    v36 = [(ICFolderOutlineCollectionViewCell *)self isEditing];

    if (v36)
    {
      v37 = [UIFont ic_preferredFontForBodyTextWithMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      v35 = [UIImageSymbolConfiguration configurationWithFont:v37];

      v38 = [UIImage systemImageNamed:@"ellipsis.circle" withConfiguration:v35];
      v39 = [(ICFolderOutlineCollectionViewCell *)self actionButton];

      if (v39)
      {
        v40 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        v41 = [v40 configuration];

        [v41 setImage:v38];
        v42 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        [v42 setConfiguration:v41];
      }

      else
      {
        v41 = +[UIButtonConfiguration plainButtonConfiguration];
        [v41 setImage:v38];
        [v41 setContentInsets:{NSDirectionalEdgeInsetsZero.top, NSDirectionalEdgeInsetsZero.leading, NSDirectionalEdgeInsetsZero.bottom, NSDirectionalEdgeInsetsZero.trailing}];
        v47 = +[NSBundle mainBundle];
        v48 = [v47 localizedStringForKey:@"Folder Actions" value:&stru_100661CF0 table:0];
        [v41 setAccessibilityLabel:v48];

        v49 = [UIButton buttonWithConfiguration:v41 primaryAction:0];
        [(ICFolderOutlineCollectionViewCell *)self setActionButton:v49];

        v42 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
        [v42 setShowsMenuAsPrimaryAction:1];
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
      v53 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
      v54 = [v52 initWithCustomView:v53 placement:1];

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
  v3 = [(ICFolderOutlineCollectionViewCell *)self ic_viewControllerManager];
  v4 = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];

  if (v4)
  {
    v5 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];

    if (v5)
    {
      v6 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      v7 = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];
      v8 = [(ICNoteContainerActionMenu *)ICFolderListActionMenu menuWithNoteContainer:v6 presentingViewController:v7 presentingBarButtonItem:0 viewControllerManager:v3 completion:0];
LABEL_6:
      v10 = v8;

      goto LABEL_8;
    }

    v9 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];

    if (v9)
    {
      v6 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
      v7 = [(ICFolderOutlineCollectionViewCell *)self presentingViewController];
      v8 = [(ICNoteContainerActionMenu *)ICFolderListActionMenu menuWithVirtualSmartFolder:v6 presentingViewController:v7 presentingBarButtonItem:0 viewControllerManager:v3 completion:0];
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)updateActionMenu
{
  v4 = [(ICFolderOutlineCollectionViewCell *)self createActionMenu];
  v3 = [(ICFolderOutlineCollectionViewCell *)self actionButton];
  [v3 setMenu:v4];
}

- (void)onUnsupportedFolderInfoPressed:(id)a3
{
  v9 = a3;
  v4 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  if (v4)
  {
    [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  }

  else
  {
    [(ICFolderOutlineCollectionViewCell *)self noteCollection];
  }
  v5 = ;
  v6 = [v5 objectID];

  v7 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];

  if (v7)
  {
    v8 = [(ICFolderOutlineCollectionViewCell *)self unsupportedFolderInfoButtonTapHandler];
    (v8)[2](v8, v6, v9);
  }
}

- (BOOL)allowsEditing
{
  objc_opt_class();
  v3 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v4 = ICDynamicCast();

  if (!v4)
  {
    goto LABEL_7;
  }

  LOBYTE(v5) = 0;
  v6 = [v4 folderType];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v5 = [v4 isDefaultFolderForAccount] ^ 1;
    }

    goto LABEL_8;
  }

  if (v6 == 2)
  {
    LOBYTE(v5) = 1;
    goto LABEL_8;
  }

  if (v6 != 3)
  {
LABEL_7:
    v7 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];

    LOBYTE(v5) = v7 != 0;
  }

LABEL_8:

  return v5;
}

- (BOOL)isSmartFolder
{
  objc_opt_class();
  v3 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
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
  v3 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v4 = ICDynamicCast();

  if (v4 && [(ICFolderOutlineCollectionViewCell *)self allowsEditing])
  {
    v5 = [v4 isMovable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldUseAccompaniedSidebarCellConfiguration
{
  v2 = [(ICFolderOutlineCollectionViewCell *)self traitCollection];
  v3 = [v2 _splitViewControllerContext] == 2;

  return v3;
}

- (void)updateContentConfigurationUsingState:(id)a3
{
  v52 = a3;
  if ([(ICFolderOutlineCollectionViewCell *)self hasGroupInset])
  {
    v4 = +[UIListContentConfiguration subtitleCellConfiguration];
    v5 = +[UIColor secondaryLabelColor];
    v6 = [v4 secondaryTextProperties];
    [v6 setColor:v5];
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

  if (+[UIDevice ic_isVision](UIDevice, "ic_isVision") && [v52 cellDropState] == 2)
  {
    [v52 setCellDropState:1];
  }

  if (-[ICFolderOutlineCollectionViewCell forceDisabledAppearance](self, "forceDisabledAppearance") || [v52 isEditing] && !-[ICFolderOutlineCollectionViewCell allowsEditing](self, "allowsEditing") || (-[ICFolderOutlineCollectionViewCell noteContainer](self, "noteContainer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isUnsupported"), v7, v8))
  {
    [v52 setDisabled:1];
    v9 = [(ICFolderOutlineCollectionViewCell *)self accessibilityTraits];
    [(ICFolderOutlineCollectionViewCell *)self setAccessibilityTraits:UIAccessibilityTraitNotEnabled | v9];
  }

  [v4 setTextToSecondaryTextHorizontalPadding:0.0];
  [v4 setTextToSecondaryTextVerticalPadding:0.0];
  v10 = ICAccessibilityAccessibilityLargerTextSizesEnabled() ^ 1;
  v11 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  v12 = [v11 titleForTableViewCell];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [(ICFolderOutlineCollectionViewCell *)self noteCollection];
    v16 = [v15 titleForTableViewCell];
    v17 = v16;
    if (v16)
    {
      v14 = v16;
    }

    else
    {
      v18 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
      v14 = [v18 title];
    }
  }

  [v4 setText:v14];
  v19 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleBody];
  v20 = [v4 textProperties];
  [v20 setFont:v19];

  v21 = [v4 textProperties];
  [v21 setNumberOfLines:v10];

  v22 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
  LODWORD(v20) = [v22 isSharedRootObject];

  if (v20)
  {
    v23 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
    v24 = [v23 shareDescription];
  }

  else
  {
    v24 = 0;
  }

  if (![(ICFolderOutlineCollectionViewCell *)self showsNoteCount]|| !ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
LABEL_28:
    if (!v24)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v25 = [(ICFolderOutlineCollectionViewCell *)self noteCount];
  v26 = v25;
  if (v24)
  {
    v27 = [(__CFString *)v24 stringByAppendingFormat:@"\n%@", v25];

    v24 = v27;
    goto LABEL_28;
  }

  v41 = [v25 stringValue];
  v42 = v41;
  v43 = @" ";
  if (v41)
  {
    v43 = v41;
  }

  v24 = v43;

LABEL_29:
  [v4 setSecondaryText:v24];
  v28 = [UIFont ic_preferredSingleLineAFontForTextStyle:UIFontTextStyleCaption1];
  v29 = [v4 secondaryTextProperties];
  [v29 setFont:v28];

  v30 = [v4 secondaryTextProperties];
  [v30 setNumberOfLines:v10];

  v31 = [v4 secondaryTextProperties];
  [v31 setAdjustsFontSizeToFitWidth:0];

LABEL_30:
  if ((ICAccessibilityAccessibilityLargerTextSizesEnabled() & 1) == 0)
  {
    v32 = [(ICFolderOutlineCollectionViewCell *)self virtualSmartFolder];
    v33 = [v32 systemImageName];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      objc_opt_class();
      v36 = [(ICFolderOutlineCollectionViewCell *)self noteContainer];
      v37 = ICDynamicCast();
      v38 = [v37 systemImageName];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
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
    v45 = [(ICFolderOutlineCollectionViewCell *)self traitCollection];
    v46 = [v45 userInterfaceLevel];

    if (v46 == 1)
    {
      if ([v52 isDisabled])
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v47 = ;
      v48 = [v4 textProperties];
      [v48 setColor:v47];

      if ([v52 isDisabled])
      {
        +[UIColor secondaryLabelColor];
      }

      else
      {
        +[UIColor labelColor];
      }
      v49 = ;
      v50 = [v4 imageProperties];
      [v50 setTintColor:v49];
    }
  }

  v51 = [v4 updatedConfigurationForState:v52];
  [(ICFolderOutlineCollectionViewCell *)self setContentConfiguration:v51];
}

- (void)updateBackgroundConfigurationUsingState:(id)a3
{
  v9 = a3;
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
  if (-[ICFolderOutlineCollectionViewCell isRecentlyCreated](self, "isRecentlyCreated") && ([v9 isSelected] & 1) == 0)
  {
    [v9 setSwiped:1];
    v6 = +[UIBackgroundConfiguration listSidebarCellConfiguration];
    v7 = [v6 updatedConfigurationForState:v9];
    v8 = [v7 backgroundColor];
    [v5 setBackgroundColor:v8];
  }

  else
  {
    [v5 updatedConfigurationForState:v9];
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