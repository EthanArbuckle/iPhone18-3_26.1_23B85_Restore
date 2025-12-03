@interface NCALRichComplicationContentView
- (id)initForDevice:(id)device;
- (void)updateLayout;
@end

@implementation NCALRichComplicationContentView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v171.receiver = self;
  v171.super_class = NCALRichComplicationContentView;
  v5 = [(NCALRichComplicationContentView *)&v171 init];
  v6 = v5;
  if (v5)
  {
    sub_EFF4(v5, deviceCopy);
    v7 = *&qword_281F8;
    v8 = *&qword_28200;
    v9 = *&qword_28208;
    v159 = *&qword_28210;
    v156 = *&qword_28218;
    v10 = *&qword_28220;
    v11 = *&qword_28228;
    v12 = *&qword_28230;
    v161 = *&qword_28238;
    v160 = deviceCopy;
    v13 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&qword_281F8 design:UIFontWeightBold];
    cLKFontWithAlternativePunctuation = [v13 CLKFontWithAlternativePunctuation];

    v14 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v7 design:UIFontWeightMedium];
    cLKFontWithAlternativePunctuation2 = [v14 CLKFontWithAlternativePunctuation];

    v16 = objc_alloc_init(UILayoutGuide);
    v17 = objc_alloc_init(NCALRichComplicationPillView);
    verticalPill = v6->_verticalPill;
    v6->_verticalPill = v17;

    [(NCALRichComplicationPillView *)v6->_verticalPill setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor whiteColor];
    [(NCALRichComplicationPillView *)v6->_verticalPill setBackgroundColor:v19];

    layer = [(NCALRichComplicationPillView *)v6->_verticalPill layer];
    [layer setCornerRadius:v10];

    v21 = objc_alloc_init(NCALRichComplicationPillView);
    verticalPill2 = v6->_verticalPill2;
    v6->_verticalPill2 = v21;

    [(NCALRichComplicationPillView *)v6->_verticalPill2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = +[UIColor whiteColor];
    [(NCALRichComplicationPillView *)v6->_verticalPill2 setBackgroundColor:v23];

    layer2 = [(NCALRichComplicationPillView *)v6->_verticalPill2 layer];
    [layer2 setCornerRadius:v10];

    [(NCALRichComplicationPillView *)v6->_verticalPill2 setHidden:1];
    v25 = [CLKUIColoringLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v29 = [v25 initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    headerLabel = v6->_headerLabel;
    v6->_headerLabel = v29;

    [(CLKUIColoringLabel *)v6->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v6->_headerLabel setLineBreakMode:4];
    v31 = +[UIColor whiteColor];
    [(CLKUIColoringLabel *)v6->_headerLabel setTextColor:v31];

    [(CLKUIColoringLabel *)v6->_headerLabel setFont:cLKFontWithAlternativePunctuation];
    v32 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    bodyLabel = v6->_bodyLabel;
    v6->_bodyLabel = v32;

    [(CLKUIColoringLabel *)v6->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v6->_bodyLabel setLineBreakMode:4];
    v34 = +[UIColor whiteColor];
    [(CLKUIColoringLabel *)v6->_bodyLabel setTextColor:v34];

    v168 = cLKFontWithAlternativePunctuation2;
    [(CLKUIColoringLabel *)v6->_bodyLabel setFont:cLKFontWithAlternativePunctuation2];
    v35 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    body2Label = v6->_body2Label;
    v6->_body2Label = v35;

    [(CLKUIColoringLabel *)v6->_body2Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v6->_body2Label setLineBreakMode:4];
    v37 = +[UIColor grayColor];
    [(CLKUIColoringLabel *)v6->_body2Label setTextColor:v37];

    [(CLKUIColoringLabel *)v6->_body2Label setFont:cLKFontWithAlternativePunctuation2];
    [(NCALRichComplicationContentView *)v6 addLayoutGuide:v16];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_verticalPill];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_verticalPill2];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_headerLabel];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_bodyLabel];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_body2Label];
    bottomAnchor = [v16 bottomAnchor];
    bottomAnchor2 = [(NCALRichComplicationContentView *)v6 bottomAnchor];
    v143 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
    v178[0] = v143;
    leadingAnchor = [v16 leadingAnchor];
    leadingAnchor2 = [(NCALRichComplicationContentView *)v6 leadingAnchor];
    v132 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
    v178[1] = v132;
    trailingAnchor = [v16 trailingAnchor];
    trailingAnchor2 = [(NCALRichComplicationContentView *)v6 trailingAnchor];
    v162 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v161];
    v178[2] = v162;
    topAnchor = [v16 topAnchor];
    topAnchor2 = [(NCALRichComplicationContentView *)v6 topAnchor];
    v120 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v178[3] = v120;
    topAnchor3 = [(CLKUIColoringLabel *)v6->_headerLabel topAnchor];
    topAnchor4 = [v16 topAnchor];
    v116 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v178[4] = v116;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v6->_headerLabel firstBaselineAnchor];
    v113 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:v8];
    v178[5] = v113;
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v6->_body2Label firstBaselineAnchor];
    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    v110 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:v8];
    v178[6] = v110;
    trailingAnchor3 = [(CLKUIColoringLabel *)v6->_headerLabel trailingAnchor];
    trailingAnchor4 = [v16 trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v178[7] = v40;
    trailingAnchor5 = [(CLKUIColoringLabel *)v6->_bodyLabel trailingAnchor];
    v42 = v16;
    v170 = v16;
    trailingAnchor6 = [v16 trailingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v178[8] = v44;
    trailingAnchor7 = [(CLKUIColoringLabel *)v6->_body2Label trailingAnchor];
    trailingAnchor8 = [v42 trailingAnchor];
    v47 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v178[9] = v47;
    v158 = [NSArray arrayWithObjects:v178 count:10];

    topAnchor5 = [(NCALRichComplicationPillView *)v6->_verticalPill topAnchor];
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v6->_headerLabel firstBaselineAnchor];
    [cLKFontWithAlternativePunctuation capHeight];
    v144 = [topAnchor5 constraintEqualToAnchor:firstBaselineAnchor5 constant:-v48 - v11];
    v177[0] = v144;
    leadingAnchor3 = [(NCALRichComplicationPillView *)v6->_verticalPill leadingAnchor];
    leadingAnchor4 = [v170 leadingAnchor];
    v133 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v177[1] = v133;
    widthAnchor = [(NCALRichComplicationPillView *)v6->_verticalPill widthAnchor];
    v127 = [widthAnchor constraintEqualToConstant:v156];
    v177[2] = v127;
    leadingAnchor5 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    trailingAnchor9 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v51 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor9 constant:v9];
    v177[3] = v51;
    leadingAnchor6 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    trailingAnchor10 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v54 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor10 constant:v9];
    v177[4] = v54;
    leadingAnchor7 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    trailingAnchor11 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v57 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor11 constant:v9];
    v177[5] = v57;
    v163 = [NSArray arrayWithObjects:v177 count:6];

    bottomAnchor3 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v6->_bodyLabel lastBaselineAnchor];
    v58 = [bottomAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:v11];
    v176[0] = v58;
    bottomAnchor4 = [(CLKUIColoringLabel *)v6->_bodyLabel bottomAnchor];
    bottomAnchor5 = [v170 bottomAnchor];
    v61 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v176[1] = v61;
    v62 = [NSArray arrayWithObjects:v176 count:2];
    v63 = [v163 copy];
    v64 = [v62 arrayByAddingObjectsFromArray:v63];
    pillAlignedToBody1BottomConstraints = v6->_pillAlignedToBody1BottomConstraints;
    v6->_pillAlignedToBody1BottomConstraints = v64;

    bottomAnchor6 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v6->_body2Label lastBaselineAnchor];
    v67 = [bottomAnchor6 constraintEqualToAnchor:lastBaselineAnchor2 constant:v11];
    v175[0] = v67;
    bottomAnchor7 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    bottomAnchor8 = [v170 bottomAnchor];
    v70 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v175[1] = v70;
    v71 = [NSArray arrayWithObjects:v175 count:2];
    v72 = [v163 copy];
    v73 = [v71 arrayByAddingObjectsFromArray:v72];
    pillAlignedToBody2BottomConstraints = v6->_pillAlignedToBody2BottomConstraints;
    v6->_pillAlignedToBody2BottomConstraints = v73;

    topAnchor6 = [(NCALRichComplicationPillView *)v6->_verticalPill topAnchor];
    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    [v168 capHeight];
    v141 = [topAnchor6 constraintEqualToAnchor:firstBaselineAnchor6 constant:-v75 - v11];
    v174[0] = v141;
    leadingAnchor8 = [(NCALRichComplicationPillView *)v6->_verticalPill leadingAnchor];
    leadingAnchor9 = [v170 leadingAnchor];
    v131 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v174[1] = v131;
    widthAnchor2 = [(NCALRichComplicationPillView *)v6->_verticalPill widthAnchor];
    v125 = [widthAnchor2 constraintEqualToConstant:v156];
    v174[2] = v125;
    bottomAnchor9 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    lastBaselineAnchor3 = [(CLKUIColoringLabel *)v6->_bodyLabel lastBaselineAnchor];
    v119 = [bottomAnchor9 constraintEqualToAnchor:lastBaselineAnchor3 constant:v11];
    v174[3] = v119;
    leadingAnchor10 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    leadingAnchor11 = [v170 leadingAnchor];
    v78 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:v159];
    v174[4] = v78;
    leadingAnchor12 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    trailingAnchor12 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v81 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor12 constant:v9];
    v174[5] = v81;
    leadingAnchor13 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    trailingAnchor13 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v84 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor13 constant:v9];
    v174[6] = v84;
    v85 = [NSArray arrayWithObjects:v174 count:7];
    conflictEventsPillAlignmentConstraints = v6->_conflictEventsPillAlignmentConstraints;
    v6->_conflictEventsPillAlignmentConstraints = v85;

    topAnchor7 = [(NCALRichComplicationPillView *)v6->_verticalPill2 topAnchor];
    firstBaselineAnchor7 = [(CLKUIColoringLabel *)v6->_body2Label firstBaselineAnchor];
    [v168 capHeight];
    v146 = [topAnchor7 constraintEqualToAnchor:firstBaselineAnchor7 constant:-v87 - v11];
    v173[0] = v146;
    leadingAnchor14 = [(NCALRichComplicationPillView *)v6->_verticalPill2 leadingAnchor];
    leadingAnchor15 = [v170 leadingAnchor];
    v88 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v173[1] = v88;
    widthAnchor3 = [(NCALRichComplicationPillView *)v6->_verticalPill2 widthAnchor];
    v90 = [widthAnchor3 constraintEqualToConstant:v156];
    v173[2] = v90;
    bottomAnchor10 = [(NCALRichComplicationPillView *)v6->_verticalPill2 bottomAnchor];
    lastBaselineAnchor4 = [(CLKUIColoringLabel *)v6->_body2Label lastBaselineAnchor];
    v93 = [bottomAnchor10 constraintEqualToAnchor:lastBaselineAnchor4 constant:v11];
    v173[3] = v93;
    bottomAnchor11 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    bottomAnchor12 = [v170 bottomAnchor];
    v96 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v173[4] = v96;
    v97 = [NSArray arrayWithObjects:v173 count:5];
    conflictEventsPill2AlignmentConstraints = v6->_conflictEventsPill2AlignmentConstraints;
    v6->_conflictEventsPill2AlignmentConstraints = v97;

    leadingAnchor16 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    leadingAnchor17 = [v170 leadingAnchor];
    v157 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17 constant:v159];
    v172[0] = v157;
    leadingAnchor18 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    leadingAnchor19 = [v170 leadingAnchor];
    v100 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19 constant:v159];
    v172[1] = v100;
    leadingAnchor20 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    leadingAnchor21 = [v170 leadingAnchor];
    v103 = [leadingAnchor20 constraintEqualToAnchor:leadingAnchor21 constant:v159];
    v172[2] = v103;
    bottomAnchor13 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    bottomAnchor14 = [v170 bottomAnchor];
    v106 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
    v172[3] = v106;
    v107 = [NSArray arrayWithObjects:v172 count:4];
    noPillConstraints = v6->_noPillConstraints;
    v6->_noPillConstraints = v107;

    deviceCopy = v160;
    [NSLayoutConstraint activateConstraints:v158];
    [NSLayoutConstraint activateConstraints:v6->_pillAlignedToBody2BottomConstraints];
  }

  return v6;
}

