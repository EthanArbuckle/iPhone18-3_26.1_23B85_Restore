@interface CalendarMessageCell
+ (Class)cellClassForNotification:(id)notification;
+ (id)_authorCache;
+ (id)authorCacheObjectForKey:(id)key;
+ (id)layoutMetrics;
+ (id)strikethroughTitleColor:(unint64_t)color;
+ (int64_t)numberOfLinesForBodyLabels;
+ (int64_t)numberOfLinesForTitleLabels;
+ (void)authorCacheSetObject:(id)object forKey:(id)key;
+ (void)clearMetrics;
+ (void)emptyAuthorCache;
- (BOOL)_shouldWrapTextUnderAuthor;
- (CalendarMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CalendarMessageCellDelegate)delegate;
- (id)_responseButtons;
- (id)actions;
- (id)authorAddressForIdentity:(id)identity;
- (id)authorCacheKeyForIdentity:(id)identity;
- (id)bodyStringDict;
- (id)color;
- (id)eventStatusButtonsViewButtonFont:(id)font;
- (id)provideAuthorView;
- (id)titleStrings;
- (unint64_t)options;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_removeColorBarConstraintsIfNeeded;
- (void)_removeCommentPromptRelatedConstraintsIfNeeded;
- (void)_removeDisclosureConstraintsIfNeeded;
- (void)_removeLabelRelatedConstraintsIfNeeded;
- (void)_updateAppEntityAnnotation;
- (void)_updateAppEntityAnnotationState;
- (void)_updateColorBar;
- (void)_updateLabels;
- (void)_updateResponseButtons;
- (void)actionLabelTap:(id)tap;
- (void)eventStatusButtonsView:(id)view didSelectAction:(int64_t)action sourceView:(id)sourceView sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDestination:(unint64_t)destination;
- (void)setDrawsOwnSeparator:(BOOL)separator;
- (void)setHasDisclosure:(BOOL)disclosure;
- (void)setInPadSidebar:(BOOL)sidebar;
- (void)setNotification:(id)notification;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setShowsCommentPrompt:(BOOL)prompt animated:(BOOL)animated initialValue:(id)value;
- (void)setupColorBarConstraintsIfNeeded;
- (void)setupCommentPromptConstraintsIfNeeded;
- (void)setupDisclosureConstraintsIfNeeded;
- (void)setupLabelConstraintsIfNeeded;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateAuthor;
- (void)updateSelectedResponseButton;
@end

@implementation CalendarMessageCell

+ (id)_authorCache
{
  if (qword_1002519C8 != -1)
  {
    sub_10016FF58();
  }

  v3 = qword_1002519C0;

  return v3;
}

+ (void)emptyAuthorCache
{
  _authorCache = [self _authorCache];
  [_authorCache removeAllObjects];
}

+ (id)authorCacheObjectForKey:(id)key
{
  keyCopy = key;
  _authorCache = [self _authorCache];
  v6 = [_authorCache objectForKey:keyCopy];

  return v6;
}

+ (void)authorCacheSetObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  _authorCache = [self _authorCache];
  [_authorCache setObject:objectCopy forKey:keyCopy];
}

- (CalendarMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = CalendarMessageCell;
  v4 = [(CalendarMessageCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_didSetupColorBarConstraints = 0;
    v4->_didSetupLabelConstraints = 0;
    v4->_didSetupDisclosureConstraints = 0;
    provideAuthorView = [(CalendarMessageCell *)v4 provideAuthorView];
    authorView = v5->_authorView;
    v5->_authorView = provideAuthorView;

    [(UIView *)v5->_authorView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(CalendarMessageCell *)v5 contentView];
    [contentView addSubview:v5->_authorView];

    v9 = objc_alloc_init(UIView);
    separatorView = v5->_separatorView;
    v5->_separatorView = v9;

    v11 = +[UIColor separatorColor];
    [(UIView *)v5->_separatorView setBackgroundColor:v11];

    [(UIView *)v5->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_separatorView setHidden:1];
    contentView2 = [(CalendarMessageCell *)v5 contentView];
    [contentView2 addSubview:v5->_separatorView];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v5 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)layoutSubviews
{
  if (![(CalendarMessageCell *)self drawsOwnSeparator])
  {
    IsLeftToRight = CalInterfaceIsLeftToRight();
    superview = [(CalendarMessageCell *)self superview];
    [superview safeAreaInsets];
    v6 = v5;
    v8 = v7;

    if (IsLeftToRight)
    {
      v8 = v6;
    }

    if ([(CalendarMessageCell *)self _shouldWrapTextUnderAuthor])
    {
      CalRoundToScreenScale();
      v10 = v9;
      CalRoundToScreenScale();
      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v10 + v11];
      v13 = v12;
      contentView = [(CalendarMessageCell *)self contentView];
      [contentView layoutMargins];
      v16 = v13 + v15;
    }

    else
    {
      contentView = [(CalendarMessageCell *)self contentView];
      [contentView layoutMargins];
      v18 = v17;
      CalRoundToScreenScale();
      v20 = v18 + v19;
      CalRoundToScreenScale();
      v22 = v20 + v21;
      CalRoundToScreenScale();
      v24 = v22 + v23;
      CalRoundToScreenScale();
      v16 = v24 + v25;
    }

    [(CalendarMessageCell *)self setSeparatorInset:0.0, v8 + v16, 0.0, 16.0];
  }

  v26.receiver = self;
  v26.super_class = CalendarMessageCell;
  [(CalendarMessageCell *)&v26 layoutSubviews];
}

- (id)provideAuthorView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CalendarMessageCell;
  [(CalendarMessageCell *)&v3 prepareForReuse];
  self->_didSetupColorBarConstraints = 0;
  self->_didSetupLabelConstraints = 0;
  self->_didSetupDisclosureConstraints = 0;
  [(CalendarMessageCell *)self setConflictDict:0];
}

- (void)setDestination:(unint64_t)destination
{
  if (self->_destination != destination)
  {
    self->_destination = destination;
    if (CalSystemSolariumEnabled())
    {
      v4 = +[UIBackgroundConfiguration clearConfiguration];
      [(CalendarMessageCell *)self setBackgroundConfiguration:v4];

      v6 = +[UIColor clearColor];
      backgroundConfiguration = [(CalendarMessageCell *)self backgroundConfiguration];
      [backgroundConfiguration setBackgroundColor:v6];
    }

    else
    {
      if (self->_destination == 2)
      {
        +[UIBackgroundConfiguration listSidebarCellConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listGroupedCellConfiguration];
      }
      v6 = ;
      [(CalendarMessageCell *)self setBackgroundConfiguration:?];
    }
  }
}

- (void)setDrawsOwnSeparator:(BOOL)separator
{
  self->_drawsOwnSeparator = separator;
  v4 = [(CalendarMessageCell *)self drawsOwnSeparator]^ 1;
  separatorView = self->_separatorView;

  [(UIView *)separatorView setHidden:v4];
}

- (void)setInPadSidebar:(BOOL)sidebar
{
  self->_inPadSidebar = sidebar;
  _responseButtons = [(CalendarMessageCell *)self _responseButtons];
  [_responseButtons setInPadSidebar:{-[CalendarMessageCell inPadSidebar](self, "inPadSidebar")}];
}

