@interface MFEmailSnippetSearchResultCellView
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MFEmailSnippetSearchResultCellView)initWithFrame:(CGRect)a3;
- (void)_createViews;
- (void)_setUpConstraints;
- (void)_setUpConstraintsForVerticalStatusIndicators:(id)a3;
- (void)setEmail:(id)a3;
@end

@implementation MFEmailSnippetSearchResultCellView

- (MFEmailSnippetSearchResultCellView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFEmailSnippetSearchResultCellView;
  v3 = [(MFEmailSnippetSearchResultCellView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFEmailSnippetSearchResultCellView *)v3 _createViews];
    [(MFEmailSnippetSearchResultCellView *)v4 _setUpConstraints];
  }

  return v4;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = sub_8310(105.0);
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setEmail:(id)a3
{
  v4 = a3;
  v101 = v4;
  v98 = [v4 subject];
  v97 = [v4 message];
  v5 = [v4 outgoing];
  if ([v5 BOOLValue])
  {
    v92 = 1;
  }

  else
  {
    v6 = [v4 identifier];
    v7 = [v6 scheme];
    v92 = [v7 isEqualToString:@"amos"];
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_B648();
  }

  v95 = objc_alloc_init(NSMutableParagraphStyle);
  [v95 setLineBreakMode:4];
  v121[0] = NSFontAttributeName;
  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v122[0] = v9;
  v121[1] = NSForegroundColorAttributeName;
  v10 = +[UIColor siriui_textColor];
  v121[2] = NSParagraphStyleAttributeName;
  v122[1] = v10;
  v122[2] = v95;
  v94 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:3];

  if (v92)
  {
    v11 = +[NSMutableArray array];
    v12 = [v4 recipientsTo];
    v13 = [v4 recipientsCc];
    if ([v12 count])
    {
      v14 = MFCommentedEmailsFromSAPersonAttributes(v12);
      [v11 addObjectsFromArray:v14];
    }

    if ([v13 count])
    {
      v15 = MFCommentedEmailsFromSAPersonAttributes(v13);
      [v11 addObjectsFromArray:v15];
    }

    goto LABEL_13;
  }

  v16 = [v4 fromEmail];
  v12 = v16;
  if (v16)
  {
    v120 = v16;
    v13 = [NSArray arrayWithObjects:&v120 count:1];
    v11 = MFCommentedEmailsFromSAPersonAttributes(v13);
LABEL_13:

    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:

  v17 = +[NSMutableString string];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v11;
  v18 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
  if (v18)
  {
    v19 = *v109;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v109 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v108 + 1) + 8 * i);
        if ([v17 length])
        {
          [v17 appendString:{@", "}];
        }

        v22 = v21;
        v23 = [v22 emailAddressValue];
        v24 = [v23 displayName];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = [v22 stringValue];
        }

        v27 = v26;

        [v17 appendString:v27];
      }

      v18 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
    }

    while (v18);
  }

  v96 = v17;
  v102 = v96;
  if (![v96 length])
  {
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    if (v92)
    {
      [v28 siriUILocalizedStringForKey:@"NO_RECIPIENTS_PLACEHOLDER" table:@"Assistant"];
    }

    else
    {
      [v28 siriUILocalizedStringForKey:@"NO_SENDER_PLACEHOLDER" table:@"Assistant"];
    }
    v102 = ;
  }

  v29 = [[NSAttributedString alloc] initWithString:v102 attributes:v94];
  v30 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [v30 setAttributedText:v29];

  v89 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  [v89 pointSize];
  v90 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v117[0] = NSFontAttributeName;
  v117[1] = NSForegroundColorAttributeName;
  v118[0] = v90;
  v31 = +[UIColor siriui_textColor];
  v118[1] = v31;
  v93 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:2];

  v32 = [NSAttributedString alloc];
  v33 = [v98 length];
  v34 = v98;
  if (!v33)
  {
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v31 siriUILocalizedStringForKey:@"NO_SUBJECT_PLACEHOLDER" table:@"Assistant"];
  }

  v35 = [v32 initWithString:v34 attributes:v93];
  v36 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [v36 setAttributedText:v35];

  if (!v33)
  {
  }

  v37 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  v38 = [v37 text];
  v39 = [v38 _isNaturallyRTL];

  v40 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  if (v39)
  {
    [v40 setTextAlignment:2];
  }

  else
  {
    [v40 setTextAlignment:0];
  }

  v115[0] = NSFontAttributeName;
  v41 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v115[1] = NSForegroundColorAttributeName;
  v116[0] = v41;
  v42 = +[UIColor secondaryLabelColor];
  v116[1] = v42;
  v91 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:2];

  v43 = [NSAttributedString alloc];
  v44 = [v97 length];
  v45 = v97;
  if (!v44)
  {
    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v45 = [v41 siriUILocalizedStringForKey:@"NO_CONTENT_PLACEHOLDER" table:@"Assistant"];
  }

  v46 = [v43 initWithString:v45 attributes:v91];
  v47 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v47 setAttributedText:v46];

  if (!v44)
  {
  }

  v48 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  v49 = [v48 text];
  v50 = [v49 _isNaturallyRTL];

  v51 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  if (v50)
  {
    [v51 setTextAlignment:2];
  }

  else
  {
    [v51 setTextAlignment:0];
  }

  v113[0] = NSFontAttributeName;
  v52 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v113[1] = NSForegroundColorAttributeName;
  v114[0] = v52;
  v53 = +[UIColor siriui_textColor];
  v114[1] = v53;
  v100 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];

  v54 = [v101 dateSent];
  v55 = v54;
  if (!v54)
  {
    v55 = +[NSDate date];
  }

  v56 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v56 setDate:v55];

  if (!v54)
  {
  }

  v57 = [[NSAttributedString alloc] initWithString:v102 attributes:v100];
  v58 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v58 setAttributedText:v57];

  v59 = [v101 statusFlags];
  v60 = MFLogGeneral();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_B6C0();
  }

  v61 = MFLogGeneral();
  v62 = (v59 >> 1) & 4 | v59 & 1 | (v59 >> 4) & 2 | (32 * ((v59 >> 4) & 1)) | (8 * ((v59 >> 1) & 3)) | (v59 >> 1) & 0xC0;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    sub_B734();
  }

  self->_mask = v62;
  if (v62)
  {
    v63 = MFLogGeneral();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      sub_B7A8();
    }

    v99 = objc_alloc_init(MessageListStatusIndicatorManager);
    [(MessageStatusIndicatorManager *)v99 setIndicatorOptions:self->_mask];
    v88 = [(MessageListStatusIndicatorManager *)v99 verticalStatusIndicatorViews];
    v64 = [(MessageListStatusIndicatorManager *)v99 horizontalStatusIndicatorViews];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v65 = v88;
    v66 = [v65 countByEnumeratingWithState:&v104 objects:v112 count:16];
    if (v66)
    {
      v67 = *v105;
      do
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (*v105 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v104 + 1) + 8 * j);
          v70 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
          [v70 addSubview:v69];
        }

        v66 = [v65 countByEnumeratingWithState:&v104 objects:v112 count:16];
      }

      while (v66);
    }

    [(MFEmailSnippetSearchResultCellView *)self _setUpConstraintsForVerticalStatusIndicators:v65];
    v71 = [v64 count];
    v72 = v71;
    if (v71 - 1 < 0)
    {
      v75 = 0;
    }

    else
    {
      v73 = 0;
      v74 = v71;
      do
      {
        v75 = [v64 objectAtIndex:--v74];
        LODWORD(v76) = 1148846080;
        [v75 setContentCompressionResistancePriority:0 forAxis:v76];
        LODWORD(v77) = 1148846080;
        [v75 setContentHuggingPriority:0 forAxis:v77];
        v78 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
        [v78 addArrangedSubview:v75];

        if (v73)
        {
          [v75 intrinsicContentSize];
          v80 = v79;
          [v73 intrinsicContentSize];
          v82 = v81;
          v83 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
          [v83 setCustomSpacing:v73 afterView:18.0 - v80 * 0.5 - v82 * 0.5];
        }

        v73 = v75;
      }

      while (v74 > 0);
    }

    if (v72)
    {
      v85 = 16.0;
    }

    else
    {
      v85 = 3.40282347e38;
    }

    v86 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
    v87 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
    [v86 setCustomSpacing:v87 afterView:v85];
  }

  else
  {
    v84 = MFLogGeneral();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      sub_B7E8();
    }

    v99 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
    v65 = [(MessageListStatusIndicatorManager *)v99 subviews];
    [v65 makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_createViews
{
  v3 = [UIView alloc];
  [(MFEmailSnippetSearchResultCellView *)self frame];
  v19 = [v3 initWithFrame:{0.0, 0.0, 20.0}];
  [(MFEmailSnippetSearchResultCellView *)self setVerticalStatusIconView:?];

  v20 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = +[UIColor clearColor];
  v4 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [v4 setBackgroundColor:v21];

  v22 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v5 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [v22 addSubview:v5];

  v23 = +[UIStackView mf_baselineAlignedVerticalStackView];
  [(MFEmailSnippetSearchResultCellView *)self setSubjectAndBodyStackView:?];

  v24 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v6 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  [v24 addSubview:v6];

  v25 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setAddressLabel:?];

  v26 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = +[UIColor clearColor];
  v7 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [v7 setBackgroundColor:v27];

  v28 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v8 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [v28 addSubview:v8];

  v29 = objc_alloc_init(UIDateLabel);
  [(MFEmailSnippetSearchResultCellView *)self setDateLabel:?];

  v30 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = +[UIColor clearColor];
  v9 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v9 setBackgroundColor:v31];

  v32 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v10 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v10 setFont:v32];

  v33 = +[UIColor siriui_semiTransparentTextColor];
  v11 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v11 setTextColor:v33];

  v34 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v34 setTextAlignment:2];

  v35 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v12 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v35 addSubview:v12];

  v36 = +[UIStackView mf_baselineAlignedHorizontalStackView];
  [(MFEmailSnippetSearchResultCellView *)self setSubjectAndHorizontalStatusIconStackView:?];

  v37 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setSubjectLabel:?];

  v38 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = +[UIColor clearColor];
  v13 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [v13 setBackgroundColor:v39];

  v40 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
  v14 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [v40 addArrangedSubview:v14];

  v41 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  v15 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
  [v41 addArrangedSubview:v15];

  v42 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setBodyLabel:?];

  v43 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

  v44 = +[UIColor clearColor];
  v16 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v16 setBackgroundColor:v44];

  v45 = +[UIFont siriui_lightWeightBodySizeFont];
  v17 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v17 setFont:v45];

  v46 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v46 setNumberOfLines:2];

  v47 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  v18 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [v47 addArrangedSubview:v18];
}

