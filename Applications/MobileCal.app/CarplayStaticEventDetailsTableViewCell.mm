@interface CarplayStaticEventDetailsTableViewCell
- (CarplayStaticEventDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_createPrimaryView;
- (id)_createSecondaryView;
- (id)_createTertiaryView;
- (void)_updateLabelFilters;
- (void)cellWasTapped;
- (void)updateWithEvent:(id)a3;
@end

@implementation CarplayStaticEventDetailsTableViewCell

- (CarplayStaticEventDetailsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v174.receiver = self;
  v174.super_class = CarplayStaticEventDetailsTableViewCell;
  v4 = [(CarplayStaticEventDetailsTableViewCell *)&v174 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CarplayStaticEventDetailsTableViewCell *)v4 setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(CarplayStaticEventDetailsTableViewCell *)v5 setBackgroundColor:v6];

    if (CalSystemSolariumEnabled())
    {
      v7 = objc_alloc_init(UIView);
      colorBarView = v5->_colorBarView;
      v5->_colorBarView = v7;

      [(UIView *)v5->_colorBarView setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [(UIView *)v5->_colorBarView layer];
      [v9 setCornerRadius:1.75];

      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_colorBarView];
    }

    v10 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createPrimaryView];
    titleView = v5->_titleView;
    v5->_titleView = v10;

    v12 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    locationView = v5->_locationView;
    v5->_locationView = v12;

    v14 = +[UIColor labelColor];
    [(UILabel *)v5->_locationView setTextColor:v14];

    v15 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    dateView = v5->_dateView;
    v5->_dateView = v15;

    v17 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createSecondaryView];
    timeView = v5->_timeView;
    v5->_timeView = v17;

    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_titleView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_locationView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_dateView];
    [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_timeView];
    if (CalSystemSolariumEnabled())
    {
      v19 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createTertiaryView];
      additionalLabelView = v5->_additionalLabelView;
      v5->_additionalLabelView = v19;

      v21 = [(CarplayStaticEventDetailsTableViewCell *)v5 _createTertiaryView];
      bottomLabelView = v5->_bottomLabelView;
      v5->_bottomLabelView = v21;

      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_additionalLabelView];
      [(CarplayStaticEventDetailsTableViewCell *)v5 addSubview:v5->_bottomLabelView];
    }

    v23 = [(UILabel *)v5->_dateView font];
    [v23 _scaledValueForValue:20.0];
    v25 = v24;

    v26 = [(UILabel *)v5->_timeView font];
    [v26 _scaledValueForValue:24.0];
    v28 = v27;

    v29 = [(UILabel *)v5->_timeView font];
    [v29 _scaledValueForValue:28.0];
    v31 = v30;

    v32 = [(UILabel *)v5->_dateView font];
    [v32 _scaledValueForValue:24.0];
    v34 = v33;

    v35 = [(UILabel *)v5->_dateView font];
    [v35 _scaledValueForValue:28.0];
    v37 = v36;

    v38 = [(UILabel *)v5->_locationView font];
    [v38 _scaledValueForValue:28.0];
    v40 = v39;

    v41 = [(UILabel *)v5->_timeView firstBaselineAnchor];
    v42 = [(UILabel *)v5->_dateView lastBaselineAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:v25];
    timeBaselineToDateBaselineConstraint = v5->_timeBaselineToDateBaselineConstraint;
    v5->_timeBaselineToDateBaselineConstraint = v43;

    v45 = [(UILabel *)v5->_timeView firstBaselineAnchor];
    v46 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:v28];
    timeBaselineToTitleBaselineConstraint = v5->_timeBaselineToTitleBaselineConstraint;
    v5->_timeBaselineToTitleBaselineConstraint = v47;

    v49 = [(UILabel *)v5->_timeView firstBaselineAnchor];
    v50 = [(UILabel *)v5->_locationView lastBaselineAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:v31];
    timeBaselineToLocationBaselineConstraint = v5->_timeBaselineToLocationBaselineConstraint;
    v5->_timeBaselineToLocationBaselineConstraint = v51;

    v53 = [(UILabel *)v5->_dateView firstBaselineAnchor];
    v54 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:v34];
    dateBaselineToTitleBaselineConstraint = v5->_dateBaselineToTitleBaselineConstraint;
    v5->_dateBaselineToTitleBaselineConstraint = v55;

    v57 = [(UILabel *)v5->_dateView firstBaselineAnchor];
    v58 = [(UILabel *)v5->_locationView lastBaselineAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:v37];
    dateBaselineToLocationBaselineConstraint = v5->_dateBaselineToLocationBaselineConstraint;
    v5->_dateBaselineToLocationBaselineConstraint = v59;

    v61 = [(UILabel *)v5->_locationView firstBaselineAnchor];
    v62 = [(UILabel *)v5->_titleView lastBaselineAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:v40];
    locationBaselineToTitleBaselineConstraint = v5->_locationBaselineToTitleBaselineConstraint;
    v5->_locationBaselineToTitleBaselineConstraint = v63;

    if (CalSystemSolariumEnabled())
    {
      v65 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      v66 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v67 = [v65 constraintEqualToAnchor:v66 constant:-5.0];
      timeBottomToBottomAnchorConstraint = v5->_timeBottomToBottomAnchorConstraint;
      v5->_timeBottomToBottomAnchorConstraint = v67;

      v69 = [(UILabel *)v5->_additionalLabelView firstBaselineAnchor];
      v70 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      v71 = [v69 constraintEqualToAnchor:v70 constant:v25];
      additionalLabelToTimeBaselineConstraint = v5->_additionalLabelToTimeBaselineConstraint;
      v5->_additionalLabelToTimeBaselineConstraint = v71;

      v73 = [(UILabel *)v5->_additionalLabelView lastBaselineAnchor];
      v74 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v75 = [v73 constraintEqualToAnchor:v74 constant:-5.0];
      additionalLabelToBottomAnchorConstraint = v5->_additionalLabelToBottomAnchorConstraint;
      v5->_additionalLabelToBottomAnchorConstraint = v75;

      v77 = [(UILabel *)v5->_bottomLabelView firstBaselineAnchor];
      v78 = [(UILabel *)v5->_additionalLabelView lastBaselineAnchor];
      v79 = [v77 constraintEqualToAnchor:v78 constant:v25];
      bottomLabelToAdditionalLabelBaselineConstraint = v5->_bottomLabelToAdditionalLabelBaselineConstraint;
      v5->_bottomLabelToAdditionalLabelBaselineConstraint = v79;

      v81 = [(UILabel *)v5->_bottomLabelView lastBaselineAnchor];
      v82 = [(UIView *)v5->_colorBarView lastBaselineAnchor];
      v83 = [v81 constraintEqualToAnchor:v82 constant:-5.0];
      bottomLabelToBottomAnchorConstraint = v5->_bottomLabelToBottomAnchorConstraint;
      v5->_bottomLabelToBottomAnchorConstraint = v83;

      v172 = [(UIView *)v5->_colorBarView leadingAnchor];
      v170 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v168 = [v172 constraintEqualToAnchor:v170 constant:8.0];
      v177[0] = v168;
      v166 = [(UIView *)v5->_colorBarView topAnchor];
      v164 = [(CarplayStaticEventDetailsTableViewCell *)v5 topAnchor];
      v162 = [v166 constraintEqualToAnchor:v164 constant:8.0];
      v177[1] = v162;
      v160 = [(UIView *)v5->_colorBarView widthAnchor];
      v158 = [v160 constraintEqualToConstant:3.5];
      v177[2] = v158;
      v156 = [(UIView *)v5->_colorBarView bottomAnchor];
      v154 = [(CarplayStaticEventDetailsTableViewCell *)v5 bottomAnchor];
      v152 = [v156 constraintEqualToAnchor:v154 constant:-8.0];
      v177[3] = v152;
      v150 = [(UILabel *)v5->_titleView firstBaselineAnchor];
      v149 = [(UIView *)v5->_colorBarView topAnchor];
      v147 = [v150 constraintEqualToAnchor:v149 constant:20.0];
      v177[4] = v147;
      v145 = [(UILabel *)v5->_titleView leadingAnchor];
      v143 = [(UIView *)v5->_colorBarView leadingAnchor];
      v141 = [v145 constraintEqualToAnchor:v143 constant:12.0];
      v177[5] = v141;
      v139 = [(UILabel *)v5->_titleView trailingAnchor];
      v137 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v135 = [v139 constraintEqualToAnchor:v137];
      v177[6] = v135;
      v132 = [(UILabel *)v5->_locationView leadingAnchor];
      v130 = [(UIView *)v5->_colorBarView leadingAnchor];
      v129 = [v132 constraintEqualToAnchor:v130 constant:12.0];
      v177[7] = v129;
      v128 = [(UILabel *)v5->_locationView trailingAnchor];
      v127 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v126 = [v128 constraintEqualToAnchor:v127];
      v177[8] = v126;
      v125 = [(UILabel *)v5->_dateView leadingAnchor];
      v124 = [(UIView *)v5->_colorBarView leadingAnchor];
      v123 = [v125 constraintEqualToAnchor:v124 constant:12.0];
      v177[9] = v123;
      v122 = [(UILabel *)v5->_dateView trailingAnchor];
      v121 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v120 = [v122 constraintEqualToAnchor:v121];
      v177[10] = v120;
      v119 = [(UILabel *)v5->_timeView firstBaselineAnchor];
      v118 = [(UILabel *)v5->_dateView lastBaselineAnchor];
      v117 = [v119 constraintEqualToAnchor:v118 constant:v25];
      v177[11] = v117;
      v116 = [(UILabel *)v5->_timeView leadingAnchor];
      v115 = [(UIView *)v5->_colorBarView leadingAnchor];
      v114 = [v116 constraintEqualToAnchor:v115 constant:12.0];
      v177[12] = v114;
      v113 = [(UILabel *)v5->_timeView trailingAnchor];
      v112 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v111 = [v113 constraintEqualToAnchor:v112];
      v177[13] = v111;
      v110 = [(UILabel *)v5->_additionalLabelView leadingAnchor];
      v109 = [(UIView *)v5->_colorBarView leadingAnchor];
      v108 = [v110 constraintEqualToAnchor:v109 constant:12.0];
      v177[14] = v108;
      v107 = [(UILabel *)v5->_additionalLabelView trailingAnchor];
      v85 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v86 = [v107 constraintEqualToAnchor:v85];
      v177[15] = v86;
      v87 = [(UILabel *)v5->_bottomLabelView leadingAnchor];
      v88 = [(UIView *)v5->_colorBarView leadingAnchor];
      v89 = [v87 constraintEqualToAnchor:v88 constant:12.0];
      v177[16] = v89;
      v90 = [(UILabel *)v5->_bottomLabelView trailingAnchor];
      v91 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v92 = [v90 constraintEqualToAnchor:v91];
      v177[17] = v92;
      v93 = [NSArray arrayWithObjects:v177 count:18];
      [NSLayoutConstraint activateConstraints:v93];
    }

    else
    {
      v173 = [(UILabel *)v5->_titleView firstBaselineAnchor];
      v171 = [(CarplayStaticEventDetailsTableViewCell *)v5 topAnchor];
      v169 = [v173 constraintEqualToAnchor:v171 constant:20.0];
      v176[0] = v169;
      v167 = [(UILabel *)v5->_titleView leadingAnchor];
      v165 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v163 = [v167 constraintEqualToAnchor:v165 constant:12.0];
      v176[1] = v163;
      v161 = [(UILabel *)v5->_titleView trailingAnchor];
      v159 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v157 = [v161 constraintEqualToAnchor:v159];
      v176[2] = v157;
      v155 = [(UILabel *)v5->_locationView leadingAnchor];
      v153 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v151 = [v155 constraintEqualToAnchor:v153 constant:12.0];
      v176[3] = v151;
      v148 = [(UILabel *)v5->_locationView trailingAnchor];
      v146 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v144 = [v148 constraintEqualToAnchor:v146];
      v176[4] = v144;
      v142 = [(UILabel *)v5->_dateView leadingAnchor];
      v140 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v138 = [v142 constraintEqualToAnchor:v140 constant:12.0];
      v176[5] = v138;
      v136 = [(UILabel *)v5->_dateView trailingAnchor];
      v134 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v133 = [v136 constraintEqualToAnchor:v134];
      v176[6] = v133;
      v131 = [(UILabel *)v5->_timeView leadingAnchor];
      v94 = [(CarplayStaticEventDetailsTableViewCell *)v5 leadingAnchor];
      v95 = [v131 constraintEqualToAnchor:v94 constant:12.0];
      v176[7] = v95;
      v96 = [(UILabel *)v5->_timeView trailingAnchor];
      v97 = [(CarplayStaticEventDetailsTableViewCell *)v5 trailingAnchor];
      v98 = [v96 constraintEqualToAnchor:v97];
      v176[8] = v98;
      v99 = [(UILabel *)v5->_timeView lastBaselineAnchor];
      v100 = [(CarplayStaticEventDetailsTableViewCell *)v5 bottomAnchor];
      v101 = [v99 constraintEqualToAnchor:v100 constant:-14.0];
      v176[9] = v101;
      v102 = [NSArray arrayWithObjects:v176 count:10];
      [NSLayoutConstraint activateConstraints:v102];

      v103 = objc_opt_self();
      v175 = v103;
      v104 = [NSArray arrayWithObjects:&v175 count:1];
      v105 = [(CarplayStaticEventDetailsTableViewCell *)v5 registerForTraitChanges:v104 withAction:"_updateLabelFilters"];

      [(CarplayStaticEventDetailsTableViewCell *)v5 _updateLabelFilters];
    }
  }

  return v5;
}

