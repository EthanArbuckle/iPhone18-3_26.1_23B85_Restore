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
- (CGSize)sizeThatFits:(CGSize)a3;
- (MailboxTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIImageView)expansionAccessoryImageView;
- (UIImageView)expansionEditingAccessoryImageView;
- (id)_countQueryLabelForMailbox:(id)a3;
- (id)_createMailboxesFromUids:(id)a3;
- (id)_expansionAccessoryImageView;
- (id)_scriptingInfo;
- (void)_doCleanupExpansionAccessoryViews;
- (void)_doRefreshExpansionAccessoryImageView;
- (void)_preferredContentSizeCategoryDidChange:(id)a3;
- (void)_removeUnreadCount;
- (void)_resetDebouncer;
- (void)_setMailboxes:(id)a3 observeCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5;
- (void)_setUnreadCount:(unint64_t)a3;
- (void)_setUnreadCountMailboxes:(id)a3 unreadCountIncludesRead:(BOOL)a4;
- (void)_updateContentSizeSettings;
- (void)_updateMailboxName;
- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)a3;
- (void)_updateViewConfigurationsWithState:(unint64_t)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)prepareForReuse;
- (void)setCellEnabled:(BOOL)a3;
- (void)setDetailsDisclosureButton:(id)a3;
- (void)setDisabledForEditing:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExpandable:(BOOL)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setIcon:(id)a3 withOffset:(CGPoint)a4;
- (void)setLegacyMailboxes:(id)a3 showUnreadCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5;
- (void)setMailboxes:(id)a3 observeCount:(BOOL)a4;
- (void)setPreferredSubtitleFont:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation MailboxTableCell

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104038;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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
  [v5 postNotificationName:@"_MailboxTableCellLayoutValuesDidChange" object:a1];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:a1 name:UIContentSizeCategoryDidChangeNotification object:0];
}

+ (double)defaultRowHeight
{
  result = *&qword_1006DD038;
  if (*&qword_1006DD038 == 0.0)
  {
    [a1 twoLineTopBottomPadding];
    *&qword_1006DD038 = v4 + v4;
    v5 = [a1 titleFont];
    [v5 capHeight];
    *&qword_1006DD038 = v6 + *&qword_1006DD038;

    v7 = [a1 subtitleFont];
    [v7 capHeight];
    *&qword_1006DD038 = v8 + *&qword_1006DD038;

    v9 = [a1 subtitleFont];
    [v9 _bodyLeading];
    UIRoundToViewScale();
    *&qword_1006DD038 = v10 + *&qword_1006DD038;

    UIRoundToViewScale();
    qword_1006DD038 = v11;
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:a1 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    return *&qword_1006DD038;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

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
    v3 = [a1 subtitleFont];
    [v3 _bodyLeading];
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

- (MailboxTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = MailboxTableCell;
  v7 = [(MailboxTableCell *)&v18 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_invalidateLayout" name:@"_MailboxTableCellLayoutValuesDidChange" object:objc_opt_class()];

    v9 = [(MailboxTableCell *)v7 textLabel];
    v10 = [objc_opt_class() titleFont];
    [v9 setFont:v10];

    v11 = [(MailboxTableCell *)v7 detailTextLabel];
    v12 = [objc_opt_class() subtitleFont];
    [v11 setFont:v12];

    v13 = [(MailboxTableCell *)v7 imageView];
    [v13 setContentMode:4];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"_preferredContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MailboxTableCell *)v7 _updateContentSizeSettings];
    v15 = [(MailboxTableCell *)v7 traitCollection];
    LOBYTE(v12) = [v15 mf_useSplitViewStyling];

    if ((v12 & 1) == 0)
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

- (void)_preferredContentSizeCategoryDidChange:(id)a3
{
  [(MailboxTableCell *)self _updateContentSizeSettings];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v4 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v5 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

    if (IsAccessibilityCategory)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v4 icon];
    }

    [(MailboxTableCell *)self setIcon:v7];
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
  v7 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (IsAccessibilityCategory)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v8 = [(MailboxTableCell *)self textLabel];
  [v8 setNumberOfLines:v4];

  v9 = [UIApp preferredContentSizeCategory];
  v5 = UIContentSizeCategoryIsAccessibilityCategory(v9);

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v10 = [(MailboxTableCell *)self detailTextLabel];
  [v10 setNumberOfLines:v6];
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

- (void)setMailboxes:(id)a3 observeCount:(BOOL)a4
{
  v4 = a4;
  v6 = *(&self->super._shouldDisableWhileEditing + 1);
  *(&self->super._shouldDisableWhileEditing + 1) = 0;
  v7 = a3;

  [(MailboxTableCell *)self _setMailboxes:v7 observeCount:v4 unreadCountIncludesRead:0];
}

- (void)_setMailboxes:(id)a3 observeCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v11 = a3;
  v8 = [v11 copy];
  v9 = *(&self->_legacyMailboxes + 1);
  *(&self->_legacyMailboxes + 1) = v8;

  [(MailboxTableCell *)self setShouldShowUnreadCount:1];
  if (v6)
  {
    if ([*(&self->_legacyMailboxes + 1) count])
    {
      v10 = v11;
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

  [(MailboxTableCell *)self _setUnreadCountMailboxes:v10 unreadCountIncludesRead:v5];
}

- (void)_setUnreadCountMailboxes:(id)a3 unreadCountIncludesRead:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MailboxTableCell *)self unreadCountToken];
  [v7 cancel];

  [(MailboxTableCell *)self setUnreadCountToken:0];
  if (v6 && [v6 count])
  {
    v20 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:*(&self->_legacyMailboxes + 1)];
    if (v4)
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

    v11 = [v6 firstObject];
    v12 = [(MailboxTableCell *)self _countQueryLabelForMailbox:v11];

    v13 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v8 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v12];
    v14 = [v6 ef_mapSelector:"objectID"];
    v15 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v14 forExclusion:0];

    v16 = +[UIApplication sharedApplication];
    v17 = [v16 daemonInterface];
    v18 = [v17 messageRepository];
    v19 = [v18 startCountingQuery:v13 includingServerCountsForMailboxScope:v15 withObserver:self];
    [(MailboxTableCell *)self setUnreadCountToken:v19];
  }

  [(MailboxTableCell *)self _resetDebouncer];
}