- (void)updateLayout
{
  hasConflicts = [(NCALRichComplicationContentView *)self hasConflicts];
  body2Label = [(NCALRichComplicationContentView *)self body2Label];
  textProvider = [body2Label textProvider];

  [NSLayoutConstraint deactivateConstraints:self->_pillAlignedToBody1BottomConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_pillAlignedToBody2BottomConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_conflictEventsPillAlignmentConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_conflictEventsPill2AlignmentConstraints];
  p_noPillConstraints = &self->_noPillConstraints;
  [NSLayoutConstraint deactivateConstraints:self->_noPillConstraints];
  firstEventColor = [(NCALRichComplicationContentView *)self firstEventColor];
  if (firstEventColor)
  {
    firstEventColor2 = [(NCALRichComplicationContentView *)self firstEventColor];
    v19 = firstEventColor2;
    v9 = [NSArray arrayWithObjects:&v19 count:1];
  }

  else
  {
    v9 = 0;
  }

  verticalPill = [(NCALRichComplicationContentView *)self verticalPill];
  [verticalPill setPillColors:v9];

  if (firstEventColor)
  {
  }

  otherEventColors = [(NCALRichComplicationContentView *)self otherEventColors];
  verticalPill2 = [(NCALRichComplicationContentView *)self verticalPill2];
  [verticalPill2 setPillColors:otherEventColors];

  verticalPill22 = [(NCALRichComplicationContentView *)self verticalPill2];
  [verticalPill22 setHidden:hasConflicts ^ 1];

  if (textProvider)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  bodyLabel = [(NCALRichComplicationContentView *)self bodyLabel];
  [bodyLabel setNumberOfLines:v14];

  if ((hasConflicts ^ 1))
  {
    +[UIColor grayColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v16 = ;
  body2Label2 = [(NCALRichComplicationContentView *)self body2Label];
  [body2Label2 setTextColor:v16];

  body2Label3 = [(NCALRichComplicationContentView *)self body2Label];
  [body2Label3 setHidden:textProvider == 0];

  if ([(NCALRichComplicationContentView *)self eventCount])
  {
    if (hasConflicts)
    {
      [NSLayoutConstraint activateConstraints:self->_conflictEventsPillAlignmentConstraints];
      p_noPillConstraints = &self->_conflictEventsPill2AlignmentConstraints;
    }

    else if (textProvider)
    {
      p_noPillConstraints = &self->_pillAlignedToBody2BottomConstraints;
    }

    else
    {
      p_noPillConstraints = &self->_pillAlignedToBody1BottomConstraints;
    }
  }

  [NSLayoutConstraint activateConstraints:*p_noPillConstraints];
}

@end