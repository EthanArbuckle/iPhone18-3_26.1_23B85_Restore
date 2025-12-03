@interface MailboxTableCell
+ (double)defaultRowHeight;
+ (double)twoLineTopBottomPadding;
+ (id)log;
+ (id)subtitleFont;
+ (id)titleFont;
+ (void)invalidateCachedLayoutInformation;
- (BOOL)_shouldUnreadCountBeVisible;
- (BOOL)isCellEnabled;
- (CGPoint)destinationPointForAnimation;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MailboxTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIImageView)expansionAccessoryImageView;
- (UIImageView)expansionEditingAccessoryImageView;
- (id)_countQueryLabelForMailbox:(id)mailbox;
- (id)_createMailboxesFromUids:(id)uids;
- (id)_expansionAccessoryImageView;
- (id)_scriptingInfo;
- (void)_doCleanupExpansionAccessoryViews;
- (void)_doRefreshExpansionAccessoryImageView;
- (void)_preferredContentSizeCategoryDidChange:(id)change;
- (void)_removeUnreadCount;
- (void)_resetDebouncer;
- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)_setUnreadCount:(unint64_t)count;
- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read;
- (void)_updateContentSizeSettings;
- (void)_updateMailboxName;
- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)animated;
- (void)_updateViewConfigurationsWithState:(unint64_t)state;
- (void)dealloc;
- (void)layoutSubviews;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)prepareForReuse;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setDetailsDisclosureButton:(id)button;
- (void)setDisabledForEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExpandable:(BOOL)expandable;
- (void)setExpanded:(BOOL)expanded;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIcon:(id)icon withOffset:(CGPoint)offset;
- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count;
- (void)setPreferredSubtitleFont:(id)font;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation MailboxTableCell

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104038;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD020 != -1)
  {
    dispatch_once(&qword_1006DD020, block);
  }

  v2 = qword_1006DD018;

  return v2;
}

+ (void)invalidateCachedLayoutInformation
{
  v3 = qword_1006DD028;
  qword_1006DD028 = 0;

  v4 = qword_1006DD030;
  qword_1006DD030 = 0;

  qword_1006DD038 = 0;
  qword_1006DD040 = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"_MailboxTableCellLayoutValuesDidChange" object:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

+ (double)defaultRowHeight
{
  result = *&qword_1006DD038;
  if (*&qword_1006DD038 == 0.0)
  {
    [self twoLineTopBottomPadding];
    *&qword_1006DD038 = v4 + v4;
    titleFont = [self titleFont];
    [titleFont capHeight];
    *&qword_1006DD038 = v6 + *&qword_1006DD038;

    subtitleFont = [self subtitleFont];
    [subtitleFont capHeight];
    *&qword_1006DD038 = v8 + *&qword_1006DD038;

    subtitleFont2 = [self subtitleFont];
    [subtitleFont2 _bodyLeading];
    UIRoundToViewScale();
    *&qword_1006DD038 = v10 + *&qword_1006DD038;

    UIRoundToViewScale();
    qword_1006DD038 = v11;
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    return *&qword_1006DD038;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [*(&self->_iconOffset.y + 1) sizeThatFits:{width, height}];
    v9 = v8;
    v10 = sub_10024BCE0(*(&self->_detailsDisclosureButton + 1));
    v15.receiver = self;
    v15.super_class = MailboxTableCell;
    [(MailboxTableCell *)&v15 sizeThatFits:width - (v9 + v10), height];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MailboxTableCell;
    [(MailboxTableCell *)&v14 sizeThatFits:width, height];
    width = v12;
  }

  v13 = width;
  result.height = v11;
  result.width = v13;
  return result;
}

+ (double)twoLineTopBottomPadding
{
  v2 = qword_1006DD040;
  if (*&qword_1006DD040 == 0.0)
  {
    subtitleFont = [self subtitleFont];
    [subtitleFont _bodyLeading];
    UIRoundToViewScale();
    v2 = v4;

    qword_1006DD040 = v2;
  }

  return *&v2;
}

+ (id)titleFont
{
  v2 = qword_1006DD028;
  if (!qword_1006DD028)
  {
    if (+[UIScreen mui_isLargeFormatPad])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:v3];
    v5 = [UIFont fontWithDescriptor:v4 size:0.0];
    v6 = qword_1006DD028;
    qword_1006DD028 = v5;

    v2 = qword_1006DD028;
  }

  return v2;
}

+ (id)subtitleFont
{
  v2 = qword_1006DD030;
  if (!qword_1006DD030)
  {
    if (+[UIScreen mui_isLargeFormatPad])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:v3];
    v5 = [UIFont fontWithDescriptor:v4 size:0.0];
    v6 = qword_1006DD030;
    qword_1006DD030 = v5;

    v2 = qword_1006DD030;
  }

  return v2;
}