- (void)_setUpConstraints
{
  v70 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v3 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v4 = [v3 constraints];
  [v70 removeConstraints:v4];

  v71 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [v71 sizeToFit];

  v5 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v6) = 1148846080;
  v72 = v5;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];

  v7 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v8) = 1148846080;
  v73 = v7;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v9 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v10) = 1148846080;
  v74 = v9;
  [v9 setContentHuggingPriority:0 forAxis:v10];

  v11 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v12) = 1148846080;
  v75 = v11;
  [v11 setContentHuggingPriority:1 forAxis:v12];

  v76 = +[NSMutableArray array];
  v13 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant:SiriUIPlatterStyle[2]];
  [v76 addObject:v15];

  v16 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v17 = [v16 heightAnchor];
  v18 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  v19 = [v18 heightAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v76 addObject:v20];

  v21 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v22 = [v21 leadingAnchor];
  v23 = [(MFEmailSnippetSearchResultCellView *)self leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:SiriUIPlatterStyle[0]];
  [v76 addObject:v24];

  v25 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v26 = [v25 topAnchor];
  v27 = [(MFEmailSnippetSearchResultCellView *)self topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v76 addObject:v28];

  v29 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v30 = [v29 firstBaselineAnchor];
  v31 = [(MFEmailSnippetSearchResultCellView *)self topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:sub_8310(28.0)];
  [v76 addObject:v32];

  v33 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  v34 = [v33 centerYAnchor];
  v35 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v36 = [v35 centerYAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  [v76 addObject:v37];

  v38 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v39 = [v38 leadingAnchor];
  v40 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v41 = [v40 trailingAnchor];
  v42 = SiriUIPlatterStyle[28];
  v43 = [v39 constraintEqualToAnchor:v41 constant:v42];
  [v76 addObject:v43];

  v44 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v45 = [v44 trailingAnchor];
  v46 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  v47 = [v46 leadingAnchor];
  v48 = [v45 constraintLessThanOrEqualToAnchor:v47 constant:-SiriUIPlatterStyle[29]];
  [v76 addObject:v48];

  v49 = [(MFEmailSnippetSearchResultCellView *)self trailingAnchor];
  v50 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  v51 = [v50 trailingAnchor];
  v52 = [v49 constraintEqualToAnchor:v51 constant:SiriUIPlatterStyle[34]];
  [v76 addObject:v52];

  v53 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  v54 = [v53 firstBaselineAnchor];
  v55 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:sub_8310(17.0)];
  [v76 addObject:v57];

  v58 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  v59 = [v58 leadingAnchor];
  v60 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  v61 = [v60 trailingAnchor];
  v62 = [v59 constraintEqualToAnchor:v61 constant:v42];
  [v76 addObject:v62];

  v63 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  v64 = [v63 trailingAnchor];
  v65 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  v66 = [v65 trailingAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:0.5];
  [v76 addObject:v67];

  v68 = sub_8310(20.0);
  v69 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  [v69 setSpacing:v68];

  [NSLayoutConstraint activateConstraints:v76];
}

