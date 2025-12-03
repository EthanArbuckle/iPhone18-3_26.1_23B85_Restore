@interface MFEmailSnippetSearchResultCellView
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MFEmailSnippetSearchResultCellView)initWithFrame:(CGRect)frame;
- (void)_createViews;
- (void)_setUpConstraints;
- (void)_setUpConstraintsForVerticalStatusIndicators:(id)indicators;
- (void)setEmail:(id)email;
@end

@implementation MFEmailSnippetSearchResultCellView

- (MFEmailSnippetSearchResultCellView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFEmailSnippetSearchResultCellView;
  v3 = [(MFEmailSnippetSearchResultCellView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = sub_8310(105.0);
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setEmail:(id)email
{
  emailCopy = email;
  v101 = emailCopy;
  subject = [emailCopy subject];
  message = [emailCopy message];
  outgoing = [emailCopy outgoing];
  if ([outgoing BOOLValue])
  {
    v92 = 1;
  }

  else
  {
    identifier = [emailCopy identifier];
    scheme = [identifier scheme];
    v92 = [scheme isEqualToString:@"amos"];
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
    recipientsTo = [emailCopy recipientsTo];
    recipientsCc = [emailCopy recipientsCc];
    if ([recipientsTo count])
    {
      v14 = MFCommentedEmailsFromSAPersonAttributes(recipientsTo);
      [v11 addObjectsFromArray:v14];
    }

    if ([recipientsCc count])
    {
      v15 = MFCommentedEmailsFromSAPersonAttributes(recipientsCc);
      [v11 addObjectsFromArray:v15];
    }

    goto LABEL_13;
  }

  fromEmail = [emailCopy fromEmail];
  recipientsTo = fromEmail;
  if (fromEmail)
  {
    v120 = fromEmail;
    recipientsCc = [NSArray arrayWithObjects:&v120 count:1];
    v11 = MFCommentedEmailsFromSAPersonAttributes(recipientsCc);
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
        emailAddressValue = [v22 emailAddressValue];
        displayName = [emailAddressValue displayName];
        v25 = displayName;
        if (displayName)
        {
          stringValue = displayName;
        }

        else
        {
          stringValue = [v22 stringValue];
        }

        v27 = stringValue;

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
  addressLabel = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [addressLabel setAttributedText:v29];

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
  v33 = [subject length];
  v34 = subject;
  if (!v33)
  {
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v31 siriUILocalizedStringForKey:@"NO_SUBJECT_PLACEHOLDER" table:@"Assistant"];
  }

  v35 = [v32 initWithString:v34 attributes:v93];
  subjectLabel = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [subjectLabel setAttributedText:v35];

  if (!v33)
  {
  }

  subjectLabel2 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  text = [subjectLabel2 text];
  _isNaturallyRTL = [text _isNaturallyRTL];

  subjectLabel3 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  if (_isNaturallyRTL)
  {
    [subjectLabel3 setTextAlignment:2];
  }

  else
  {
    [subjectLabel3 setTextAlignment:0];
  }

  v115[0] = NSFontAttributeName;
  v41 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v115[1] = NSForegroundColorAttributeName;
  v116[0] = v41;
  v42 = +[UIColor secondaryLabelColor];
  v116[1] = v42;
  v91 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:2];

  v43 = [NSAttributedString alloc];
  v44 = [message length];
  v45 = message;
  if (!v44)
  {
    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v45 = [v41 siriUILocalizedStringForKey:@"NO_CONTENT_PLACEHOLDER" table:@"Assistant"];
  }

  v46 = [v43 initWithString:v45 attributes:v91];
  bodyLabel = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [bodyLabel setAttributedText:v46];

  if (!v44)
  {
  }

  bodyLabel2 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  text2 = [bodyLabel2 text];
  _isNaturallyRTL2 = [text2 _isNaturallyRTL];

  bodyLabel3 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  if (_isNaturallyRTL2)
  {
    [bodyLabel3 setTextAlignment:2];
  }

  else
  {
    [bodyLabel3 setTextAlignment:0];
  }

  v113[0] = NSFontAttributeName;
  v52 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v113[1] = NSForegroundColorAttributeName;
  v114[0] = v52;
  v53 = +[UIColor siriui_textColor];
  v114[1] = v53;
  v100 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:2];

  dateSent = [v101 dateSent];
  v55 = dateSent;
  if (!dateSent)
  {
    v55 = +[NSDate date];
  }

  dateLabel = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel setDate:v55];

  if (!dateSent)
  {
  }

  v57 = [[NSAttributedString alloc] initWithString:v102 attributes:v100];
  dateLabel2 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel2 setAttributedText:v57];

  statusFlags = [v101 statusFlags];
  v60 = MFLogGeneral();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_B6C0();
  }

  v61 = MFLogGeneral();
  v62 = (statusFlags >> 1) & 4 | statusFlags & 1 | (statusFlags >> 4) & 2 | (32 * ((statusFlags >> 4) & 1)) | (8 * ((statusFlags >> 1) & 3)) | (statusFlags >> 1) & 0xC0;
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

    verticalStatusIconView2 = objc_alloc_init(MessageListStatusIndicatorManager);
    [(MessageStatusIndicatorManager *)verticalStatusIconView2 setIndicatorOptions:self->_mask];
    verticalStatusIndicatorViews = [(MessageListStatusIndicatorManager *)verticalStatusIconView2 verticalStatusIndicatorViews];
    horizontalStatusIndicatorViews = [(MessageListStatusIndicatorManager *)verticalStatusIconView2 horizontalStatusIndicatorViews];
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    subviews = verticalStatusIndicatorViews;
    v66 = [subviews countByEnumeratingWithState:&v104 objects:v112 count:16];
    if (v66)
    {
      v67 = *v105;
      do
      {
        for (j = 0; j != v66; j = j + 1)
        {
          if (*v105 != v67)
          {
            objc_enumerationMutation(subviews);
          }

          v69 = *(*(&v104 + 1) + 8 * j);
          verticalStatusIconView = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
          [verticalStatusIconView addSubview:v69];
        }

        v66 = [subviews countByEnumeratingWithState:&v104 objects:v112 count:16];
      }

      while (v66);
    }

    [(MFEmailSnippetSearchResultCellView *)self _setUpConstraintsForVerticalStatusIndicators:subviews];
    v71 = [horizontalStatusIndicatorViews count];
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
        v75 = [horizontalStatusIndicatorViews objectAtIndex:--v74];
        LODWORD(v76) = 1148846080;
        [v75 setContentCompressionResistancePriority:0 forAxis:v76];
        LODWORD(v77) = 1148846080;
        [v75 setContentHuggingPriority:0 forAxis:v77];
        subjectAndHorizontalStatusIconStackView = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
        [subjectAndHorizontalStatusIconStackView addArrangedSubview:v75];

        if (v73)
        {
          [v75 intrinsicContentSize];
          v80 = v79;
          [v73 intrinsicContentSize];
          v82 = v81;
          subjectAndHorizontalStatusIconStackView2 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
          [subjectAndHorizontalStatusIconStackView2 setCustomSpacing:v73 afterView:18.0 - v80 * 0.5 - v82 * 0.5];
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

    subjectAndHorizontalStatusIconStackView3 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
    subjectLabel4 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
    [subjectAndHorizontalStatusIconStackView3 setCustomSpacing:subjectLabel4 afterView:v85];
  }

  else
  {
    v84 = MFLogGeneral();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      sub_B7E8();
    }

    verticalStatusIconView2 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
    subviews = [(MessageListStatusIndicatorManager *)verticalStatusIconView2 subviews];
    [subviews makeObjectsPerformSelector:"removeFromSuperview"];
  }
}