- (id)_countQueryLabelForMailbox:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  if (([v3 descriptionUsesRealName] & 1) == 0)
  {
    v5 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v4];

    v6 = [[NSString alloc] initWithFormat:@"Generic mailbox %@", v5];
    v4 = v6;
  }

  v7 = [NSString alloc];
  v8 = [v3 accountIdentifier];
  v9 = [v7 initWithFormat:@"%@ (accountID: %@)", v4, v8];

  return v9;
}

- (void)setLegacyMailboxes:(id)a3 showUnreadCount:(BOOL)a4 unreadCountIncludesRead:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (([v9 isEqualToSet:*(&self->super._shouldDisableWhileEditing + 1)] & 1) == 0)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MFMailboxUidWasRenamedNotification;
    [v10 removeObserver:self name:MFMailboxUidWasRenamedNotification object:0];

    v12 = [(MailboxTableCell *)self unreadCountToken];
    [v12 cancel];

    [(MailboxTableCell *)self setUnreadCountToken:0];
    objc_storeStrong((&self->super._shouldDisableWhileEditing + 1), a3);
    [(MailboxTableCell *)self setShouldShowUnreadCount:v6];
    if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
    {
      v13 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
      v14 = [v13 icon];
      [(MailboxTableCell *)self setIcon:v14];

      v15 = +[MailChangeManager sharedChangeManager];
      *(&self->_detailsDisclosureButton + 1) = [v15 levelForMailbox:v13];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_updateMailboxName" name:v11 object:v13];
    }

    [(MailboxTableCell *)self _removeUnreadCount];
    if ([(MailboxTableCell *)self shouldShowUnreadCount]&& *(&self->super._shouldDisableWhileEditing + 1))
    {
      v17 = [v9 allObjects];
      v18 = [(MailboxTableCell *)self _createMailboxesFromUids:v17];

      if (![v18 count])
      {
        v19 = +[MailboxTableCell log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = +[UIApplication sharedApplication];
          v21 = [v20 mailboxProvider];
          sub_100488468(v21, v22, v19, v20);
        }
      }

      [(MailboxTableCell *)self _setMailboxes:v18 observeCount:1 unreadCountIncludesRead:v5];
    }

    else
    {
      [(MailboxTableCell *)self _resetDebouncer];
    }
  }

  [(MailboxTableCell *)self _updateMailboxName];
  [(MailboxTableCell *)self setNeedsLayout];
}

