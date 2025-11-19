@interface HearingAidConnectionTableCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (HearingAidConnectionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityHint;
- (id)detailString;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateTextColor;
@end

@implementation HearingAidConnectionTableCell

- (HearingAidConnectionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = HearingAidConnectionTableCell;
  v4 = [(HearingAidConnectionTableCell *)&v12 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"updateAvailability" name:HUNearbyDevicesDidChangeNotification object:0];

    v6 = [(HearingAidConnectionTableCell *)v4 titleLabel];
    [v6 setNumberOfLines:0];

    v7 = [(HearingAidConnectionTableCell *)v4 valueLabel];
    [v7 setNumberOfLines:0];

    v8 = objc_alloc_init(UILabel);
    availabilityLabel = v4->_availabilityLabel;
    v4->_availabilityLabel = v8;

    [(UILabel *)v4->_availabilityLabel setNumberOfLines:0];
    v10 = [(HearingAidConnectionTableCell *)v4 contentView];
    [v10 addSubview:v4->_availabilityLabel];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v4 removeFromSuperview];

  v5.receiver = self;
  v5.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v5 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v27.receiver = self;
  v27.super_class = HearingAidConnectionTableCell;
  v4 = a3;
  [(HearingAidConnectionTableCell *)&v27 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  [(HearingAidConnectionTableCell *)self setDevice:v5];
  v6 = HCLogHearingAids();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HearingAidConnectionTableCell *)self device];
    v8 = [v7 name];
    v9 = [(HearingAidConnectionTableCell *)self device];
    v10 = [v9 isPaired];
    v11 = [(HearingAidConnectionTableCell *)self device];
    v12 = [v11 isConnected];
    *buf = 138412802;
    v29 = v8;
    v30 = 1024;
    v31 = v10;
    v32 = 1024;
    v33 = v12;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Connection Cell refresh name: %@ paired: %d, connected %d", buf, 0x18u);
  }

  v13 = [(HearingAidConnectionTableCell *)self titleLabel];
  v14 = [(AXRemoteHearingAidDevice *)self->_device name];
  [v13 setText:v14];

  v15 = [(HearingAidConnectionTableCell *)self titleLabel];
  v16 = [v15 text];
  if (v16)
  {
    v17 = v16;
    v18 = [(HearingAidConnectionTableCell *)self titleLabel];
    v19 = [v18 text];
    v20 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v21 = [v19 stringByTrimmingCharactersInSet:v20];
    v22 = [v21 isEqualToString:&stru_49868];

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v23 = [(HearingAidConnectionTableCell *)self titleLabel];
  v24 = hearingSettingsLocString(@"HearingAidFallbackName", @"HearingAidSettings");
  [v23 setText:v24];

LABEL_8:
  v25 = [(HearingAidConnectionTableCell *)self valueLabel];
  v26 = [(HearingAidConnectionTableCell *)self detailString];
  [v25 setText:v26];

  [(HearingAidConnectionTableCell *)self setAccessoryType:1];
  [(HearingAidConnectionTableCell *)self updateAvailability];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v4 prepareForReuse];
  v3 = [(HearingAidConnectionTableCell *)self device];

  if (v3)
  {
    [(HearingAidConnectionTableCell *)self setDevice:0];
  }
}

- (id)detailString
{
  if (([(AXRemoteHearingAidDevice *)self->_device leftAvailable]& 1) == 0 && ![(AXRemoteHearingAidDevice *)self->_device rightAvailable])
  {
    v29 = 0;
    goto LABEL_17;
  }

  v3 = [(AXRemoteHearingAidDevice *)self->_device manufacturer];
  v4 = [v3 copy];

  v5 = [(AXRemoteHearingAidDevice *)self->_device model];
  v6 = [v5 copy];

  v7 = hearingLocString();
  v8 = [v4 firstObject];
  v9 = [v6 firstObject];
  v10 = hearingLocString();
  v31 = [NSString stringWithFormat:v7, v8, v9, v10];

  v11 = hearingLocString();
  v12 = v4;
  v13 = [v4 lastObject];
  v14 = [v6 lastObject];
  v15 = hearingLocString();
  v16 = [NSString stringWithFormat:v11, v13, v14, v15];

  if (![(AXRemoteHearingAidDevice *)self->_device leftAvailable]|| ![(AXRemoteHearingAidDevice *)self->_device rightAvailable])
  {
    if (![(AXRemoteHearingAidDevice *)self->_device leftAvailable])
    {
      v26 = v16;
      goto LABEL_11;
    }

    v27 = v31;
    v28 = v31;
LABEL_15:
    v26 = v28;
    goto LABEL_16;
  }

  v17 = [v12 firstObject];
  v18 = [v12 lastObject];
  if (([v17 isEqualToString:v18] & 1) == 0)
  {

    goto LABEL_14;
  }

  v19 = [v6 firstObject];
  v20 = [v6 lastObject];
  v21 = [v19 isEqualToString:v20];

  if (!v21)
  {
LABEL_14:
    v27 = v31;
    v28 = [NSString stringWithFormat:@"%@\n%@", v31, v16];
    goto LABEL_15;
  }

  v22 = hearingLocString();
  v23 = [v12 firstObject];
  v24 = [v6 firstObject];
  v25 = hearingLocString();
  v26 = [NSString stringWithFormat:v22, v23, v24, v25];

LABEL_11:
  v27 = v31;
LABEL_16:
  v29 = v26;

LABEL_17:

  return v29;
}

