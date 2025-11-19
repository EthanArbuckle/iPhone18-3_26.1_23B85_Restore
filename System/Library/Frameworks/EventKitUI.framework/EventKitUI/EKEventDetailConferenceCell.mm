@interface EKEventDetailConferenceCell
- (BOOL)_buttonsShouldUseSeparateLine;
- (BOOL)update;
- (ConferenceCellDelegate)delegate;
- (EKEventDetailConferenceCell)initWithEvent:(id)a3 editable:(BOOL)a4;
- (double)_separatorHeight;
- (id)_buttonConfigForCurrentTime;
- (id)_defaultListConfiguration;
- (void)_createConstraints;
- (void)_createViews;
- (void)_openURL;
- (void)_share:(id)a3;
- (void)_updateActionButtonWithType:(unint64_t)a3;
- (void)tintColorDidChange;
- (void)updateListConfigWithImage:(id)a3 title:(id)a4 subtitle:(id)a5;
@end

@implementation EKEventDetailConferenceCell

- (EKEventDetailConferenceCell)initWithEvent:(id)a3 editable:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = EKEventDetailConferenceCell;
  v4 = [(EKEventDetailCell *)&v9 initWithEvent:a3 editable:a4 style:0];
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
  v5 = [(EKEventDetailConferenceCell *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(v6, *MEMORY[0x1E69DDC60]);

  v8 = [(EKEventDetailConferenceCell *)self traitCollection];
  v9 = EKUIUsesLargeTextLayout(v8) || v3 < v4 && v7 != NSOrderedAscending;

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
    v4 = [(EKEventDetailConferenceCell *)self traitCollection];
    v5 = EKUIUsesLargeTextLayout(v4);

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
  v3 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v4 = [MEMORY[0x1E69DC888] systemGray2Color];
  v5 = [v3 imageProperties];
  [v5 setTintColor:v4];

  [v3 setImageToTextPadding:12.0];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v7 = [v3 imageProperties];
  [v7 setPreferredSymbolConfiguration:v6];

  v8 = [v3 imageProperties];
  [v8 setReservedLayoutSize:{24.0, 24.0}];

  v9 = [v3 imageProperties];
  [v9 setMaximumSize:{24.0, 24.0}];

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11 = [v3 secondaryTextProperties];
  [v11 setColor:v10];

  v12 = [v3 imageProperties];
  [v12 setCornerRadius:7.0];

  [v3 setDirectionalLayoutMargins:{10.0, 16.0, 10.0, 0.0}];
  if (![(EKEventDetailConferenceCell *)self _buttonsShouldUseSeparateLine])
  {
    v13 = [v3 textProperties];
    [v13 setNumberOfLines:1];

    v14 = [v3 secondaryTextProperties];
    [v14 setNumberOfLines:1];
  }

  return v3;
}

- (void)_createViews
{
  v3 = objc_alloc(MEMORY[0x1E69DCC30]);
  v4 = [(EKEventDetailConferenceCell *)self _defaultListConfiguration];
  v5 = [v3 initWithConfiguration:v4];
  listView = self->_listView;
  self->_listView = v5;

  [(UIListContentView *)self->_listView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(EKEventDetailConferenceCell *)self contentView];
  [v7 addSubview:self->_listView];

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
  v14 = [(EKEventDetailConferenceCell *)self contentView];
  [v14 addSubview:self->_openURLButton];

  v32 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v15 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v15 setCornerStyle:4];
  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up" withConfiguration:v32];
  [v15 setImage:v16];

  [v15 setContentInsets:{3.0, 3.0, 4.0, 3.0}];
  v17 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  [v15 setPreferredSymbolConfigurationForImage:v17];

  [v15 setButtonSize:1];
  v18 = [MEMORY[0x1E69DC738] buttonWithType:1];
  shareButton = self->_shareButton;
  self->_shareButton = v18;

  [(UIButton *)self->_shareButton setConfiguration:v15];
  [(UIButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v20) = 1148846080;
  [(UIButton *)self->_shareButton setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148829696;
  [(UIButton *)self->_shareButton setContentHuggingPriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [(UIButton *)self->_shareButton setContentCompressionResistancePriority:0 forAxis:v22];
  [(UIButton *)self->_shareButton addTarget:self action:sel__share_ forControlEvents:64];
  v23 = [(EKEventDetailConferenceCell *)self contentView];
  [v23 addSubview:self->_shareButton];

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

  v27 = [(EKEventDetailConferenceCell *)self contentView];
  [v27 addSubview:self->_topSeparator];

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

  v31 = [(EKEventDetailConferenceCell *)self contentView];
  [v31 addSubview:self->_bottomSeparator];

  [(EKEventDetailConferenceCell *)self _createConstraints];
}

- (void)_createConstraints
{
  v105[15] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  v102 = [MEMORY[0x1E695DF70] array];
  v100 = [(UIView *)self->_topSeparator heightAnchor];
  [(EKEventDetailConferenceCell *)self _separatorHeight];
  v98 = [v100 constraintEqualToConstant:?];
  v105[0] = v98;
  v94 = [(UIView *)self->_topSeparator topAnchor];
  v96 = [(EKEventDetailConferenceCell *)self contentView];
  v91 = [v96 topAnchor];
  v89 = [v94 constraintEqualToAnchor:v91];
  v105[1] = v89;
  v85 = [(UIView *)self->_topSeparator leadingAnchor];
  v87 = [(EKEventDetailConferenceCell *)self contentView];
  v83 = [v87 layoutMarginsGuide];
  v81 = [v83 leadingAnchor];
  v79 = [v85 constraintEqualToAnchor:v81];
  v105[2] = v79;
  v75 = [(UIView *)self->_topSeparator trailingAnchor];
  v77 = [(EKEventDetailConferenceCell *)self contentView];
  v73 = [v77 trailingAnchor];
  v71 = [v75 constraintEqualToAnchor:v73];
  v105[3] = v71;
  v69 = [(UIView *)self->_bottomSeparator heightAnchor];
  [(EKEventDetailConferenceCell *)self _separatorHeight];
  v67 = [v69 constraintEqualToConstant:?];
  v105[4] = v67;
  v64 = [(UIView *)self->_bottomSeparator bottomAnchor];
  v65 = [(EKEventDetailConferenceCell *)self contentView];
  v63 = [v65 bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v105[5] = v62;
  v60 = [(UIView *)self->_bottomSeparator leadingAnchor];
  v61 = [(EKEventDetailConferenceCell *)self contentView];
  v59 = [v61 layoutMarginsGuide];
  v58 = [v59 leadingAnchor];
  v57 = [v60 constraintEqualToAnchor:v58];
  v105[6] = v57;
  v55 = [(UIView *)self->_bottomSeparator trailingAnchor];
  v56 = [(EKEventDetailConferenceCell *)self contentView];
  v54 = [v56 trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v105[7] = v53;
  v51 = [(UIListContentView *)self->_listView leadingAnchor];
  v52 = [(EKEventDetailConferenceCell *)self contentView];
  v50 = [v52 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v105[8] = v49;
  v47 = [(UIListContentView *)self->_listView topAnchor];
  v48 = [(EKEventDetailConferenceCell *)self contentView];
  v46 = [v48 topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v105[9] = v45;
  v44 = [(UIButton *)self->_shareButton topAnchor];
  v43 = [(UIButton *)self->_openURLButton topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v105[10] = v42;
  v41 = [(UIButton *)self->_shareButton bottomAnchor];
  v40 = [(UIButton *)self->_openURLButton bottomAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v105[11] = v39;
  v3 = [(UIButton *)self->_shareButton leadingAnchor];
  v4 = [(UIButton *)self->_openURLButton trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:12.0];
  v105[12] = v5;
  v6 = [(UIButton *)self->_shareButton widthAnchor];
  v7 = [(UIButton *)self->_shareButton heightAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v105[13] = v8;
  openURLButton = self->_openURLButton;
  v10 = MEMORY[0x1E696ACD8];
  v38 = *MEMORY[0x1E69DDCF8];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  [v11 _scaledValueForValue:62.0];
  v13 = [v10 constraintWithItem:openURLButton attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:v12];
  v105[14] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:15];
  [(NSArray *)v102 addObjectsFromArray:v14];

  if ([(EKEventDetailConferenceCell *)self _buttonsShouldUseSeparateLine])
  {
    v15 = [(UIButton *)self->_openURLButton leadingAnchor];
    v16 = [(EKEventDetailConferenceCell *)self contentView];
    v17 = [v16 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v95 = v15;
    v19 = [v15 constraintEqualToAnchor:v18];
    v104[0] = v19;
    v20 = [(UIListContentView *)self->_listView trailingAnchor];
    v21 = [(EKEventDetailConferenceCell *)self contentView];
    v101 = [v21 trailingAnchor];
    v99 = [v20 constraintEqualToAnchor:?];
    v104[1] = v99;
    v22 = [(UIButton *)self->_openURLButton topAnchor];
    v23 = [(UIListContentView *)self->_listView bottomAnchor];
    v93 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v38];
    [v93 _scaledValueForValue:10.0];
    v97 = v23;
    v24 = [v22 constraintEqualToAnchor:v23 constant:?];
    v104[2] = v24;
    v25 = [(UIButton *)self->_openURLButton bottomAnchor];
    v90 = [(EKEventDetailConferenceCell *)self contentView];
    v88 = [v90 layoutMarginsGuide];
    [v88 bottomAnchor];
    v86 = v92 = v25;
    v84 = [v25 constraintLessThanOrEqualToAnchor:?];
    v104[3] = v84;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:4];
    [(NSArray *)v102 addObjectsFromArray:v26];
  }

  else
  {
    v95 = [(UIButton *)self->_shareButton trailingAnchor];
    v82 = [(EKEventDetailConferenceCell *)self contentView];
    v80 = [v82 layoutMarginsGuide];
    v78 = [v80 trailingAnchor];
    v76 = [v95 constraintEqualToAnchor:v78];
    v103[0] = v76;
    v74 = [(UIListContentView *)self->_listView bottomAnchor];
    v72 = [(EKEventDetailConferenceCell *)self contentView];
    v101 = [v72 bottomAnchor];
    v99 = [v74 constraintEqualToAnchor:?];
    v103[1] = v99;
    v70 = [(UIListContentView *)self->_listView trailingAnchor];
    v97 = [(UIButton *)self->_openURLButton leadingAnchor];
    v93 = [v70 constraintEqualToAnchor:?];
    v103[2] = v93;
    v68 = [(UIButton *)self->_openURLButton centerYAnchor];
    v92 = [(EKEventDetailConferenceCell *)self contentView];
    v90 = [v92 layoutMarginsGuide];
    v88 = [v90 centerYAnchor];
    v86 = [v68 constraintEqualToAnchor:?];
    v103[3] = v86;
    v27 = [(UIButton *)self->_openURLButton topAnchor];
    v26 = [(EKEventDetailConferenceCell *)self contentView];
    v66 = [v26 layoutMarginsGuide];
    v28 = [v66 topAnchor];
    v84 = v27;
    v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];
    v103[4] = v29;
    v30 = [(UIButton *)self->_openURLButton topAnchor];
    v31 = [(EKEventDetailConferenceCell *)self contentView];
    v32 = [v31 layoutMarginsGuide];
    v33 = [v32 bottomAnchor];
    v34 = [v30 constraintLessThanOrEqualToAnchor:v33];
    v103[5] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:6];
    [(NSArray *)v102 addObjectsFromArray:v35];

    v21 = v72;
    v22 = v70;

    v20 = v74;
    v19 = v76;

    v18 = v78;
    v17 = v80;

    v16 = v82;
    v24 = v68;
  }

  constraints = self->_constraints;
  self->_constraints = v102;
  v37 = v102;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (BOOL)update
{
  [(EKEventDetailConferenceCell *)self _createConstraints];
  v3 = [(EKEvent *)self->super._event virtualConference];
  v4 = [v3 joinMethods];
  v5 = [v4 firstObject];

  v6 = [(EKEvent *)self->super._event conferenceURLForDisplay];
  v7 = v6;
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__EKEventDetailConferenceCell_update__block_invoke;
    v13[3] = &unk_1E843EEB0;
    v13[4] = self;
    [MEMORY[0x1E69933C0] displayDetailsForJoinMethod:v5 completionHandler:v13];
  }

  else if (v6)
  {
    v8 = MEMORY[0x1E69933C0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__EKEventDetailConferenceCell_update__block_invoke_3;
    v10[3] = &unk_1E843EF00;
    v11 = v6;
    v12 = self;
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

- (void)updateListConfigWithImage:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(UIListContentView *)self->_listView configuration];
  v11 = [v10 secondaryText];

  v12 = [(UIListContentView *)self->_listView configuration];
  v13 = [v12 text];
  if (![v8 isEqualToString:v13])
  {

    goto LABEL_6;
  }

  if ((v9 != 0) != (v11 == 0))
  {
LABEL_9:

    goto LABEL_10;
  }

  v14 = [(UIListContentView *)self->_listView configuration];
  v15 = [v14 secondaryText];
  v16 = [v9 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {
LABEL_6:
    v12 = [(EKEventDetailConferenceCell *)self _defaultListConfiguration];
    [v12 setImage:v17];
    [v12 setText:v8];
    if (v9)
    {
      [v12 setSecondaryText:v9];
    }

    [(UIListContentView *)self->_listView setConfiguration:v12];
    v13 = [(EKEventDetailConferenceCell *)self delegate];
    [v13 conferenceCellUpdated:self];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)_buttonConfigForCurrentTime
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = CUIKCalendar();
  v5 = [(EKEvent *)self->super._event startDate];
  v6 = [v4 dateByAddingUnit:64 value:-15 toDate:v5 options:0];

  v7 = [(EKEvent *)self->super._event endDateUnadjustedForLegacyClients];
  v8 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v6 endDate:v7];
  if ([v8 containsDate:v3])
  {
    v9 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    v10 = [MEMORY[0x1E69DC888] systemGreenColor];
    [v9 setBaseBackgroundColor:v10];

    v11 = [MEMORY[0x1E69DC888] systemWhiteColor];
    [v9 setBaseForegroundColor:v11];
  }

  else
  {
    v9 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  }

  return v9;
}

- (void)_updateActionButtonWithType:(unint64_t)a3
{
  v19 = [(EKEventDetailConferenceCell *)self _buttonConfigForCurrentTime];
  v5 = [(EKEvent *)self->super._event virtualConference];
  v6 = [v5 joinMethods];
  v7 = [v6 firstObject];
  if (!v7)
  {

LABEL_5:
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v17 = EventKitUIBundle();
        v13 = v17;
        v18 = @"Watch";
      }

      else
      {
        if (a3 != 3)
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
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_17;
        }

        v11 = [MEMORY[0x1E69DC740] grayButtonConfiguration];

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
    [v19 setTitle:v16];
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [(EKEvent *)self->super._event virtualConference];
  v10 = [v9 urlWithAllowedScheme];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E69DC740] grayButtonConfiguration];

  v12 = EventKitUIBundle();
  v13 = v12;
  v14 = @"Open - conference cell";
  v15 = @"Open";
LABEL_9:
  v16 = [v12 localizedStringForKey:v14 value:v15 table:0];
  [v11 setTitle:v16];
  v19 = v11;
LABEL_16:

LABEL_17:
  [v19 setButtonSize:1];
  [v19 setCornerStyle:4];
  [(UIButton *)self->_openURLButton setConfiguration:v19];
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
  v3 = [(EKEvent *)self->super._event virtualConference];
  v4 = [v3 joinMethods];
  v5 = [v4 firstObject];

  if (!v5)
  {
    v6 = [(EKEvent *)self->super._event conferenceURLForDisplay];
    goto LABEL_7;
  }

  v6 = [v5 URL];
  v7 = [(EKEvent *)self->super._event virtualConference];
  v8 = [v7 urlWithAllowedScheme];

  if (v8)
  {
LABEL_7:
    v28 = [MEMORY[0x1E6963608] defaultWorkspace];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __39__EKEventDetailConferenceCell__openURL__block_invoke_2_72;
    v29[3] = &unk_1E843EF28;
    v20 = v6;
    v30 = v20;
    [v28 openURL:v20 configuration:0 completionHandler:v29];

    v13 = v30;
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = EventKitUIBundle();
  v11 = [v10 localizedStringForKey:@"Open “%@”?" value:&stru_1F4EF6790 table:0];
  v12 = [v6 absoluteString];
  v13 = [v9 localizedStringWithFormat:v11, v12];

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
  v20 = v6;
  v32 = v20;
  v21 = [v17 actionWithTitle:v19 style:2 handler:v31];
  [v16 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v23 = EventKitUIBundle();
  v24 = [v23 localizedStringForKey:@"Cancel - conference join dialog" value:@"Cancel" table:0];
  v25 = [v22 actionWithTitle:v24 style:1 handler:&__block_literal_global_2];
  [v16 addAction:v25];

  v26 = [(EKEventDetailConferenceCell *)self delegate];
  v27 = [v26 owningViewController];

  if (v27)
  {
    [v27 presentViewController:v16 animated:1 completion:0];
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

- (void)_share:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEvent *)self->super._event virtualConference];

  event = self->super._event;
  if (v5)
  {
    v7 = [(EKEvent *)event virtualConference];
    v8 = [v7 joinMethods];
    v9 = [v8 firstObject];

    v10 = [v9 URL];
  }

  else
  {
    v10 = [(EKEvent *)event conferenceURLForDisplay];
  }

  v11 = [(EKEventDetailConferenceCell *)self delegate];
  v12 = [v11 conferenceCellShouldPresentShareSheet:self];

  v13 = [(EKEventDetailConferenceCell *)self delegate];
  v14 = v13;
  if (!v12)
  {
    v22 = v10;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v14 conferenceCell:self requestPresentShareSheetWithActivityItems:v18 withPopoverSourceView:v4];
    v15 = v14;
    goto LABEL_8;
  }

  v15 = [v13 owningViewController];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v24[0] = v10;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v18 = [v16 initWithActivityItems:v17 applicationActivities:0];

    v23 = *MEMORY[0x1E69CDA70];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v18 setExcludedActivityTypes:v19];

    v20 = [(EKEvent *)self->super._event calendar];
    [v18 setIsContentManaged:{objc_msgSend(v20, "isManaged")}];

    v21 = [v18 popoverPresentationController];
    [v21 setSourceView:v4];

    [v15 presentViewController:v18 animated:1 completion:0];
LABEL_8:
  }
}

- (ConferenceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end