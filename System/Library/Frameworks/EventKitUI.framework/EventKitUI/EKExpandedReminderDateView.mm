@interface EKExpandedReminderDateView
+ (id)exampleHeader;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (EKExpandedReminderDateView)initWithFrame:(CGRect)frame;
- (void)setBlurFilterRadius:(double)radius;
- (void)setupWithDate:(id)date;
@end

@implementation EKExpandedReminderDateView

+ (id)exampleHeader
{
  v2 = [EKExpandedReminderDateView alloc];
  v3 = [(EKExpandedReminderDateView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = [MEMORY[0x1E695DF00] now];
  [(EKExpandedReminderDateView *)v3 setupWithDate:v4];

  return v3;
}

- (EKExpandedReminderDateView)initWithFrame:(CGRect)frame
{
  v87[9] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = EKExpandedReminderDateView;
  v3 = [(EKExpandedReminderDateView *)&v84 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKExpandedReminderDateView *)v3 setBackgroundColor:clearColor];

    v5 = [EKExpandedReminderDayCircleView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(EKExpandedReminderDayCircleView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(EKExpandedReminderDateView *)v3 setDateNumberView:v10];

    dateNumberView = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [dateNumberView setTranslatesAutoresizingMaskIntoConstraints:0];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    dateNumberView2 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [dateNumberView2 setBackgroundColor:clearColor2];

    dateNumberView3 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [(EKExpandedReminderDateView *)v3 addSubview:dateNumberView3];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 62.0, 62.0}];
    [(EKExpandedReminderDateView *)v3 setDateLabel:v15];

    dateLabel = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel setTextAlignment:1];

    dateLabel2 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel2 setNumberOfLines:1];

    v18 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:34.0];
    dateLabel3 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel3 setFont:v18];

    v20 = CalendarAppCircleTextColor();
    dateLabel4 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateLabel4 setTextColor:v20];

    dateNumberView4 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    dateLabel5 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [dateNumberView4 addSubview:dateLabel5];

    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setWeekdayLabel:v24];

    v25 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8]];
    v79 = [v25 fontDescriptorWithSymbolicTraits:2];

    v78 = [MEMORY[0x1E69DB878] fontWithDescriptor:v79 size:26.0];
    weekdayLabel = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel setFont:v78];

    weekdayLabel2 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel2 setNumberOfLines:1];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    weekdayLabel3 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel3 setTextColor:labelColor];

    weekdayLabel4 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [weekdayLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    weekdayLabel5 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:weekdayLabel5];

    v32 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setMonthYearLabel:v32];

    v33 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v77 = [v33 fontDescriptorWithSymbolicTraits:2];

    v76 = [MEMORY[0x1E69DB878] fontWithDescriptor:v77 size:15.0];
    monthYearLabel = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel setFont:v76];

    monthYearLabel2 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel2 setNumberOfLines:1];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    monthYearLabel3 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel3 setTextColor:secondaryLabelColor];

    monthYearLabel4 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [monthYearLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    monthYearLabel5 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:monthYearLabel5];

    topAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView topAnchor];
    topAnchor2 = [(EKExpandedReminderDateView *)v3 topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2];

    LODWORD(v42) = 1132068864;
    [v80 setPriority:v42];
    v61 = MEMORY[0x1E696ACD8];
    v87[0] = v80;
    centerXAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView centerXAnchor];
    centerXAnchor2 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v73 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v87[1] = v73;
    widthAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView widthAnchor];
    v71 = [widthAnchor constraintEqualToConstant:62.0];
    v87[2] = v71;
    heightAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView heightAnchor];
    v69 = [heightAnchor constraintEqualToConstant:62.0];
    v87[3] = v69;
    firstBaselineAnchor = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    bottomAnchor = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView bottomAnchor];
    v66 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:32.0];
    v87[4] = v66;
    centerXAnchor3 = [(UILabel *)v3->_weekdayLabel centerXAnchor];
    centerXAnchor4 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v63 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v87[5] = v63;
    firstBaselineAnchor2 = [(UILabel *)v3->_monthYearLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v44 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:26.0];
    v87[6] = v44;
    centerXAnchor5 = [(UILabel *)v3->_monthYearLabel centerXAnchor];
    centerXAnchor6 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v47 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v87[7] = v47;
    bottomAnchor2 = [(UILabel *)v3->_monthYearLabel bottomAnchor];
    bottomAnchor3 = [(EKExpandedReminderDateView *)v3 bottomAnchor];
    v50 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v87[8] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:9];
    [v61 activateConstraints:v51];

    v52 = objc_alloc(MEMORY[0x1E6979378]);
    v53 = [v52 initWithType:*MEMORY[0x1E6979928]];
    [(EKExpandedReminderDateView *)v3 setBlurFilter:v53];

    blurFilter = [(EKExpandedReminderDateView *)v3 blurFilter];
    [blurFilter setValue:0 forKey:*MEMORY[0x1E6979BA8]];

    blurFilter2 = [(EKExpandedReminderDateView *)v3 blurFilter];
    v86 = blurFilter2;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
    layer = [(EKExpandedReminderDateView *)v3 layer];
    [layer setFilters:v56];

    objc_initWeak(&location, v3);
    v85 = objc_opt_class();
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __44__EKExpandedReminderDateView_initWithFrame___block_invoke;
    v81[3] = &unk_1E843EBE8;
    objc_copyWeak(&v82, &location);
    v59 = [(EKExpandedReminderDateView *)v3 registerForTraitChanges:v58 withHandler:v81];

    objc_destroyWeak(&v82);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __44__EKExpandedReminderDateView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dateNumberView];
  [v1 setNeedsDisplay];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKExpandedReminderDateView;
    v5 = [(EKExpandedReminderDateView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setBlurFilterRadius:(double)radius
{
  layer = [(EKExpandedReminderDateView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setupWithDate:(id)date
{
  dateCopy = date;
  v4 = [MEMORY[0x1E695DF00] now];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [dateCopy isSameDayAsDate:v4 inCalendar:currentCalendar];

  if (v6)
  {
    v7 = CalendarAppTintColor();
    dateNumberView = [(EKExpandedReminderDateView *)self dateNumberView];
    [dateNumberView setCircleColor:v7];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    dateLabel = [(EKExpandedReminderDateView *)self dateLabel];
    [dateLabel setTextColor:whiteColor];
  }

  v11 = objc_alloc(MEMORY[0x1E69930C8]);
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v13 = [v11 initWithDate:dateCopy timeZone:calendarTimeZone];

  [v13 day];
  v14 = CUIKLocalizedStringForInteger();
  dateLabel2 = [(EKExpandedReminderDateView *)self dateLabel];
  [dateLabel2 setText:v14];

  v16 = CUIKLongStringForWeekday();
  weekdayLabel = [(EKExpandedReminderDateView *)self weekdayLabel];
  [weekdayLabel setText:v16];

  v18 = CUIKStringForMonthYear();
  localizedUppercaseString = [v18 localizedUppercaseString];
  monthYearLabel = [(EKExpandedReminderDateView *)self monthYearLabel];
  [monthYearLabel setText:localizedUppercaseString];
}

@end