+ (Class)cellClassForNotification:(id)notification
{
  type = [notification type];
  if (type <= 7)
  {
    if ((type - 4) < 4 || type < 4)
    {
      goto LABEL_14;
    }

LABEL_13:
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"CalendarMessageCell.m" lineNumber:271 description:@"Unexpected notification type"];

    v7 = 0;
    goto LABEL_15;
  }

  if (type <= 11)
  {
    if ((type - 9) < 2 || type == 8 || type == 11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((type - 12) >= 3)
  {
    goto LABEL_13;
  }

LABEL_14:
  v7 = objc_opt_class();
LABEL_15:

  return v7;
}

+ (id)strikethroughTitleColor:(unint64_t)color
{
  if (color == 2)
  {
    v3 = &qword_1002519D0;
    v4 = qword_1002519D0;
    if (qword_1002519D0)
    {
      goto LABEL_7;
    }

    v5 = &stru_10020FDB8;
  }

  else
  {
    v3 = &qword_1002519D8;
    v4 = qword_1002519D8;
    if (qword_1002519D8)
    {
      goto LABEL_7;
    }

    v5 = &stru_10020FDD8;
  }

  v6 = [UIColor colorWithDynamicProvider:v5];
  v7 = *v3;
  *v3 = v6;

  v4 = *v3;
LABEL_7:

  return v4;
}

+ (id)layoutMetrics
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000775E4;
  v17 = &unk_10020F5F0;
  selfCopy = self;
  if (qword_1002519E0 != -1)
  {
    dispatch_once(&qword_1002519E0, &v14);
  }

  v2 = qword_1002519E8;
  if (!qword_1002519E8)
  {
    CalRoundToScreenScale();
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v14, v15, v16, v17, selfCopy];
    v4 = v3;
    v19[0] = @"verticalContainerPadding";
    CalRoundToScreenScale();
    v5 = [NSNumber numberWithDouble:?];
    v20[0] = v5;
    v19[1] = @"avatarPadding";
    v6 = [NSNumber numberWithDouble:v4];
    v20[1] = v6;
    v19[2] = @"interLabelPadding";
    CalRoundToScreenScale();
    v7 = [NSNumber numberWithDouble:?];
    v20[2] = v7;
    v19[3] = @"verticalButtonPadding";
    CalRoundToScreenScale();
    v8 = [NSNumber numberWithDouble:?];
    v20[3] = v8;
    v19[4] = @"avatarSize";
    CalRoundToScreenScale();
    v9 = [NSNumber numberWithDouble:?];
    v20[4] = v9;
    v19[5] = @"colorBarWidth";
    CalRoundToScreenScale();
    v10 = [NSNumber numberWithDouble:?];
    v19[6] = @"disclosureTrailingPadding";
    v20[5] = v10;
    v20[6] = &off_10021A2A0;
    v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
    v12 = qword_1002519E8;
    qword_1002519E8 = v11;

    v2 = qword_1002519E8;
  }

  return v2;
}

+ (void)clearMetrics
{
  v2 = qword_1002519E8;
  qword_1002519E8 = 0;
}

- (void)setupColorBarConstraintsIfNeeded
{
  if (!self->_didSetupColorBarConstraints)
  {
    [(CalendarMessageCell *)self _removeColorBarConstraintsIfNeeded];
    layoutMetrics = [objc_opt_class() layoutMetrics];
    v3 = _NSDictionaryOfVariableBindings(@"_colorBar", self->_colorBar, 0);
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[_colorBar]", 512, layoutMetrics, v3);
    [v4 addObjectsFromArray:v5];

    widthAnchor = [(MessageCellColorBarView *)self->_colorBar widthAnchor];
    traitCollection = [(CalendarMessageCell *)self traitCollection];
    v8 = EKUIUsesLargeTextLayout();
    v9 = 6.0;
    if ((v8 & 1) == 0)
    {
      CalRoundToScreenScale();
    }

    v10 = [widthAnchor constraintEqualToConstant:v9];
    [v4 addObject:v10];

    v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(verticalContainerPadding)-[_colorBar]-(verticalContainerPadding)-|", 0, layoutMetrics, v3);
    [v4 addObjectsFromArray:v11];

    [NSLayoutConstraint activateConstraints:v4];
    v12 = [NSArray arrayWithArray:v4];
    [(CalendarMessageCell *)self setColorBarConstraints:v12];

    self->_didSetupColorBarConstraints = 1;
  }
}

