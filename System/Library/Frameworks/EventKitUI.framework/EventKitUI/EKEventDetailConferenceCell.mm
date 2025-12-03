@interface EKEventDetailConferenceCell
- (BOOL)_buttonsShouldUseSeparateLine;
- (BOOL)update;
- (ConferenceCellDelegate)delegate;
- (EKEventDetailConferenceCell)initWithEvent:(id)event editable:(BOOL)editable;
- (double)_separatorHeight;
- (id)_buttonConfigForCurrentTime;
- (id)_defaultListConfiguration;
- (void)_createConstraints;
- (void)_createViews;
- (void)_openURL;
- (void)_share:(id)_share;
- (void)_updateActionButtonWithType:(unint64_t)type;
- (void)tintColorDidChange;
- (void)updateListConfigWithImage:(id)image title:(id)title subtitle:(id)subtitle;
@end

@implementation EKEventDetailConferenceCell

- (EKEventDetailConferenceCell)initWithEvent:(id)event editable:(BOOL)editable
{
  v9.receiver = self;
  v9.super_class = EKEventDetailConferenceCell;
  v4 = [(EKEventDetailCell *)&v9 initWithEvent:event editable:editable style:0];
  v5 = v4;
  if (v4)
  {
    constraints = v4->_constraints;
    v4->_constraints = MEMORY[0x1E695E0F0];

    if (MEMORY[0x1D38B98D0]())
    {
      [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v7 = ;
    [(EKEventDetailConferenceCell *)v5 setBackgroundColor:v7];

    [(EKEventDetailConferenceCell *)v5 _createViews];
    [(EKEventDetailConferenceCell *)v5 update];
  }

  return v5;
}

- (BOOL)_buttonsShouldUseSeparateLine
{
  v3 = EKUICurrentWindowWidthWithViewHierarchy(self);
  v4 = EKUIWidthForWindowSizeParadigm(16);
  traitCollection = [(EKEventDetailConferenceCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC60]);

  traitCollection2 = [(EKEventDetailConferenceCell *)self traitCollection];
  v9 = EKUIUsesLargeTextLayout(traitCollection2) || v3 < v4 && v7 != NSOrderedAscending;

  return v9;
}

- (double)_separatorHeight
{
  if (MEMORY[0x1D38B98D0](self, a2))
  {

    return EKUISeparatorLineThickness();
  }

  else
  {
    traitCollection = [(EKEventDetailConferenceCell *)self traitCollection];
    v5 = EKUIUsesLargeTextLayout(traitCollection);

    if (v5)
    {
      return 1.0;
    }

    else
    {

      return CalOnePixelInPoints();
    }
  }
}

- (id)_defaultListConfiguration
{
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
  imageProperties = [subtitleCellConfiguration imageProperties];
  [imageProperties setTintColor:systemGray2Color];

  [subtitleCellConfiguration setImageToTextPadding:12.0];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  imageProperties2 = [subtitleCellConfiguration imageProperties];
  [imageProperties2 setPreferredSymbolConfiguration:v6];

  imageProperties3 = [subtitleCellConfiguration imageProperties];
  [imageProperties3 setReservedLayoutSize:{24.0, 24.0}];

  imageProperties4 = [subtitleCellConfiguration imageProperties];
  [imageProperties4 setMaximumSize:{24.0, 24.0}];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  imageProperties5 = [subtitleCellConfiguration imageProperties];
  [imageProperties5 setCornerRadius:7.0];

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 16.0, 10.0, 0.0}];
  if (![(EKEventDetailConferenceCell *)self _buttonsShouldUseSeparateLine])
  {
    textProperties = [subtitleCellConfiguration textProperties];
    [textProperties setNumberOfLines:1];

    secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setNumberOfLines:1];
  }

  return subtitleCellConfiguration;
}