- (MailboxTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = MailboxTableCell;
  v7 = [(MailboxTableCell *)&v18 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_invalidateLayout" name:@"_MailboxTableCellLayoutValuesDidChange" object:objc_opt_class()];

    textLabel = [(MailboxTableCell *)v7 textLabel];
    titleFont = [objc_opt_class() titleFont];
    [textLabel setFont:titleFont];

    detailTextLabel = [(MailboxTableCell *)v7 detailTextLabel];
    subtitleFont = [objc_opt_class() subtitleFont];
    [detailTextLabel setFont:subtitleFont];

    imageView = [(MailboxTableCell *)v7 imageView];
    [imageView setContentMode:4];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"_preferredContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MailboxTableCell *)v7 _updateContentSizeSettings];
    traitCollection = [(MailboxTableCell *)v7 traitCollection];
    LOBYTE(subtitleFont) = [traitCollection mf_useSplitViewStyling];

    if ((subtitleFont & 1) == 0)
    {
      v16 = objc_alloc_init(UIView);
      [(MailboxTableCell *)v7 setSelectedBackgroundView:v16];
    }

    [(MailboxTableCell *)v7 _resetDebouncer];
  }

  return v7;
}

- (void)_resetDebouncer
{
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailboxTableCell.m" lineNumber:184 description:@"Current thread must be main"];
  }

  v4 = *(&self->_unreadCountToken + 1);
  if (v4)
  {
    [v4 cancel];
    v5 = *(&self->_unreadCountToken + 1);
    *(&self->_unreadCountToken + 1) = 0;
  }

  if ([(MailboxTableCell *)self shouldShowUnreadCount])
  {
    objc_initWeak(&location, self);
    v6 = [EFDebouncer alloc];
    v7 = +[EFScheduler mainThreadScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100104960;
    v11[3] = &unk_10064FE38;
    objc_copyWeak(v12, &location);
    v12[1] = a2;
    v8 = [v6 initWithTimeInterval:v7 scheduler:1 startAfter:v11 block:0.2];
    v9 = *(&self->_unreadCountToken + 1);
    *(&self->_unreadCountToken + 1) = v8;

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)_preferredContentSizeCategoryDidChange:(id)change
{
  [(MailboxTableCell *)self _updateContentSizeSettings];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      icon = 0;
    }

    else
    {
      icon = [anyObject icon];
    }

    [(MailboxTableCell *)self setIcon:icon];
    if (!IsAccessibilityCategory)
    {
    }
  }

  v8 = +[MailboxTableCell titleFont];
  [*(&self->_iconOffset.y + 1) setFont:v8];

  [(MailboxTableCell *)self setNeedsLayout];
}

- (void)_updateContentSizeSettings
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel setNumberOfLines:v4];

  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  v5 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:v6];
}

- (void)dealloc
{
  [*(&self->_expansionEditingAccessoryImageView + 1) cancel];
  [*(&self->_unreadCountToken + 1) cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v4 dealloc];
}

- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count
{
  countCopy = count;
  v6 = *(&self->super._shouldDisableWhileEditing + 1);
  *(&self->super._shouldDisableWhileEditing + 1) = 0;
  mailboxesCopy = mailboxes;

  [(MailboxTableCell *)self _setMailboxes:mailboxesCopy observeCount:countCopy unreadCountIncludesRead:0];
}

- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  v8 = [mailboxesCopy copy];
  v9 = *(&self->_legacyMailboxes + 1);
  *(&self->_legacyMailboxes + 1) = v8;

  [(MailboxTableCell *)self setShouldShowUnreadCount:1];
  if (countCopy)
  {
    if ([*(&self->_legacyMailboxes + 1) count])
    {
      v10 = mailboxesCopy;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [(MailboxTableCell *)self _setUnreadCountMailboxes:v10 unreadCountIncludesRead:readCopy];
}

- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  mailboxesCopy = mailboxes;
  unreadCountToken = [(MailboxTableCell *)self unreadCountToken];
  [unreadCountToken cancel];

  [(MailboxTableCell *)self setUnreadCountToken:0];
  if (mailboxesCopy && [mailboxesCopy count])
  {
    v20 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:*(&self->_legacyMailboxes + 1)];
    if (readCopy)
    {
      v8 = v20;
    }

    else
    {
      v9 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      v22[0] = v20;
      v22[1] = v9;
      v10 = [NSArray arrayWithObjects:v22 count:2];
      v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
    }

    firstObject = [mailboxesCopy firstObject];
    v12 = [(MailboxTableCell *)self _countQueryLabelForMailbox:firstObject];

    v13 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v8 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v12];
    v14 = [mailboxesCopy ef_mapSelector:"objectID"];
    v15 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v14 forExclusion:0];

    v16 = +[UIApplication sharedApplication];
    daemonInterface = [v16 daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v19 = [messageRepository startCountingQuery:v13 includingServerCountsForMailboxScope:v15 withObserver:self];
    [(MailboxTableCell *)self setUnreadCountToken:v19];
  }

  [(MailboxTableCell *)self _resetDebouncer];
}

- (id)_countQueryLabelForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  name = [mailboxCopy name];
  if (([mailboxCopy descriptionUsesRealName] & 1) == 0)
  {
    v5 = [EFPrivacy fullyOrPartiallyRedactedStringForString:name];

    v6 = [[NSString alloc] initWithFormat:@"Generic mailbox %@", v5];
    name = v6;
  }

  v7 = [NSString alloc];
  accountIdentifier = [mailboxCopy accountIdentifier];
  v9 = [v7 initWithFormat:@"%@ (accountID: %@)", name, accountIdentifier];

  return v9;
}

- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  if (([mailboxesCopy isEqualToSet:*(&self->super._shouldDisableWhileEditing + 1)] & 1) == 0)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MFMailboxUidWasRenamedNotification;
    [v10 removeObserver:self name:MFMailboxUidWasRenamedNotification object:0];

    unreadCountToken = [(MailboxTableCell *)self unreadCountToken];
    [unreadCountToken cancel];

    [(MailboxTableCell *)self setUnreadCountToken:0];
    objc_storeStrong((&self->super._shouldDisableWhileEditing + 1), mailboxes);
    [(MailboxTableCell *)self setShouldShowUnreadCount:countCopy];
    if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
    {
      anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
      icon = [anyObject icon];
      [(MailboxTableCell *)self setIcon:icon];

      v15 = +[MailChangeManager sharedChangeManager];
      *(&self->_detailsDisclosureButton + 1) = [v15 levelForMailbox:anyObject];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_updateMailboxName" name:v11 object:anyObject];
    }

    [(MailboxTableCell *)self _removeUnreadCount];
    if ([(MailboxTableCell *)self shouldShowUnreadCount]&& *(&self->super._shouldDisableWhileEditing + 1))
    {
      allObjects = [mailboxesCopy allObjects];
      v18 = [(MailboxTableCell *)self _createMailboxesFromUids:allObjects];

      if (![v18 count])
      {
        v19 = +[MailboxTableCell log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = +[UIApplication sharedApplication];
          mailboxProvider = [v20 mailboxProvider];
          sub_100488468(mailboxProvider, v22, v19, v20);
        }
      }

      [(MailboxTableCell *)self _setMailboxes:v18 observeCount:1 unreadCountIncludesRead:readCopy];
    }

    else
    {
      [(MailboxTableCell *)self _resetDebouncer];
    }
  }

  [(MailboxTableCell *)self _updateMailboxName];
  [(MailboxTableCell *)self setNeedsLayout];
}

- (id)_createMailboxesFromUids:(id)uids
{
  uidsCopy = uids;
  v4 = +[UIApplication sharedApplication];
  mailboxProvider = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001056D4;
  v9[3] = &unk_10064FEA8;
  v10 = mailboxProvider;
  v6 = mailboxProvider;
  v7 = [uidsCopy ef_compactMap:v9];

  return v7;
}

- (BOOL)_shouldUnreadCountBeVisible
{
  if ([(MailboxTableCell *)self isEditing])
  {
    v3 = ![(MailboxTableCell *)self hideUnreadCountForEditing];
  }

  else
  {
    v3 = 1;
  }

  if ([(MailboxTableCell *)self isExpandable])
  {
    v3 &= ![(MailboxTableCell *)self isExpanded];
  }

  return v3;
}

- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)animated
{
  if (*(&self->_iconOffset.y + 1))
  {
    animatedCopy = animated;
    _shouldUnreadCountBeVisible = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
    v6 = *(&self->_iconOffset.y + 1);
    if (_shouldUnreadCountBeVisible)
    {
      superview = [v6 superview];

      if (!superview)
      {
        [*(&self->_iconOffset.y + 1) setAlpha:0.0];
        contentView = [(MailboxTableCell *)self contentView];
        [contentView addSubview:*(&self->_iconOffset.y + 1)];
      }

      [*(&self->_iconOffset.y + 1) alpha];
      if (v9 != 1.0)
      {
        v10 = v16;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v11 = sub_100105924;
        goto LABEL_9;
      }
    }

    else
    {
      [v6 alpha];
      if (v12 != 0.0)
      {
        v10 = v15;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v11 = sub_10010593C;
LABEL_9:
        v10[2] = v11;
        v10[3] = &unk_10064C7E8;
        v10[4] = self;
        v13 = objc_retainBlock(v10);
        v14 = v13;
        if (v13)
        {
          if (animatedCopy)
          {
            +[UIView inheritedAnimationDuration];
            [UIView animateWithDuration:v14 animations:0 completion:?];
          }

          else
          {
            (v13[2])(v13);
          }
        }

        goto LABEL_14;
      }
    }

    v14 = 0;
LABEL_14:
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v17.receiver = self;
  v17.super_class = MailboxTableCell;
  [MailboxTableCell setEditing:"setEditing:animated:" animated:?];
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0)
  {
    if (editingCopy)
    {
      if ((BYTE5(self->_detailsDisclosureButton) & 2) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      [(MailboxTableCell *)self setSelectionStyle:v9];
      traitCollection2 = +[UIColor clearColor];
      selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
      [selectedBackgroundView setBackgroundColor:traitCollection2];
    }

    else
    {
      [(MailboxTableCell *)self setSelectionStyle:3];
      traitCollection2 = [(MailboxTableCell *)self traitCollection];
      selectedBackgroundView = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection2 userInterfaceLevel]);
      selectedBackgroundView2 = [(MailboxTableCell *)self selectedBackgroundView];
      [selectedBackgroundView2 setBackgroundColor:selectedBackgroundView];
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100105B4C;
  v14[3] = &unk_100650640;
  v15 = editingCopy;
  v16 = animatedCopy;
  v14[4] = self;
  v13 = objc_retainBlock(v14);
  [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:animatedCopy];
  (v13[2])(v13, *(&self->_unreadCountLabel + 1));
}

- (void)setDisabledForEditing:(BOOL)editing
{
  if (editing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  BYTE5(self->_detailsDisclosureButton) = BYTE5(self->_detailsDisclosureButton) & 0xFD | v3;
}

- (BOOL)isCellEnabled
{
  if ([(MailboxTableCell *)self isEditing])
  {
    return (BYTE5(self->_detailsDisclosureButton) & 2) == 0;
  }

  if (BYTE5(self->_detailsDisclosureButton))
  {
    return 0;
  }

  anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
  if (anyObject)
  {
    anyObject2 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    isStore = [anyObject2 isStore];
  }

  else
  {
    isStore = 1;
  }

  return isStore;
}

- (void)setIcon:(id)icon withOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  iconCopy = icon;
  imageView = [(MailboxTableCell *)self imageView];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v10 = 0;
  }

  else
  {
    v10 = iconCopy;
  }

  [imageView setImage:v10];

  [(MailboxTableCell *)self setIconOffset:x, y];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(MailboxTableCell *)self textLabel];
  v6 = +[MailboxTableCell titleFont];
  [textLabel2 setFont:v6];

  [(MailboxTableCell *)self setSubtitle:0];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  preferredSubtitleFont = [(MailboxTableCell *)self preferredSubtitleFont];
  v5 = preferredSubtitleFont;
  if (preferredSubtitleFont)
  {
    v6 = preferredSubtitleFont;
  }

  else
  {
    v6 = +[MailboxTableCell subtitleFont];
  }

  v7 = v6;

  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel setText:subtitleCopy];

  detailTextLabel2 = [(MailboxTableCell *)self detailTextLabel];
  v10 = +[UIColor secondaryLabelColor];
  [detailTextLabel2 setTextColor:v10];

  detailTextLabel3 = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel3 setFont:v7];

  [(MailboxTableCell *)self setNeedsLayout];
}