- (BOOL)_shouldWrapTextUnderAuthor
{
  traitCollection = [(CalendarMessageCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryAccessibilityMedium) == NSOrderedDescending;

  return v4;
}

- (void)_removeColorBarConstraintsIfNeeded
{
  colorBarConstraints = [(CalendarMessageCell *)self colorBarConstraints];

  if (colorBarConstraints)
  {
    colorBarConstraints2 = [(CalendarMessageCell *)self colorBarConstraints];
    [NSLayoutConstraint deactivateConstraints:colorBarConstraints2];

    [(CalendarMessageCell *)self setColorBarConstraints:0];
  }
}

- (void)setupLabelConstraintsIfNeeded
{
  if (self->_didSetupLabelConstraints)
  {
    return;
  }

  selfCopy = self;
  [(CalendarMessageCell *)self _removeLabelRelatedConstraintsIfNeeded];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v197 = objc_alloc_init(NSMutableArray);
  layoutMetrics = [objc_opt_class() layoutMetrics];
  v6 = [(NSArray *)selfCopy->_titleLabels count];
  firstValue = [(NSArray *)selfCopy->_titleLabels objectAtIndexedSubscript:0];
  v192 = [(NSArray *)selfCopy->_titleLabels objectAtIndexedSubscript:?];
  v7 = [(NSArray *)selfCopy->_actionLabels count];
  v188 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = [(NSArray *)selfCopy->_actionLabels objectAtIndexedSubscript:0];
    if (v8 == 1)
    {
      v194 = v9;
      v195 = v194;
    }

    else
    {
      v195 = v9;
      v194 = [(NSArray *)selfCopy->_actionLabels objectAtIndexedSubscript:v8 - 1];
    }
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  v199 = [(NSArray *)selfCopy->_bodyLabels count];
  firstObject = [(NSArray *)selfCopy->_bodyLabels firstObject];
  heightAnchor = [(UIView *)selfCopy->_authorView heightAnchor];
  widthAnchor = [(UIView *)selfCopy->_authorView widthAnchor];
  v12 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  [v3 addObject:v12];

  v13 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  v14 = _NSDictionaryOfVariableBindings(@"_colorBar, _authorView", selfCopy->_colorBar, selfCopy->_authorView, 0);
  v15 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[_colorBar]-(avatarPadding)-[_authorView(==avatarSize)]", 0, layoutMetrics, v14);
  [v3 addObjectsFromArray:v15];

  v198 = v4;
  v191 = layoutMetrics;
  if ([(CalendarMessageCell *)selfCopy _shouldWrapTextUnderAuthor])
  {
    centerYAnchor = [(UIView *)selfCopy->_authorView centerYAnchor];
    firstBaselineAnchor = [firstValue firstBaselineAnchor];
    font = [firstValue font];
    [font capHeight];
    CalRoundToScreenScale();
    v20 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v19];
    [v3 addObject:v20];

    v21 = firstValue;
    leadingAnchor = [(UIView *)selfCopy->_authorView leadingAnchor];
    leadingAnchor2 = [firstValue leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v3 addObject:v24];

    v13 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  }

  else
  {
    v25 = _NSDictionaryOfVariableBindings(@"_authorView", selfCopy->_authorView, 0);
    v26 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(verticalContainerPadding)-[_authorView]", 0, layoutMetrics, v25);
    [v3 addObjectsFromArray:v26];

    leadingAnchor = _NSDictionaryOfVariableBindings(@"topTitleLabel,_authorView", firstValue, selfCopy->_authorView, 0);
    v27 = layoutMetrics;
    v21 = firstValue;
    leadingAnchor2 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[_authorView]-(avatarPadding)-[topTitleLabel]", 0, v27, leadingAnchor);
    [v3 addObjectsFromArray:leadingAnchor2];
  }

  v28 = v13[410];
  contentView = [(CalendarMessageCell *)selfCopy contentView];
  CalRoundToScreenScale();
  v31 = [v28 constraintWithItem:contentView attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:-(v30 + -1.0)];
  firstTitleLabelToContentViewTopConstraint = selfCopy->_firstTitleLabelToContentViewTopConstraint;
  selfCopy->_firstTitleLabelToContentViewTopConstraint = v31;

  [v197 addObject:selfCopy->_firstTitleLabelToContentViewTopConstraint];
  [(CalendarMessageCell *)selfCopy setHasDisclosure:selfCopy->_hasDisclosure];
  font2 = [v21 font];
  [font2 _scaledValueForValue:4.0];
  v35 = v34;

  v201 = v3;
  if (v6 >= 2)
  {
    for (i = 1; i != v6; ++i)
    {
      v37 = [(NSArray *)selfCopy->_titleLabels objectAtIndexedSubscript:i];
      v38 = [(NSArray *)selfCopy->_titleLabels objectAtIndexedSubscript:i - 1];
      topAnchor = [v37 topAnchor];
      bottomAnchor = [v38 bottomAnchor];
      v41 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v35];
      [v201 addObject:v41];

      v3 = v201;
      v42 = [NSLayoutConstraint constraintWithItem:v38 attribute:5 relatedBy:0 toItem:v37 attribute:5 multiplier:1.0 constant:0.0];
      [v201 addObject:v42];

      v43 = [NSLayoutConstraint constraintWithItem:v38 attribute:6 relatedBy:0 toItem:v37 attribute:6 multiplier:1.0 constant:0.0];
      [v201 addObject:v43];

      if (i == v6 - 1)
      {
        v44 = [NSLayoutConstraint constraintWithItem:v37 attribute:6 relatedBy:0 toItem:firstValue attribute:6 multiplier:1.0 constant:0.0];
        [v201 addObject:v44];
      }
    }
  }

  [NSLayoutConstraint activateConstraints:v3];
  p_titleLabelConstraints = &selfCopy->_titleLabelConstraints;
  objc_storeStrong(&selfCopy->_titleLabelConstraints, v3);
  v45 = v192;
  senderLabel = selfCopy->_senderLabel;
  v47 = v45;
  v193 = v45;
  if (senderLabel)
  {
    topAnchor2 = [(UILabel *)senderLabel topAnchor];
    bottomAnchor2 = [(UILabel *)v45 bottomAnchor];
    v50 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    [v198 addObject:v50];

    v51 = [NSLayoutConstraint constraintWithItem:selfCopy->_senderLabel attribute:5 relatedBy:0 toItem:v193 attribute:5 multiplier:1.0 constant:0.0];
    [v198 addObject:v51];

    v52 = [NSLayoutConstraint constraintWithItem:selfCopy->_senderLabel attribute:6 relatedBy:0 toItem:v193 attribute:6 multiplier:1.0 constant:0.0];
    [v198 addObject:v52];

    v47 = selfCopy->_senderLabel;
  }

  if (v188)
  {
    v53 = v195;
    v54 = 0.0;
    v55 = [NSLayoutConstraint constraintWithItem:v53 attribute:5 relatedBy:0 toItem:firstValue attribute:5 multiplier:1.0 constant:0.0];
    [v198 addObject:v55];

    topAnchor3 = [v53 topAnchor];
    v184 = v47;
    bottomAnchor3 = [(UILabel *)v47 bottomAnchor];
    v58 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:v35];
    [v198 addObject:v58];

    v59 = [NSLayoutConstraint constraintWithItem:v194 attribute:6 relatedBy:-1 toItem:firstValue attribute:6 multiplier:1.0 constant:0.0];
    [v198 addObject:v59];

    LODWORD(v60) = 1148846080;
    [v53 setContentHuggingPriority:0 forAxis:v60];
    LODWORD(v61) = 1148846080;
    [v53 setContentCompressionResistancePriority:0 forAxis:v61];
    LODWORD(v62) = 1148846080;
    [v53 setContentHuggingPriority:1 forAxis:v62];
    LODWORD(v63) = 1148846080;
    [v53 setContentCompressionResistancePriority:1 forAxis:v63];
    v64 = v53;
    if (v188 != 1)
    {
      v65 = 1;
      v66 = v53;
      do
      {
        v64 = [(NSArray *)selfCopy->_actionLabels objectAtIndexedSubscript:v65];
        LODWORD(v67) = 1148846080;
        [v64 setContentHuggingPriority:0 forAxis:v67];
        LODWORD(v68) = 1148846080;
        [v64 setContentCompressionResistancePriority:0 forAxis:v68];
        v69 = [NSLayoutConstraint constraintWithItem:v64 attribute:5 relatedBy:0 toItem:v66 attribute:6 multiplier:1.0 constant:0.0];
        [v198 addObject:v69];

        v70 = [NSLayoutConstraint constraintWithItem:v64 attribute:12 relatedBy:0 toItem:v53 attribute:12 multiplier:1.0 constant:0.0];
        [v198 addObject:v70];

        [v64 sizeToFit];
        [v64 frame];
        v54 = v54 + v71;

        ++v65;
        v66 = v64;
      }

      while (v188 != v65);
    }

    v72 = [NSLayoutConstraint constraintWithItem:v53 attribute:6 relatedBy:-1 toItem:firstValue attribute:6 multiplier:1.0 constant:-v54];
    [v198 addObject:v72];

    v73 = v53;
    v47 = v73;
  }

  if (firstObject)
  {
    topAnchor4 = [firstObject topAnchor];
    bottomAnchor4 = [(UILabel *)v47 bottomAnchor];
    v76 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:v35];
    lastTitleLabelToFirstBodyLabelConstraint = selfCopy->_lastTitleLabelToFirstBodyLabelConstraint;
    selfCopy->_lastTitleLabelToFirstBodyLabelConstraint = v76;

    v78 = [NSLayoutConstraint constraintWithItem:firstObject attribute:5 relatedBy:0 toItem:firstValue attribute:5 multiplier:1.0 constant:0.0];
    [v198 addObject:v78];

    v79 = [NSLayoutConstraint constraintWithItem:firstObject attribute:6 relatedBy:0 toItem:firstValue attribute:6 multiplier:1.0 constant:0.0];
    [v198 addObject:v79];

    [v197 addObject:selfCopy->_lastTitleLabelToFirstBodyLabelConstraint];
    v80 = firstObject;

    v47 = v80;
  }

  if (v199 < 2)
  {
    v83 = v47;
    v82 = selfCopy;
  }

  else
  {
    v81 = 1;
    v82 = selfCopy;
    do
    {
      v83 = [(NSArray *)selfCopy->_bodyLabels objectAtIndexedSubscript:v81];
      v84 = [(NSArray *)selfCopy->_bodyLabels objectAtIndexedSubscript:v81 - 1];
      topAnchor5 = [(UILabel *)v83 topAnchor];
      bottomAnchor5 = [v84 bottomAnchor];
      v87 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:v35];
      [v198 addObject:v87];

      v88 = [NSLayoutConstraint constraintWithItem:v83 attribute:5 relatedBy:0 toItem:firstValue attribute:5 multiplier:1.0 constant:0.0];
      [v198 addObject:v88];

      v89 = [NSLayoutConstraint constraintWithItem:v83 attribute:6 relatedBy:0 toItem:firstValue attribute:6 multiplier:1.0 constant:0.0];
      [v198 addObject:v89];

      ++v81;
      v47 = v83;
    }

    while (v81 != v199);
  }

  v90 = v83;
  blockedWarningView = v82->_blockedWarningView;
  if (blockedWarningView)
  {
    topAnchor6 = [(MessageCellWarningView *)blockedWarningView topAnchor];
    v93 = v83;
    bottomAnchor6 = [(UILabel *)v83 bottomAnchor];
    v95 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6 constant:v35];
    [v198 addObject:v95];

    v96 = firstValue;
    v97 = [NSLayoutConstraint constraintWithItem:selfCopy->_blockedWarningView attribute:5 relatedBy:0 toItem:firstValue attribute:5 multiplier:1.0 constant:0.0];
    [v198 addObject:v97];

    v98 = v198;
    v99 = [NSLayoutConstraint constraintWithItem:selfCopy->_blockedWarningView attribute:6 relatedBy:0 toItem:firstValue attribute:6 multiplier:1.0 constant:0.0];
    [v198 addObject:v99];

    v100 = selfCopy->_blockedWarningView;
    v101 = v100;
  }

  else
  {
    selfCopy = v82;
    v96 = firstValue;
    v98 = v198;
    v101 = v90;
  }

  warningView = selfCopy->_warningView;
  if (warningView)
  {
    topAnchor7 = [(MessageCellWarningView *)warningView topAnchor];
    bottomAnchor7 = [(MessageCellWarningView *)v101 bottomAnchor];
    v105 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:v35];
    [v98 addObject:v105];

    v106 = [NSLayoutConstraint constraintWithItem:selfCopy->_warningView attribute:5 relatedBy:0 toItem:v96 attribute:5 multiplier:1.0 constant:0.0];
    [v98 addObject:v106];

    v107 = [NSLayoutConstraint constraintWithItem:selfCopy->_warningView attribute:6 relatedBy:0 toItem:v96 attribute:6 multiplier:1.0 constant:0.0];
    [v98 addObject:v107];

    v108 = selfCopy->_warningView;
    v101 = v108;
  }

  [NSLayoutConstraint activateConstraints:v98];
  objc_storeStrong(&selfCopy->_bodyLabelConstraints, v98);
  _responseButtons = [(CalendarMessageCell *)selfCopy _responseButtons];
  leadingButton = [_responseButtons leadingButton];
  titleLabel = [leadingButton titleLabel];
  font3 = [titleLabel font];
  [font3 _scaledValueForValue:-10.0];
  v114 = v113;

  if ([_responseButtons shouldUseVerticalLayout])
  {
    topAnchor8 = [_responseButtons topAnchor];
    lastBaselineAnchor = [(MessageCellWarningView *)v101 lastBaselineAnchor];
    v117 = [topAnchor8 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.125];
    lastBodyLabelToResponseButtonsConstraint = selfCopy->_lastBodyLabelToResponseButtonsConstraint;
    selfCopy->_lastBodyLabelToResponseButtonsConstraint = v117;

    v119 = v197;
  }

  else
  {
    v119 = v197;
    if (CalSystemSolariumEnabled())
    {
      v120 = [NSLayoutConstraint constraintWithItem:v101 attribute:4 relatedBy:0 toItem:_responseButtons attribute:3 multiplier:1.0 constant:v114];
      topAnchor8 = selfCopy->_lastBodyLabelToResponseButtonsConstraint;
      selfCopy->_lastBodyLabelToResponseButtonsConstraint = v120;
    }

    else
    {
      topAnchor8 = [_responseButtons leadingButton];
      titleLabel2 = [topAnchor8 titleLabel];
      v122 = [NSLayoutConstraint constraintWithItem:v101 attribute:4 relatedBy:0 toItem:titleLabel2 attribute:3 multiplier:1.0 constant:v114];
      v123 = selfCopy->_lastBodyLabelToResponseButtonsConstraint;
      selfCopy->_lastBodyLabelToResponseButtonsConstraint = v122;
    }
  }

  [v119 addObject:selfCopy->_lastBodyLabelToResponseButtonsConstraint];
  if ([_responseButtons shouldUseVerticalLayout])
  {
    leadingAnchor3 = [_responseButtons leadingAnchor];
    leadingAnchor4 = [v96 leadingAnchor];
    v126 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  }

  else
  {
    if (!CalSystemSolariumEnabled())
    {
      leadingAnchor5 = [_responseButtons leadingAnchor];
      leadingAnchor6 = [v96 leadingAnchor];
      v132 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:0.0];
      statusButtonLeadingConstraint = selfCopy->_statusButtonLeadingConstraint;
      selfCopy->_statusButtonLeadingConstraint = v132;

      trailingAnchor = [_responseButtons trailingAnchor];
      trailingAnchor2 = [v96 trailingAnchor];
      v136 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      statusButtonTrailingConstraint = selfCopy->_statusButtonTrailingConstraint;
      selfCopy->_statusButtonTrailingConstraint = v136;

      [v119 addObject:selfCopy->_statusButtonLeadingConstraint];
      [v119 addObject:selfCopy->_statusButtonTrailingConstraint];
      goto LABEL_45;
    }

    v127 = _NSDictionaryOfVariableBindings(@"responseButtons", _responseButtons, 0);
    v128 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[responseButtons]-|" options:4096 metrics:0 views:v127];
    [v119 addObjectsFromArray:v128];

    leadingAnchor3 = [_responseButtons leadingAnchor];
    leadingAnchor4 = [v96 leadingAnchor];
    v126 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  }

  v129 = v126;
  [v119 addObject:v126];