- (void)updateTextColor
{
  v9 = +[UIColor labelColor];
  if ([(AXRemoteHearingAidDevice *)self->_device isPaired])
  {
    v3 = +[UIColor tableCellBlueTextColor];

    v4 = +[AXHAServer sharedInstance];
    v5 = [v4 hearingAidReachable];

    if (v5)
    {
      v9 = v3;
    }

    else
    {
      v9 = +[UIColor tableCellGrayTextColor];
    }
  }

  v6 = [(HearingAidConnectionTableCell *)self titleLabel];
  [v6 setTextColor:v9];

  v7 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v7 setTextColor:v9];

  v8 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v8 setTextColor:v9];
}

- (void)layoutSubviews
{
  v78.receiver = self;
  v78.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v78 layoutSubviews];
  v3 = [(HearingAidConnectionTableCell *)self titleLabel];
  v4 = [v3 font];
  [v4 pointSize];
  v6 = [UIFont systemFontOfSize:v5 * 0.8];
  v7 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v7 setFont:v6];

  v8 = [(HearingAidConnectionTableCell *)self valueLabel];
  v9 = [v8 font];
  v10 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v10 setFont:v9];

  v11 = [(HearingAidConnectionTableCell *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  v14 = [(HearingAidConnectionTableCell *)self contentView];
  [v14 bounds];
  v16 = v15;
  v73 = v17;

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v19 = v18 * 0.5;
  [(HearingAidConnectionTableCell *)self layoutMargins];
  v21 = v16 - v20 - v19;
  if (IsAccessibilityCategory)
  {
    v22 = v16 - v20 - v19;
  }

  else
  {
    v22 = v21 / 3.0;
  }

  v23 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v23 sizeThatFits:{v22, 1.79769313e308}];
  v25 = v24;
  v76 = v26;

  v77 = v25;
  v27 = v21 - v25;
  v28 = [(HearingAidConnectionTableCell *)self traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = UIContentSizeCategoryIsAccessibilityCategory(v29);

  if (v30)
  {
    v27 = v21;
  }

  v31 = [(HearingAidConnectionTableCell *)self titleLabel];
  [v31 sizeThatFits:{v27, 1.79769313e308}];
  v33 = v32;
  v35 = v34;

  v36 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v36 sizeThatFits:{v27, 1.79769313e308}];
  v38 = v37;
  v40 = v39;

  v72 = v40;
  if (v40 == 0.0)
  {
    v41 = v35;
  }

  else
  {
    v41 = v35 + v40 + 5.0;
  }

  v74 = v38;
  v75 = v33;
  if (v33 >= v38)
  {
    v42 = v33;
  }

  else
  {
    v42 = v38;
  }

  if (v42 < v27 && !IsAccessibilityCategory)
  {
    v43 = v21 - v42;
    if (v43 >= v21 / 2.5)
    {
      v44 = v21 / 2.5;
    }

    else
    {
      v44 = v43;
    }

    v45 = [(HearingAidConnectionTableCell *)self availabilityLabel];
    [v45 sizeThatFits:{v44, 1.79769313e308}];
    v76 = v47;
    v77 = v46;
  }

  v48 = [(HearingAidConnectionTableCell *)self titleLabel];
  [v48 frame];
  v50 = v49;

  v51 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v51 frame];

  v52 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v52 frame];

  if (IsAccessibilityCategory)
  {
    v53 = v50;
  }

  else
  {
    v53 = v16 - v77 - v19;
  }

  v54 = v50;
  if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
  {
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v54 = v16 - v55 - v33;
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v50 = v16 - v56 - v74;
    if (IsAccessibilityCategory)
    {
      [(HearingAidConnectionTableCell *)self layoutMargins];
      v53 = v16 - v57 - v77;
    }

    else
    {
      v53 = v19;
    }
  }

  v71 = v53;
  v58 = 5.0;
  if (IsAccessibilityCategory)
  {
    v59 = v76;
    v60 = v72;
    v61 = (v73 - (v41 + v76 + 5.0)) * 0.5;
    v62 = floorf(v61);
    v63 = v35 + v62 + 5.0;
    v64 = v72 + v63 + 5.0;
  }

  else
  {
    v60 = v72;
    v65 = (v73 - v41) * 0.5;
    v62 = floorf(v65);
    v63 = v35 + v62 + 5.0;
    v59 = v76;
    v58 = (v73 - v76) * 0.5;
    *&v58 = v58;
    *&v58 = floorf(*&v58);
    v64 = *&v58;
  }

  v66 = [(HearingAidConnectionTableCell *)self titleLabel];
  [v66 setFrame:{v54, v62, v75, v35}];

  v67 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v67 setFrame:{v50, v63, v74, v60}];

  v68 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v68 setFrame:{v71, v64, v77, v59}];

  if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
  {
    v69 = 0;
  }

  else
  {
    v69 = 2;
  }

  if (IsAccessibilityCategory)
  {
    if ([(HearingAidConnectionTableCell *)self _shouldReverseLayoutDirection])
    {
      v69 = 2;
    }

    else
    {
      v69 = 0;
    }
  }

  v70 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v70 setTextAlignment:v69];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v59.receiver = self;
  v59.super_class = HearingAidConnectionTableCell;
  [(HearingAidConnectionTableCell *)&v59 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(HearingAidConnectionTableCell *)self contentView];
  v58 = v5;
  [v8 sizeThatFits:{v5, v7}];
  v10 = v9;

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v12 = v11 * -0.5;
  v13 = [(HearingAidConnectionTableCell *)self traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v14);

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v17 = v10 - v16 + v12;
  if (IsAccessibilityCategory)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 / 3.0;
  }

  v19 = [(HearingAidConnectionTableCell *)self titleLabel];
  v20 = [v19 font];
  [v20 pointSize];
  v22 = [UIFont systemFontOfSize:v21 * 0.8];
  v23 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v23 setFont:v22];

  v24 = [(HearingAidConnectionTableCell *)self valueLabel];
  v25 = [v24 font];
  v26 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v26 setFont:v25];

  v27 = [(HearingAidConnectionTableCell *)self availabilityLabel];
  [v27 sizeThatFits:{v18, 1.79769313e308}];
  v29 = v28;
  v31 = v17 - v30;
  if (IsAccessibilityCategory)
  {
    v32 = v17;
  }

  else
  {
    v32 = v31;
  }

  v33 = [(HearingAidConnectionTableCell *)self titleLabel];
  [v33 sizeThatFits:{v32, 1.79769313e308}];
  v35 = v34;
  v37 = v36;

  v38 = [(HearingAidConnectionTableCell *)self valueLabel];
  [v38 sizeThatFits:{v32, 1.79769313e308}];
  v40 = v39;
  v42 = v41;

  if (v42 != 0.0)
  {
    v37 = v37 + v42 + 5.0;
  }

  if (v35 >= v40)
  {
    v43 = v35;
  }

  else
  {
    v43 = v40;
  }

  if (!IsAccessibilityCategory && v43 < v32)
  {
    v44 = v17 - v43;
    if (v44 >= v17 / 2.5)
    {
      v45 = v17 / 2.5;
    }

    else
    {
      v45 = v44;
    }

    v46 = [(HearingAidConnectionTableCell *)self availabilityLabel];
    [v46 sizeThatFits:{v45, 1.79769313e308}];
    v29 = v47;
  }

  if (v37 >= v29)
  {
    v48 = v37;
  }

  else
  {
    v48 = v29;
  }

  [(HearingAidConnectionTableCell *)self layoutMargins];
  v50 = v49;
  [(HearingAidConnectionTableCell *)self layoutMargins];
  if (IsAccessibilityCategory)
  {
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v53 = v37 + 5.0 + v29 + v52;
    [(HearingAidConnectionTableCell *)self layoutMargins];
    v55 = v53 + v54;
  }

  else
  {
    v55 = v51 + v50 + v48;
  }

  if (v7 >= v55)
  {
    v56 = v7;
  }

  else
  {
    v56 = v55;
  }

  v57 = v58;
  result.height = v56;
  result.width = v57;
  return result;
}

- (id)accessibilityHint
{
  v2 = [(HearingAidConnectionTableCell *)self device];
  if ([v2 isConnected])
  {
    v3 = @"ConnectionCellHintConnected";
  }

  else
  {
    v3 = @"ConnectionCellHint";
  }

  v4 = hearingSettingsLocString(v3, @"HearingAidSettings");

  return v4;
}

@end