- (void)setDetailsDisclosureButton:(id)button
{
  buttonCopy = button;
  v6 = *(&self->_unreadCountLabel + 1);
  v9 = buttonCopy;
  if (v6 != buttonCopy)
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(&self->_unreadCountLabel + 1);
      *(&self->_unreadCountLabel + 1) = 0;
    }

    if (v9)
    {
      objc_storeStrong((&self->_unreadCountLabel + 1), button);
      contentView = [(MailboxTableCell *)self contentView];
      [contentView addSubview:*(&self->_unreadCountLabel + 1)];
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v5 setUserInteractionEnabled:?];
  [(MailboxTableCell *)self setCellEnabled:enabledCopy];
}

- (void)setCellEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  BYTE5(self->_detailsDisclosureButton) = BYTE5(self->_detailsDisclosureButton) & 0xFE | !enabled;
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0)
  {
    if (enabledCopy)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    [(MailboxTableCell *)self setSelectionStyle:v7];
  }

  if (enabledCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(MailboxTableCell *)self setTintAdjustmentMode:v8];
}

- (void)setPreferredSubtitleFont:(id)font
{
  fontCopy = font;
  if (([*(&self->_extraIndentLevel + 1) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((&self->_extraIndentLevel + 1), font);
    detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel setFont:fontCopy];
  }
}

- (void)_removeUnreadCount
{
  v3 = *(&self->_iconOffset.y + 1);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(&self->_iconOffset.y + 1);
    *(&self->_iconOffset.y + 1) = 0.0;
  }
}

- (void)_setUnreadCount:(unint64_t)count
{
  if (count)
  {
    if (!*(&self->_iconOffset.y + 1))
    {
      v5 = objc_alloc_init(UILabel);
      v6 = *(&self->_iconOffset.y + 1);
      *(&self->_iconOffset.y + 1) = v5;

      v7 = +[UIColor clearColor];
      [*(&self->_iconOffset.y + 1) setBackgroundColor:v7];

      v8 = +[UIColor secondaryLabelColor];
      [*(&self->_iconOffset.y + 1) setTextColor:v8];

      v9 = +[MailboxTableCell titleFont];
      [*(&self->_iconOffset.y + 1) setFont:v9];

      [*(&self->_iconOffset.y + 1) setTextAlignment:2];
      [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
    }

    v10 = [NSNumberFormatter ef_formatUnsignedInteger:count withGrouping:0];
    [*(&self->_iconOffset.y + 1) setText:v10];

    [(MailboxTableCell *)self setNeedsLayout];
  }

  else
  {

    [(MailboxTableCell *)self _removeUnreadCount];
  }
}

- (void)_updateMailboxName
{
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v3 = +[MailChangeManager sharedChangeManager];
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v5 = [v3 displayNameUsingSpecialNamesForMailbox:anyObject];

    [(MailboxTableCell *)self setTitle:v5];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v11 setHighlighted:highlighted animated:animated];
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0 && ([(MailboxTableCell *)self isEditing]& 1) == 0)
  {
    if (highlightedCopy)
    {
      v8 = +[UIColor _tertiaryFillColor];
      traitCollection2 = v8;
    }

    else
    {
      traitCollection2 = [(MailboxTableCell *)self traitCollection];
      v8 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection2 userInterfaceLevel]);
    }

    selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v8];

    if (!highlightedCopy)
    {
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MailboxTableCell;
  [(MFTableViewCell *)&v3 prepareForReuse];
  [(MailboxTableCell *)self setExpandable:0];
  [(MailboxTableCell *)self setExpanded:0];
  [(MailboxTableCell *)self setExtraIndentLevel:0];
  [(MailboxTableCell *)self setFlattenHierarchy:0];
  [(MailboxTableCell *)self _doCleanupExpansionAccessoryViews];
  [(MailboxTableCell *)self setCellEnabled:1];
  [(MailboxTableCell *)self setDisabledForEditing:0];
  [(MailboxTableCell *)self setTitleColor:0];
  [(MailboxTableCell *)self setDetailsDisclosureButton:0];
  [(MailboxTableCell *)self setSubtitle:0];
}

