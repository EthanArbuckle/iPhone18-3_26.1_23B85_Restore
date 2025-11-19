@interface EKCalendarPreviewEventView
- (EKCalendarPreviewEventView)initWithEvent:(id)a3 calendar:(id)a4;
@end

@implementation EKCalendarPreviewEventView

- (EKCalendarPreviewEventView)initWithEvent:(id)a3 calendar:(id)a4
{
  v69[11] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = EKCalendarPreviewEventView;
  v8 = [(EKCalendarPreviewEventView *)&v68 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DC888] labelColor];
    [v9 setTextColor:v10];

    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v9 setFont:v11];

    v12 = [v6 title];
    [v9 setText:v12];

    [(EKCalendarPreviewEventView *)v8 addSubview:v9];
    v13 = objc_alloc_init(MEMORY[0x1E696AB88]);
    [v13 setDateStyle:2];
    [v13 setTimeStyle:1];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTextColor:v15];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v14 setFont:v16];

    v66 = v13;
    v67 = v6;
    if ([v6 isAllDay])
    {
      v17 = EventKitUIBundle();
      v18 = [v17 localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];
    }

    else
    {
      v17 = [v6 startDate];
      v19 = [v6 endDateUnadjustedForLegacyClients];
      v18 = [v13 stringFromDate:v17 toDate:v19];
    }

    v45 = v18;

    [v14 setText:v18];
    [(EKCalendarPreviewEventView *)v8 addSubview:v14];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v7 uiColor];
    [(UIView *)v20 setBackgroundColor:v21];

    v22 = [(UIView *)v20 layer];
    [v22 setCornerRadius:1.5];

    colorBar = v8->_colorBar;
    v8->_colorBar = v20;
    v24 = v20;

    [(EKCalendarPreviewEventView *)v8 addSubview:v24];
    v51 = MEMORY[0x1E696ACD8];
    v65 = [(UIView *)v24 topAnchor];
    v64 = [v9 topAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v69[0] = v63;
    v62 = [(UIView *)v24 bottomAnchor];
    v61 = [v14 bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v69[1] = v60;
    v59 = [(UIView *)v24 widthAnchor];
    v58 = [v59 constraintEqualToConstant:3.0];
    v69[2] = v58;
    v57 = [(UIView *)v24 leadingAnchor];
    v56 = [(EKCalendarPreviewEventView *)v8 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v69[3] = v55;
    v54 = [v9 topAnchor];
    v53 = [(EKCalendarPreviewEventView *)v8 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v69[4] = v52;
    v50 = [v9 trailingAnchor];
    v49 = [(EKCalendarPreviewEventView *)v8 trailingAnchor];
    v47 = [v50 constraintEqualToAnchor:v49];
    v69[5] = v47;
    v44 = [v9 leadingAnchor];
    v43 = [(UIView *)v24 trailingAnchor];
    v42 = [v44 constraintEqualToSystemSpacingAfterAnchor:v43 multiplier:1.0];
    v69[6] = v42;
    v41 = [v14 topAnchor];
    v40 = [v9 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v69[7] = v39;
    v38 = [v14 bottomAnchor];
    v37 = [(EKCalendarPreviewEventView *)v8 bottomAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v69[8] = v36;
    [v14 leadingAnchor];
    v25 = v14;
    v26 = v46 = v14;
    v27 = [v9 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v69[9] = v28;
    v29 = [v25 trailingAnchor];
    [(EKCalendarPreviewEventView *)v8 trailingAnchor];
    v48 = v9;
    v31 = v30 = v7;
    v32 = [v29 constraintEqualToAnchor:v31];
    v69[10] = v32;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:11];
    v34 = v33 = v8;
    [v51 activateConstraints:v34];

    v8 = v33;
    v7 = v30;

    v6 = v67;
  }

  return v8;
}

@end