LABEL_45:
  if (CalSystemSolariumEnabled())
  {
    contentView2 = [(CalendarMessageCell *)selfCopy contentView];
    v139 = [NSLayoutConstraint constraintWithItem:_responseButtons attribute:4 relatedBy:0 toItem:contentView2 attribute:4 multiplier:1.0 constant:v114];
    bottomMostViewToContentViewBottomConstraint = selfCopy->_bottomMostViewToContentViewBottomConstraint;
    selfCopy->_bottomMostViewToContentViewBottomConstraint = v139;
  }

  else
  {
    contentView2 = [_responseButtons trailingButton];
    bottomMostViewToContentViewBottomConstraint = [contentView2 titleLabel];
    contentView3 = [(CalendarMessageCell *)selfCopy contentView];
    v142 = [NSLayoutConstraint constraintWithItem:bottomMostViewToContentViewBottomConstraint attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:v114];
    v143 = selfCopy->_bottomMostViewToContentViewBottomConstraint;
    selfCopy->_bottomMostViewToContentViewBottomConstraint = v142;
  }

  [v119 addObject:selfCopy->_bottomMostViewToContentViewBottomConstraint];
  IsLeftToRight = CalInterfaceIsLeftToRight();
  superview = [(CalendarMessageCell *)selfCopy superview];
  [superview safeAreaInsets];
  if (IsLeftToRight)
  {
    v148 = v146;
  }

  else
  {
    v148 = v147;
  }

  v189 = _responseButtons;
  if ([(CalendarMessageCell *)selfCopy _shouldWrapTextUnderAuthor])
  {
    CalRoundToScreenScale();
    v150 = v149;
    CalRoundToScreenScale();
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v150 + v151];
    v153 = v152;
    contentView4 = [(CalendarMessageCell *)selfCopy contentView];
    [contentView4 layoutMargins];
    v156 = v153 + v155;
  }

  else
  {
    contentView4 = [(CalendarMessageCell *)selfCopy contentView];
    [contentView4 layoutMargins];
    v158 = v157;
    CalRoundToScreenScale();
    v160 = v158 + v159;
    CalRoundToScreenScale();
    v162 = v160 + v161;
    CalRoundToScreenScale();
    v164 = v162 + v163;
    CalRoundToScreenScale();
    v156 = v164 + v165;
  }

  heightAnchor2 = [(UIView *)selfCopy->_separatorView heightAnchor];
  EKUISeparatorLineThickness();
  v186 = [heightAnchor2 constraintEqualToConstant:?];
  v202[0] = v186;
  leadingAnchor7 = [(UIView *)selfCopy->_separatorView leadingAnchor];
  contentView5 = [(CalendarMessageCell *)selfCopy contentView];
  leadingAnchor8 = [contentView5 leadingAnchor];
  v156 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v148 + v156];
  v202[1] = v156;
  trailingAnchor3 = [(UIView *)selfCopy->_separatorView trailingAnchor];
  contentView6 = [(CalendarMessageCell *)selfCopy contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v168 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v202[2] = v168;
  bottomAnchor8 = [(UIView *)selfCopy->_separatorView bottomAnchor];
  contentView7 = [(CalendarMessageCell *)selfCopy contentView];
  bottomAnchor9 = [contentView7 bottomAnchor];
  EKUISeparatorLineThickness();
  v173 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-v172];
  v202[3] = v173;
  v174 = [NSArray arrayWithObjects:v202 count:4];
  [v197 addObjectsFromArray:v174];

  [NSLayoutConstraint activateConstraints:v197];
  v175 = [NSArray arrayWithArray:*p_titleLabelConstraints];
  [(CalendarMessageCell *)selfCopy setLabelRelatedConstraints:v175];

  labelRelatedConstraints = [(CalendarMessageCell *)selfCopy labelRelatedConstraints];
  v177 = [labelRelatedConstraints arrayByAddingObjectsFromArray:selfCopy->_bodyLabelConstraints];
  [(CalendarMessageCell *)selfCopy setLabelRelatedConstraints:v177];

  labelRelatedConstraints2 = [(CalendarMessageCell *)selfCopy labelRelatedConstraints];
  v179 = [labelRelatedConstraints2 arrayByAddingObjectsFromArray:v197];
  [(CalendarMessageCell *)selfCopy setLabelRelatedConstraints:v179];

  selfCopy->_didSetupLabelConstraints = 1;
}