- (void)_updateViewConfigurationsWithState:(unint64_t)state
{
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if (mf_useSplitViewStyling)
  {
    if ([(MailboxTableCell *)self isExpandable])
    {
      [_UIBackgroundViewConfiguration defaultOutlineParentCellConfigurationForState:state];
    }

    else
    {
      [_UIBackgroundViewConfiguration defaultOutlineCellConfigurationForState:state];
    }
    v7 = ;
    [v7 setEdgesAddingLayoutMarginsToBackgroundInsets:10];
    [v7 setBackgroundInsets:{0.0, -8.0, 0.0, -8.0}];
    [(MailboxTableCell *)self _setBackgroundViewConfiguration:v7];
  }
}

- (id)_expansionAccessoryImageView
{
  v2 = [UIImage systemImageNamed:MFImageGlyphFavoriteExpandMailbox];
  v3 = [UIImage mf_symbolConfigurationForView:10];
  [v2 size];
  v6 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v4 + -6.0, v5}];
  [v6 setImage:v2];
  [v6 setPreferredSymbolConfiguration:v3];
  [v6 setContentMode:4];
  v7 = +[UIColor tertiaryLabelColor];
  [v6 setTintColor:v7];

  return v6;
}

- (UIImageView)expansionAccessoryImageView
{
  v3 = *(&self->_preferredSubtitleFont + 1);
  if (!v3)
  {
    _expansionAccessoryImageView = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_preferredSubtitleFont + 1);
    *(&self->_preferredSubtitleFont + 1) = _expansionAccessoryImageView;

    v3 = *(&self->_preferredSubtitleFont + 1);
  }

  return v3;
}

- (UIImageView)expansionEditingAccessoryImageView
{
  v3 = *(&self->_expansionAccessoryImageView + 1);
  if (!v3)
  {
    _expansionAccessoryImageView = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_expansionAccessoryImageView + 1);
    *(&self->_expansionAccessoryImageView + 1) = _expansionAccessoryImageView;

    v3 = *(&self->_expansionAccessoryImageView + 1);
  }

  return v3;
}

- (void)_doCleanupExpansionAccessoryViews
{
  if (*(&self->_preferredSubtitleFont + 1))
  {
    [(MailboxTableCell *)self setAccessoryView:0];
    [(MailboxTableCell *)self setExpansionAccessoryImageView:0];
  }

  if (*(&self->_expansionAccessoryImageView + 1))
  {
    [(MailboxTableCell *)self setEditingAccessoryView:0];

    [(MailboxTableCell *)self setExpansionEditingAccessoryImageView:0];
  }
}