- (id)_createMailboxesFromUids:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001056D4;
  v9[3] = &unk_10064FEA8;
  v10 = v5;
  v6 = v5;
  v7 = [v3 ef_compactMap:v9];

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

- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)a3
{
  if (*(&self->_iconOffset.y + 1))
  {
    v3 = a3;
    v5 = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
    v6 = *(&self->_iconOffset.y + 1);
    if (v5)
    {
      v7 = [v6 superview];

      if (!v7)
      {
        [*(&self->_iconOffset.y + 1) setAlpha:0.0];
        v8 = [(MailboxTableCell *)self contentView];
        [v8 addSubview:*(&self->_iconOffset.y + 1)];
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
          if (v3)
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MailboxTableCell;
  [MailboxTableCell setEditing:"setEditing:animated:" animated:?];
  v7 = [(MailboxTableCell *)self traitCollection];
  v8 = [v7 mf_useSplitViewStyling];

  if ((v8 & 1) == 0)
  {
    if (v5)
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
      v10 = +[UIColor clearColor];
      v11 = [(MailboxTableCell *)self selectedBackgroundView];
      [v11 setBackgroundColor:v10];
    }

    else
    {
      [(MailboxTableCell *)self setSelectionStyle:3];
      v10 = [(MailboxTableCell *)self traitCollection];
      v11 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [v10 userInterfaceLevel]);
      v12 = [(MailboxTableCell *)self selectedBackgroundView];
      [v12 setBackgroundColor:v11];
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100105B4C;
  v14[3] = &unk_100650640;
  v15 = v5;
  v16 = v4;
  v14[4] = self;
  v13 = objc_retainBlock(v14);
  [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:v4];
  (v13[2])(v13, *(&self->_unreadCountLabel + 1));
}

- (void)setDisabledForEditing:(BOOL)a3
{
  if (a3)
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

  v4 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
  if (v4)
  {
    v5 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v3 = [v5 isStore];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setIcon:(id)a3 withOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v7 = [(MailboxTableCell *)self imageView];
  v8 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  if (IsAccessibilityCategory)
  {
    v10 = 0;
  }

  else
  {
    v10 = v11;
  }

  [v7 setImage:v10];

  [(MailboxTableCell *)self setIconOffset:x, y];
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  v4 = [(MailboxTableCell *)self textLabel];
  [v4 setText:v7];

  v5 = [(MailboxTableCell *)self textLabel];
  v6 = +[MailboxTableCell titleFont];
  [v5 setFont:v6];

  [(MailboxTableCell *)self setSubtitle:0];
}

- (void)setSubtitle:(id)a3
{
  v12 = a3;
  v4 = [(MailboxTableCell *)self preferredSubtitleFont];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[MailboxTableCell subtitleFont];
  }

  v7 = v6;

  v8 = [(MailboxTableCell *)self detailTextLabel];
  [v8 setText:v12];

  v9 = [(MailboxTableCell *)self detailTextLabel];
  v10 = +[UIColor secondaryLabelColor];
  [v9 setTextColor:v10];

  v11 = [(MailboxTableCell *)self detailTextLabel];
  [v11 setFont:v7];

  [(MailboxTableCell *)self setNeedsLayout];
}

- (void)setDetailsDisclosureButton:(id)a3
{
  v5 = a3;
  v6 = *(&self->_unreadCountLabel + 1);
  v9 = v5;
  if (v6 != v5)
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(&self->_unreadCountLabel + 1);
      *(&self->_unreadCountLabel + 1) = 0;
    }

    if (v9)
    {
      objc_storeStrong((&self->_unreadCountLabel + 1), a3);
      v8 = [(MailboxTableCell *)self contentView];
      [v8 addSubview:*(&self->_unreadCountLabel + 1)];
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v5 setUserInteractionEnabled:?];
  [(MailboxTableCell *)self setCellEnabled:v3];
}

- (void)setCellEnabled:(BOOL)a3
{
  v3 = a3;
  BYTE5(self->_detailsDisclosureButton) = BYTE5(self->_detailsDisclosureButton) & 0xFE | !a3;
  v5 = [(MailboxTableCell *)self traitCollection];
  v6 = [v5 mf_useSplitViewStyling];

  if ((v6 & 1) == 0)
  {
    if (v3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    [(MailboxTableCell *)self setSelectionStyle:v7];
  }

  if (v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(MailboxTableCell *)self setTintAdjustmentMode:v8];
}

- (void)setPreferredSubtitleFont:(id)a3
{
  v6 = a3;
  if (([*(&self->_extraIndentLevel + 1) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((&self->_extraIndentLevel + 1), a3);
    v5 = [(MailboxTableCell *)self detailTextLabel];
    [v5 setFont:v6];
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

- (void)_setUnreadCount:(unint64_t)a3
{
  if (a3)
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

    v10 = [NSNumberFormatter ef_formatUnsignedInteger:a3 withGrouping:0];
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
    v4 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v5 = [v3 displayNameUsingSpecialNamesForMailbox:v4];

    [(MailboxTableCell *)self setTitle:v5];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v11 setHighlighted:a3 animated:a4];
  v6 = [(MailboxTableCell *)self traitCollection];
  v7 = [v6 mf_useSplitViewStyling];

  if ((v7 & 1) == 0 && ([(MailboxTableCell *)self isEditing]& 1) == 0)
  {
    if (v4)
    {
      v8 = +[UIColor _tertiaryFillColor];
      v9 = v8;
    }

    else
    {
      v9 = [(MailboxTableCell *)self traitCollection];
      v8 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [v9 userInterfaceLevel]);
    }

    v10 = [(MailboxTableCell *)self selectedBackgroundView];
    [v10 setBackgroundColor:v8];

    if (!v4)
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

- (void)_updateViewConfigurationsWithState:(unint64_t)a3
{
  v6 = [(MailboxTableCell *)self traitCollection];
  v5 = [v6 mf_useSplitViewStyling];

  if (v5)
  {
    if ([(MailboxTableCell *)self isExpandable])
    {
      [_UIBackgroundViewConfiguration defaultOutlineParentCellConfigurationForState:a3];
    }

    else
    {
      [_UIBackgroundViewConfiguration defaultOutlineCellConfigurationForState:a3];
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
    v4 = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_preferredSubtitleFont + 1);
    *(&self->_preferredSubtitleFont + 1) = v4;

    v3 = *(&self->_preferredSubtitleFont + 1);
  }

  return v3;
}

- (UIImageView)expansionEditingAccessoryImageView
{
  v3 = *(&self->_expansionAccessoryImageView + 1);
  if (!v3)
  {
    v4 = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_expansionAccessoryImageView + 1);
    *(&self->_expansionAccessoryImageView + 1) = v4;

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
    v3 = [(MailboxTableCell *)self accessoryView];
    v4 = [(MailboxTableCell *)self expansionAccessoryImageView];

    if (v3 != v4)
    {
      v5 = [(MailboxTableCell *)self expansionAccessoryImageView];
      [(MailboxTableCell *)self setAccessoryView:v5];
    }

    v6 = [(MailboxTableCell *)self editingAccessoryView];
    v7 = [(MailboxTableCell *)self expansionEditingAccessoryImageView];

    if (v6 != v7)
    {
      v8 = [(MailboxTableCell *)self expansionEditingAccessoryImageView];
      [(MailboxTableCell *)self setEditingAccessoryView:v8];
    }

    v9 = [(MailboxTableCell *)self _shouldReverseLayoutDirection];
    v10 = -1.57079633;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *&v18.c = v11;
    *&v18.tx = v11;
    if (v9)
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
    v13 = [(MailboxTableCell *)self accessoryView];
    v16 = v17;
    [v13 setTransform:&v16];

    v15 = v18;
    v14 = [(MailboxTableCell *)self editingAccessoryView];
    v16 = v15;
    [v14 setTransform:&v16];
  }

  else
  {

    [(MailboxTableCell *)self _doCleanupExpansionAccessoryViews];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (LOBYTE(self->_level) != a3)
  {
    LOBYTE(self->_level) = a3;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)setExpandable:(BOOL)a3
{
  if (HIBYTE(self->_detailsDisclosureButton) != a3)
  {
    HIBYTE(self->_detailsDisclosureButton) = a3;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)layoutSubviews
{
  v3 = [(MailboxTableCell *)self imageView];
  v4 = [v3 image];

  if (*(&self->_iconOffset.y + 1))
  {
    v5 = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
  }

  else
  {
    v5 = 0;
  }

  if ((([(MailboxTableCell *)self isEditing]& 1) != 0 || ![(MailboxTableCell *)self accessoryType]) && [(MailboxTableCell *)self isEditing])
  {
    [(MailboxTableCell *)self editingAccessoryType];
  }

  v6 = [(MailboxTableCell *)self effectiveUserInterfaceLayoutDirection];
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
  v9 = [(MailboxTableCell *)self contentView];
  [v9 bounds];
  v168 = v11;
  rect = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(MailboxTableCell *)self contentView];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ([(MailboxTableCell *)self isExpandable])
  {
    v25 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v25);

    v27 = 12.5;
    if (!v6)
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

    v31 = [(MailboxTableCell *)self contentView];
    [v31 setFrame:{v29, v20, v30, v24}];

    v32 = [(MailboxTableCell *)self accessoryView];
    [v32 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;

    if (v6)
    {
      v39 = 8.0;
    }

    else
    {
      v39 = v30;
    }

    v40 = [(MailboxTableCell *)self accessoryView];
    [v40 setFrame:{v39, v34, v36, v38}];
  }

  if (v4)
  {
    v41 = [UIApp preferredContentSizeCategory];
    v42 = UIContentSizeCategoryIsAccessibilityCategory(v41);

    if (!v42)
    {
      v48 = [(MailboxTableCell *)self imageView];
      [v48 frame];
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
      if (v6)
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

      v60 = [(MailboxTableCell *)self imageView];
      [v60 setFrame:{v58, v52, v54, v56}];

LABEL_35:
      v47 = 0;
      goto LABEL_36;
    }
  }

  v43 = [UIApp preferredContentSizeCategory];
  v44 = UIContentSizeCategoryIsAccessibilityCategory(v43);

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

  v45 = [UIApp preferredContentSizeCategory];
  v46 = UIContentSizeCategoryIsAccessibilityCategory(v45);

  if (v4)
  {
    v47 = 0;
  }

  else
  {
    v47 = v46;
  }

LABEL_36:
  v61 = [(MailboxTableCell *)self contentView];
  [v61 bounds];
  CGRectGetMaxX(v176);

  [(MailboxTableCell *)self isExpandable];
  if (v6)
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
    if (!v6)
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
    if (v6)
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

  v84 = [(MailboxTableCell *)self traitCollection];
  v85 = [v84 _splitViewControllerContext];

  v86 = [(MailboxTableCell *)self _viewConfigurationState];
  recta = height;
  if ([(MailboxTableCell *)self isExpandable])
  {
    v87 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
    v88 = [(MailboxTableCell *)self textLabel];
    v89 = [UIFont fontWithDescriptor:v87 size:0.0];
    [v88 setFont:v89];

    v90 = [(MailboxTableCell *)self textLabel];
    v91 = +[UIColor mailAccountCellTitleColor];
    [v90 setTextColor:v91];

    v92 = [(MailboxTableCell *)self textLabel];
    v93 = +[UIColor clearColor];
    [v92 setBackgroundColor:v93];

    v8 = 8.0;
  }

  else if ([(MailboxTableCell *)self isCellEnabled])
  {
    v94 = *(&self->_userInfo + 1);
    if (v94)
    {
      v87 = [(MailboxTableCell *)self textLabel];
      [v87 setTextColor:v94];
      goto LABEL_57;
    }

    v159 = [(MailboxTableCell *)self traitCollection];
    v160 = [v159 mf_useSplitViewStyling] & ((v86 & 4) != 0);

    if (v160 != 1 || v85 == 2)
    {
      v87 = +[UIColor labelColor];
      v92 = [(MailboxTableCell *)self textLabel];
      [v92 setTextColor:v87];
    }

    else
    {
      v161 = +[UIColor systemWhiteColor];
      v162 = [(MailboxTableCell *)self textLabel];
      [v162 setTextColor:v161];

      v87 = +[UIColor systemWhiteColor];
      v92 = [(MailboxTableCell *)self imageView];
      [v92 setTintColor:v87];
    }
  }

  else
  {
    v87 = [(MailboxTableCell *)self textLabel];
    v92 = +[UIColor secondaryLabelColor];
    [v87 setTextColor:v92];
  }

LABEL_57:
  v95 = [(MailboxTableCell *)self textLabel];
  [v95 frame];
  v97 = v96;
  v99 = v98;

  v163 = v68;
  if (!v6)
  {
    if (v5)
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
      v106 = [(MailboxTableCell *)self contentView];
      [v106 bounds];
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
  if (v5)
  {
    v182.origin.y = y;
    v182.origin.x = v169;
    v182.size.width = v68;
    v182.size.height = height;
    v100 = CGRectGetMaxX(v182) + 5.0;
  }

  v101 = [(MailboxTableCell *)self contentView];
  [v101 bounds];
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
  v107 = [(MailboxTableCell *)self detailTextLabel];
  [v107 frame];
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

  v118 = [UIApp preferredContentSizeCategory];
  v119 = UIContentSizeCategoryIsAccessibilityCategory(v118);

  v120 = [(MailboxTableCell *)self textLabel];
  v121 = v120;
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
    v138 = [(MailboxTableCell *)self textLabel];
    [v138 setFrame:{v130, v131, v132, v133}];

    v139 = [(MailboxTableCell *)self detailTextLabel];
    [v139 setFrame:{v134, v135, v136, v137}];

    v140 = [(MailboxTableCell *)self textLabel];
    [v140 _firstLineBaselineFrameOriginY];
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

    v147 = [(MailboxTableCell *)self accessoryView];
    v148 = v147;
    if (v147)
    {
      [v147 frame];
      v149 = v194.origin.x;
      v150 = v194.size.width;
      v151 = v194.size.height;
      CGRectGetHeight(v194);
      UIRoundToViewScale();
      [v148 setFrame:{v149, v145 - v152, v150, v151}];
    }
  }

  else
  {
    [v120 setFrame:{v104, v166, v105, v165}];

    v148 = [(MailboxTableCell *)self detailTextLabel];
    [v148 setFrame:{v103, v111, v113, v115}];
  }

  v153 = [(MailboxTableCell *)self traitCollection];
  if ([v153 mf_useSplitViewStyling])
  {
    goto LABEL_78;
  }

  v154 = [(MailboxTableCell *)self isEditing];

  if ((v154 & 1) == 0)
  {
    v155 = [(MailboxTableCell *)self isHighlighted];
    v156 = v155;
    if (v155)
    {
      v157 = +[UIColor _tertiaryFillColor];
      v153 = v157;
    }

    else
    {
      v153 = [(MailboxTableCell *)self traitCollection];
      v157 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [v153 userInterfaceLevel]);
    }

    v158 = [(MailboxTableCell *)self selectedBackgroundView];
    [v158 setBackgroundColor:v157];

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
  v11 = [(MailboxTableCell *)self textLabel];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [(MailboxTableCell *)self traitCollection];
  v21 = [v20 horizontalSizeClass];

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
  if (v21 == 1)
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
  v3 = [(MailboxTableCell *)&v8 _scriptingInfo];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    v5 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v6 = [v4 displayNameUsingSpecialNamesForMailbox:v5];

    [v3 setValue:v6 forKey:@"ID"];
  }

  return v3;
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v5 = [EFScheduler mainThreadScheduler:a3];
  [v5 performBlock:&v6];
}

@end