- (void)_updateLabelFilters
{
  v3 = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  v4 = [v3 userInterfaceStyle];
  v5 = &kCAFilterPlusL;
  if (v4 != 2)
  {
    v5 = &kCAFilterPlusD;
  }

  v10 = [CAFilter filterWithType:*v5];

  v6 = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelView];
  v7 = [v6 layer];
  [v7 setCompositingFilter:v10];

  v8 = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelView];
  v9 = [v8 layer];
  [v9 setCompositingFilter:v10];
}

- (id)_createPrimaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor labelColor];
  [v3 setTextColor:v4];

  v5 = [(CarplayStaticEventDetailsTableViewCell *)self _titleFont];
  [v3 setFont:v5];

  v6 = +[UIColor clearColor];
  [v3 setBackgroundColor:v6];

  [v3 setNumberOfLines:0];

  return v3;
}

- (id)_createSecondaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor _carSystemPrimaryColor];
  [v3 setTextColor:v4];

  v5 = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v5];
  [v3 setFont:v6];

  return v3;
}

- (id)_createTertiaryView
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = +[UIColor _carSystemTertiaryColor];
  [v3 setTextColor:v4];

  v5 = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v5];
  [v3 setFont:v6];

  v7 = [v3 layer];
  [v7 setAllowsGroupBlending:0];

  return v3;
}

