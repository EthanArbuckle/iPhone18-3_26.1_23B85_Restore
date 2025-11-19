@interface PLBatteryUIDisplayTableCell
- (PLBatteryUIDisplayTableCellDelegate)delegate;
- (id)urlEncodedString:(id)a3;
- (void)layoutSubviews;
- (void)refresh:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)ttrPressed;
@end

@implementation PLBatteryUIDisplayTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v67.receiver = self;
  v67.super_class = PLBatteryUIDisplayTableCell;
  [(PLBatteryUIDisplayTableCell *)&v67 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"cellSubtitleText"];
  v6 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
    v9 = [v8 intValue];

    if (v9 != 1)
    {
      goto LABEL_8;
    }

    v10 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundBackgroundRuntimeValueKey"];
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"cellSubtitleText"];

    v11 = [v4 objectForKeyedSubscript:@"PLBatteryUITypeKey"];
    v12 = [v11 intValue];

    if (v12 == 2)
    {
      v13 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
      v14 = [v13 intValue];

      if (v14 == 5)
      {

        v5 = @"Not accounted toward apps";
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

        v18 = [[NSAttributedString alloc] initWithString:v5 attributes:v17];
        v19 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
        [v19 setAttributedText:v18];

        goto LABEL_11;
      }
    }
  }

  v5 = v10;
LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  v5 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [(__CFString *)v5 setAttributedText:0];
LABEL_11:

  v20 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [v20 setLineBreakMode:0];

  v21 = [(PLBatteryUIDisplayTableCell *)self detailTextLabel];
  [v21 setNumberOfLines:0];

  v22 = [v4 name];

  if (v22)
  {
    v23 = [NSAttributedString alloc];
    v24 = [v4 name];
    v68[0] = NSBaselineOffsetAttributeName;
    v68[1] = NSFontAttributeName;
    v69[0] = &off_173538;
    v25 = UIFontTextStyleBody;
    v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v69[1] = v26;
    v27 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
    v28 = [v23 initWithString:v24 attributes:v27];
    v29 = [(PLBatteryUIDisplayTableCell *)self textLabel];
    [v29 setAttributedText:v28];
  }

  else
  {
    v30 = [(PLBatteryUIDisplayTableCell *)self textLabel];
    [v30 setAttributedText:0];

    v25 = UIFontTextStyleBody;
  }

  v31 = [(PLBatteryUIDisplayTableCell *)self textLabel];
  [v31 setLineBreakMode:0];

  v32 = [(PLBatteryUIDisplayTableCell *)self textLabel];
  [v32 setNumberOfLines:0];

  v33 = objc_opt_new();
  v34 = [UIFont preferredFontForTextStyle:v25];
  [v33 setFont:v34];

  [v33 setTextAlignment:2];
  v35 = +[UIColor systemGrayColor];
  [v33 setTextColor:v35];

  v36 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  v37 = [v36 intValue];

  if (!v37)
  {
    v47 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppEnergyDisplayPercentKey"];
    v48 = [NSString stringWithFormat:@"%@%@", @" ", v47];
    [v33 setText:v48];
    goto LABEL_20;
  }

  v38 = [v4 objectForKeyedSubscript:@"PLIconDisplayTypeKey"];
  v39 = [v38 intValue];

  if (v39 == 1)
  {
    v40 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
    [v40 doubleValue];
    v66 = v41;

    v42 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
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
  v50 = [v4 name];
  v51 = [v4 objectForKeyedSubscript:@"cellSubtitleText"];
  v52 = [NSString stringWithFormat:@"%@, %@", v50, v51];
  [(PLBatteryUIDisplayTableCell *)self setAccessibilityLabel:v52];

  [(PLBatteryUIDisplayTableCell *)self setAccessoryView:v33];
  self->_interactiveButton = 0;
  self->_ttrButton = 0;
  v53 = [v4 propertyForKey:@"PSSubtitleTileValueTableCellDelegateWrapperKey"];

  if (v53)
  {
    self->_interactiveButton = 1;
    v54 = [v4 propertyForKey:@"PSSubtitleTileValueTableCellDelegateWrapperKey"];
    v55 = [v54 buiViewController];
    [(PLBatteryUIDisplayTableCell *)self setDelegate:v55];
  }

  v56 = [v4 propertyForKey:@"PSSubtitleTileValueTableCellTTRKey"];

  if (v56)
  {
    self->_interactiveButton = 1;
    self->_ttrButton = 1;
    v57 = [v4 propertyForKey:@"PLBatteryUIDisplayTableCellTTRDomain"];
    IssueDomain = self->_IssueDomain;
    self->_IssueDomain = v57;

    v59 = [v4 propertyForKey:@"PLBatteryUIDisplayTableCellTTRProcess"];
    IssueProcess = self->_IssueProcess;
    self->_IssueProcess = v59;

    v61 = [v4 propertyForKey:@"PLBatteryUIDisplayTableCellTTRType"];
    IssueType = self->_IssueType;
    self->_IssueType = v61;

    v63 = [v4 propertyForKey:@"PLBatteryUIDisplayTableCellTTRAttachments"];
    IssueAttachments = self->_IssueAttachments;
    self->_IssueAttachments = v63;
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PLBatteryUIDisplayTableCell;
  [(PLBatteryUIDisplayTableCell *)&v19 layoutSubviews];
  v3 = [(PLBatteryUIDisplayTableCell *)self imageView];
  [v3 setContentMode:0];

  v4 = [(PLBatteryUIDisplayTableCell *)self imageView];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = [(PLBatteryUIDisplayTableCell *)self imageView];
  [v9 setFrame:{v6, v8, 29.0, 29.0}];

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

- (void)refresh:(id)a3
{
  v4 = [(PLBatteryUIDisplayTableCell *)self delegate];

  if (v4)
  {
    v5 = [(PLBatteryUIDisplayTableCell *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PLBatteryUIDisplayTableCell *)self delegate];
      [v7 didPushButton:self];
    }
  }
}

- (id)urlEncodedString:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
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