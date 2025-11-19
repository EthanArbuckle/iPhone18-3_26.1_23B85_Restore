@interface MessageListCollectionViewCell
+ (OS_os_log)log;
- (EMMessageListItem)messageListItem;
- (MessageListCellDisclosureDelegate)disclosureDelegate;
- (MessageListCollectionViewCell)initWithFrame:(CGRect)a3;
- (NSLayoutConstraint)separatorFlushLeadingConstraint;
- (id)configurationState;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_didTapDisclosureButton:(id)a3;
- (void)applyIndicatorPreviewChangeAction:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundViewConfigurationGrouping:(int64_t)a3;
- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setNeedsFlushSeparator:(BOOL)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation MessageListCollectionViewCell

- (id)configurationState
{
  v7.receiver = self;
  v7.super_class = MessageListCollectionViewCell;
  v3 = [(MessageListCollectionViewCell *)&v7 configurationState];
  v4 = [(MessageListCollectionViewCell *)self cellHelper];
  v5 = [v4 configurationStateForCellConfigurationState:v3];

  return v5;
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = MessageListCollectionViewCell;
  [(MessageListCollectionViewCell *)&v5 layoutMarginsDidChange];
  v3 = [(MessageListCollectionViewCell *)self cellHelper];
  v4 = [v3 cellView];
  [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  [(MessageListCollectionViewCell *)self frame];
  if (v3 >= 1.0)
  {
    v15.receiver = self;
    v15.super_class = MessageListCollectionViewCell;
    [(MessageListCollectionViewCell *)&v15 layoutSubviews];
    v4 = [(MessageListCollectionViewCell *)self contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(MessageListCollectionViewCell *)self cellHelper];
    v14 = [v13 cellView];
    [v14 setFrame:{v6, v8, v10, v12}];
  }
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022FDC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD2F0 != -1)
  {
    dispatch_once(&qword_1006DD2F0, block);
  }

  v2 = qword_1006DD2E8;

  return v2;
}

- (EMMessageListItem)messageListItem
{
  v2 = [(MessageListCollectionViewCell *)self cellHelper];
  v3 = [v2 messageListItem];

  return v3;
}

- (MessageListCollectionViewCell)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = MessageListCollectionViewCell;
  v3 = [(MessageListCollectionViewCell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MessageListCellView alloc];
    v5 = [(MessageListCollectionViewCell *)v3 contentView];
    [v5 bounds];
    v6 = [(MessageListCellView *)v4 initWithFrame:?];

    v7 = [MessageListCellHelper alloc];
    v8 = [(MessageListCollectionViewCell *)v3 contentView];
    v9 = +[MessageListCellHelperMobileMailProxy sharedApplicationProxy];
    v10 = [v7 initWithParentView:v3 contentView:v8 cellView:v6 applicationProxy:v9];
    cellHelper = v3->_cellHelper;
    v3->_cellHelper = v10;

    v12 = [(MessageListCellHelper *)v3->_cellHelper cellView];
    v13 = [v12 disclosureButton];
    [v13 addTarget:v3 action:"_didTapDisclosureButton:" forControlEvents:64];

    [(MessageListCollectionViewCell *)v3 _setFocusStyle:0];
    v14 = objc_opt_new();
    v18 = v14;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
    [(MessageListCollectionViewCell *)v3 setAccessories:v15];
  }

  return v3;
}

- (void)_didTapDisclosureButton:(id)a3
{
  v4 = [(MessageListCollectionViewCell *)self disclosureDelegate];
  v5 = [(MessageListCollectionViewCell *)self cellHelper];
  v6 = [v5 disclosureEnabled];

  v7 = +[MessageListCollectionViewCell log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MessageListCollectionViewCell *)self itemID];
    v11 = 134218754;
    v12 = self;
    v13 = 1024;
    v14 = v6;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p: Did tap disclosure button (enabled=%{BOOL}d, itemID=%{public}@, delegate=%{public}@)", &v11, 0x26u);
  }

  v9 = [(MessageListCollectionViewCell *)self cellHelper];
  v10 = [v9 messageListItem];
  [v4 didSelectDisclosureButtonForMessageListItem:v10 disclosureEnabled:v6];

  [(MessageListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v10 = a3;
  v4 = [(MessageListCollectionViewCell *)self cellHelper];
  v5 = [(MessageListCollectionViewCell *)self defaultBackgroundConfiguration];
  v6 = [v4 cellView];
  v7 = [v6 layoutValuesHelper];
  [v7 setDefaultBackgroundConfiguration:v5];

  v8 = [v4 contentConfigurationForState:v10];
  v9 = [v4 backgroundConfigurationForState:v10];
  if ([(MessageListCollectionViewCell *)self _backgroundViewConfigurationGrouping]== 4)
  {
    [v9 setBackgroundInsets:{0.0, 0.0, 0.0, 0.0}];
  }

  [v4 updateViewConfigurationForState:v10];
  [v4 updateViewContentConfiguration:v8];
  [v4 updateViewBackgroundConfiguration:v9];
  [(MessageListCollectionViewCell *)self setBackgroundConfiguration:v9];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(MessageListCollectionViewCell *)self cellHelper:a3];
  v7 = [v6 cellView];
  [v7 setEditing:v4];

  [(MessageListCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v5 = a3;
  v6 = [(MessageListCollectionViewCell *)self cellHelper];
  v7 = [v6 cellView];
  v8 = [v7 layoutValuesHelper];

  if (!v8)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MessageListCollectionCell.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"layoutValuesHelper != nil"}];
  }

  v9 = [v6 style];
  if (v9 == 3)
  {
    [v8 topHitsLayoutValues];
  }

  else
  {
    [v8 defaultLayoutValues];
  }
  v10 = ;
  [v10 defaultRowHeight];
  v12 = v11;

  if ([v6 isCompact])
  {
    if (v9 == 3)
    {
      [v8 topHitsLayoutValues];
    }

    else
    {
      [v8 defaultLayoutValues];
    }
    v13 = ;
    [v13 compactRowHeight];
  }

  else
  {
    if (![v6 isExpanded])
    {
      goto LABEL_17;
    }

    if (v9 == 3)
    {
      [v8 topHitsLayoutValues];
    }

    else
    {
      [v8 expandedLayoutValues];
    }
    v13 = ;
    [v13 defaultRowHeight];
  }

  v12 = v14;