- (void)_removeLabelRelatedConstraintsIfNeeded
{
  labelRelatedConstraints = [(CalendarMessageCell *)self labelRelatedConstraints];

  if (labelRelatedConstraints)
  {
    labelRelatedConstraints2 = [(CalendarMessageCell *)self labelRelatedConstraints];
    [NSLayoutConstraint deactivateConstraints:labelRelatedConstraints2];

    [(CalendarMessageCell *)self setLabelRelatedConstraints:0];
    self->_didSetupLabelConstraints = 0;
  }
}

- (void)setupDisclosureConstraintsIfNeeded
{
  disclosureConstraints = [(CalendarMessageCell *)self disclosureConstraints];
  [NSLayoutConstraint deactivateConstraints:disclosureConstraints];

  v10 = objc_alloc_init(NSMutableArray);
  layoutMetrics = [objc_opt_class() layoutMetrics];
  v5 = self->_disclosureIndicatorView;
  v6 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:0];
  if (v6)
  {
    v7 = _NSDictionaryOfVariableBindings(@"topTitleLabel, disclosureView", v6, v5, 0);
    v8 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[topTitleLabel]-[disclosureView]-|", 4096, layoutMetrics, v7);
    [v10 addObjectsFromArray:v8];

    [NSLayoutConstraint activateConstraints:v10];
    v9 = [NSArray arrayWithArray:v10];
    [(CalendarMessageCell *)self setDisclosureConstraints:v9];
  }
}

- (void)_removeDisclosureConstraintsIfNeeded
{
  disclosureConstraints = [(CalendarMessageCell *)self disclosureConstraints];
  [NSLayoutConstraint deactivateConstraints:disclosureConstraints];

  v9 = objc_alloc_init(NSMutableArray);
  layoutMetrics = [objc_opt_class() layoutMetrics];
  v5 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:0];
  if (v5)
  {
    v6 = _NSDictionaryOfVariableBindings(@"topTitleLabel", v5, 0);
    v7 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[topTitleLabel]-|" options:0 metrics:layoutMetrics views:v6];
    [v9 addObjectsFromArray:v7];

    [NSLayoutConstraint activateConstraints:v9];
    v8 = [NSArray arrayWithArray:v9];
    [(CalendarMessageCell *)self setDisclosureConstraints:v8];
  }
}

- (void)setupCommentPromptConstraintsIfNeeded
{
  [(CalendarMessageCell *)self _removeCommentPromptRelatedConstraintsIfNeeded];
  v28 = objc_alloc_init(NSMutableArray);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = v3;
  commentPrompt = self->_commentPrompt;
  if (commentPrompt)
  {
    v6 = commentPrompt;
    _responseButtons = [(CalendarMessageCell *)self _responseButtons];
    v8 = [NSLayoutConstraint constraintWithItem:v6 attribute:5 relatedBy:0 toItem:_responseButtons attribute:5 multiplier:1.0 constant:0.0];

    [v28 addObject:v8];
    contentView = [(CalendarMessageCell *)self contentView];
    CalRoundToScreenScale();
    v11 = [NSLayoutConstraint constraintWithItem:v6 attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:v10];

    [v28 addObject:v11];
    [v4 addObject:self->_bottomMostViewToContentViewBottomConstraint];
    _responseButtons2 = [(CalendarMessageCell *)self _responseButtons];
    v13 = self->_commentPrompt;
    CalRoundToScreenScale();
    v15 = [NSLayoutConstraint constraintWithItem:_responseButtons2 attribute:4 relatedBy:0 toItem:v13 attribute:12 multiplier:1.0 constant:-5.0 - v14];

    [v28 addObject:v15];
    responseButtonsToCommentLabelConstraint = self->_responseButtonsToCommentLabelConstraint;
    self->_responseButtonsToCommentLabelConstraint = v15;
    v17 = v15;

    v18 = self->_commentPrompt;
    contentView2 = [(CalendarMessageCell *)self contentView];
    CalRoundToScreenScale();
    v21 = [NSLayoutConstraint constraintWithItem:v18 attribute:4 relatedBy:0 toItem:contentView2 attribute:4 multiplier:1.0 constant:-v20];

    [v28 addObject:v21];
    bottomMostViewToContentViewBottomConstraint = self->_bottomMostViewToContentViewBottomConstraint;
    self->_bottomMostViewToContentViewBottomConstraint = v21;
  }

  else
  {
    [v3 addObject:self->_bottomMostViewToContentViewBottomConstraint];
    _responseButtons3 = [(CalendarMessageCell *)self _responseButtons];
    contentView3 = [(CalendarMessageCell *)self contentView];
    CalRoundToScreenScale();
    v26 = [NSLayoutConstraint constraintWithItem:_responseButtons3 attribute:4 relatedBy:0 toItem:contentView3 attribute:4 multiplier:1.0 constant:-v25];

    [v28 addObject:v26];
    v11 = self->_bottomMostViewToContentViewBottomConstraint;
    self->_bottomMostViewToContentViewBottomConstraint = v26;
  }

  v27 = [NSArray arrayWithArray:v28];
  [(CalendarMessageCell *)self setCommentPromptRelatedConstraints:v27];

  [NSLayoutConstraint activateConstraints:v28];
  [NSLayoutConstraint deactivateConstraints:v4];
}

- (void)_removeCommentPromptRelatedConstraintsIfNeeded
{
  commentPromptRelatedConstraints = [(CalendarMessageCell *)self commentPromptRelatedConstraints];

  if (commentPromptRelatedConstraints)
  {
    commentPromptRelatedConstraints2 = [(CalendarMessageCell *)self commentPromptRelatedConstraints];
    [NSLayoutConstraint deactivateConstraints:commentPromptRelatedConstraints2];

    [(CalendarMessageCell *)self setCommentPromptRelatedConstraints:0];
  }
}