- (void)_doRefreshExpansionAccessoryImageView
{
  if ([(MailboxTableCell *)self isExpandable])
  {
    accessoryView = [(MailboxTableCell *)self accessoryView];
    expansionAccessoryImageView = [(MailboxTableCell *)self expansionAccessoryImageView];

    if (accessoryView != expansionAccessoryImageView)
    {
      expansionAccessoryImageView2 = [(MailboxTableCell *)self expansionAccessoryImageView];
      [(MailboxTableCell *)self setAccessoryView:expansionAccessoryImageView2];
    }

    editingAccessoryView = [(MailboxTableCell *)self editingAccessoryView];
    expansionEditingAccessoryImageView = [(MailboxTableCell *)self expansionEditingAccessoryImageView];

    if (editingAccessoryView != expansionEditingAccessoryImageView)
    {
      expansionEditingAccessoryImageView2 = [(MailboxTableCell *)self expansionEditingAccessoryImageView];
      [(MailboxTableCell *)self setEditingAccessoryView:expansionEditingAccessoryImageView2];
    }

    _shouldReverseLayoutDirection = [(MailboxTableCell *)self _shouldReverseLayoutDirection];
    v10 = -1.57079633;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *&v18.c = v11;
    *&v18.tx = v11;
    if (_shouldReverseLayoutDirection)
    {
      v10 = 1.57079633;
    }

    *&v18.a = v11;
    CGAffineTransformMakeRotation(&v18, v10);
    if ([(MailboxTableCell *)self isExpanded])
    {
      v12 = *&CGAffineTransformIdentity.c;
      *&v18.a = *&CGAffineTransformIdentity.a;
      *&v18.c = v12;
      *&v18.tx = *&CGAffineTransformIdentity.tx;
    }

    v17 = v18;
    accessoryView2 = [(MailboxTableCell *)self accessoryView];
    v16 = v17;
    [accessoryView2 setTransform:&v16];

    v15 = v18;
    editingAccessoryView2 = [(MailboxTableCell *)self editingAccessoryView];
    v16 = v15;
    [editingAccessoryView2 setTransform:&v16];
  }

  else
  {

    [(MailboxTableCell *)self _doCleanupExpansionAccessoryViews];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (LOBYTE(self->_level) != expanded)
  {
    LOBYTE(self->_level) = expanded;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)setExpandable:(BOOL)expandable
{
  if (HIBYTE(self->_detailsDisclosureButton) != expandable)
  {
    HIBYTE(self->_detailsDisclosureButton) = expandable;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)layoutSubviews
{
  imageView = [(MailboxTableCell *)self imageView];
  image = [imageView image];

  if (*(&self->_iconOffset.y + 1))
  {
    _shouldUnreadCountBeVisible = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
  }

  else
  {
    _shouldUnreadCountBeVisible = 0;
  }

  if ((([(MailboxTableCell *)self isEditing]& 1) != 0 || ![(MailboxTableCell *)self accessoryType]) && [(MailboxTableCell *)self isEditing])
  {
    [(MailboxTableCell *)self editingAccessoryType];
  }

  effectiveUserInterfaceLayoutDirection = [(MailboxTableCell *)self effectiveUserInterfaceLayoutDirection];
  if ([(MailboxTableCell *)self flattenHierarchy])
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(&self->_detailsDisclosureButton + 1) + *(&self->_titleColor + 1));
  }

  v8 = sub_10024BCE0(v7);
  v172.receiver = self;
  v172.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v172 layoutSubviews];
  contentView = [(MailboxTableCell *)self contentView];
  [contentView bounds];
  v168 = v11;
  rect = v10;
  v13 = v12;
  v15 = v14;

  contentView2 = [(MailboxTableCell *)self contentView];
  [contentView2 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ([(MailboxTableCell *)self isExpandable])
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v27 = 12.5;
    if (!effectiveUserInterfaceLayoutDirection)
    {
      v27 = 0.0;
    }

    v28 = v18 - v27;
    if (IsAccessibilityCategory)
    {
      v29 = v18;
    }

    else
    {
      v29 = v28;
    }

    if (IsAccessibilityCategory)
    {
      v30 = v22;
    }

    else
    {
      v30 = v22 + 12.5;
    }

    contentView3 = [(MailboxTableCell *)self contentView];
    [contentView3 setFrame:{v29, v20, v30, v24}];

    accessoryView = [(MailboxTableCell *)self accessoryView];
    [accessoryView frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if (effectiveUserInterfaceLayoutDirection)
    {
      v39 = 8.0;
    }

    else
    {
      v39 = v30;
    }

    accessoryView2 = [(MailboxTableCell *)self accessoryView];
    [accessoryView2 setFrame:{v39, v34, v36, v38}];
  }

  if (image)
  {
    preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
    v42 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    if (!v42)
    {
      imageView2 = [(MailboxTableCell *)self imageView];
      [imageView2 frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      sub_10024BD78(v7);
      v173.origin.x = v50;
      v173.origin.y = v52;
      v173.size.width = v54;
      v173.size.height = v56;
      CGRectGetWidth(v173);
      UIRoundToViewScale();
      v58 = v57 + *(&self->_mailboxes + 1);
      if (effectiveUserInterfaceLayoutDirection)
      {
        v174.origin.y = v168;
        v174.origin.x = rect;
        v174.size.width = v13;
        v174.size.height = v15;
        Width = CGRectGetWidth(v174);
        v175.origin.x = v58;
        v175.origin.y = v52;
        v175.size.width = v54;
        v175.size.height = v56;
        v58 = Width - CGRectGetMaxX(v175);
      }

      imageView3 = [(MailboxTableCell *)self imageView];
      [imageView3 setFrame:{v58, v52, v54, v56}];

LABEL_35:
      v47 = 0;
      goto LABEL_36;
    }
  }

  preferredContentSizeCategory3 = [UIApp preferredContentSizeCategory];
  v44 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

  if (!v44)
  {
    v8 = v8 - sub_10024BCE0(v7);
    if (v8 < 8.0)
    {
      v47 = 1;
      v8 = 8.0;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  preferredContentSizeCategory4 = [UIApp preferredContentSizeCategory];
  v46 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

  if (image)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

LABEL_36:
  contentView4 = [(MailboxTableCell *)self contentView];
  [contentView4 bounds];
  CGRectGetMaxX(v176);

  [(MailboxTableCell *)self isExpandable];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v177.origin.y = v168;
    v177.origin.x = rect;
    v177.size.width = v13;
    v177.size.height = v15;
    CGRectGetMinX(v177);
  }

  v62 = *(&self->_iconOffset.y + 1);
  if (v62)
  {
    [v62 sizeToFit];
    [*(&self->_iconOffset.y + 1) frame];
    v67 = v64;
    v68 = v65;
    height = v66;
    if (!effectiveUserInterfaceLayoutDirection)
    {
      CGRectGetWidth(*&v63);
    }

    UIRoundToViewScale();
    x = v178.origin.x;
    v178.origin.y = v67;
    v178.size.width = v68;
    v178.size.height = height;
    CGRectGetHeight(v178);
    UIRoundToViewScale();
    y = v71;
    v169 = x;
    [*(&self->_iconOffset.y + 1) setFrame:x];
  }

  else
  {
    y = CGRectZero.origin.y;
    v169 = CGRectZero.origin.x;
    v68 = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v72 = *(&self->_unreadCountLabel + 1);
  if (v72)
  {
    v73 = v8;
    [v72 frame];
    v78 = v75;
    v79 = v76;
    v80 = v77;
    if (effectiveUserInterfaceLayoutDirection)
    {
      [*(&self->_iconOffset.y + 1) frame];
      CGRectGetMaxX(v179);
    }

    else
    {
      CGRectGetWidth(*&v74);
      v81 = *(&self->_iconOffset.y + 1);
      if (v81)
      {
        [v81 frame];
        CGRectGetWidth(v180);
      }
    }

    UIRoundToViewScale();
    v82 = v181.origin.x;
    v181.origin.y = v78;
    v181.size.width = v79;
    v181.size.height = v80;
    CGRectGetHeight(v181);
    UIRoundToViewScale();
    [*(&self->_unreadCountLabel + 1) setFrame:{v82, v83, v79, v80}];
    v8 = v73;
  }

  traitCollection = [(MailboxTableCell *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  _viewConfigurationState = [(MailboxTableCell *)self _viewConfigurationState];
  recta = height;
  if ([(MailboxTableCell *)self isExpandable])
  {
    textLabel4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
    textLabel = [(MailboxTableCell *)self textLabel];
    v89 = [UIFont fontWithDescriptor:textLabel4 size:0.0];
    [textLabel setFont:v89];

    textLabel2 = [(MailboxTableCell *)self textLabel];
    v91 = +[UIColor mailAccountCellTitleColor];
    [textLabel2 setTextColor:v91];

    textLabel3 = [(MailboxTableCell *)self textLabel];
    v93 = +[UIColor clearColor];
    [textLabel3 setBackgroundColor:v93];

    v8 = 8.0;
  }

  else if ([(MailboxTableCell *)self isCellEnabled])
  {
    v94 = *(&self->_userInfo + 1);
    if (v94)
    {
      textLabel4 = [(MailboxTableCell *)self textLabel];
      [textLabel4 setTextColor:v94];
      goto LABEL_57;
    }

    traitCollection2 = [(MailboxTableCell *)self traitCollection];
    v160 = [traitCollection2 mf_useSplitViewStyling] & ((_viewConfigurationState & 4) != 0);

    if (v160 != 1 || _splitViewControllerContext == 2)
    {
      textLabel4 = +[UIColor labelColor];
      textLabel3 = [(MailboxTableCell *)self textLabel];
      [textLabel3 setTextColor:textLabel4];
    }

    else
    {
      v161 = +[UIColor systemWhiteColor];
      textLabel5 = [(MailboxTableCell *)self textLabel];
      [textLabel5 setTextColor:v161];

      textLabel4 = +[UIColor systemWhiteColor];
      textLabel3 = [(MailboxTableCell *)self imageView];
      [textLabel3 setTintColor:textLabel4];
    }
  }

  else
  {
    textLabel4 = [(MailboxTableCell *)self textLabel];
    textLabel3 = +[UIColor secondaryLabelColor];
    [textLabel4 setTextColor:textLabel3];
  }

LABEL_57:
  textLabel6 = [(MailboxTableCell *)self textLabel];
  [textLabel6 frame];
  v97 = v96;
  v99 = v98;

  v163 = v68;
  if (!effectiveUserInterfaceLayoutDirection)
  {
    if (_shouldUnreadCountBeVisible)
    {
      v184.origin.y = y;
      v184.origin.x = v169;
      v184.size.width = v68;
      v184.size.height = height;
      v102 = CGRectGetMinX(v184) - v8 + -5.0;
      if (v47)
      {
        goto LABEL_64;
      }
    }

    else
    {
      contentView5 = [(MailboxTableCell *)self contentView];
      [contentView5 bounds];
      v102 = CGRectGetMaxX(v187) - v8 + -5.0;

      if (v47)
      {
        goto LABEL_64;
      }
    }

LABEL_66:
    v165 = v99;
    v166 = v97;
    v103 = v8;
    v104 = v8;
    v105 = v102;
    goto LABEL_67;
  }

  v100 = 5.0;
  if (_shouldUnreadCountBeVisible)
  {
    v182.origin.y = y;
    v182.origin.x = v169;
    v182.size.width = v68;
    v182.size.height = height;
    v100 = CGRectGetMaxX(v182) + 5.0;
  }

  contentView6 = [(MailboxTableCell *)self contentView];
  [contentView6 bounds];
  v102 = CGRectGetMaxX(v183) - v100 - v8;

  v8 = v100;
  if (!v47)
  {
    goto LABEL_66;
  }

LABEL_64:
  v103 = v8;
  v185.origin.x = v8;
  v185.origin.y = v97;
  v185.size.width = v102;
  v185.size.height = v99;
  v186 = CGRectInset(v185, 12.0, 0.0);
  v104 = v186.origin.x;
  v165 = v186.size.height;
  v166 = v186.origin.y;
  v105 = v186.size.width;
LABEL_67:
  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel frame];
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;

  if (-[MailboxTableCell style](self, "style") == 3 || ([UIApp preferredContentSizeCategory], v116 = objc_claimAutoreleasedReturnValue(), v117 = UIContentSizeCategoryIsAccessibilityCategory(v116), v116, v117))
  {
    v113 = v102;
  }

  else
  {
    v103 = v109;
  }

  preferredContentSizeCategory5 = [UIApp preferredContentSizeCategory];
  v119 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory5);

  textLabel7 = [(MailboxTableCell *)self textLabel];
  v121 = textLabel7;
  if (v119)
  {
    v122 = +[MailboxTableCell titleFont];
    [v122 lineHeight];
    [v121 sizeThatFits:{v102, v123 + v123}];
    v125 = v124;

    v126 = v125 + 0.0;
    v188.origin.y = 0.0;
    v188.origin.x = v104;
    v188.size.width = v105;
    v188.size.height = v125;
    v195.origin.x = v103;
    v195.origin.y = v125 + 0.0;
    v195.size.width = v113;
    v195.size.height = v115;
    v189 = CGRectUnion(v188, v195);
    v127 = v189.size.height;
    [(MailboxTableCell *)self bounds:v189.origin.x];
    v129 = ceil((v128 - v127) * 0.5);
    v190.origin.y = 0.0;
    v190.origin.x = v104;
    v190.size.width = v105;
    v190.size.height = v125;
    v191 = CGRectOffset(v190, 0.0, v129);
    v130 = v191.origin.x;
    v191.origin.x = v103;
    v131 = v191.origin.y;
    v132 = v191.size.width;
    v133 = v191.size.height;
    v191.origin.y = v126;
    v191.size.width = v113;
    v191.size.height = v115;
    v192 = CGRectOffset(v191, 0.0, v129);
    v134 = v192.origin.x;
    v135 = v192.origin.y;
    v136 = v192.size.width;
    v137 = v192.size.height;
    textLabel8 = [(MailboxTableCell *)self textLabel];
    [textLabel8 setFrame:{v130, v131, v132, v133}];

    detailTextLabel2 = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel2 setFrame:{v134, v135, v136, v137}];

    textLabel9 = [(MailboxTableCell *)self textLabel];
    [textLabel9 _firstLineBaselineFrameOriginY];
    v142 = v141;
    v143 = +[MailboxTableCell titleFont];
    [v143 capHeight];
    v145 = v142 + v144 * -0.5;

    if (*(&self->_iconOffset.y + 1))
    {
      v193.origin.y = y;
      v193.origin.x = v169;
      v193.size.width = v164;
      v193.size.height = recta;
      CGRectGetHeight(v193);
      UIRoundToViewScale();
      [*(&self->_iconOffset.y + 1) setFrame:{v169, v145 - v146, v164, recta}];
    }

    accessoryView3 = [(MailboxTableCell *)self accessoryView];
    detailTextLabel3 = accessoryView3;
    if (accessoryView3)
    {
      [accessoryView3 frame];
      v149 = v194.origin.x;
      v150 = v194.size.width;
      v151 = v194.size.height;
      CGRectGetHeight(v194);
      UIRoundToViewScale();
      [detailTextLabel3 setFrame:{v149, v145 - v152, v150, v151}];
    }
  }

  else
  {
    [textLabel7 setFrame:{v104, v166, v105, v165}];

    detailTextLabel3 = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel3 setFrame:{v103, v111, v113, v115}];
  }

  traitCollection3 = [(MailboxTableCell *)self traitCollection];
  if ([traitCollection3 mf_useSplitViewStyling])
  {
    goto LABEL_78;
  }

  isEditing = [(MailboxTableCell *)self isEditing];

  if ((isEditing & 1) == 0)
  {
    isHighlighted = [(MailboxTableCell *)self isHighlighted];
    v156 = isHighlighted;
    if (isHighlighted)
    {
      v157 = +[UIColor _tertiaryFillColor];
      traitCollection3 = v157;
    }

    else
    {
      traitCollection3 = [(MailboxTableCell *)self traitCollection];
      v157 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection3 userInterfaceLevel]);
    }

    selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v157];

    if ((v156 & 1) == 0)
    {
    }

LABEL_78:
  }
}

- (CGPoint)destinationPointForAnimation
{
  [(MailboxTableCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  traitCollection = [(MailboxTableCell *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  MidY = CGRectGetMidY(v28);
  v29.origin.x = v13;
  v29.origin.y = v15;
  v29.size.width = v17;
  v29.size.height = v19;
  MidX = CGRectGetMidX(v29);
  v24 = 3.0;
  if (horizontalSizeClass == 1)
  {
    v24 = 2.0;
  }

  v25 = v8 / v24;
  if (v25 >= MidX)
  {
    MidX = v25;
  }

  v26 = MidY;
  result.y = v26;
  result.x = MidX;
  return result;
}

- (id)_scriptingInfo
{
  v8.receiver = self;
  v8.super_class = MailboxTableCell;
  _scriptingInfo = [(MailboxTableCell *)&v8 _scriptingInfo];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v6 = [v4 displayNameUsingSpecialNamesForMailbox:anyObject];

    [_scriptingInfo setValue:v6 forKey:@"ID"];
  }

  return _scriptingInfo;
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v5 = [EFScheduler mainThreadScheduler:repository];
  [v5 performBlock:&v6];
}

@end