- (void)_createViews
{
  v3 = [UIView alloc];
  [(MFEmailSnippetSearchResultCellView *)self frame];
  v19 = [v3 initWithFrame:{0.0, 0.0, 20.0}];
  [(MFEmailSnippetSearchResultCellView *)self setVerticalStatusIconView:?];

  verticalStatusIconView = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [verticalStatusIconView setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = +[UIColor clearColor];
  verticalStatusIconView2 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [verticalStatusIconView2 setBackgroundColor:v21];

  contentView = [(MFEmailSnippetSearchResultCellView *)self contentView];
  verticalStatusIconView3 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  [contentView addSubview:verticalStatusIconView3];

  v23 = +[UIStackView mf_baselineAlignedVerticalStackView];
  [(MFEmailSnippetSearchResultCellView *)self setSubjectAndBodyStackView:?];

  contentView2 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  subjectAndBodyStackView = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  [contentView2 addSubview:subjectAndBodyStackView];

  v25 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setAddressLabel:?];

  addressLabel = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [addressLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = +[UIColor clearColor];
  addressLabel2 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [addressLabel2 setBackgroundColor:v27];

  contentView3 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  addressLabel3 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  [contentView3 addSubview:addressLabel3];

  v29 = objc_alloc_init(UIDateLabel);
  [(MFEmailSnippetSearchResultCellView *)self setDateLabel:?];

  dateLabel = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = +[UIColor clearColor];
  dateLabel2 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel2 setBackgroundColor:v31];

  v32 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  dateLabel3 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel3 setFont:v32];

  v33 = +[UIColor siriui_semiTransparentTextColor];
  dateLabel4 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel4 setTextColor:v33];

  dateLabel5 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel5 setTextAlignment:2];

  contentView4 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  dateLabel6 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [contentView4 addSubview:dateLabel6];

  v36 = +[UIStackView mf_baselineAlignedHorizontalStackView];
  [(MFEmailSnippetSearchResultCellView *)self setSubjectAndHorizontalStatusIconStackView:?];

  v37 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setSubjectLabel:?];

  subjectLabel = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [subjectLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = +[UIColor clearColor];
  subjectLabel2 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [subjectLabel2 setBackgroundColor:v39];

  subjectAndHorizontalStatusIconStackView = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
  subjectLabel3 = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  [subjectAndHorizontalStatusIconStackView addArrangedSubview:subjectLabel3];

  subjectAndBodyStackView2 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  subjectAndHorizontalStatusIconStackView2 = [(MFEmailSnippetSearchResultCellView *)self subjectAndHorizontalStatusIconStackView];
  [subjectAndBodyStackView2 addArrangedSubview:subjectAndHorizontalStatusIconStackView2];

  v42 = objc_alloc_init(UILabel);
  [(MFEmailSnippetSearchResultCellView *)self setBodyLabel:?];

  bodyLabel = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v44 = +[UIColor clearColor];
  bodyLabel2 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [bodyLabel2 setBackgroundColor:v44];

  v45 = +[UIFont siriui_lightWeightBodySizeFont];
  bodyLabel3 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [bodyLabel3 setFont:v45];

  bodyLabel4 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [bodyLabel4 setNumberOfLines:2];

  subjectAndBodyStackView3 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  bodyLabel5 = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  [subjectAndBodyStackView3 addArrangedSubview:bodyLabel5];
}

