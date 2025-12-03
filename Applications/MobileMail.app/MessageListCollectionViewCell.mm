@interface MessageListCollectionViewCell
+ (OS_os_log)log;
- (EMMessageListItem)messageListItem;
- (MessageListCellDisclosureDelegate)disclosureDelegate;
- (MessageListCollectionViewCell)initWithFrame:(CGRect)frame;
- (NSLayoutConstraint)separatorFlushLeadingConstraint;
- (id)configurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_didTapDisclosureButton:(id)button;
- (void)applyIndicatorPreviewChangeAction:(id)action;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundViewConfigurationGrouping:(int64_t)grouping;
- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNeedsFlushSeparator:(BOOL)separator;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation MessageListCollectionViewCell

- (id)configurationState
{
  v7.receiver = self;
  v7.super_class = MessageListCollectionViewCell;
  configurationState = [(MessageListCollectionViewCell *)&v7 configurationState];
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  v5 = [cellHelper configurationStateForCellConfigurationState:configurationState];

  return v5;
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = MessageListCollectionViewCell;
  [(MessageListCollectionViewCell *)&v5 layoutMarginsDidChange];
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  cellView = [cellHelper cellView];
  [cellView setNeedsLayout];
}

- (void)layoutSubviews
{
  [(MessageListCollectionViewCell *)self frame];
  if (v3 >= 1.0)
  {
    v15.receiver = self;
    v15.super_class = MessageListCollectionViewCell;
    [(MessageListCollectionViewCell *)&v15 layoutSubviews];
    contentView = [(MessageListCollectionViewCell *)self contentView];
    [contentView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
    cellView = [cellHelper cellView];
    [cellView setFrame:{v6, v8, v10, v12}];
  }
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022FDC;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD2F0 != -1)
  {
    dispatch_once(&qword_1006DD2F0, block);
  }

  v2 = qword_1006DD2E8;

  return v2;
}

- (EMMessageListItem)messageListItem
{
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  messageListItem = [cellHelper messageListItem];

  return messageListItem;
}

