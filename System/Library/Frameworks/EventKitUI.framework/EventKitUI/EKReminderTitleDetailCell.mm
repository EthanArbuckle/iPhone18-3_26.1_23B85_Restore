@interface EKReminderTitleDetailCell
+ (id)_dateFont;
+ (void)_invalidateCachedFonts;
+ (void)_registerForInvalidation;
- (EKReminderTitleDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 delegate:(id)a6;
- (id)_buttonConfigForReminder:(id)a3;
- (id)_editButton;
- (void)_editButtonTapped;
- (void)setShowExtraSpaceAtBottom:(BOOL)a3;
- (void)setupConstraintsWithExtraSpace:(BOOL)a3;
@end

@implementation EKReminderTitleDetailCell

- (EKReminderTitleDetailCell)initWithEvent:(id)a3 reminder:(id)a4 editable:(BOOL)a5 delegate:(id)a6
{
  v7 = a5;
  v257 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v215 = a4;
  obj = a6;
  v239.receiver = self;
  v239.super_class = EKReminderTitleDetailCell;
  v207 = v10;
  v11 = [(EKReminderDetailCell *)&v239 initWithEvent:v10 reminder:v215 editable:v7];
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
    v15 = [(EKEvent *)v12->super.super._event title];
    [(UILabel *)v12->_title setText:v15];

    v217 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] addingSymbolicTraits:2];
    v17 = *MEMORY[0x1E69DB648];
    [v217 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69DB648]];

    if (([(EKEvent *)v12->super.super._event completed]& 1) != 0 || ([(EKEvent *)v12->super.super._event CUIK_reminderShouldBeEditable]& 1) == 0)
    {
      v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v217 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69DB650]];
    }

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = [(EKEvent *)v12->super.super._event title];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_1F4EF6790;
    }

    v206 = [v19 initWithString:v22 attributes:v217];

    [(UILabel *)v12->_title setAttributedText:v206];
    v23 = [(EKReminderTitleDetailCell *)v12 contentView];
    [v23 addSubview:v12->_title];

    LODWORD(v24) = 1148846080;
    [(UILabel *)v12->_title setContentCompressionResistancePriority:1 forAxis:v24];
    v25 = EKUIWidthSizeClassForViewHierarchy(v12);
    if (!v25)
    {
      v26 = [(EKReminderTitleDetailCell *)v12 traitCollection];
      v25 = [v26 horizontalSizeClass];

      v27 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_ERROR, "Size class from EKUIWidthSizeClassForViewHierarchy was unspecified, so fall back to getting size class from view's trait collection [%ld]", &buf, 0xCu);
      }

      if (!v25)
      {
        v28 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          v25 = 1;
          *(&buf + 4) = 1;
          _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "Size class from view's trait collection was unspecified, so fall back to default size class [%ld]", &buf, 0xCu);
        }

        else
        {
          v25 = 1;
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
    CalDetailStringsForCalendarEvent(event, v25, &v238, &v237, &v236, &v235, &v234, &v233, &v232, &v231, 0, 0);
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
    v32 = [objc_opt_class() _dateFont];
    [(UILabel *)v12->_dateLabelLine1 setFont:v32];

    v33 = [(EKReminderTitleDetailCell *)v12 contentView];
    [v33 addSubview:v12->_dateLabelLine1];

    if (v214)
    {
      v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine2 = v12->_dateLabelLine2;
      v12->_dateLabelLine2 = v34;

      [(UILabel *)v12->_dateLabelLine2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine2 setText:v214];
      [(UILabel *)v12->_dateLabelLine2 setTextColor:v167];
      v36 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine2 setFont:v36];

      LODWORD(v37) = 1148846080;
      [(UILabel *)v12->_dateLabelLine2 setContentCompressionResistancePriority:1 forAxis:v37];
      v38 = [(EKReminderTitleDetailCell *)v12 contentView];
      [v38 addSubview:v12->_dateLabelLine2];
    }

    if (v213)
    {
      v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine3 = v12->_dateLabelLine3;
      v12->_dateLabelLine3 = v39;

      [(UILabel *)v12->_dateLabelLine3 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine3 setText:v213];
      [(UILabel *)v12->_dateLabelLine3 setTextColor:v166];
      v41 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine3 setFont:v41];

      LODWORD(v42) = 1148846080;
      [(UILabel *)v12->_dateLabelLine3 setContentCompressionResistancePriority:1 forAxis:v42];
      v43 = [(EKReminderTitleDetailCell *)v12 contentView];
      [v43 addSubview:v12->_dateLabelLine3];
    }

    if (v212)
    {
      v44 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      dateLabelLine4 = v12->_dateLabelLine4;
      v12->_dateLabelLine4 = v44;

      [(UILabel *)v12->_dateLabelLine4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_dateLabelLine4 setText:v212];
      [(UILabel *)v12->_dateLabelLine4 setTextColor:v165];
      v46 = [objc_opt_class() _dateFont];
      [(UILabel *)v12->_dateLabelLine4 setFont:v46];

      LODWORD(v47) = 1148846080;
      [(UILabel *)v12->_dateLabelLine4 setContentCompressionResistancePriority:1 forAxis:v47];
      v48 = [(EKReminderTitleDetailCell *)v12 contentView];
      [v48 addSubview:v12->_dateLabelLine4];
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
      v51 = [v215 recurrenceRules];
      v52 = [v51 firstObject];
      v53 = [(EKEvent *)v12->super.super._event startDate];
      v54 = [(EKEvent *)v12->super.super._event eventStore];
      v55 = [v54 timeZone];
      v56 = [v49 shortNaturalLanguageDescriptionForRecurrenceRule:v52 date:v53 timeZone:v55 lowercase:1];
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
      v64 = [objc_opt_class() _dateFont];
      v252[0] = v64;
      v251[1] = *MEMORY[0x1E69DB650];
      v65 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v252[1] = v65;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:2];

      v67 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v63 attributes:v66];
      v68 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      recurrenceLabel = v12->_recurrenceLabel;
      v12->_recurrenceLabel = v68;

      [(UILabel *)v12->_recurrenceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v12->_recurrenceLabel setAttributedText:v67];
      LODWORD(v70) = 1148846080;
      [(UILabel *)v12->_recurrenceLabel setContentCompressionResistancePriority:1 forAxis:v70];
      v71 = [(EKReminderTitleDetailCell *)v12 contentView];
      [v71 addSubview:v12->_recurrenceLabel];
    }

    v72 = [(EKReminderTitleDetailCell *)v12 _editButton];
    editButton = v12->_editButton;
    v12->_editButton = v72;

    v74 = [(EKReminderTitleDetailCell *)v12 contentView];
    [v74 addSubview:v12->_editButton];

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
    v82 = [(EKReminderTitleDetailCell *)v12 contentView];
    [v82 addSubview:v12->_circle];

    v83 = [(EKEventDetailCell *)v12 event];
    -[UIButton setUserInteractionEnabled:](v12->_circle, "setUserInteractionEnabled:", [v83 CUIK_reminderShouldBeEditable]);

    v84 = [(EKReminderTitleDetailCell *)v12 _editButton];
    [(UIButton *)v12->_editButton frame];
    [v84 sizeThatFits:{v85, v86}];
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
    v189 = [(UIButton *)v12->_circle leadingAnchor];
    v199 = [(EKReminderTitleDetailCell *)v12 contentView];
    v194 = [v199 layoutMarginsGuide];
    v188 = [v194 leadingAnchor];
    v187 = [v189 constraintEqualToAnchor:v188];
    v250[0] = v187;
    v186 = [(UIButton *)v12->_circle firstBaselineAnchor];
    v185 = [(UILabel *)v12->_title firstBaselineAnchor];
    v184 = [v186 constraintEqualToAnchor:v185];
    v250[1] = v184;
    v182 = [(UILabel *)v12->_title topAnchor];
    v183 = [(EKReminderTitleDetailCell *)v12 contentView];
    v181 = [v183 topAnchor];
    v180 = [v182 constraintEqualToAnchor:v181 constant:8.0];
    v250[2] = v180;
    v179 = [(UILabel *)v12->_title leadingAnchor];
    v178 = [(UIButton *)v12->_circle trailingAnchor];
    v177 = [v179 constraintEqualToAnchor:v178 constant:11.0];
    v250[3] = v177;
    v174 = [(UILabel *)v12->_title trailingAnchor];
    v176 = [(EKReminderTitleDetailCell *)v12 contentView];
    v175 = [v176 layoutMarginsGuide];
    v173 = [v175 trailingAnchor];
    v172 = [v174 constraintEqualToAnchor:v173 constant:-(v88 + v94)];
    v250[4] = v172;
    v171 = [(UILabel *)v12->_title bottomAnchor];
    v170 = [(UILabel *)v12->_dateLabelLine1 topAnchor];
    v169 = [v171 constraintEqualToAnchor:v170 constant:-21.0];
    v250[5] = v169;
    v95 = [(UILabel *)v12->_dateLabelLine1 leadingAnchor];
    v96 = [(EKReminderTitleDetailCell *)v12 contentView];
    v97 = [v96 layoutMarginsGuide];
    v98 = [v97 leadingAnchor];
    v99 = [v95 constraintEqualToAnchor:v98];
    v250[6] = v99;
    v100 = [(UILabel *)v12->_dateLabelLine1 trailingAnchor];
    v101 = [(UILabel *)v12->_title trailingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101];
    v250[7] = v102;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v250 count:8];
    v223 = [v222 arrayWithArray:v103];

    v104 = objc_loadWeakRetained(&v12->_delegate);
    LODWORD(v97) = [v104 shouldShowEditButtonInline];

    v105 = v12->_editButton;
    if (v97)
    {
      if (MEMORY[0x1D38B98D0]([(UIButton *)v105 setHidden:0]))
      {
        v106 = [(UIButton *)v12->_editButton layer];
        v107 = v90 + 8.0;
        [v106 setCornerRadius:v107 * 0.5];

        v108 = [(UIButton *)v12->_editButton layer];
        [v108 setMasksToBounds:1];

        v109 = [(UIButton *)v12->_editButton widthAnchor];
        v110 = [v109 constraintEqualToConstant:v88 + 20.0];
        v249[0] = v110;
        v111 = [(UIButton *)v12->_editButton heightAnchor];
        v112 = [v111 constraintEqualToConstant:v107];
        v249[1] = v112;
        v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v249 count:2];
        [v223 addObjectsFromArray:v113];
      }

      v114 = [(UIButton *)v12->_editButton trailingAnchor];
      v115 = [(EKReminderTitleDetailCell *)v12 contentView];
      v116 = [v115 trailingAnchor];
      v117 = [v114 constraintEqualToAnchor:v116 constant:-8.0];
      v248[0] = v117;
      v118 = [(UIButton *)v12->_editButton firstBaselineAnchor];
      v119 = [(UILabel *)v12->_title firstBaselineAnchor];
      v120 = [v118 constraintEqualToAnchor:v119];
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
      v218 = [(UILabel *)v122 topAnchor];
      v224 = [(UILabel *)v228 bottomAnchor];
      v208 = [v218 constraintEqualToAnchor:v224 constant:4.0];
      v247[0] = v208;
      v190 = [(UILabel *)v12->_dateLabelLine2 leadingAnchor];
      v200 = [(EKReminderTitleDetailCell *)v12 contentView];
      v195 = [v200 layoutMarginsGuide];
      v123 = [v195 leadingAnchor];
      v124 = [v190 constraintEqualToAnchor:v123];
      v247[1] = v124;
      v125 = [(UILabel *)v12->_dateLabelLine2 trailingAnchor];
      v126 = [(EKReminderTitleDetailCell *)v12 contentView];
      v127 = [v126 layoutMarginsGuide];
      v128 = [v127 trailingAnchor];
      v129 = [v125 constraintEqualToAnchor:v128];
      v247[2] = v129;
      v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v247 count:3];
      [v223 addObjectsFromArray:v130];

      v131 = v12->_dateLabelLine2;
      v228 = v131;
    }

    v132 = v12->_dateLabelLine3;
    if (v132)
    {
      v225 = [(UILabel *)v132 topAnchor];
      v219 = [(UILabel *)v228 bottomAnchor];
      v209 = [v225 constraintEqualToAnchor:v219 constant:4.0];
      v246[0] = v209;
      v191 = [(UILabel *)v12->_dateLabelLine3 leadingAnchor];
      v201 = [(EKReminderTitleDetailCell *)v12 contentView];
      v196 = [v201 layoutMarginsGuide];
      v133 = [v196 leadingAnchor];
      v134 = [v191 constraintEqualToAnchor:v133];
      v246[1] = v134;
      v135 = [(UILabel *)v12->_dateLabelLine3 trailingAnchor];
      v136 = [(EKReminderTitleDetailCell *)v12 contentView];
      v137 = [v136 layoutMarginsGuide];
      v138 = [v137 trailingAnchor];
      v139 = [v135 constraintEqualToAnchor:v138];
      v246[2] = v139;
      v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:v246 count:3];
      [v223 addObjectsFromArray:v140];

      v141 = v12->_dateLabelLine3;
      v228 = v141;
    }

    v142 = v12->_dateLabelLine4;
    if (v142)
    {
      v226 = [(UILabel *)v142 topAnchor];
      v220 = [(UILabel *)v228 bottomAnchor];
      v210 = [v226 constraintEqualToAnchor:v220 constant:4.0];
      v245[0] = v210;
      v192 = [(UILabel *)v12->_dateLabelLine4 leadingAnchor];
      v202 = [(EKReminderTitleDetailCell *)v12 contentView];
      v197 = [v202 layoutMarginsGuide];
      v143 = [v197 leadingAnchor];
      v144 = [v192 constraintEqualToAnchor:v143];
      v245[1] = v144;
      v145 = [(UILabel *)v12->_dateLabelLine4 trailingAnchor];
      v146 = [(EKReminderTitleDetailCell *)v12 contentView];
      v147 = [v146 layoutMarginsGuide];
      v148 = [v147 trailingAnchor];
      v149 = [v145 constraintEqualToAnchor:v148];
      v245[2] = v149;
      v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:3];
      [v223 addObjectsFromArray:v150];

      v151 = v12->_dateLabelLine4;
      v228 = v151;
    }

    v152 = v12->_recurrenceLabel;
    if (v152)
    {
      v227 = [(UILabel *)v152 topAnchor];
      v221 = [(UILabel *)v228 bottomAnchor];
      v211 = [v227 constraintEqualToAnchor:v221 constant:4.0];
      v244[0] = v211;
      v193 = [(UILabel *)v12->_recurrenceLabel leadingAnchor];
      v203 = [(EKReminderTitleDetailCell *)v12 contentView];
      v198 = [v203 layoutMarginsGuide];
      v153 = [v198 leadingAnchor];
      v154 = [v193 constraintEqualToAnchor:v153];
      v244[1] = v154;
      v155 = [(UILabel *)v12->_recurrenceLabel trailingAnchor];
      v156 = [(EKReminderTitleDetailCell *)v12 contentView];
      v157 = [v156 layoutMarginsGuide];
      v158 = [v157 trailingAnchor];
      v159 = [v155 constraintEqualToAnchor:v158];
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
  block[4] = a1;
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
  [a1 _registerForInvalidation];
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
      v10 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      v11 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = *MEMORY[0x1E69DB648];
      v24[0] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v13 = [v11 initWithString:v9 attributes:v12];
      [v10 setAttributedTitle:v13];

      [(UIButton *)self->_editButton setConfiguration:v10];
    }

    else
    {
      v14 = self->_editButton;
      v15 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = *MEMORY[0x1E69DB648];
      v22 = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [v15 initWithString:v9 attributes:v10];
      [(UIButton *)v14 setAttributedTitle:v16 forState:0];
    }

    if (MEMORY[0x1D38B98D0]([(UIButton *)self->_editButton addTarget:self action:sel__editButtonTapped forControlEvents:64]))
    {
      v17 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      [(UIButton *)self->_editButton setBackgroundColor:v17];

      v18 = self->_editButton;
      v19 = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v18 setTitleColor:v19 forState:0];
    }

    editButton = self->_editButton;
  }

  return editButton;
}