- (void)_setUpConstraints
{
  contentView = [(MFEmailSnippetSearchResultCellView *)self contentView];
  contentView2 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  constraints = [contentView2 constraints];
  [contentView removeConstraints:constraints];

  dateLabel = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  [dateLabel sizeToFit];

  dateLabel2 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v6) = 1148846080;
  v72 = dateLabel2;
  [dateLabel2 setContentCompressionResistancePriority:0 forAxis:v6];

  dateLabel3 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v8) = 1148846080;
  v73 = dateLabel3;
  [dateLabel3 setContentCompressionResistancePriority:1 forAxis:v8];

  dateLabel4 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v10) = 1148846080;
  v74 = dateLabel4;
  [dateLabel4 setContentHuggingPriority:0 forAxis:v10];

  dateLabel5 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  LODWORD(v12) = 1148846080;
  v75 = dateLabel5;
  [dateLabel5 setContentHuggingPriority:1 forAxis:v12];

  v76 = +[NSMutableArray array];
  verticalStatusIconView = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  widthAnchor = [verticalStatusIconView widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:SiriUIPlatterStyle[2]];
  [v76 addObject:v15];

  verticalStatusIconView2 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  heightAnchor = [verticalStatusIconView2 heightAnchor];
  contentView3 = [(MFEmailSnippetSearchResultCellView *)self contentView];
  heightAnchor2 = [contentView3 heightAnchor];
  v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v76 addObject:v20];

  verticalStatusIconView3 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  leadingAnchor = [verticalStatusIconView3 leadingAnchor];
  leadingAnchor2 = [(MFEmailSnippetSearchResultCellView *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:SiriUIPlatterStyle[0]];
  [v76 addObject:v24];

  verticalStatusIconView4 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  topAnchor = [verticalStatusIconView4 topAnchor];
  topAnchor2 = [(MFEmailSnippetSearchResultCellView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v76 addObject:v28];

  addressLabel = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  firstBaselineAnchor = [addressLabel firstBaselineAnchor];
  topAnchor3 = [(MFEmailSnippetSearchResultCellView *)self topAnchor];
  v32 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:sub_8310(28.0)];
  [v76 addObject:v32];

  dateLabel6 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  centerYAnchor = [dateLabel6 centerYAnchor];
  addressLabel2 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  centerYAnchor2 = [addressLabel2 centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v76 addObject:v37];

  addressLabel3 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  leadingAnchor3 = [addressLabel3 leadingAnchor];
  verticalStatusIconView5 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  trailingAnchor = [verticalStatusIconView5 trailingAnchor];
  v42 = SiriUIPlatterStyle[28];
  v43 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v42];
  [v76 addObject:v43];

  addressLabel4 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  trailingAnchor2 = [addressLabel4 trailingAnchor];
  dateLabel7 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  leadingAnchor4 = [dateLabel7 leadingAnchor];
  v48 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:-SiriUIPlatterStyle[29]];
  [v76 addObject:v48];

  trailingAnchor3 = [(MFEmailSnippetSearchResultCellView *)self trailingAnchor];
  dateLabel8 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  trailingAnchor4 = [dateLabel8 trailingAnchor];
  v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:SiriUIPlatterStyle[34]];
  [v76 addObject:v52];

  subjectAndBodyStackView = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  firstBaselineAnchor2 = [subjectAndBodyStackView firstBaselineAnchor];
  addressLabel5 = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  bottomAnchor = [addressLabel5 bottomAnchor];
  v57 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor constant:sub_8310(17.0)];
  [v76 addObject:v57];

  subjectAndBodyStackView2 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  leadingAnchor5 = [subjectAndBodyStackView2 leadingAnchor];
  verticalStatusIconView6 = [(MFEmailSnippetSearchResultCellView *)self verticalStatusIconView];
  trailingAnchor5 = [verticalStatusIconView6 trailingAnchor];
  v62 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:v42];
  [v76 addObject:v62];

  dateLabel9 = [(MFEmailSnippetSearchResultCellView *)self dateLabel];
  trailingAnchor6 = [dateLabel9 trailingAnchor];
  subjectAndBodyStackView3 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  trailingAnchor7 = [subjectAndBodyStackView3 trailingAnchor];
  v67 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:0.5];
  [v76 addObject:v67];

  v68 = sub_8310(20.0);
  subjectAndBodyStackView4 = [(MFEmailSnippetSearchResultCellView *)self subjectAndBodyStackView];
  [subjectAndBodyStackView4 setSpacing:v68];

  [NSLayoutConstraint activateConstraints:v76];
}