- (void)setShowsCommentPrompt:(BOOL)prompt animated:(BOOL)animated initialValue:(id)value
{
  promptCopy = prompt;
  valueCopy = value;
  if (self->_showsCommentPrompt == promptCopy)
  {
    if (!promptCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  self->_showsCommentPrompt = promptCopy;
  if (promptCopy)
  {
    v9 = objc_opt_new();
    commentPrompt = self->_commentPrompt;
    self->_commentPrompt = v9;

    [(UITextField *)self->_commentPrompt setBorderStyle:3];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"Comment to Organizer" value:&stru_1002133B8 table:0];
    [(UITextField *)self->_commentPrompt setPlaceholder:v12];

    [(UITextField *)self->_commentPrompt setClearButtonMode:1];
    v13 = [UIFont systemFontOfSize:15.0];
    [(UITextField *)self->_commentPrompt setFont:v13];

    [(UITextField *)self->_commentPrompt addTarget:self action:"_commentPromptDone:" forControlEvents:0x80000];
    [(UITextField *)self->_commentPrompt setDelegate:self];
    [(UITextField *)self->_commentPrompt setText:valueCopy];
    [(UITextField *)self->_commentPrompt setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1144750080;
    [(UITextField *)self->_commentPrompt setContentCompressionResistancePriority:0 forAxis:v14];
    contentView = [(CalendarMessageCell *)self contentView];
    [contentView addSubview:self->_commentPrompt];
  }

  else
  {
    if (animated)
    {
      [(CalendarMessageCell *)self updateSelectedResponseButton];
      [(CalendarMessageCell *)self setNeedsLayout];
      goto LABEL_10;
    }

    [(CalendarMessageCell *)self _removeCommentPromptRelatedConstraintsIfNeeded];
    [(UITextField *)self->_commentPrompt removeFromSuperview];
    contentView = self->_commentPrompt;
    self->_commentPrompt = 0;
  }

  [(CalendarMessageCell *)self updateSelectedResponseButton];
  [(CalendarMessageCell *)self setNeedsLayout];
  if (!animated)
  {
LABEL_11:
    [(CalendarMessageCell *)self setupCommentPromptConstraintsIfNeeded];
    goto LABEL_12;
  }

LABEL_10:
  [(CalendarMessageCell *)self layoutIfNeeded];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100079810;
  v18[3] = &unk_10020EAD8;
  v18[4] = self;
  v19 = promptCopy;
  [UIView animateWithDuration:v18 animations:0.3];
  [(CalendarMessageCell *)self setupCommentPromptConstraintsIfNeeded];
  _tableView = [(CalendarMessageCell *)self _tableView];
  [_tableView beginUpdates];

  _tableView2 = [(CalendarMessageCell *)self _tableView];
  [_tableView2 endUpdates];

LABEL_12:
}

- (void)textFieldDidEndEditing:(id)editing
{
  if (self->_commentPrompt == editing)
  {
    delegate = [(CalendarMessageCell *)self delegate];
    text = [(UITextField *)self->_commentPrompt text];
    [delegate messageCell:self committedComment:text];
  }
}

- (void)updateAuthor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_authorView;
    v4 = [(CalendarMessageCell *)self authorCacheKeyForIdentity:self->_notification];
    v5 = [objc_opt_class() authorCacheObjectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v14 = v5;
      v7 = [NSArray arrayWithObjects:&v14 count:1];
      [(UIView *)v3 updateWithContacts:v7];
    }

    else
    {
      if ([(UIView *)v3 loadContactsAsynchronously])
      {
        [(UIView *)v3 updateWithContacts:0];
      }

      v8 = [(CalendarMessageCell *)self authorAddressForIdentity:self->_notification];
      name = [(EKCalendarNotification *)self->_notification name];
      firstName = [(EKCalendarNotification *)self->_notification firstName];
      lastName = [(EKCalendarNotification *)self->_notification lastName];
      [(UIView *)v3 updateWithAddress:v8 fullName:name firstName:firstName lastName:lastName];

      if (([(UIView *)v3 loadContactsAsynchronously]& 1) == 0)
      {
        v12 = objc_opt_class();
        contact = [(UIView *)v3 contact];
        [v12 authorCacheSetObject:contact forKey:v4];
      }
    }
  }
}

- (id)authorAddressForIdentity:(id)identity
{
  identityCopy = identity;
  emailAddress = [identityCopy emailAddress];
  v5 = emailAddress;
  if (emailAddress)
  {
    resourceSpecifier = emailAddress;
  }

  else
  {
    v7 = [identityCopy URL];
    resourceSpecifier = [v7 resourceSpecifier];
  }

  return resourceSpecifier;
}

- (id)authorCacheKeyForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(CalendarMessageCell *)self authorAddressForIdentity:identityCopy];
  name = [identityCopy name];
  firstName = [identityCopy firstName];
  lastName = [identityCopy lastName];

  v9 = [NSString stringWithFormat:@"%@-%@-%@-%@", v5, name, firstName, lastName];

  return v9;
}

