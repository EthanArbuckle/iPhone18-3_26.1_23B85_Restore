@interface EKReminderTitleDetailCell
+ (id)_dateFont;
+ (void)_invalidateCachedFonts;
+ (void)_registerForInvalidation;
- (EKReminderTitleDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable delegate:(id)delegate;
- (id)_buttonConfigForReminder:(id)reminder;
- (id)_editButton;
- (void)_editButtonTapped;
- (void)setShowExtraSpaceAtBottom:(BOOL)bottom;
- (void)setupConstraintsWithExtraSpace:(BOOL)space;
@end

@implementation EKReminderTitleDetailCell

- (EKReminderTitleDetailCell)initWithEvent:(id)event reminder:(id)reminder editable:(BOOL)editable delegate:(id)delegate
{
  editableCopy = editable;
  v257 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  reminderCopy = reminder;
  obj = delegate;
  v239.receiver = self;
  v239.super_class = EKReminderTitleDetailCell;
  v207 = eventCopy;
  v11 = [(EKReminderDetailCell *)&v239 initWithEvent:eventCopy reminder:reminderCopy editable:editableCopy];
  v12 = v11;
  if (v11)
  {
    [(EKReminderTitleDetailCell *)v11 setSeparatorInset:0.0, 0.0, 0.0, 1.79769313e308];
    objc_storeWeak(&v12->_delegate, obj);
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    title = v12->_title;
    v12->_title = v13;

    [(UILabel *)v12->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v12->_title setNumberOfLines:0];
    title = [(EKEvent *)v12->super.super._event title];
    [(UILabel *)v12->_title setText:title];

    v217 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] addingSymbolicTraits:2];
    v17 = *MEMORY[0x1E69DB648];
    [v217 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    if (([(EKEvent *)v12->super.super._event completed]& 1) != 0 || ([(EKEvent *)v12->super.super._event CUIK_reminderShouldBeEditable]& 1) == 0)
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v217 setObject:secondaryLabelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    title2 = [(EKEvent *)v12->super.super._event title];
    v21 = title2;
    if (title2)
    {
      v22 = title2;
    }

    else
    {
      v22 = &stru_1F4EF6790;
    }

    v206 = [v19 initWithString:v22 attributes:v217];

    [(UILabel *)v12->_title setAttributedText:v206];
    contentView = [(EKReminderTitleDetailCell *)v12 contentView];
    [contentView addSubview:v12->_title];

    LODWORD(v24) = 1148846080;
    [(UILabel *)v12->_title setContentCompressionResistancePriority:1 forAxis:v24];
    horizontalSizeClass = EKUIWidthSizeClassForViewHierarchy(v12);
    if (!horizontalSizeClass)
    {
      traitCollection = [(EKReminderTitleDetailCell *)v12 traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];

      v27 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = horizontalSizeClass;
        _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_ERROR, "Size class from EKUIWidthSizeClassForViewHierarchy was unspecified, so fall back to getting size class from view's trait collection [%ld]", &buf, 0xCu);
      }

      if (!horizontalSizeClass)
      {
        v28 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          horizontalSizeClass = 1;
          *(&buf + 4) = 1;
          _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "Size class from view's trait collection was unspecified, so fall back to default size class [%ld]", &buf, 0xCu);
        }

        else
        {
          horizontalSizeClass = 1;
        }
      }
    }

    event = v12->super.super._event;
    v237 = 0;
    v238 = 0;
    v235 = 0;
    v236 = 0;
    v233 = 0;
    v234 = 0;
    v231 = 0;
    v232 = 0;
    CalDetailStringsForCalendarEvent(event, horizontalSizeClass, &v238, &v237, &v236, &v235, &v234, &v233, &v232, &v231, 0, 0);
    v204 = v238;
    v214 = v237;
    v213 = v236;
    v212 = v235;
    v205 = v234;
    v167 = v233;
    v166 = v232;
    v165 = v231;
    v30 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabelLine1 = v12->_dateLabelLine1;
    v12->_dateLabelLine1 = v30;

    [(UILabel *)v12->_dateLabelLine1 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v12->_dateLabelLine1 setText:v204];
    [(UILabel *)v12->_dateLabelLine1 setTextColor:v205];
    _dateFont = [objc_opt_class() _dateFont];
    [(UILabel *)v12->_dateLabelLine1 setFont:_dateFont];

    contentView2 = [(EKReminderTitleDetailCell *)v12 contentView];
    [contentView2 addSubview:v12->_dateLabelLine1];

    if (v214)
    {
      v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine2 = v12->_dateLabelLine2;
      v12->_dateLabelLine2 = v34;

      [(UILabel *)v12->_dateLabelLine2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine2 setText:v214];
      [(UILabel *)v12->_dateLabelLine2 setTextColor:v167];
      _dateFont2 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine2 setFont:_dateFont2];

      LODWORD(v37) = 1148846080;
      [(UILabel *)v12->_dateLabelLine2 setContentCompressionResistancePriority:1 forAxis:v37];
      contentView3 = [(EKReminderTitleDetailCell *)v12 contentView];
      [contentView3 addSubview:v12->_dateLabelLine2];
    }

    if (v213)
    {
      v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine3 = v12->_dateLabelLine3;
      v12->_dateLabelLine3 = v39;

      [(UILabel *)v12->_dateLabelLine3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine3 setText:v213];
      [(UILabel *)v12->_dateLabelLine3 setTextColor:v166];
      _dateFont3 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine3 setFont:_dateFont3];

      LODWORD(v42) = 1148846080;
      [(UILabel *)v12->_dateLabelLine3 setContentCompressionResistancePriority:1 forAxis:v42];
      contentView4 = [(EKReminderTitleDetailCell *)v12 contentView];
      [contentView4 addSubview:v12->_dateLabelLine3];
    }

    if (v212)
    {
      v44 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine4 = v12->_dateLabelLine4;
      v12->_dateLabelLine4 = v44;

      [(UILabel *)v12->_dateLabelLine4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine4 setText:v212];
      [(UILabel *)v12->_dateLabelLine4 setTextColor:v165];
      _dateFont4 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine4 setFont:_dateFont4];

      LODWORD(v47) = 1148846080;
      [(UILabel *)v12->_dateLabelLine4 setContentCompressionResistancePriority:1 forAxis:v47];
      contentView5 = [(EKReminderTitleDetailCell *)v12 contentView];
      [contentView5 addSubview:v12->_dateLabelLine4];
    }

    if ([(EKEvent *)v12->super.super._event hasRecurrenceRules])
    {
      v240 = 0;
      v241 = &v240;
      v242 = 0x2050000000;
      v49 = getREMRecurrenceRuleFormatterClass_softClass_0;
      v243 = getREMRecurrenceRuleFormatterClass_softClass_0;
      if (!getREMRecurrenceRuleFormatterClass_softClass_0)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v254 = __getREMRecurrenceRuleFormatterClass_block_invoke_0;
        v255 = &unk_1E843F520;
        v256 = &v240;
        __getREMRecurrenceRuleFormatterClass_block_invoke_0(&buf);
        v49 = v241[3];
      }

      v50 = v49;
      _Block_object_dispose(&v240, 8);
      recurrenceRules = [reminderCopy recurrenceRules];
      firstObject = [recurrenceRules firstObject];
      startDate = [(EKEvent *)v12->super.super._event startDate];
      eventStore = [(EKEvent *)v12->super.super._event eventStore];
      timeZone = [eventStore timeZone];
      v56 = [v49 shortNaturalLanguageDescriptionForRecurrenceRule:firstObject date:startDate timeZone:timeZone lowercase:1];
      v57 = v56;
      v58 = &stru_1F4EF6790;
      if (v56)
      {
        v58 = v56;
      }

      v59 = v58;

      v60 = MEMORY[0x1E696AEC0];
      v61 = EventKitUIBundle();
      v62 = [v61 localizedStringForKey:@"Repeats %@" value:&stru_1F4EF6790 table:0];
      v63 = [v60 localizedStringWithFormat:v62, v59];

      v251[0] = v17;
      _dateFont5 = [objc_opt_class() _dateFont];
      v252[0] = _dateFont5;
      v251[1] = *MEMORY[0x1E69DB650];
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v252[1] = secondaryLabelColor2;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:2];

      v67 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v63 attributes:v66];
      v68 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      recurrenceLabel = v12->_recurrenceLabel;
      v12->_recurrenceLabel = v68;

      [(UILabel *)v12->_recurrenceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_recurrenceLabel setAttributedText:v67];
      LODWORD(v70) = 1148846080;
      [(UILabel *)v12->_recurrenceLabel setContentCompressionResistancePriority:1 forAxis:v70];
      contentView6 = [(EKReminderTitleDetailCell *)v12 contentView];
      [contentView6 addSubview:v12->_recurrenceLabel];
    }

    _editButton = [(EKReminderTitleDetailCell *)v12 _editButton];
    editButton = v12->_editButton;
    v12->_editButton = _editButton;

    contentView7 = [(EKReminderTitleDetailCell *)v12 contentView];
    [contentView7 addSubview:v12->_editButton];

    objc_initWeak(&buf, v12);
    v75 = MEMORY[0x1E69DC628];
    v229[0] = MEMORY[0x1E69E9820];
    v229[1] = 3221225472;
    v229[2] = __70__EKReminderTitleDetailCell_initWithEvent_reminder_editable_delegate___block_invoke;
    v229[3] = &unk_1E8441A90;
    objc_copyWeak(&v230, &buf);
    v168 = [v75 actionWithHandler:v229];
    v76 = MEMORY[0x1E69DC738];
    v77 = [(EKReminderTitleDetailCell *)v12 _buttonConfigForReminder:v12->super.super._event];
    v78 = [v76 buttonWithConfiguration:v77 primaryAction:v168];
    circle = v12->_circle;
    v12->_circle = v78;

    LODWORD(v80) = 1148846080;
    [(UIButton *)v12->_circle setContentCompressionResistancePriority:0 forAxis:v80];
    LODWORD(v81) = 1144750080;
    [(UIButton *)v12->_circle setContentHuggingPriority:0 forAxis:v81];
    [(UIButton *)v12->_circle setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView8 = [(EKReminderTitleDetailCell *)v12 contentView];
    [contentView8 addSubview:v12->_circle];

    event = [(EKEventDetailCell *)v12 event];
    -[UIButton setUserInteractionEnabled:](v12->_circle, "setUserInteractionEnabled:", [event CUIK_reminderShouldBeEditable]);

    _editButton2 = [(EKReminderTitleDetailCell *)v12 _editButton];
    [(UIButton *)v12->_editButton frame];
    [_editButton2 sizeThatFits:{v85, v86}];
    v88 = v87;
    v90 = v89;

    WeakRetained = objc_loadWeakRetained(&v12->_delegate);
    LOBYTE(v76) = objc_opt_respondsToSelector();

    if (v76)
    {
      v92 = objc_loadWeakRetained(&v12->_delegate);
      v93 = [v92 titleShouldInsetForEditButton:v12];
    }

    else
    {
      v93 = 0;
    }

    if ((MEMORY[0x1D38B98D0]() & v93) != 0)
    {
      v94 = 8.0;
    }

    else
    {
      v94 = 16.0;
    }

    v222 = MEMORY[0x1E695DF70];
    leadingAnchor = [(UIButton *)v12->_circle leadingAnchor];
    contentView9 = [(EKReminderTitleDetailCell *)v12 contentView];
    layoutMarginsGuide = [contentView9 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v187 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v250[0] = v187;
    firstBaselineAnchor = [(UIButton *)v12->_circle firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v12->_title firstBaselineAnchor];
    v184 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v250[1] = v184;
    topAnchor = [(UILabel *)v12->_title topAnchor];
    contentView10 = [(EKReminderTitleDetailCell *)v12 contentView];
    topAnchor2 = [contentView10 topAnchor];
    v180 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v250[2] = v180;
    leadingAnchor3 = [(UILabel *)v12->_title leadingAnchor];
    trailingAnchor = [(UIButton *)v12->_circle trailingAnchor];
    v177 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:11.0];
    v250[3] = v177;
    trailingAnchor2 = [(UILabel *)v12->_title trailingAnchor];
    contentView11 = [(EKReminderTitleDetailCell *)v12 contentView];
    layoutMarginsGuide2 = [contentView11 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v172 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-(v88 + v94)];
    v250[4] = v172;
    bottomAnchor = [(UILabel *)v12->_title bottomAnchor];
    topAnchor3 = [(UILabel *)v12->_dateLabelLine1 topAnchor];
    v169 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-21.0];
    v250[5] = v169;
    leadingAnchor4 = [(UILabel *)v12->_dateLabelLine1 leadingAnchor];
    contentView12 = [(EKReminderTitleDetailCell *)v12 contentView];
    layoutMarginsGuide3 = [contentView12 layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide3 leadingAnchor];
    v99 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v250[6] = v99;
    trailingAnchor4 = [(UILabel *)v12->_dateLabelLine1 trailingAnchor];
    trailingAnchor5 = [(UILabel *)v12->_title trailingAnchor];
    v102 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v250[7] = v102;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v250 count:8];
    v223 = [v222 arrayWithArray:v103];

    v104 = objc_loadWeakRetained(&v12->_delegate);
    LODWORD(layoutMarginsGuide3) = [v104 shouldShowEditButtonInline];

    v105 = v12->_editButton;
    if (layoutMarginsGuide3)
    {
      if (MEMORY[0x1D38B98D0]([(UIButton *)v105 setHidden:0]))
      {
        layer = [(UIButton *)v12->_editButton layer];
        v107 = v90 + 8.0;
        [layer setCornerRadius:v107 * 0.5];

        layer2 = [(UIButton *)v12->_editButton layer];
        [layer2 setMasksToBounds:1];

        widthAnchor = [(UIButton *)v12->_editButton widthAnchor];
        v110 = [widthAnchor constraintEqualToConstant:v88 + 20.0];
        v249[0] = v110;
        heightAnchor = [(UIButton *)v12->_editButton heightAnchor];
        v112 = [heightAnchor constraintEqualToConstant:v107];
        v249[1] = v112;
        v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v249 count:2];
        [v223 addObjectsFromArray:v113];
      }

      trailingAnchor6 = [(UIButton *)v12->_editButton trailingAnchor];
      contentView13 = [(EKReminderTitleDetailCell *)v12 contentView];
      trailingAnchor7 = [contentView13 trailingAnchor];
      v117 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-8.0];
      v248[0] = v117;
      firstBaselineAnchor3 = [(UIButton *)v12->_editButton firstBaselineAnchor];
      firstBaselineAnchor4 = [(UILabel *)v12->_title firstBaselineAnchor];
      v120 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4];
      v248[1] = v120;
      v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v248 count:2];
      [v223 addObjectsFromArray:v121];
    }

    else
    {
      [(UIButton *)v105 setHidden:1];
    }

    v228 = v12->_dateLabelLine1;
    v122 = v12->_dateLabelLine2;
    if (v122)
    {
      topAnchor4 = [(UILabel *)v122 topAnchor];
      bottomAnchor2 = [(UILabel *)v228 bottomAnchor];
      v208 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:4.0];
      v247[0] = v208;
      leadingAnchor6 = [(UILabel *)v12->_dateLabelLine2 leadingAnchor];
      contentView14 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide4 = [contentView14 layoutMarginsGuide];
      leadingAnchor7 = [layoutMarginsGuide4 leadingAnchor];
      v124 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
      v247[1] = v124;
      trailingAnchor8 = [(UILabel *)v12->_dateLabelLine2 trailingAnchor];
      contentView15 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide5 = [contentView15 layoutMarginsGuide];
      trailingAnchor9 = [layoutMarginsGuide5 trailingAnchor];
      v129 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
      v247[2] = v129;
      v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v247 count:3];
      [v223 addObjectsFromArray:v130];

      v131 = v12->_dateLabelLine2;
      v228 = v131;
    }

    v132 = v12->_dateLabelLine3;
    if (v132)
    {
      topAnchor5 = [(UILabel *)v132 topAnchor];
      bottomAnchor3 = [(UILabel *)v228 bottomAnchor];
      v209 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
      v246[0] = v209;
      leadingAnchor8 = [(UILabel *)v12->_dateLabelLine3 leadingAnchor];
      contentView16 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide6 = [contentView16 layoutMarginsGuide];
      leadingAnchor9 = [layoutMarginsGuide6 leadingAnchor];
      v134 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
      v246[1] = v134;
      trailingAnchor10 = [(UILabel *)v12->_dateLabelLine3 trailingAnchor];
      contentView17 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide7 = [contentView17 layoutMarginsGuide];
      trailingAnchor11 = [layoutMarginsGuide7 trailingAnchor];
      v139 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
      v246[2] = v139;
      v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:v246 count:3];
      [v223 addObjectsFromArray:v140];

      v141 = v12->_dateLabelLine3;
      v228 = v141;
    }

    v142 = v12->_dateLabelLine4;
    if (v142)
    {
      topAnchor6 = [(UILabel *)v142 topAnchor];
      bottomAnchor4 = [(UILabel *)v228 bottomAnchor];
      v210 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:4.0];
      v245[0] = v210;
      leadingAnchor10 = [(UILabel *)v12->_dateLabelLine4 leadingAnchor];
      contentView18 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide8 = [contentView18 layoutMarginsGuide];
      leadingAnchor11 = [layoutMarginsGuide8 leadingAnchor];
      v144 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
      v245[1] = v144;
      trailingAnchor12 = [(UILabel *)v12->_dateLabelLine4 trailingAnchor];
      contentView19 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide9 = [contentView19 layoutMarginsGuide];
      trailingAnchor13 = [layoutMarginsGuide9 trailingAnchor];
      v149 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
      v245[2] = v149;
      v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:3];
      [v223 addObjectsFromArray:v150];

      v151 = v12->_dateLabelLine4;
      v228 = v151;
    }

    v152 = v12->_recurrenceLabel;
    if (v152)
    {
      topAnchor7 = [(UILabel *)v152 topAnchor];
      bottomAnchor5 = [(UILabel *)v228 bottomAnchor];
      v211 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:4.0];
      v244[0] = v211;
      leadingAnchor12 = [(UILabel *)v12->_recurrenceLabel leadingAnchor];
      contentView20 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide10 = [contentView20 layoutMarginsGuide];
      leadingAnchor13 = [layoutMarginsGuide10 leadingAnchor];
      v154 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
      v244[1] = v154;
      trailingAnchor14 = [(UILabel *)v12->_recurrenceLabel trailingAnchor];
      contentView21 = [(EKReminderTitleDetailCell *)v12 contentView];
      layoutMarginsGuide11 = [contentView21 layoutMarginsGuide];
      trailingAnchor15 = [layoutMarginsGuide11 trailingAnchor];
      v159 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
      v244[2] = v159;
      v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:v244 count:3];
      [v223 addObjectsFromArray:v160];

      v161 = v12->_recurrenceLabel;
      v162 = v161;
    }

    else
    {
      v162 = v228;
    }

    v163 = v162;
    objc_storeStrong(&v12->_bottomView, v162);
    [MEMORY[0x1E696ACD8] activateConstraints:v223];
    [(EKReminderTitleDetailCell *)v12 setupConstraintsWithExtraSpace:v12->_showExtraSpaceAtBottom];

    objc_destroyWeak(&v230);
    objc_destroyWeak(&buf);
  }

  return v12;
}

