@interface PLBatteryUIDisplayTableCell
- (PLBatteryUIDisplayTableCellDelegate)delegate;
- (id)urlEncodedString:(id)string;
- (void)layoutSubviews;
- (void)refresh:(id)refresh;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)ttrPressed;
@end

@implementation PLBatteryUIDisplayTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v67.receiver = self;
  v67.super_class = PLBatteryUIDisplayTableCell;
  [(PLBatteryUIDisplayTableCell *)&v67 refreshCellContentsWithSpecifier:specifierCopy];
  detailTextLabel2 = [specifierCopy objectForKeyedSubscript:@"cellSubtitleText"];
  v6 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  intValue = [v6 intValue];

  if (intValue)
  {
    v8 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
    intValue2 = [v8 intValue];

    if (intValue2 != 1)
    {
      goto LABEL_8;
    }

    v10 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundBackgroundRuntimeValueKey"];
  }

  else
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"cellSubtitleText"];

    v11 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUITypeKey"];
    intValue3 = [v11 intValue];

    if (intValue3 == 2)
    {
      v13 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
      intValue4 = [v13 intValue];

      if (intValue4 == 5)
      {

        detailTextLabel2 = @"Not accounted toward apps";
LABEL_9:
        v71[0] = &off_173538;
        v70[0] = NSBaselineOffsetAttributeName;
        v70[1] = NSFontAttributeName;
        v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
        v71[1] = v15;
        v70[2] = NSForegroundColorAttributeName;
        v16 = +[UIColor systemGrayColor];
        v71[2] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];

        v18 = [[NSAttributedString alloc] initWithString:detailTextLabel2 attributes:v17];
        detailTextLabel = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
        [detailTextLabel setAttributedText:v18];

        goto LABEL_11;
      }
    }
  }

  detailTextLabel2 = v10;
LABEL_8:
  if (detailTextLabel2)
  {
    goto LABEL_9;
  }

  detailTextLabel2 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [(__CFString *)detailTextLabel2 setAttributedText:0];