- (void)_setUpConstraintsForVerticalStatusIndicators:(id)a3
{
  v30 = a3;
  v28 = +[NSMutableArray array];
  v4 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v36[0] = v4;
  v5 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  v36[1] = v5;
  v27 = self;
  v6 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  v36[2] = v6;
  v7 = [NSArray arrayWithObjects:v36 count:3];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        if (v9 >= [v30 count])
        {
          v14 = 0;
        }

        else
        {
          v13 = [v30 objectAtIndex:v9];
          v14 = v13;
          ++v9;
          if (v13)
          {
            v15 = [v13 layer];
            [v15 opacity];
            v17 = v16 > 0.0;

            if (v17)
            {
              [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
              v18 = [v14 centerXAnchor];
              v19 = [(MFEmailSnippetSearchResultCellView *)v27 verticalStatusIconView];
              v20 = [v19 centerXAnchor];
              v21 = [v18 constraintEqualToAnchor:v20];
              [v28 addObject:v21];

              v22 = [v14 centerYAnchor];
              v23 = [v12 firstBaselineAnchor];
              v24 = [v12 font];
              [v24 capHeight];
              v26 = [v22 constraintEqualToAnchor:v23 constant:v25 * -0.5];
              [v28 addObject:v26];
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  [NSLayoutConstraint activateConstraints:v28];
}

@end