- (MessageListCollectionViewCell)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = MessageListCollectionViewCell;
  v3 = [(MessageListCollectionViewCell *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MessageListCellView alloc];
    contentView = [(MessageListCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v6 = [(MessageListCellView *)v4 initWithFrame:?];

    v7 = [MessageListCellHelper alloc];
    contentView2 = [(MessageListCollectionViewCell *)v3 contentView];
    v9 = +[MessageListCellHelperMobileMailProxy sharedApplicationProxy];
    v10 = [v7 initWithParentView:v3 contentView:contentView2 cellView:v6 applicationProxy:v9];
    cellHelper = v3->_cellHelper;
    v3->_cellHelper = v10;

    cellView = [(MessageListCellHelper *)v3->_cellHelper cellView];
    disclosureButton = [cellView disclosureButton];
    [disclosureButton addTarget:v3 action:"_didTapDisclosureButton:" forControlEvents:64];

    [(MessageListCollectionViewCell *)v3 _setFocusStyle:0];
    v14 = objc_opt_new();
    v18 = v14;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
    [(MessageListCollectionViewCell *)v3 setAccessories:v15];
  }

  return v3;
}

- (void)_didTapDisclosureButton:(id)button
{
  disclosureDelegate = [(MessageListCollectionViewCell *)self disclosureDelegate];
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  disclosureEnabled = [cellHelper disclosureEnabled];

  v7 = +[MessageListCollectionViewCell log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    itemID = [(MessageListCollectionViewCell *)self itemID];
    v11 = 134218754;
    selfCopy = self;
    v13 = 1024;
    v14 = disclosureEnabled;
    v15 = 2114;
    v16 = itemID;
    v17 = 2114;
    v18 = disclosureDelegate;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p: Did tap disclosure button (enabled=%{BOOL}d, itemID=%{public}@, delegate=%{public}@)", &v11, 0x26u);
  }

  cellHelper2 = [(MessageListCollectionViewCell *)self cellHelper];
  messageListItem = [cellHelper2 messageListItem];
  [disclosureDelegate didSelectDisclosureButtonForMessageListItem:messageListItem disclosureEnabled:disclosureEnabled];

  [(MessageListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  defaultBackgroundConfiguration = [(MessageListCollectionViewCell *)self defaultBackgroundConfiguration];
  cellView = [cellHelper cellView];
  layoutValuesHelper = [cellView layoutValuesHelper];
  [layoutValuesHelper setDefaultBackgroundConfiguration:defaultBackgroundConfiguration];

  v8 = [cellHelper contentConfigurationForState:stateCopy];
  v9 = [cellHelper backgroundConfigurationForState:stateCopy];
  if ([(MessageListCollectionViewCell *)self _backgroundViewConfigurationGrouping]== 4)
  {
    [v9 setBackgroundInsets:{0.0, 0.0, 0.0, 0.0}];
  }

  [cellHelper updateViewConfigurationForState:stateCopy];
  [cellHelper updateViewContentConfiguration:v8];
  [cellHelper updateViewBackgroundConfiguration:v9];
  [(MessageListCollectionViewCell *)self setBackgroundConfiguration:v9];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v6 = [(MessageListCollectionViewCell *)self cellHelper:editing];
  cellView = [v6 cellView];
  [cellView setEditing:editingCopy];

  [(MessageListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  cellView = [cellHelper cellView];
  layoutValuesHelper = [cellView layoutValuesHelper];

  if (!layoutValuesHelper)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MessageListCollectionCell.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"layoutValuesHelper != nil"}];
  }

  style = [cellHelper style];
  if (style == 3)
  {
    [layoutValuesHelper topHitsLayoutValues];
  }

  else
  {
    [layoutValuesHelper defaultLayoutValues];
  }
  v10 = ;
  [v10 defaultRowHeight];
  v12 = v11;

  if ([cellHelper isCompact])
  {
    if (style == 3)
    {
      [layoutValuesHelper topHitsLayoutValues];
    }

    else
    {
      [layoutValuesHelper defaultLayoutValues];
    }
    v13 = ;
    [v13 compactRowHeight];
  }

  else
  {
    if (![cellHelper isExpanded])
    {
      goto LABEL_17;
    }

    if (style == 3)
    {
      [layoutValuesHelper topHitsLayoutValues];
    }

    else
    {
      [layoutValuesHelper expandedLayoutValues];
    }
    v13 = ;
    [v13 defaultRowHeight];
  }

  v12 = v14;

LABEL_17:
  if ([cellHelper disclosureEnabled])
  {
    v12 = v12 + 0.0;
  }

  [attributesCopy size];
  [attributesCopy setSize:?];
  v15 = +[MessageListCollectionViewCell log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    itemID = [(MessageListCollectionViewCell *)self itemID];
    *buf = 134219266;
    selfCopy = self;
    v21 = 2114;
    v22 = itemID;
    v23 = 1024;
    v24 = style == 3;
    v25 = 1024;
    isCompact = [cellHelper isCompact];
    v27 = 1024;
    isExpanded = [cellHelper isExpanded];
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p: preferredLayoutAttributesFittingAttributes - (itemID=%{public}@), isTopHit: %{BOOL}d, isCompact: %{BOOL}d, isExpanded: %{BOOL}d, height: %f", buf, 0x32u);
  }

  return attributesCopy;
}

- (NSLayoutConstraint)separatorFlushLeadingConstraint
{
  separatorFlushLeadingConstraint = self->_separatorFlushLeadingConstraint;
  if (!separatorFlushLeadingConstraint)
  {
    separatorLayoutGuide = [(MessageListCollectionViewCell *)self separatorLayoutGuide];
    leadingAnchor = [separatorLayoutGuide leadingAnchor];
    leadingAnchor2 = [(MessageListCollectionViewCell *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v8 = self->_separatorFlushLeadingConstraint;
    self->_separatorFlushLeadingConstraint = v7;

    separatorFlushLeadingConstraint = self->_separatorFlushLeadingConstraint;
  }

  return separatorFlushLeadingConstraint;
}

- (void)setNeedsFlushSeparator:(BOOL)separator
{
  if (self->_needsFlushSeparator != separator)
  {
    separatorCopy = separator;
    self->_needsFlushSeparator = separator;
    separatorFlushLeadingConstraint = [(MessageListCollectionViewCell *)self separatorFlushLeadingConstraint];
    [separatorFlushLeadingConstraint setActive:separatorCopy];
  }
}

- (void)prepareForReuse
{
  [(MessageListCollectionViewCell *)self setHighlighted:0];
  [(MessageListCollectionViewCell *)self setSelected:0];
  [(MessageListCollectionViewCell *)self setDisclosureDelegate:0];
  [(MessageListCollectionViewCell *)self setNeedsFlushSeparator:0];
  messageListItemFetchTimeoutCancelable = [(MessageListCollectionViewCell *)self messageListItemFetchTimeoutCancelable];
  if (messageListItemFetchTimeoutCancelable)
  {
    v4 = +[MessageListCollectionViewCell log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      itemID = [(MessageListCollectionViewCell *)self itemID];
      *buf = 134218242;
      selfCopy2 = self;
      v15 = 2114;
      v16 = itemID;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%p: prepareForReuse - cancel message list item fetch timeout (itemID=%{public}@)", buf, 0x16u);
    }

    [messageListItemFetchTimeoutCancelable cancel];
    [(MessageListCollectionViewCell *)self setMessageListItemFetchTimeoutCancelable:0];
  }

  messageListItemFuture = [(MessageListCollectionViewCell *)self messageListItemFuture];
  if (messageListItemFuture)
  {
    v7 = +[MessageListCollectionViewCell log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      itemID2 = [(MessageListCollectionViewCell *)self itemID];
      *buf = 134218242;
      selfCopy2 = self;
      v15 = 2114;
      v16 = itemID2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p: prepareForReuse - cancel message list item fetch (itemID=%{public}@)", buf, 0x16u);
    }

    [messageListItemFuture cancel];
    [(MessageListCollectionViewCell *)self setMessageListItemFuture:0];
  }

  [(MessageListCollectionViewCell *)self setItemID:0];
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  cellView = [cellHelper cellView];
  [cellView setChevronType:1];

  cellHelper2 = [(MessageListCollectionViewCell *)self cellHelper];
  [cellHelper2 prepareForReuse];

  v12.receiver = self;
  v12.super_class = MessageListCollectionViewCell;
  [(MessageListCollectionViewCell *)&v12 prepareForReuse];
}

- (void)setBackgroundViewConfigurationGrouping:(int64_t)grouping
{
  self->_backgroundViewConfigurationGrouping = grouping;
  if ((grouping - 1) >= 4)
  {
    grouping = 0;
  }

  [(MessageListCollectionViewCell *)self _setBackgroundViewConfigurationGrouping:grouping];
}

- (void)setDisclosureEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  [cellHelper setDisclosureEnabled:enabledCopy animated:animatedCopy];
}

- (void)applyIndicatorPreviewChangeAction:(id)action
{
  actionCopy = action;
  cellHelper = [(MessageListCollectionViewCell *)self cellHelper];
  cellView = [cellHelper cellView];
  [cellView applyIndicatorPreviewChangeAction:actionCopy];
}

- (MessageListCellDisclosureDelegate)disclosureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureDelegate);

  return WeakRetained;
}

@end