- (void)_setUpConstraintsForVerticalStatusIndicators:(id)indicators
{
  indicatorsCopy = indicators;
  v28 = +[NSMutableArray array];
  addressLabel = [(MFEmailSnippetSearchResultCellView *)self addressLabel];
  v36[0] = addressLabel;
  subjectLabel = [(MFEmailSnippetSearchResultCellView *)self subjectLabel];
  v36[1] = subjectLabel;
  selfCopy = self;
  bodyLabel = [(MFEmailSnippetSearchResultCellView *)self bodyLabel];
  v36[2] = bodyLabel;
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
        if (v9 >= [indicatorsCopy count])
        {
          v14 = 0;
        }

        else
        {
          v13 = [indicatorsCopy objectAtIndex:v9];
          v14 = v13;
          ++v9;
          if (v13)
          {
            layer = [v13 layer];
            [layer opacity];
            v17 = v16 > 0.0;

            if (v17)
            {
              [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
              centerXAnchor = [v14 centerXAnchor];
              verticalStatusIconView = [(MFEmailSnippetSearchResultCellView *)selfCopy verticalStatusIconView];
              centerXAnchor2 = [verticalStatusIconView centerXAnchor];
              v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
              [v28 addObject:v21];

              centerYAnchor = [v14 centerYAnchor];
              firstBaselineAnchor = [v12 firstBaselineAnchor];
              font = [v12 font];
              [font capHeight];
              v26 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:v25 * -0.5];
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