LABEL_11:

  detailTextLabel3 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [detailTextLabel3 setLineBreakMode:0];

  detailTextLabel4 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [detailTextLabel4 setNumberOfLines:0];

  name = [specifierCopy name];

  if (name)
  {
    v23 = [NSAttributedString alloc];
    name2 = [specifierCopy name];
    v68[0] = NSBaselineOffsetAttributeName;
    v68[1] = NSFontAttributeName;
    v69[0] = &off_173538;
    v25 = UIFontTextStyleBody;
    v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v69[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
    v28 = [v23 initWithString:name2 attributes:v27];
    textLabel = [(PLBatteryUIDisplayTableCell *)self textLabel];
    [textLabel setAttributedText:v28];
  }

  else
  {
    textLabel2 = [(PLBatteryUIDisplayTableCell *)self textLabel];
    [textLabel2 setAttributedText:0];

    v25 = UIFontTextStyleBody;
  }

  textLabel3 = [(PLBatteryUIDisplayTableCell *)self textLabel];
  [textLabel3 setLineBreakMode:0];

  textLabel4 = [(PLBatteryUIDisplayTableCell *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  v33 = objc_opt_new();
  v34 = [UIFont preferredFontForTextStyle:v25];
  [v33 setFont:v34];

  [v33 setTextAlignment:2];
  v35 = +[UIColor systemGrayColor];
  [v33 setTextColor:v35];

  v36 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  intValue5 = [v36 intValue];

  if (!intValue5)
  {
    v47 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyDisplayPercentKey"];
    v48 = [NSString stringWithFormat:@"%@%@", @" ", v47];
    [v33 setText:v48];
    goto LABEL_20;
  }

  v38 = [specifierCopy objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  intValue6 = [v38 intValue];

  if (intValue6 == 1)
  {
    v40 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
    [v40 doubleValue];
    v66 = v41;

    v42 = [specifierCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
    [v42 doubleValue];
    v65 = v43;

    v44.f64[0] = v66;
    if (v66 >= 60.0 || v65 >= 60.0)
    {
      v44.f64[1] = v65;
      v45 = vdupq_n_s64(0x404E000000000000uLL);
      v46 = vaddvq_f64(vmulq_f64(vrndmq_f64(vdivq_f64(v44, v45)), v45));
      v47 = objc_alloc_init(NSDateComponentsFormatter);
      [v47 setUnitsStyle:{+[PLBatteryUIUtilities localizedDateComponentsUnitsStyle](PLBatteryUIUtilities, "localizedDateComponentsUnitsStyle")}];
      [v47 setIncludesApproximationPhrase:0];
      [v47 setIncludesTimeRemainingPhrase:0];
      [v47 setAllowedUnits:96];
      v48 = [v47 stringFromTimeInterval:v46];
      v49 = [NSString stringWithFormat:@"%@%@", @" ", v48];
      [v33 setText:v49];

LABEL_20:
    }
  }

  [v33 sizeToFit];
  name3 = [specifierCopy name];
  v51 = [specifierCopy objectForKeyedSubscript:@"cellSubtitleText"];
  v52 = [NSString stringWithFormat:@"%@, %@", name3, v51];
  [(PLBatteryUIDisplayTableCell *)self setAccessibilityLabel:v52];

  [(PLBatteryUIDisplayTableCell *)self setAccessoryView:v33];
  self->_interactiveButton = 0;
  self->_ttrButton = 0;
  v53 = [specifierCopy propertyForKey:@"PSSubtitleTileValueTableCellDelegateWrapperKey"];

  if (v53)
  {
    self->_interactiveButton = 1;
    v54 = [specifierCopy propertyForKey:@"PSSubtitleTileValueTableCellDelegateWrapperKey"];
    buiViewController = [v54 buiViewController];
    [(PLBatteryUIDisplayTableCell *)self setDelegate:buiViewController];
  }

  v56 = [specifierCopy propertyForKey:@"PSSubtitleTileValueTableCellTTRKey"];

  if (v56)
  {
    self->_interactiveButton = 1;
    self->_ttrButton = 1;
    v57 = [specifierCopy propertyForKey:@"PLBatteryUIDisplayTableCellTTRDomain"];
    IssueDomain = self->_IssueDomain;
    self->_IssueDomain = v57;

    v59 = [specifierCopy propertyForKey:@"PLBatteryUIDisplayTableCellTTRProcess"];
    IssueProcess = self->_IssueProcess;
    self->_IssueProcess = v59;

    v61 = [specifierCopy propertyForKey:@"PLBatteryUIDisplayTableCellTTRType"];
    IssueType = self->_IssueType;
    self->_IssueType = v61;

    v63 = [specifierCopy propertyForKey:@"PLBatteryUIDisplayTableCellTTRAttachments"];
    IssueAttachments = self->_IssueAttachments;
    self->_IssueAttachments = v63;
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PLBatteryUIDisplayTableCell;
  [(PLBatteryUIDisplayTableCell *)&v19 layoutSubviews];
  imageView = [(PLBatteryUIDisplayTableCell *)self imageView];
  [imageView setContentMode:0];

  imageView2 = [(PLBatteryUIDisplayTableCell *)self imageView];
  [imageView2 frame];
  v6 = v5;
  v8 = v7;

  imageView3 = [(PLBatteryUIDisplayTableCell *)self imageView];
  [imageView3 setFrame:{v6, v8, 29.0, 29.0}];

  if (self->_interactiveButton)
  {
    ttrButton = self->_ttrButton;
    v11 = [UIView alloc];
    [(PLBatteryUIDisplayTableCell *)self frame];
    v13 = v12;
    [(PLBatteryUIDisplayTableCell *)self frame];
    v14 = [v11 initWithFrame:{0.0, 0.0, v13}];
    v15 = +[UIColor clearColor];
    [v14 setBackgroundColor:v15];

    [v14 setUserInteractionEnabled:1];
    v16 = [UITapGestureRecognizer alloc];
    v17 = &selRef_ttrPressed;
    if (!ttrButton)
    {
      v17 = &selRef_refresh_;
    }

    v18 = [v16 initWithTarget:self action:*v17];
    [v18 setNumberOfTapsRequired:1];
    [v14 addGestureRecognizer:v18];
    [(PLBatteryUIDisplayTableCell *)self addSubview:v14];
  }
}

- (void)refresh:(id)refresh
{
  delegate = [(PLBatteryUIDisplayTableCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(PLBatteryUIDisplayTableCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(PLBatteryUIDisplayTableCell *)self delegate];
      [delegate3 didPushButton:self];
    }
  }
}

- (id)urlEncodedString:(id)string
{
  stringCopy = string;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = stringCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = sub_4A3C(v10);
        v13 = sub_4A3C(v11);
        v14 = [NSString stringWithFormat:@"%@=%@", v12, v13, v17];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 componentsJoinedByString:@"&"];

  return v15;
}

- (void)ttrPressed
{
  v3 = [(NSString *)self->_IssueDomain isEqualToString:@"NET"];
  IssueProcess = self->_IssueProcess;
  v5 = [NSString stringWithFormat:@"[%@ Issue Detected] %@: %@", self->_IssueDomain, IssueProcess, self->_IssueType];
  if ([(NSString *)self->_IssueAttachments length]< 4)
  {
    [NSString stringWithFormat:@"%@\n", v5, v16];
  }

  else
  {
    [NSString stringWithFormat:@"%@\nLogs attached from %@", v5, self->_IssueAttachments];
  }
  v6 = ;
  v7 = v6;
  v17[0] = @"ComponentName";
  v17[1] = @"ComponentVersion";
  v8 = @"Purple Battery UI";
  if (v3)
  {
    v8 = @"SymptomFramework";
  }

  v18[0] = v8;
  v18[1] = @"1.0";
  v17[2] = @"ComponentID";
  v17[3] = @"Reproducibility";
  v9 = @"606186";
  if (!v3)
  {
    v9 = @"485067";
  }

  v18[2] = v9;
  v18[3] = @"I Didn't Try";
  v17[4] = @"Classification";
  v17[5] = @"Keywords";
  v18[4] = @"Serious Bug";
  v18[5] = @"RadarFromBatteryUsageUI";
  v17[6] = @"Title";
  v17[7] = @"Description";
  v18[6] = v5;
  v18[7] = v6;
  v17[8] = @"Attachments";
  IssueAttachments = self->_IssueAttachments;
  v10 = IssueAttachments;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:9];
  v12 = [(PLBatteryUIDisplayTableCell *)self urlEncodedString:v11];

  v13 = [@"tap-to-radar://new?" stringByAppendingString:v12];

  v14 = [NSURL URLWithString:v13];
  v15 = +[LSApplicationWorkspace defaultWorkspace];
  [v15 openURL:v14];
}

- (PLBatteryUIDisplayTableCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end