void __70__EKReminderTitleDetailCell_initWithEvent_reminder_editable_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained event];
    v3 = [v2 CUIK_reminderShouldBeEditable];

    WeakRetained = v5;
    if (v3)
    {
      v4 = objc_loadWeakRetained(v5 + 151);
      [v4 reminderToggled];

      WeakRetained = v5;
    }
  }
}

+ (void)_invalidateCachedFonts
{
  os_unfair_lock_lock(&_fontLock_0);
  v2 = s_dateFont;
  s_dateFont = 0;

  os_unfair_lock_unlock(&_fontLock_0);
}

+ (void)_registerForInvalidation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__EKReminderTitleDetailCell__registerForInvalidation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_registerForInvalidation_onceToken_1 != -1)
  {
    dispatch_once(&_registerForInvalidation_onceToken_1, block);
  }
}

void __53__EKReminderTitleDetailCell__registerForInvalidation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__invalidateCachedFonts name:*MEMORY[0x1E69DDC48] object:0];
}

+ (id)_dateFont
{
  [self _registerForInvalidation];
  os_unfair_lock_lock(&_fontLock_0);
  v2 = s_dateFont;
  if (!s_dateFont)
  {
    v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v4 = s_dateFont;
    s_dateFont = v3;

    v2 = s_dateFont;
  }

  v5 = v2;
  os_unfair_lock_unlock(&_fontLock_0);

  return v5;
}

