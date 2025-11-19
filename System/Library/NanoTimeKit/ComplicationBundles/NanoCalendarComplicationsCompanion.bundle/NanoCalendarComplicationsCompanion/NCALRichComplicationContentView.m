@interface NCALRichComplicationContentView
- (id)initForDevice:(id)a3;
- (void)updateLayout;
@end

@implementation NCALRichComplicationContentView

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v171.receiver = self;
  v171.super_class = NCALRichComplicationContentView;
  v5 = [(NCALRichComplicationContentView *)&v171 init];
  v6 = v5;
  if (v5)
  {
    sub_EFF4(v5, v4);
    v7 = *&qword_281F8;
    v8 = *&qword_28200;
    v9 = *&qword_28208;
    v159 = *&qword_28210;
    v156 = *&qword_28218;
    v10 = *&qword_28220;
    v11 = *&qword_28228;
    v12 = *&qword_28230;
    v161 = *&qword_28238;
    v160 = v4;
    v13 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*&qword_281F8 design:UIFontWeightBold];
    v164 = [v13 CLKFontWithAlternativePunctuation];

    v14 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v7 design:UIFontWeightMedium];
    v15 = [v14 CLKFontWithAlternativePunctuation];

    v16 = objc_alloc_init(UILayoutGuide);
    v17 = objc_alloc_init(NCALRichComplicationPillView);
    verticalPill = v6->_verticalPill;
    v6->_verticalPill = v17;

    [(NCALRichComplicationPillView *)v6->_verticalPill setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor whiteColor];
    [(NCALRichComplicationPillView *)v6->_verticalPill setBackgroundColor:v19];

    v20 = [(NCALRichComplicationPillView *)v6->_verticalPill layer];
    [v20 setCornerRadius:v10];

    v21 = objc_alloc_init(NCALRichComplicationPillView);
    verticalPill2 = v6->_verticalPill2;
    v6->_verticalPill2 = v21;

    [(NCALRichComplicationPillView *)v6->_verticalPill2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = +[UIColor whiteColor];
    [(NCALRichComplicationPillView *)v6->_verticalPill2 setBackgroundColor:v23];

    v24 = [(NCALRichComplicationPillView *)v6->_verticalPill2 layer];
    [v24 setCornerRadius:v10];

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

    [(CLKUIColoringLabel *)v6->_headerLabel setFont:v164];
    v32 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    bodyLabel = v6->_bodyLabel;
    v6->_bodyLabel = v32;

    [(CLKUIColoringLabel *)v6->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v6->_bodyLabel setLineBreakMode:4];
    v34 = +[UIColor whiteColor];
    [(CLKUIColoringLabel *)v6->_bodyLabel setTextColor:v34];

    v168 = v15;
    [(CLKUIColoringLabel *)v6->_bodyLabel setFont:v15];
    v35 = [[CLKUIColoringLabel alloc] initWithFrame:4 options:{CGRectZero.origin.x, y, width, height}];
    body2Label = v6->_body2Label;
    v6->_body2Label = v35;

    [(CLKUIColoringLabel *)v6->_body2Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v6->_body2Label setLineBreakMode:4];
    v37 = +[UIColor grayColor];
    [(CLKUIColoringLabel *)v6->_body2Label setTextColor:v37];

    [(CLKUIColoringLabel *)v6->_body2Label setFont:v15];
    [(NCALRichComplicationContentView *)v6 addLayoutGuide:v16];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_verticalPill];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_verticalPill2];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_headerLabel];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_bodyLabel];
    [(NCALRichComplicationContentView *)v6 addSubview:v6->_body2Label];
    v153 = [v16 bottomAnchor];
    v147 = [(NCALRichComplicationContentView *)v6 bottomAnchor];
    v143 = [v153 constraintEqualToAnchor:v147 constant:-0.0];
    v178[0] = v143;
    v139 = [v16 leadingAnchor];
    v135 = [(NCALRichComplicationContentView *)v6 leadingAnchor];
    v132 = [v139 constraintEqualToAnchor:v135 constant:v12];
    v178[1] = v132;
    v129 = [v16 trailingAnchor];
    v126 = [(NCALRichComplicationContentView *)v6 trailingAnchor];
    v162 = [v129 constraintEqualToAnchor:v126 constant:-v161];
    v178[2] = v162;
    v124 = [v16 topAnchor];
    v122 = [(NCALRichComplicationContentView *)v6 topAnchor];
    v120 = [v124 constraintEqualToAnchor:v122 constant:0.0];
    v178[3] = v120;
    v118 = [(CLKUIColoringLabel *)v6->_headerLabel topAnchor];
    v117 = [v16 topAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v178[4] = v116;
    v115 = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    v114 = [(CLKUIColoringLabel *)v6->_headerLabel firstBaselineAnchor];
    v113 = [v115 constraintEqualToAnchor:v114 constant:v8];
    v178[5] = v113;
    v112 = [(CLKUIColoringLabel *)v6->_body2Label firstBaselineAnchor];
    v111 = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    v110 = [v112 constraintEqualToAnchor:v111 constant:v8];
    v178[6] = v110;
    v38 = [(CLKUIColoringLabel *)v6->_headerLabel trailingAnchor];
    v39 = [v16 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v178[7] = v40;
    v41 = [(CLKUIColoringLabel *)v6->_bodyLabel trailingAnchor];
    v42 = v16;
    v170 = v16;
    v43 = [v16 trailingAnchor];
    v44 = [v41 constraintEqualToAnchor:v43];
    v178[8] = v44;
    v45 = [(CLKUIColoringLabel *)v6->_body2Label trailingAnchor];
    v46 = [v42 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v178[9] = v47;
    v158 = [NSArray arrayWithObjects:v178 count:10];

    v154 = [(NCALRichComplicationPillView *)v6->_verticalPill topAnchor];
    v148 = [(CLKUIColoringLabel *)v6->_headerLabel firstBaselineAnchor];
    [v164 capHeight];
    v144 = [v154 constraintEqualToAnchor:v148 constant:-v48 - v11];
    v177[0] = v144;
    v140 = [(NCALRichComplicationPillView *)v6->_verticalPill leadingAnchor];
    v136 = [v170 leadingAnchor];
    v133 = [v140 constraintEqualToAnchor:v136];
    v177[1] = v133;
    v130 = [(NCALRichComplicationPillView *)v6->_verticalPill widthAnchor];
    v127 = [v130 constraintEqualToConstant:v156];
    v177[2] = v127;
    v49 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    v50 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:v9];
    v177[3] = v51;
    v52 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    v53 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:v9];
    v177[4] = v54;
    v55 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    v56 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:v9];
    v177[5] = v57;
    v163 = [NSArray arrayWithObjects:v177 count:6];

    v155 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    v149 = [(CLKUIColoringLabel *)v6->_bodyLabel lastBaselineAnchor];
    v58 = [v155 constraintEqualToAnchor:v149 constant:v11];
    v176[0] = v58;
    v59 = [(CLKUIColoringLabel *)v6->_bodyLabel bottomAnchor];
    v60 = [v170 bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v176[1] = v61;
    v62 = [NSArray arrayWithObjects:v176 count:2];
    v63 = [v163 copy];
    v64 = [v62 arrayByAddingObjectsFromArray:v63];
    pillAlignedToBody1BottomConstraints = v6->_pillAlignedToBody1BottomConstraints;
    v6->_pillAlignedToBody1BottomConstraints = v64;

    v150 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    v66 = [(CLKUIColoringLabel *)v6->_body2Label lastBaselineAnchor];
    v67 = [v150 constraintEqualToAnchor:v66 constant:v11];
    v175[0] = v67;
    v68 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    v69 = [v170 bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];
    v175[1] = v70;
    v71 = [NSArray arrayWithObjects:v175 count:2];
    v72 = [v163 copy];
    v73 = [v71 arrayByAddingObjectsFromArray:v72];
    pillAlignedToBody2BottomConstraints = v6->_pillAlignedToBody2BottomConstraints;
    v6->_pillAlignedToBody2BottomConstraints = v73;

    v151 = [(NCALRichComplicationPillView *)v6->_verticalPill topAnchor];
    v145 = [(CLKUIColoringLabel *)v6->_bodyLabel firstBaselineAnchor];
    [v168 capHeight];
    v141 = [v151 constraintEqualToAnchor:v145 constant:-v75 - v11];
    v174[0] = v141;
    v137 = [(NCALRichComplicationPillView *)v6->_verticalPill leadingAnchor];
    v134 = [v170 leadingAnchor];
    v131 = [v137 constraintEqualToAnchor:v134];
    v174[1] = v131;
    v128 = [(NCALRichComplicationPillView *)v6->_verticalPill widthAnchor];
    v125 = [v128 constraintEqualToConstant:v156];
    v174[2] = v125;
    v123 = [(NCALRichComplicationPillView *)v6->_verticalPill bottomAnchor];
    v121 = [(CLKUIColoringLabel *)v6->_bodyLabel lastBaselineAnchor];
    v119 = [v123 constraintEqualToAnchor:v121 constant:v11];
    v174[3] = v119;
    v76 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    v77 = [v170 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:v159];
    v174[4] = v78;
    v79 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    v80 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:v9];
    v174[5] = v81;
    v82 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    v83 = [(NCALRichComplicationPillView *)v6->_verticalPill trailingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:v9];
    v174[6] = v84;
    v85 = [NSArray arrayWithObjects:v174 count:7];
    conflictEventsPillAlignmentConstraints = v6->_conflictEventsPillAlignmentConstraints;
    v6->_conflictEventsPillAlignmentConstraints = v85;

    v165 = [(NCALRichComplicationPillView *)v6->_verticalPill2 topAnchor];
    v152 = [(CLKUIColoringLabel *)v6->_body2Label firstBaselineAnchor];
    [v168 capHeight];
    v146 = [v165 constraintEqualToAnchor:v152 constant:-v87 - v11];
    v173[0] = v146;
    v142 = [(NCALRichComplicationPillView *)v6->_verticalPill2 leadingAnchor];
    v138 = [v170 leadingAnchor];
    v88 = [v142 constraintEqualToAnchor:v138];
    v173[1] = v88;
    v89 = [(NCALRichComplicationPillView *)v6->_verticalPill2 widthAnchor];
    v90 = [v89 constraintEqualToConstant:v156];
    v173[2] = v90;
    v91 = [(NCALRichComplicationPillView *)v6->_verticalPill2 bottomAnchor];
    v92 = [(CLKUIColoringLabel *)v6->_body2Label lastBaselineAnchor];
    v93 = [v91 constraintEqualToAnchor:v92 constant:v11];
    v173[3] = v93;
    v94 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    v95 = [v170 bottomAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];
    v173[4] = v96;
    v97 = [NSArray arrayWithObjects:v173 count:5];
    conflictEventsPill2AlignmentConstraints = v6->_conflictEventsPill2AlignmentConstraints;
    v6->_conflictEventsPill2AlignmentConstraints = v97;

    v167 = [(CLKUIColoringLabel *)v6->_headerLabel leadingAnchor];
    v166 = [v170 leadingAnchor];
    v157 = [v167 constraintEqualToAnchor:v166 constant:v159];
    v172[0] = v157;
    v169 = [(CLKUIColoringLabel *)v6->_bodyLabel leadingAnchor];
    v99 = [v170 leadingAnchor];
    v100 = [v169 constraintEqualToAnchor:v99 constant:v159];
    v172[1] = v100;
    v101 = [(CLKUIColoringLabel *)v6->_body2Label leadingAnchor];
    v102 = [v170 leadingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102 constant:v159];
    v172[2] = v103;
    v104 = [(CLKUIColoringLabel *)v6->_body2Label bottomAnchor];
    v105 = [v170 bottomAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];
    v172[3] = v106;
    v107 = [NSArray arrayWithObjects:v172 count:4];
    noPillConstraints = v6->_noPillConstraints;
    v6->_noPillConstraints = v107;

    v4 = v160;
    [NSLayoutConstraint activateConstraints:v158];
    [NSLayoutConstraint activateConstraints:v6->_pillAlignedToBody2BottomConstraints];
  }

  return v6;
}