- (void)_updateLabels
{
  [(CalendarMessageCell *)self _removeLabelRelatedConstraintsIfNeeded];
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_titleLabels)
  {
    [v3 addObjectsFromArray:?];
    titleLabels = self->_titleLabels;
    self->_titleLabels = 0;
  }

  if (self->_senderLabel)
  {
    [v4 addObject:?];
    senderLabel = self->_senderLabel;
    self->_senderLabel = 0;
  }

  if (self->_actionLabels)
  {
    [v4 addObjectsFromArray:?];
    actionLabels = self->_actionLabels;
    self->_actionLabels = 0;
  }

  if (self->_bodyLabels)
  {
    [v4 addObjectsFromArray:?];
    bodyLabels = self->_bodyLabels;
    self->_bodyLabels = 0;
  }

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_10007A6D4;
  v110[3] = &unk_10020FE28;
  v89 = v4;
  v111 = v89;
  selfCopy = self;
  v12 = objc_retainBlock(v110);
  titleStrings = [(CalendarMessageCell *)self titleStrings];
  preActionBodyStrings = [(CalendarMessageCell *)self preActionBodyStrings];
  bodyStringDict = [(CalendarMessageCell *)self bodyStringDict];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_10007AB24;
  v107[3] = &unk_10020FE50;
  v107[4] = self;
  v16 = v12;
  v109 = v16;
  v17 = v9;
  v108 = v17;
  v93 = titleStrings;
  [titleStrings enumerateObjectsUsingBlock:v107];
  if (![(NSArray *)v17 count])
  {
    v18 = (v16[2])(v16, 0, 1, 0.0);
    [(NSArray *)v17 addObject:v18];
  }

  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_10007ABEC;
  v104[3] = &unk_10020FE78;
  v19 = v16;
  v106 = v19;
  v20 = v10;
  v105 = v20;
  [preActionBodyStrings enumerateObjectsUsingBlock:v104];
  actionBodyString = [(CalendarMessageCell *)self actionBodyString];
  if (actionBodyString)
  {
    v22 = (v19[2])(v19, actionBodyString, 4, 0.0);
    [v22 setNumberOfLines:1];
    [(NSArray *)v20 addObject:v22];
  }

  v88 = v20;
  v90 = actionBodyString;
  v91 = v17;
  v92 = preActionBodyStrings;
  v23 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyPerson];
  if (v23)
  {
    v24 = (v19[2])(v19, v23, 0, 0.0);
    v25 = self->_senderLabel;
    self->_senderLabel = v24;
  }

  v87 = v23;
  selfCopy2 = self;
  v115[0] = CUIKNotificationDescriptionKeySecondPerson;
  v115[1] = CUIKNotificationDescriptionKeyAction;
  v115[2] = CUIKNotificationDescriptionKeyApp;
  v115[3] = CUIKNotificationDescriptionKeyComment;
  v115[4] = CUIKNotificationDescriptionKeyRecurrence;
  [NSArray arrayWithObjects:v115 count:5];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v26 = v103 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v100 objects:v114 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v101;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v101 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [bodyStringDict objectForKeyedSubscript:*(*(&v100 + 1) + 8 * i)];
        if (v31)
        {
          v32 = (v19[2])(v19, v31, 0, 0.0);
          [(NSArray *)v11 addObject:v32];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v100 objects:v114 count:16];
    }

    while (v28);
  }

  v33 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyTimeSensitive];
  if (v33)
  {
    v34 = (v19[2])(v19, v33, 3, 0.0);
    [(NSArray *)v11 addObject:v34];
  }

  v86 = v33;
  v35 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyDate];
  if (v35)
  {
    v36 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyHintCancelled];
    v37 = v36 == 0;

    v38 = (v19[2])(v19, v35, (2 * v37), 0.0);
    [(NSArray *)v11 addObject:v38];
  }

  v85 = v35;
  [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyBlocked];
  v39 = UIView_ptr;
  v94 = v40 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
  if (v94)
  {
    v41 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v42 = [UIImageSymbolConfiguration configurationWithFont:v41];
    v43 = [UIImage systemImageNamed:@"nosign" withConfiguration:v42];
    v44 = +[UIColor systemRedColor];
    v45 = [v43 imageWithTintColor:v44 renderingMode:2];

    blockedWarningView = selfCopy2->_blockedWarningView;
    if (!blockedWarningView)
    {
      v47 = objc_opt_new();
      v48 = selfCopy2->_blockedWarningView;
      selfCopy2->_blockedWarningView = v47;

      [(MessageCellWarningView *)selfCopy2->_blockedWarningView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(CalendarMessageCell *)selfCopy2 contentView];
      [contentView addSubview:selfCopy2->_blockedWarningView];

      blockedWarningView = selfCopy2->_blockedWarningView;
    }

    [(MessageCellWarningView *)blockedWarningView setImage:v45 warningString:v94 emphasizedRangeValue:0];

    v50 = selfCopy2;
    v40 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
    v39 = UIView_ptr;
  }

  else
  {
    v50 = selfCopy2;
    [(MessageCellWarningView *)selfCopy2->_blockedWarningView removeFromSuperview];
    v45 = selfCopy2->_blockedWarningView;
    selfCopy2->_blockedWarningView = 0;
  }

  v51 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyError];
  if (v51)
  {
    v84 = v51;
    v52 = @"exclamationmark.triangle.fill";
    [v39[180] preferredFontForTextStyle:{UIFontTextStyleFootnote, 0}];
  }

  else
  {
    v53 = CUIKNotificationDescriptionKeyConflict;
    v54 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyConflict];
    if (v54)
    {
      v55 = v54;
    }

    else
    {
      conflictDict = [(CalendarMessageCell *)v50 conflictDict];
      v55 = [conflictDict objectForKeyedSubscript:v53];

      if (!v55)
      {
        [(MessageCellWarningView *)v50->_warningView removeFromSuperview];
        warningView = v50->_warningView;
        v50->_warningView = 0;
        v69 = warningView;
        goto LABEL_45;
      }
    }

    v57 = CUIKNotificationDescriptionKeyConflictEventRange;
    v58 = [bodyStringDict objectForKeyedSubscript:CUIKNotificationDescriptionKeyConflictEventRange];
    v84 = v55;
    if (v58)
    {
      v83 = v58;
    }

    else
    {
      conflictDict2 = [(CalendarMessageCell *)v50 conflictDict];
      v83 = [conflictDict2 objectForKeyedSubscript:v57];
    }

    v52 = @"exclamationmark.circle.fill";
    [v39[180] preferredFontForTextStyle:{UIFontTextStyleFootnote, v83}];
  }
  v60 = ;
  v61 = [v40[461] configurationWithFont:v60];
  v62 = [UIImage systemImageNamed:v52 withConfiguration:v61];
  v63 = +[UIColor systemRedColor];
  v64 = [v62 imageWithTintColor:v63 renderingMode:1];

  v50 = selfCopy2;
  v65 = selfCopy2->_warningView;
  if (!v65)
  {
    v66 = objc_opt_new();
    v67 = selfCopy2->_warningView;
    selfCopy2->_warningView = v66;

    [(MessageCellWarningView *)selfCopy2->_warningView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(CalendarMessageCell *)selfCopy2 contentView];
    [contentView2 addSubview:selfCopy2->_warningView];

    v65 = selfCopy2->_warningView;
  }

  v69 = v84;
  [(MessageCellWarningView *)v65 setImage:v64 warningString:v84 emphasizedRangeValue:v82];

LABEL_45:
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v70 = v89;
  v71 = [v70 countByEnumeratingWithState:&v96 objects:v113 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v97;
    do
    {
      for (j = 0; j != v72; j = j + 1)
      {
        if (*v97 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [*(*(&v96 + 1) + 8 * j) removeFromSuperview];
      }

      v72 = [v70 countByEnumeratingWithState:&v96 objects:v113 count:16];
    }

    while (v72);
  }

  v75 = v50->_titleLabels;
  v50->_titleLabels = v91;
  v76 = v91;

  v77 = v50->_actionLabels;
  v50->_actionLabels = v88;
  v78 = v88;

  v79 = v50->_bodyLabels;
  v50->_bodyLabels = v11;
  v80 = v11;

  [(CalendarMessageCell *)v50 setupLabelConstraintsIfNeeded];
}

- (void)_updateResponseButtons
{
  _responseButtons = [(CalendarMessageCell *)self _responseButtons];
  [_responseButtons setInPadSidebar:{-[CalendarMessageCell inPadSidebar](self, "inPadSidebar")}];
  actions = [(CalendarMessageCell *)self actions];
  [_responseButtons setActions:actions];

  [_responseButtons setSelectedAction:0];
}