LABEL_17:
  if ([v6 disclosureEnabled])
  {
    v12 = v12 + 0.0;
  }

  [v5 size];
  [v5 setSize:?];
  v15 = +[MessageListCollectionViewCell log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(MessageListCollectionViewCell *)self itemID];
    *buf = 134219266;
    v20 = self;
    v21 = 2114;
    v22 = v16;
    v23 = 1024;
    v24 = v9 == 3;
    v25 = 1024;
    v26 = [v6 isCompact];
    v27 = 1024;
    v28 = [v6 isExpanded];
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p: preferredLayoutAttributesFittingAttributes - (itemID=%{public}@), isTopHit: %{BOOL}d, isCompact: %{BOOL}d, isExpanded: %{BOOL}d, height: %f", buf, 0x32u);
  }

  return v5;
}

- (NSLayoutConstraint)separatorFlushLeadingConstraint
{
  separatorFlushLeadingConstraint = self->_separatorFlushLeadingConstraint;
  if (!separatorFlushLeadingConstraint)
  {
    v4 = [(MessageListCollectionViewCell *)self separatorLayoutGuide];
    v5 = [v4 leadingAnchor];
    v6 = [(MessageListCollectionViewCell *)self leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v8 = self->_separatorFlushLeadingConstraint;
    self->_separatorFlushLeadingConstraint = v7;

    separatorFlushLeadingConstraint = self->_separatorFlushLeadingConstraint;
  }

  return separatorFlushLeadingConstraint;
}

- (void)setNeedsFlushSeparator:(BOOL)a3
{
  if (self->_needsFlushSeparator != a3)
  {
    v3 = a3;
    self->_needsFlushSeparator = a3;
    v4 = [(MessageListCollectionViewCell *)self separatorFlushLeadingConstraint];
    [v4 setActive:v3];
  }
}

- (void)prepareForReuse
{
  [(MessageListCollectionViewCell *)self setHighlighted:0];
  [(MessageListCollectionViewCell *)self setSelected:0];
  [(MessageListCollectionViewCell *)self setDisclosureDelegate:0];
  [(MessageListCollectionViewCell *)self setNeedsFlushSeparator:0];
  v3 = [(MessageListCollectionViewCell *)self messageListItemFetchTimeoutCancelable];
  if (v3)
  {
    v4 = +[MessageListCollectionViewCell log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MessageListCollectionViewCell *)self itemID];
      *buf = 134218242;
      v14 = self;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%p: prepareForReuse - cancel message list item fetch timeout (itemID=%{public}@)", buf, 0x16u);
    }

    [v3 cancel];
    [(MessageListCollectionViewCell *)self setMessageListItemFetchTimeoutCancelable:0];
  }

  v6 = [(MessageListCollectionViewCell *)self messageListItemFuture];
  if (v6)
  {
    v7 = +[MessageListCollectionViewCell log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(MessageListCollectionViewCell *)self itemID];
      *buf = 134218242;
      v14 = self;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%p: prepareForReuse - cancel message list item fetch (itemID=%{public}@)", buf, 0x16u);
    }

    [v6 cancel];
    [(MessageListCollectionViewCell *)self setMessageListItemFuture:0];
  }

  [(MessageListCollectionViewCell *)self setItemID:0];
  v9 = [(MessageListCollectionViewCell *)self cellHelper];
  v10 = [v9 cellView];
  [v10 setChevronType:1];

  v11 = [(MessageListCollectionViewCell *)self cellHelper];
  [v11 prepareForReuse];

  v12.receiver = self;
  v12.super_class = MessageListCollectionViewCell;
  [(MessageListCollectionViewCell *)&v12 prepareForReuse];
}

- (void)setBackgroundViewConfigurationGrouping:(int64_t)a3
{
  self->_backgroundViewConfigurationGrouping = a3;
  if ((a3 - 1) >= 4)
  {
    a3 = 0;
  }

  [(MessageListCollectionViewCell *)self _setBackgroundViewConfigurationGrouping:a3];
}

- (void)setDisclosureEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(MessageListCollectionViewCell *)self cellHelper];
  [v6 setDisclosureEnabled:v5 animated:v4];
}

- (void)applyIndicatorPreviewChangeAction:(id)a3
{
  v6 = a3;
  v4 = [(MessageListCollectionViewCell *)self cellHelper];
  v5 = [v4 cellView];
  [v5 applyIndicatorPreviewChangeAction:v6];
}

- (MessageListCellDisclosureDelegate)disclosureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureDelegate);

  return WeakRetained;
}

@end