- (void)_createViews
{
  v3 = objc_alloc(MEMORY[0x1E69DCC30]);
  _defaultListConfiguration = [(EKEventDetailConferenceCell *)self _defaultListConfiguration];
  v5 = [v3 initWithConfiguration:_defaultListConfiguration];
  listView = self->_listView;
  self->_listView = v5;

  [(UIListContentView *)self->_listView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(EKEventDetailConferenceCell *)self contentView];
  [contentView addSubview:self->_listView];

  v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
  openURLButton = self->_openURLButton;
  self->_openURLButton = v8;

  [(UIButton *)self->_openURLButton setRole:1];
  [(UIButton *)self->_openURLButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1148829696;
  [(UIButton *)self->_openURLButton setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [(UIButton *)self->_openURLButton setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UIButton *)self->_openURLButton setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [(UIButton *)self->_openURLButton setContentCompressionResistancePriority:1 forAxis:v13];
  [(UIButton *)self->_openURLButton addTarget:self action:sel__openURL forControlEvents:64];
  contentView2 = [(EKEventDetailConferenceCell *)self contentView];
  [contentView2 addSubview:self->_openURLButton];

  v32 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration setCornerStyle:4];
  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up" withConfiguration:v32];
  [grayButtonConfiguration setImage:v16];

  [grayButtonConfiguration setContentInsets:{3.0, 3.0, 4.0, 3.0}];
  v17 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  [grayButtonConfiguration setPreferredSymbolConfigurationForImage:v17];

  [grayButtonConfiguration setButtonSize:1];
  v18 = [MEMORY[0x1E69DC738] buttonWithType:1];
  shareButton = self->_shareButton;
  self->_shareButton = v18;

  [(UIButton *)self->_shareButton setConfiguration:grayButtonConfiguration];
  [(UIButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [(UIButton *)self->_shareButton setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148829696;
  [(UIButton *)self->_shareButton setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [(UIButton *)self->_shareButton setContentCompressionResistancePriority:0 forAxis:v22];
  [(UIButton *)self->_shareButton addTarget:self action:sel__share_ forControlEvents:64];
  contentView3 = [(EKEventDetailConferenceCell *)self contentView];
  [contentView3 addSubview:self->_shareButton];

  v24 = objc_opt_new();
  topSeparator = self->_topSeparator;
  self->_topSeparator = v24;

  if (MEMORY[0x1D38B98D0]([(UIView *)self->_topSeparator setTranslatesAutoresizingMaskIntoConstraints:0]))
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }
  v26 = ;
  [(UIView *)self->_topSeparator setBackgroundColor:v26];

  contentView4 = [(EKEventDetailConferenceCell *)self contentView];
  [contentView4 addSubview:self->_topSeparator];

  v28 = objc_opt_new();
  bottomSeparator = self->_bottomSeparator;
  self->_bottomSeparator = v28;

  if (MEMORY[0x1D38B98D0]([(UIView *)self->_bottomSeparator setTranslatesAutoresizingMaskIntoConstraints:0]))
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }
  v30 = ;
  [(UIView *)self->_bottomSeparator setBackgroundColor:v30];

  contentView5 = [(EKEventDetailConferenceCell *)self contentView];
  [contentView5 addSubview:self->_bottomSeparator];

  [(EKEventDetailConferenceCell *)self _createConstraints];
}

- (void)_createConstraints
{
  v105[15] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  array = [MEMORY[0x1E695DF70] array];
  heightAnchor = [(UIView *)self->_topSeparator heightAnchor];
  [(EKEventDetailConferenceCell *)self _separatorHeight];
  v98 = [heightAnchor constraintEqualToConstant:?];
  v105[0] = v98;
  topAnchor = [(UIView *)self->_topSeparator topAnchor];
  contentView = [(EKEventDetailConferenceCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v89 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v105[1] = v89;
  leadingAnchor = [(UIView *)self->_topSeparator leadingAnchor];
  contentView2 = [(EKEventDetailConferenceCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v105[2] = v79;
  trailingAnchor = [(UIView *)self->_topSeparator trailingAnchor];
  contentView3 = [(EKEventDetailConferenceCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v105[3] = v71;
  heightAnchor2 = [(UIView *)self->_bottomSeparator heightAnchor];
  [(EKEventDetailConferenceCell *)self _separatorHeight];
  v67 = [heightAnchor2 constraintEqualToConstant:?];
  v105[4] = v67;
  bottomAnchor = [(UIView *)self->_bottomSeparator bottomAnchor];
  contentView4 = [(EKEventDetailConferenceCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v105[5] = v62;
  leadingAnchor3 = [(UIView *)self->_bottomSeparator leadingAnchor];
  contentView5 = [(EKEventDetailConferenceCell *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
  v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v105[6] = v57;
  trailingAnchor3 = [(UIView *)self->_bottomSeparator trailingAnchor];
  contentView6 = [(EKEventDetailConferenceCell *)self contentView];
  trailingAnchor4 = [contentView6 trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v105[7] = v53;
  leadingAnchor5 = [(UIListContentView *)self->_listView leadingAnchor];
  contentView7 = [(EKEventDetailConferenceCell *)self contentView];
  leadingAnchor6 = [contentView7 leadingAnchor];
  v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v105[8] = v49;
  topAnchor3 = [(UIListContentView *)self->_listView topAnchor];
  contentView8 = [(EKEventDetailConferenceCell *)self contentView];
  topAnchor4 = [contentView8 topAnchor];
  v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v105[9] = v45;
  topAnchor5 = [(UIButton *)self->_shareButton topAnchor];
  topAnchor6 = [(UIButton *)self->_openURLButton topAnchor];
  v42 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v105[10] = v42;
  bottomAnchor3 = [(UIButton *)self->_shareButton bottomAnchor];
  bottomAnchor4 = [(UIButton *)self->_openURLButton bottomAnchor];
  v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v105[11] = v39;
  leadingAnchor7 = [(UIButton *)self->_shareButton leadingAnchor];
  trailingAnchor5 = [(UIButton *)self->_openURLButton trailingAnchor];
  v5 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
  v105[12] = v5;
  widthAnchor = [(UIButton *)self->_shareButton widthAnchor];
  heightAnchor3 = [(UIButton *)self->_shareButton heightAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v105[13] = v8;
  openURLButton = self->_openURLButton;
  v10 = MEMORY[0x1E696ACD8];
  v38 = *MEMORY[0x1E69DDCF8];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  [v11 _scaledValueForValue:62.0];
  v13 = [v10 constraintWithItem:openURLButton attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v12];
  v105[14] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:15];
  [(NSArray *)array addObjectsFromArray:v14];

  if ([(EKEventDetailConferenceCell *)self _buttonsShouldUseSeparateLine])
  {
    leadingAnchor8 = [(UIButton *)self->_openURLButton leadingAnchor];
    contentView9 = [(EKEventDetailConferenceCell *)self contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor9 = [layoutMarginsGuide3 leadingAnchor];
    trailingAnchor8 = leadingAnchor8;
    v19 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v104[0] = v19;
    trailingAnchor6 = [(UIListContentView *)self->_listView trailingAnchor];
    contentView10 = [(EKEventDetailConferenceCell *)self contentView];
    trailingAnchor7 = [contentView10 trailingAnchor];
    v99 = [trailingAnchor6 constraintEqualToAnchor:?];
    v104[1] = v99;
    topAnchor7 = [(UIButton *)self->_openURLButton topAnchor];
    bottomAnchor5 = [(UIListContentView *)self->_listView bottomAnchor];
    v93 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v38];
    [v93 _scaledValueForValue:10.0];
    leadingAnchor10 = bottomAnchor5;
    v24 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:?];
    v104[2] = v24;
    bottomAnchor6 = [(UIButton *)self->_openURLButton bottomAnchor];
    contentView11 = [(EKEventDetailConferenceCell *)self contentView];
    layoutMarginsGuide4 = [contentView11 layoutMarginsGuide];
    [layoutMarginsGuide4 bottomAnchor];
    v86 = contentView14 = bottomAnchor6;
    v84 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:?];
    v104[3] = v84;
    contentView15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:4];
    [(NSArray *)array addObjectsFromArray:contentView15];
  }

  else
  {
    trailingAnchor8 = [(UIButton *)self->_shareButton trailingAnchor];
    contentView12 = [(EKEventDetailConferenceCell *)self contentView];
    layoutMarginsGuide5 = [contentView12 layoutMarginsGuide];
    trailingAnchor9 = [layoutMarginsGuide5 trailingAnchor];
    v76 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v103[0] = v76;
    bottomAnchor7 = [(UIListContentView *)self->_listView bottomAnchor];
    contentView13 = [(EKEventDetailConferenceCell *)self contentView];
    trailingAnchor7 = [contentView13 bottomAnchor];
    v99 = [bottomAnchor7 constraintEqualToAnchor:?];
    v103[1] = v99;
    trailingAnchor10 = [(UIListContentView *)self->_listView trailingAnchor];
    leadingAnchor10 = [(UIButton *)self->_openURLButton leadingAnchor];
    v93 = [trailingAnchor10 constraintEqualToAnchor:?];
    v103[2] = v93;
    centerYAnchor = [(UIButton *)self->_openURLButton centerYAnchor];
    contentView14 = [(EKEventDetailConferenceCell *)self contentView];
    contentView11 = [contentView14 layoutMarginsGuide];
    layoutMarginsGuide4 = [contentView11 centerYAnchor];
    v86 = [centerYAnchor constraintEqualToAnchor:?];
    v103[3] = v86;
    topAnchor8 = [(UIButton *)self->_openURLButton topAnchor];
    contentView15 = [(EKEventDetailConferenceCell *)self contentView];
    layoutMarginsGuide6 = [contentView15 layoutMarginsGuide];
    topAnchor9 = [layoutMarginsGuide6 topAnchor];
    v84 = topAnchor8;
    v29 = [topAnchor8 constraintGreaterThanOrEqualToAnchor:topAnchor9];
    v103[4] = v29;
    topAnchor10 = [(UIButton *)self->_openURLButton topAnchor];
    contentView16 = [(EKEventDetailConferenceCell *)self contentView];
    layoutMarginsGuide7 = [contentView16 layoutMarginsGuide];
    bottomAnchor8 = [layoutMarginsGuide7 bottomAnchor];
    v34 = [topAnchor10 constraintLessThanOrEqualToAnchor:bottomAnchor8];
    v103[5] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:6];
    [(NSArray *)array addObjectsFromArray:v35];

    contentView10 = contentView13;
    topAnchor7 = trailingAnchor10;

    trailingAnchor6 = bottomAnchor7;
    v19 = v76;

    leadingAnchor9 = trailingAnchor9;
    layoutMarginsGuide3 = layoutMarginsGuide5;

    contentView9 = contentView12;
    v24 = centerYAnchor;
  }

  constraints = self->_constraints;
  self->_constraints = array;
  v37 = array;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (BOOL)update
{
  [(EKEventDetailConferenceCell *)self _createConstraints];
  virtualConference = [(EKEvent *)self->super._event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];

  conferenceURLForDisplay = [(EKEvent *)self->super._event conferenceURLForDisplay];
  v7 = conferenceURLForDisplay;
  if (firstObject)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__EKEventDetailConferenceCell_update__block_invoke;
    v13[3] = &unk_1E843EEB0;
    v13[4] = self;
    [MEMORY[0x1E69933C0] displayDetailsForJoinMethod:firstObject completionHandler:v13];
  }

  else if (conferenceURLForDisplay)
  {
    v8 = MEMORY[0x1E69933C0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__EKEventDetailConferenceCell_update__block_invoke_3;
    v10[3] = &unk_1E843EF00;
    v11 = conferenceURLForDisplay;
    selfCopy = self;
    [v8 displayDetailsForURL:v11 completionHandler:v10];
  }

  return 1;
}

void __37__EKEventDetailConferenceCell_update__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__EKEventDetailConferenceCell_update__block_invoke_2;
  v11[3] = &unk_1E843EE88;
  v11[4] = *(a1 + 32);
  v12 = v8;
  v13 = v7;
  v14 = a4;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __37__EKEventDetailConferenceCell_update__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69933C0];
  v3 = [*(*(a1 + 32) + 1088) virtualConference];
  v4 = [v2 subtitleForVirtualConference:v3 displayedWithTitle:*(a1 + 40)];

  [*(a1 + 32) updateListConfigWithImage:*(a1 + 48) title:*(a1 + 40) subtitle:v4];
  *(*(a1 + 32) + 1136) = *(a1 + 56);
  [*(a1 + 32) _updateActionButtonWithType:?];
}

void __37__EKEventDetailConferenceCell_update__block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EKEventDetailConferenceCell_update__block_invoke_4;
  block[3] = &unk_1E843EED8;
  v12 = *(a1 + 32);
  v13 = v8;
  v14 = *(a1 + 40);
  v15 = v7;
  v16 = a4;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __37__EKEventDetailConferenceCell_update__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E69933C0] subtitleForURL:*(a1 + 32) displayedWithTitle:*(a1 + 40)];
  [*(a1 + 48) updateListConfigWithImage:*(a1 + 56) title:*(a1 + 40) subtitle:v2];
  *(*(a1 + 48) + 1136) = *(a1 + 64);
  [*(a1 + 48) _updateActionButtonWithType:?];
}

- (void)updateListConfigWithImage:(id)image title:(id)title subtitle:(id)subtitle
{
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  configuration = [(UIListContentView *)self->_listView configuration];
  secondaryText = [configuration secondaryText];

  configuration2 = [(UIListContentView *)self->_listView configuration];
  text = [configuration2 text];
  if (![titleCopy isEqualToString:text])
  {

    goto LABEL_6;
  }

  if ((subtitleCopy != 0) != (secondaryText == 0))
  {
LABEL_9:

    goto LABEL_10;
  }

  configuration3 = [(UIListContentView *)self->_listView configuration];
  secondaryText2 = [configuration3 secondaryText];
  v16 = [subtitleCopy isEqualToString:secondaryText2];

  if ((v16 & 1) == 0)
  {
LABEL_6:
    configuration2 = [(EKEventDetailConferenceCell *)self _defaultListConfiguration];
    [configuration2 setImage:imageCopy];
    [configuration2 setText:titleCopy];
    if (subtitleCopy)
    {
      [configuration2 setSecondaryText:subtitleCopy];
    }

    [(UIListContentView *)self->_listView setConfiguration:configuration2];
    text = [(EKEventDetailConferenceCell *)self delegate];
    [text conferenceCellUpdated:self];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)_buttonConfigForCurrentTime
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = CUIKCalendar();
  startDate = [(EKEvent *)self->super._event startDate];
  v6 = [v4 dateByAddingUnit:64 value:-15 toDate:startDate options:0];

  endDateUnadjustedForLegacyClients = [(EKEvent *)self->super._event endDateUnadjustedForLegacyClients];
  v8 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v6 endDate:endDateUnadjustedForLegacyClients];
  if ([v8 containsDate:v3])
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    [filledButtonConfiguration setBaseBackgroundColor:systemGreenColor];

    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    [filledButtonConfiguration setBaseForegroundColor:systemWhiteColor];
  }

  else
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  }

  return filledButtonConfiguration;
}

- (void)_updateActionButtonWithType:(unint64_t)type
{
  _buttonConfigForCurrentTime = [(EKEventDetailConferenceCell *)self _buttonConfigForCurrentTime];
  virtualConference = [(EKEvent *)self->super._event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];
  if (!firstObject)
  {

LABEL_5:
    if (type > 1)
    {
      if (type == 2)
      {
        v17 = EventKitUIBundle();
        v13 = v17;
        v18 = @"Watch";
      }

      else
      {
        if (type != 3)
        {
          goto LABEL_17;
        }

        v17 = EventKitUIBundle();
        v13 = v17;
        v18 = @"Call";
      }
    }

    else
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_17;
        }

        grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];

        v12 = EventKitUIBundle();
        v13 = v12;
        v14 = @"View";
        v15 = &stru_1F4EF6790;
        goto LABEL_9;
      }

      v17 = EventKitUIBundle();
      v13 = v17;
      v18 = @"Join";
    }

    v16 = [v17 localizedStringForKey:v18 value:&stru_1F4EF6790 table:0];
    [_buttonConfigForCurrentTime setTitle:v16];
    goto LABEL_16;
  }

  v8 = firstObject;
  virtualConference2 = [(EKEvent *)self->super._event virtualConference];
  urlWithAllowedScheme = [virtualConference2 urlWithAllowedScheme];

  if (urlWithAllowedScheme)
  {
    goto LABEL_5;
  }

  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];

  v12 = EventKitUIBundle();
  v13 = v12;
  v14 = @"Open - conference cell";
  v15 = @"Open";