- (void)_updateColorBar
{
  if (!self->_colorBar)
  {
    v3 = objc_alloc_init(MessageCellColorBarView);
    colorBar = self->_colorBar;
    self->_colorBar = v3;

    [(MessageCellColorBarView *)self->_colorBar setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1144750080;
    [(MessageCellColorBarView *)self->_colorBar setContentCompressionResistancePriority:0 forAxis:v5];
    contentView = [(CalendarMessageCell *)self contentView];
    [contentView addSubview:self->_colorBar];
  }

  color = [(CalendarMessageCell *)self color];
  [(MessageCellColorBarView *)self->_colorBar setColor:color];

  [(CalendarMessageCell *)self setupColorBarConstraintsIfNeeded];
}

- (void)actionLabelTap:(id)tap
{
  tapCopy = tap;
  delegate = [(CalendarMessageCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    actionBodyStringAction = [(CalendarMessageCell *)self actionBodyStringAction];
    view = [tapCopy view];
    [WeakRetained performAction:actionBodyStringAction forCell:self sourceView:view sourceRect:0 appliesToAll:0 ifCancelled:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  }
}

- (id)_responseButtons
{
  responseButtons = self->_responseButtons;
  if (!responseButtons)
  {
    v4 = [EKUIEventStatusButtonsView alloc];
    actions = [(CalendarMessageCell *)self actions];
    v6 = [v4 initWithFrame:actions actions:self delegate:-[CalendarMessageCell options](self options:"options") | 2 textSizeMode:{0, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = self->_responseButtons;
    self->_responseButtons = v6;

    [(EKUIEventStatusButtonsView *)self->_responseButtons setButtonsTouchInsets:-15.0, -15.0, -15.0, -15.0];
    [(EKUIEventStatusButtonsView *)self->_responseButtons setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection = [(CalendarMessageCell *)self traitCollection];
    [(EKUIEventStatusButtonsView *)self->_responseButtons setShouldUseVerticalLayout:EKUIUsesLargeTextLayout()];

    [(EKUIEventStatusButtonsView *)self->_responseButtons setInPadSidebar:[(CalendarMessageCell *)self inPadSidebar]];
    [(EKUIEventStatusButtonsView *)self->_responseButtons updateFonts];
    contentView = [(CalendarMessageCell *)self contentView];
    [contentView addSubview:self->_responseButtons];

    responseButtons = self->_responseButtons;
  }

  return responseButtons;
}

- (void)updateSelectedResponseButton
{
  if (self->_showsCommentPrompt)
  {
    selectedResponseButton = 4;
  }

  else
  {
    selectedResponseButton = [(CalendarMessageCell *)self selectedResponseButton];
  }

  _responseButtons = [(CalendarMessageCell *)self _responseButtons];
  [_responseButtons setSelectedAction:selectedResponseButton];

  if (selectedResponseButton)
  {
    _responseButtons2 = [(CalendarMessageCell *)self _responseButtons];
    bottomMostViewToContentViewBottomConstraint = self->_bottomMostViewToContentViewBottomConstraint;
    v6 = [NSArray arrayWithObjects:&bottomMostViewToContentViewBottomConstraint count:1];
    [NSLayoutConstraint deactivateConstraints:v6];

    trailingButton = [_responseButtons2 trailingButton];
    titleLabel = [trailingButton titleLabel];
    font = [titleLabel font];
    [font _scaledValueForValue:-10.0];
    v11 = v10;

    trailingButton2 = [_responseButtons2 trailingButton];
    contentView = [(CalendarMessageCell *)self contentView];
    v14 = [NSLayoutConstraint constraintWithItem:trailingButton2 attribute:4 relatedBy:0 toItem:contentView attribute:4 multiplier:1.0 constant:v11];
    v15 = self->_bottomMostViewToContentViewBottomConstraint;
    self->_bottomMostViewToContentViewBottomConstraint = v14;

    [(NSLayoutConstraint *)self->_bottomMostViewToContentViewBottomConstraint setActive:1];
    [(CalendarMessageCell *)self setNeedsLayout];
  }
}

- (void)eventStatusButtonsView:(id)view didSelectAction:(int64_t)action sourceView:(id)sourceView sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled
{
  allCopy = all;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  sourceViewCopy = sourceView;
  cancelledCopy = cancelled;
  v20 = kCalUILogInboxHandle;
  if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [NSNumber numberWithInteger:action];
    v23 = [NSNumber numberWithBool:allCopy];
    v27 = 138543874;
    v28 = v22;
    v29 = 2114;
    v30 = viewCopy;
    v31 = 2114;
    v32 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Event status buttons view did select action: [%{public}@]. Event status buttons view: %{public}@, appliesToAll: %{public}@.", &v27, 0x20u);
  }

  delegate = [(CalendarMessageCell *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performAction:action forCell:self sourceView:sourceViewCopy sourceRect:allCopy appliesToAll:cancelledCopy ifCancelled:{x, y, width, height}];
  }
}

- (id)eventStatusButtonsViewButtonFont:(id)font
{
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v5 = [v4 fontWithSize:self->_cachedStatusButtonsFontSize];

  return v5;
}

- (void)setNotification:(id)notification
{
  notificationCopy = notification;
  if (self->_notification != notificationCopy)
  {
    v10 = notificationCopy;
    objc_storeStrong(&self->_notification, notification);
    notificationCopy = v10;
    if (v10)
    {
      notification = [(CalendarMessageCell *)self notification];
      title = [notification title];
      v8 = [NSString stringWithFormat:@"inbox-cell:%@", title];
      [(CalendarMessageCell *)self setAccessibilityIdentifier:v8];

      _responseButtons = [(CalendarMessageCell *)self _responseButtons];
      [_responseButtons setActions:&__NSArray0__struct];

      [(CalendarMessageCell *)self _updateColorBar];
      [(CalendarMessageCell *)self _updateResponseButtons];
      [(CalendarMessageCell *)self _updateLabels];
      [(CalendarMessageCell *)self updateAuthor];
      [(CalendarMessageCell *)self updateSelectedResponseButton];
      [(CalendarMessageCell *)self setNeedsLayout];
      [(CalendarMessageCell *)self setNeedsDisplay];
      [(CalendarMessageCell *)self _updateAppEntityAnnotation];
      notificationCopy = v10;
    }
  }
}

- (void)_updateAppEntityAnnotation
{
  notification = [(CalendarMessageCell *)self notification];
  [(CalendarMessageCell *)self Cal_annotateWithNotification:notification];

  [(CalendarMessageCell *)self _updateAppEntityAnnotationState];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CalendarMessageCell;
  [(CalendarMessageCell *)&v5 setSelected:selected animated:animated];
  [(CalendarMessageCell *)self _updateAppEntityAnnotationState];
}

- (void)_updateAppEntityAnnotationState
{
  isSelected = [(CalendarMessageCell *)self isSelected];

  [(CalendarMessageCell *)self Cal_updateEntityAnnotationStateIsSelected:isSelected isHighlighted:0 isFocused:0 isDisabled:0 isEditing:0 isPrimary:0];
}

+ (int64_t)numberOfLinesForTitleLabels
{
  if (EKUIUsesLargeTextLayout())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)numberOfLinesForBodyLabels
{
  if (EKUIUsesLargeTextLayout())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)color
{
  notification = [(CalendarMessageCell *)self notification];
  dotColor = [notification dotColor];

  if (dotColor)
  {
    notification2 = [(CalendarMessageCell *)self notification];
    v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [notification2 dotColor]);
  }

  else
  {
    v6 = +[UIColor lightGrayColor];
  }

  return v6;
}

- (void)setHasDisclosure:(BOOL)disclosure
{
  disclosureCopy = disclosure;
  self->_hasDisclosure = disclosure;
  [(CalendarMessageCell *)self _removeDisclosureConstraintsIfNeeded];
  [(UIView *)self->_disclosureIndicatorView removeFromSuperview];
  disclosureIndicatorView = self->_disclosureIndicatorView;
  self->_disclosureIndicatorView = 0;

  self->_didSetupDisclosureConstraints = 0;
  if (disclosureCopy)
  {
    v6 = +[EKUISemiConstantCache sharedInstance];
    inboxDisclosureImage = [v6 inboxDisclosureImage];

    v8 = [[UIImageView alloc] initWithImage:inboxDisclosureImage];
    v9 = +[UIColor tertiaryLabelColor];
    [(UIView *)v8 setTintColor:v9];

    v10 = self->_disclosureIndicatorView;
    self->_disclosureIndicatorView = v8;
    v11 = v8;

    [(UIView *)self->_disclosureIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1148846080;
    [(UIView *)self->_disclosureIndicatorView setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [(UIView *)self->_disclosureIndicatorView setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(UIView *)self->_disclosureIndicatorView setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [(UIView *)self->_disclosureIndicatorView setContentHuggingPriority:1 forAxis:v15];
    contentView = [(CalendarMessageCell *)self contentView];
    [contentView addSubview:self->_disclosureIndicatorView];

    [(CalendarMessageCell *)self setupDisclosureConstraintsIfNeeded];
  }

  [(CalendarMessageCell *)self setNeedsLayout];

  [(CalendarMessageCell *)self setNeedsDisplay];
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  traitCollection = [(CalendarMessageCell *)self traitCollection];
  [(EKUIEventStatusButtonsView *)self->_responseButtons setShouldUseVerticalLayout:EKUIUsesLargeTextLayout()];

  self->_didSetupColorBarConstraints = 0;
  self->_didSetupLabelConstraints = 0;
  [(CalendarMessageCell *)self _updateColorBar];
  [(CalendarMessageCell *)self _updateLabels];
  responseButtons = self->_responseButtons;

  [(EKUIEventStatusButtonsView *)responseButtons updateFonts];
}

- (CalendarMessageCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)titleStrings
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)bodyStringDict
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (id)actions
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

- (unint64_t)options
{
  sub_100026F48();
  sub_100026F2C();
  return 0;
}

@end