- (id)_editButton
{
  v24[1] = *MEMORY[0x1E69E9840];
  editButton = self->_editButton;
  if (!editButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v5 = self->_editButton;
    self->_editButton = v4;

    LODWORD(v6) = 1148846080;
    [(UIButton *)self->_editButton setContentCompressionResistancePriority:0 forAxis:v6];
    [(UIButton *)self->_editButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Edit" value:&stru_1F4EF6790 table:0];

    if (CalSolariumEnabled())
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = *MEMORY[0x1E69DB648];
      v24[0] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v13 = [v11 initWithString:v9 attributes:v12];
      [plainButtonConfiguration setAttributedTitle:v13];

      [(UIButton *)self->_editButton setConfiguration:plainButtonConfiguration];
    }

    else
    {
      v14 = self->_editButton;
      v15 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = *MEMORY[0x1E69DB648];
      v22 = v7;
      plainButtonConfiguration = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [v15 initWithString:v9 attributes:plainButtonConfiguration];
      [(UIButton *)v14 setAttributedTitle:v16 forState:0];
    }

    if (MEMORY[0x1D38B98D0]([(UIButton *)self->_editButton addTarget:self action:sel__editButtonTapped forControlEvents:64]))
    {
      secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      [(UIButton *)self->_editButton setBackgroundColor:secondarySystemFillColor];

      v18 = self->_editButton;
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v18 setTitleColor:labelColor forState:0];
    }

    editButton = self->_editButton;
  }

  return editButton;
}