- (void)setupConstraintsWithExtraSpace:(BOOL)a3
{
  v3 = a3;
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_bottomConstraint)
  {
    v5 = MEMORY[0x1E696ACD8];
    v15[0] = self->_bottomConstraint;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v5 deactivateConstraints:v6];
  }

  v7 = [(UIView *)self->_bottomView bottomAnchor];
  v8 = [(EKReminderTitleDetailCell *)self contentView];
  v9 = [v8 bottomAnchor];
  if (v3)
  {
    [v7 constraintEqualToAnchor:v9 constant:-15.0];
  }

  else
  {
    [v7 constraintEqualToAnchor:v9];
  }
  v10 = ;
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v10;

  v12 = MEMORY[0x1E696ACD8];
  v14 = self->_bottomConstraint;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [v12 activateConstraints:v13];
}

- (void)setShowExtraSpaceAtBottom:(BOOL)a3
{
  if (self->_showExtraSpaceAtBottom != a3)
  {
    self->_showExtraSpaceAtBottom = a3;
    [(EKReminderTitleDetailCell *)self setupConstraintsWithExtraSpace:?];
  }
}

- (void)_editButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained editButtonPressed];
}

- (id)_buttonConfigForReminder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v4 contentInsets];
  [v4 setContentInsets:?];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] weight:*MEMORY[0x1E69DB980]];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:v5 scale:2];
  v7 = MEMORY[0x1E69DCAB8];
  if (v3)
  {
    v8 = [v3 CUIK_symbolName:{objc_msgSend(v3, "isAllDay")}];
    v9 = [v7 systemImageNamed:v8 withConfiguration:v6];
    [v4 setImage:v9];

    if ([v3 CUIK_reminderShouldBeEditable])
    {
      [v3 CUIK_symbolColor];
    }

    else
    {
      [v3 CUIK_disabledSymbolColor];
    }
    v10 = ;
    [v4 setBaseForegroundColor:v10];
  }

  else
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:*MEMORY[0x1E69932F8] withConfiguration:v6];
    [v4 setImage:v10];
  }

  return v4;
}

@end