- (void)updateLayout
{
  v4 = [(NCALRichComplicationContentView *)self hasConflicts];
  v5 = [(NCALRichComplicationContentView *)self body2Label];
  v6 = [v5 textProvider];

  [NSLayoutConstraint deactivateConstraints:self->_pillAlignedToBody1BottomConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_pillAlignedToBody2BottomConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_conflictEventsPillAlignmentConstraints];
  [NSLayoutConstraint deactivateConstraints:self->_conflictEventsPill2AlignmentConstraints];
  p_noPillConstraints = &self->_noPillConstraints;
  [NSLayoutConstraint deactivateConstraints:self->_noPillConstraints];
  v8 = [(NCALRichComplicationContentView *)self firstEventColor];
  if (v8)
  {
    v2 = [(NCALRichComplicationContentView *)self firstEventColor];
    v19 = v2;
    v9 = [NSArray arrayWithObjects:&v19 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NCALRichComplicationContentView *)self verticalPill];
  [v10 setPillColors:v9];

  if (v8)
  {
  }

  v11 = [(NCALRichComplicationContentView *)self otherEventColors];
  v12 = [(NCALRichComplicationContentView *)self verticalPill2];
  [v12 setPillColors:v11];

  v13 = [(NCALRichComplicationContentView *)self verticalPill2];
  [v13 setHidden:v4 ^ 1];

  if (v6)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [(NCALRichComplicationContentView *)self bodyLabel];
  [v15 setNumberOfLines:v14];

  if ((v4 ^ 1))
  {
    +[UIColor grayColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v16 = ;
  v17 = [(NCALRichComplicationContentView *)self body2Label];
  [v17 setTextColor:v16];

  v18 = [(NCALRichComplicationContentView *)self body2Label];
  [v18 setHidden:v6 == 0];

  if ([(NCALRichComplicationContentView *)self eventCount])
  {
    if (v4)
    {
      [NSLayoutConstraint activateConstraints:self->_conflictEventsPillAlignmentConstraints];
      p_noPillConstraints = &self->_conflictEventsPill2AlignmentConstraints;
    }

    else if (v6)
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