LABEL_9:
  v16 = [v12 localizedStringForKey:v14 value:v15 table:0];
  [grayButtonConfiguration setTitle:v16];
  _buttonConfigForCurrentTime = grayButtonConfiguration;
LABEL_16:

LABEL_17:
  [_buttonConfigForCurrentTime setButtonSize:1];
  [_buttonConfigForCurrentTime setCornerStyle:4];
  [(UIButton *)self->_openURLButton setConfiguration:_buttonConfigForCurrentTime];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = EKEventDetailConferenceCell;
  [(EKEventDetailConferenceCell *)&v3 tintColorDidChange];
  [(EKEventDetailConferenceCell *)self _updateActionButtonWithType:self->_actionButtonType];
}

- (void)_openURL
{
  virtualConference = [(EKEvent *)self->super._event virtualConference];
  joinMethods = [virtualConference joinMethods];
  firstObject = [joinMethods firstObject];

  if (!firstObject)
  {
    conferenceURLForDisplay = [(EKEvent *)self->super._event conferenceURLForDisplay];
    goto LABEL_7;
  }

  conferenceURLForDisplay = [firstObject URL];
  virtualConference2 = [(EKEvent *)self->super._event virtualConference];
  urlWithAllowedScheme = [virtualConference2 urlWithAllowedScheme];

  if (urlWithAllowedScheme)
  {
LABEL_7:
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __39__EKEventDetailConferenceCell__openURL__block_invoke_2_72;
    v29[3] = &unk_1E843EF28;
    v20 = conferenceURLForDisplay;
    v30 = v20;
    [defaultWorkspace openURL:v20 configuration:0 completionHandler:v29];

    v13 = v30;
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Open “%@”?" value:&stru_1F4EF6790 table:0];
  absoluteString = [conferenceURLForDisplay absoluteString];
  v13 = [v9 localizedStringWithFormat:v11, absoluteString];

  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"The format of this link is not recognized. iOS cannot verify that it is free from malware." value:&stru_1F4EF6790 table:0];

  v16 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v15 preferredStyle:1];
  v17 = MEMORY[0x1E69DC648];
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Open - conference cell" value:@"Open" table:0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__EKEventDetailConferenceCell__openURL__block_invoke;
  v31[3] = &unk_1E843EB98;
  v20 = conferenceURLForDisplay;
  v32 = v20;
  v21 = [v17 actionWithTitle:v19 style:2 handler:v31];
  [v16 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v23 = EventKitUIBundle();
  v24 = [v23 localizedStringForKey:@"Cancel - conference join dialog" value:@"Cancel" table:0];
  v25 = [v22 actionWithTitle:v24 style:1 handler:&__block_literal_global_2];
  [v16 addAction:v25];

  delegate = [(EKEventDetailConferenceCell *)self delegate];
  owningViewController = [delegate owningViewController];

  if (owningViewController)
  {
    [owningViewController presentViewController:v16 animated:1 completion:0];
  }

LABEL_8:
}

