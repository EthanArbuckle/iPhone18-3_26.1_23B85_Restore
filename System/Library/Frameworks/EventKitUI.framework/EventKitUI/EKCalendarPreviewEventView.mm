@interface EKCalendarPreviewEventView
- (EKCalendarPreviewEventView)initWithEvent:(id)event calendar:(id)calendar;
@end

@implementation EKCalendarPreviewEventView

- (EKCalendarPreviewEventView)initWithEvent:(id)event calendar:(id)calendar
{
  v69[11] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  calendarCopy = calendar;
  v68.receiver = self;
  v68.super_class = EKCalendarPreviewEventView;
  v8 = [(EKCalendarPreviewEventView *)&v68 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v9 setTextColor:labelColor];

    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v9 setFont:v11];

    title = [eventCopy title];
    [v9 setText:title];

    [(EKCalendarPreviewEventView *)v8 addSubview:v9];
    v13 = objc_alloc_init(MEMORY[0x1E696AB88]);
    [v13 setDateStyle:2];
    [v13 setTimeStyle:1];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTextColor:secondaryLabelColor];

    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v14 setFont:v16];

    v66 = v13;
    v67 = eventCopy;
    if ([eventCopy isAllDay])
    {
      startDate = EventKitUIBundle();
      v18 = [startDate localizedStringForKey:@"all-day" value:&stru_1F4EF6790 table:0];
    }

    else
    {
      startDate = [eventCopy startDate];
      endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
      v18 = [v13 stringFromDate:startDate toDate:endDateUnadjustedForLegacyClients];
    }

    v45 = v18;

    [v14 setText:v18];
    [(EKCalendarPreviewEventView *)v8 addSubview:v14];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    uiColor = [calendarCopy uiColor];
    [(UIView *)v20 setBackgroundColor:uiColor];

    layer = [(UIView *)v20 layer];
    [layer setCornerRadius:1.5];

    colorBar = v8->_colorBar;
    v8->_colorBar = v20;
    v24 = v20;

    [(EKCalendarPreviewEventView *)v8 addSubview:v24];
    v51 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v24 topAnchor];
    topAnchor2 = [v9 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v69[0] = v63;
    bottomAnchor = [(UIView *)v24 bottomAnchor];
    bottomAnchor2 = [v14 bottomAnchor];
    v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v69[1] = v60;
    widthAnchor = [(UIView *)v24 widthAnchor];
    v58 = [widthAnchor constraintEqualToConstant:3.0];
    v69[2] = v58;
    leadingAnchor = [(UIView *)v24 leadingAnchor];
    leadingAnchor2 = [(EKCalendarPreviewEventView *)v8 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v69[3] = v55;
    topAnchor3 = [v9 topAnchor];
    topAnchor4 = [(EKCalendarPreviewEventView *)v8 topAnchor];
    v52 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v69[4] = v52;
    trailingAnchor = [v9 trailingAnchor];
    trailingAnchor2 = [(EKCalendarPreviewEventView *)v8 trailingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v69[5] = v47;
    leadingAnchor3 = [v9 leadingAnchor];
    trailingAnchor3 = [(UIView *)v24 trailingAnchor];
    v42 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
    v69[6] = v42;
    topAnchor5 = [v14 topAnchor];
    bottomAnchor3 = [v9 bottomAnchor];
    v39 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v69[7] = v39;
    bottomAnchor4 = [v14 bottomAnchor];
    bottomAnchor5 = [(EKCalendarPreviewEventView *)v8 bottomAnchor];
    v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v69[8] = v36;
    [v14 leadingAnchor];
    v25 = v14;
    v26 = v46 = v14;
    leadingAnchor4 = [v9 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:leadingAnchor4];
    v69[9] = v28;
    trailingAnchor4 = [v25 trailingAnchor];
    [(EKCalendarPreviewEventView *)v8 trailingAnchor];
    v48 = v9;
    v31 = v30 = calendarCopy;
    v32 = [trailingAnchor4 constraintEqualToAnchor:v31];
    v69[10] = v32;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:11];
    v34 = v33 = v8;
    [v51 activateConstraints:v34];

    v8 = v33;
    calendarCopy = v30;

    eventCopy = v67;
  }

  return v8;
}

@end