- (void)updateWithEvent:(id)a3
{
  v4 = a3;
  [(CarplayStaticEventDetailsTableViewCell *)self setEvent:v4];
  v5 = [v4 virtualConference];
  v6 = [v5 joinMethods];
  v7 = [v6 firstObject];
  v8 = [v7 URL];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v4 conferenceURLForDisplay];
  }

  v11 = v10;

  v12 = [v4 virtualConference];
  v13 = [v12 joinMethods];
  v14 = [v13 firstObject];
  v15 = [v14 isBroadcast];

  v16 = [CUIKLocationDescriptionGenerator conferenceStringForURL:v11 conferenceURLIsBroadcast:v15 options:96];
  v17 = !+[CarplayUtilities eventCanDialIn:](CarplayUtilities, "eventCanDialIn:", v4) && [v16 length] != 0;
  v100 = v11;
  if ([CarplayUtilities eventCanNavigate:v4])
  {
    v18 = 0;
  }

  else
  {
    v19 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    v20 = [v19 location];
    v18 = [v20 length] != 0;
  }

  v21 = v17 || v18;
  v22 = [(CarplayStaticEventDetailsTableViewCell *)self locationBaselineToTitleBaselineConstraint];
  v23 = v22;
  v101 = v16;
  if (!v17 && !v18)
  {
    [v22 setActive:0];

    [(UILabel *)self->_locationView setText:0];
    goto LABEL_23;
  }

  [v22 setActive:1];

  if (!v17)
  {
    v25 = 0;
    if (!v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v24 = [v16 string];
  v25 = [CarplayUtilities numberOfLinesInString:v24];

  if (v18)
  {
LABEL_16:
    v26 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    v27 = [v26 location];
    v25 += [CarplayUtilities numberOfLinesInString:v27];
  }

LABEL_17:
  [(UILabel *)self->_locationView setNumberOfLines:v25];
  v28 = objc_alloc_init(NSMutableAttributedString);
  if (v18)
  {
    v29 = [NSAttributedString alloc];
    v30 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    v31 = [v30 location];
    v32 = [v29 initWithString:v31];
    [v28 appendAttributedString:v32];

    if (v17)
    {
      v33 = [[NSAttributedString alloc] initWithString:@"\n"];
      [v28 appendAttributedString:v33];

LABEL_21:
      [v28 appendAttributedString:v101];
    }
  }

  else if (v17)
  {
    goto LABEL_21;
  }

  v34 = objc_alloc_init(NSMutableParagraphStyle);
  [v34 setLineSpacing:-1.0];
  [v34 setLineBreakMode:4];
  [v28 addAttribute:NSParagraphStyleAttributeName value:v34 range:{0, objc_msgSend(v28, "length")}];
  [(UILabel *)self->_locationView setAttributedText:v28];

LABEL_23:
  v35 = CalSystemSolariumEnabled();
  v36 = [(CarplayStaticEventDetailsTableViewCell *)self event];
  if (v35)
  {
    memset(&v102[9], 0, 32);
    [(CarplayStaticEventDetailsTableViewCell *)self showDayName];
    CalDetailStringsForCarPlayCalendarEvent();
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;

    [(UILabel *)self->_dateView setAttributedText:v37];
    v99 = v38;
    [(UILabel *)self->_timeView setAttributedText:v38];
    [(UILabel *)self->_bottomLabelView setAttributedText:v40];
    v98 = v39;
    if (v39 || (-[CarplayStaticEventDetailsTableViewCell event](self, "event"), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v41 hasRecurrenceRules], v41, !v42))
    {
      [(UILabel *)self->_additionalLabelView setAttributedText:v39];
    }

    else
    {
      v43 = [(CarplayStaticEventDetailsTableViewCell *)self event];
      v44 = [v43 recurrenceRules];
      v95 = [v44 objectAtIndexedSubscript:0];

      v45 = [(CarplayStaticEventDetailsTableViewCell *)self event];
      v46 = [v45 startDate];
      v92 = CUIKStringForRecurrenceRule();

      v94 = [UIImage systemImageNamed:@"repeat"];
      v93 = [NSTextAttachment cuik_textAttachmentWithImage:v94];
      v96 = [NSAttributedString attributedStringWithAttachment:v93];
      v47 = [NSAttributedString alloc];
      v48 = +[NSBundle mainBundle];
      v49 = [v48 localizedStringForKey:@"%@ %@ %@" value:&stru_1002133B8 table:0];
      v91 = [v47 initWithString:v49];

      v50 = +[NSBundle mainBundle];
      v51 = [v50 localizedStringForKey:@"Repeats" value:&stru_1002133B8 table:0];
      v52 = [NSMutableAttributedString localizedAttributedStringWithFormat:v91, v96, v51, v92];
      [(UILabel *)self->_additionalLabelView setAttributedText:v52];
    }

    v58 = [(UILabel *)self->_additionalLabelView text];
    v59 = 1;
    v60 = 1;
    if (!v58)
    {
      v61 = [(UILabel *)self->_additionalLabelView attributedText];
      v60 = v61 != 0;
    }

    v62 = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToDateBaselineConstraint];
    [v62 setActive:1];

    v63 = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToTitleBaselineConstraint];
    [v63 setActive:(v21 & 1) == 0];

    v64 = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToLocationBaselineConstraint];
    [v64 setActive:v21 & 1];

    if (v40)
    {
      v65 = 1;
    }

    else
    {
      v65 = !v60;
    }

    if (v65 == 1)
    {
      if (v40)
      {
        v59 = v60;
      }

      else
      {
        v59 = 0;
      }

      v66 = v59 ^ 1;
      v56 = v100;
      v67 = v59;
      if ((v59 & 1) == 0 && v60)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v56 = v100;
    }

    v73 = [(CarplayStaticEventDetailsTableViewCell *)self timeBottomToBottomAnchorConstraint];
    [v73 setActive:v66];

    v74 = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelToBottomAnchorConstraint];
    [v74 setActive:v65 ^ 1u];

    v75 = [(CarplayStaticEventDetailsTableViewCell *)self additionalLabelToTimeBaselineConstraint];
    [v75 setActive:v59];

    v76 = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelToAdditionalLabelBaselineConstraint];
    [v76 setActive:v67];

    v77 = [(CarplayStaticEventDetailsTableViewCell *)self bottomLabelToBottomAnchorConstraint];
    [v77 setActive:v67];
  }

  else
  {
    memset(&v102[5], 0, 32);
    LOBYTE(v90) = ![(CarplayStaticEventDetailsTableViewCell *)self showDayName];
    CalDetailStringsForCalendarEvent();
    v37 = 0;
    v53 = 0;
    v54 = 0;
    v40 = 0;

    [(UILabel *)self->_dateView setText:v37, 0, 0, 0, v90];
    [(UILabel *)self->_timeView setText:v53];
    v55 = (v37 == 0) | v21 ^ 1;
    v98 = v54;
    v99 = v53;
    v97 = v37;
    if ((v37 == 0) | (v21 ^ 1) & 1)
    {
      if (((v37 != 0) & ~v21) != 0)
      {
        v68 = v40;
        v69 = 0;
        v70 = 0;
        v72 = 1;
        v71 = 1;
      }

      else if ((v21 ^ 1) & 1 | (v37 != 0))
      {
        if (v21 & 1 | (v37 != 0))
        {
          v56 = v100;
          v57 = v101;
          goto LABEL_54;
        }

        v68 = v40;
        v72 = 0;
        v70 = 0;
        v71 = 0;
        v69 = 1;
      }

      else
      {
        v68 = v40;
        v72 = 0;
        v69 = 0;
        v71 = 0;
        v70 = 1;
      }
    }

    else
    {
      v68 = v40;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 1;
    }

    v78 = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToDateBaselineConstraint];
    [v78 setActive:v72];

    v79 = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToTitleBaselineConstraint];
    [v79 setActive:v69];

    v80 = [(CarplayStaticEventDetailsTableViewCell *)self timeBaselineToLocationBaselineConstraint];
    [v80 setActive:v70];

    v81 = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToTitleBaselineConstraint];
    [v81 setActive:v71];

    v77 = [(CarplayStaticEventDetailsTableViewCell *)self dateBaselineToLocationBaselineConstraint];
    [v77 setActive:(v55 & 1) == 0];
    v56 = v100;
    v40 = v68;
    v37 = v97;
  }

LABEL_53:
  v57 = v101;
  v54 = v98;
  v53 = v99;
LABEL_54:

  v82 = [(CarplayStaticEventDetailsTableViewCell *)self event];
  v83 = [v82 status];

  if (v83 == 3)
  {
    v84 = [NSAttributedString alloc];
    v85 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    v86 = [v85 title];
    v103 = NSStrikethroughStyleAttributeName;
    v104 = &off_100219CD0;
    v87 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    v88 = [v84 initWithString:v86 attributes:v87];
    [(UILabel *)self->_titleView setAttributedText:v88];
  }

  else
  {
    v85 = [(CarplayStaticEventDetailsTableViewCell *)self event];
    v86 = [v85 title];
    [(UILabel *)self->_titleView setText:v86];
  }

  if (CalSystemSolariumEnabled())
  {
    v89 = [(CarplayStaticEventDetailsTableViewCell *)self traitCollection];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_10014C63C;
    v102[3] = &unk_10020EB00;
    v102[4] = self;
    [v89 performAsCurrentTraitCollection:v102];
  }
}

- (void)cellWasTapped
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CarplayStaticEventDetailsTableViewCell.m" lineNumber:375 description:{@"Static event details cell was tapped, but it should not have been able to be selected"}];
}

@end