void __39__EKEventDetailConferenceCell__openURL__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__EKEventDetailConferenceCell__openURL__block_invoke_2;
  v4[3] = &unk_1E843EF28;
  v5 = v3;
  [v2 openURL:v5 configuration:0 completionHandler:v4];
}

void __39__EKEventDetailConferenceCell__openURL__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "Unable to open URL from conference detail cell after allowing unallowed scheme %@, error = %@", &v9, 0x16u);
    }
  }
}

void __39__EKEventDetailConferenceCell__openURL__block_invoke_2_72(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "Unable to open URL from conference detail cell %@, error = %@", &v9, 0x16u);
    }
  }
}

- (void)_share:(id)_share
{
  v24[1] = *MEMORY[0x1E69E9840];
  _shareCopy = _share;
  virtualConference = [(EKEvent *)self->super._event virtualConference];

  event = self->super._event;
  if (virtualConference)
  {
    virtualConference2 = [(EKEvent *)event virtualConference];
    joinMethods = [virtualConference2 joinMethods];
    firstObject = [joinMethods firstObject];

    conferenceURLForDisplay = [firstObject URL];
  }

  else
  {
    conferenceURLForDisplay = [(EKEvent *)event conferenceURLForDisplay];
  }

  delegate = [(EKEventDetailConferenceCell *)self delegate];
  v12 = [delegate conferenceCellShouldPresentShareSheet:self];

  delegate2 = [(EKEventDetailConferenceCell *)self delegate];
  v14 = delegate2;
  if (!v12)
  {
    v22 = conferenceURLForDisplay;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v14 conferenceCell:self requestPresentShareSheetWithActivityItems:v18 withPopoverSourceView:_shareCopy];
    owningViewController = v14;
    goto LABEL_8;
  }

  owningViewController = [delegate2 owningViewController];

  if (owningViewController)
  {
    v16 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v24[0] = conferenceURLForDisplay;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v18 = [v16 initWithActivityItems:v17 applicationActivities:0];

    v23 = *MEMORY[0x1E69CDA70];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v18 setExcludedActivityTypes:v19];

    calendar = [(EKEvent *)self->super._event calendar];
    [v18 setIsContentManaged:{objc_msgSend(calendar, "isManaged")}];

    popoverPresentationController = [v18 popoverPresentationController];
    [popoverPresentationController setSourceView:_shareCopy];

    [owningViewController presentViewController:v18 animated:1 completion:0];
LABEL_8:
  }
}

- (ConferenceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end