- (void)setupConstraintsWithExtraSpace:(BOOL)space
{
  spaceCopy = space;
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_bottomConstraint)
  {
    v5 = MEMORY[0x1E696ACD8];
    v15[0] = self->_bottomConstraint;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v5 deactivateConstraints:v6];
  }

  bottomAnchor = [(UIView *)self->_bottomView bottomAnchor];
  contentView = [(EKReminderTitleDetailCell *)self contentView];
  bottomAnchor2 = [contentView bottomAnchor];
  if (spaceCopy)
  {
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
  }

  else
  {
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  }
  v10 = ;
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v10;

  v12 = MEMORY[0x1E696ACD8];
  v14 = self->_bottomConstraint;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v12 activateConstraints:v13];
}

- (void)setShowExtraSpaceAtBottom:(BOOL)bottom
{
  if (self->_showExtraSpaceAtBottom != bottom)
  {
    self->_showExtraSpaceAtBottom = bottom;
    [(EKReminderTitleDetailCell *)self setupConstraintsWithExtraSpace:?];
  }
}

- (void)_editButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editButtonPressed];
}

- (id)_buttonConfigForReminder:(id)reminder
{
  reminderCopy = reminder;
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration contentInsets];
  [plainButtonConfiguration setContentInsets:?];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB980]];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v5 scale:2];
  v7 = MEMORY[0x1E69DCAB8];
  if (reminderCopy)
  {
    v8 = [reminderCopy CUIK_symbolName:{objc_msgSend(reminderCopy, "isAllDay")}];
    v9 = [v7 systemImageNamed:v8 withConfiguration:v6];
    [plainButtonConfiguration setImage:v9];

    if ([reminderCopy CUIK_reminderShouldBeEditable])
    {
      [reminderCopy CUIK_symbolColor];
    }

    else
    {
      [reminderCopy CUIK_disabledSymbolColor];
    }
    v10 = ;
    [plainButtonConfiguration setBaseForegroundColor:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:*MEMORY[0x1E69932F8] withConfiguration:v6];
    [plainButtonConfiguration setImage:v10];
  }

  return plainButtonConfiguration;
}

@end