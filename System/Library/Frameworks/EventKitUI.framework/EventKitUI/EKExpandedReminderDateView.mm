@interface EKExpandedReminderDateView
+ (id)exampleHeader;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (EKExpandedReminderDateView)initWithFrame:(CGRect)a3;
- (void)setBlurFilterRadius:(double)a3;
- (void)setupWithDate:(id)a3;
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

- (EKExpandedReminderDateView)initWithFrame:(CGRect)a3
{
  v87[9] = *MEMORY[0x1E69E9840];
  v84.receiver = self;
  v84.super_class = EKExpandedReminderDateView;
  v3 = [(EKExpandedReminderDateView *)&v84 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(EKExpandedReminderDateView *)v3 setBackgroundColor:v4];

    v5 = [EKExpandedReminderDayCircleView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(EKExpandedReminderDayCircleView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    [(EKExpandedReminderDateView *)v3 setDateNumberView:v10];

    v11 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [MEMORY[0x1E69DC888] clearColor];
    v13 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [v13 setBackgroundColor:v12];

    v14 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    [(EKExpandedReminderDateView *)v3 addSubview:v14];

    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 62.0, 62.0}];
    [(EKExpandedReminderDateView *)v3 setDateLabel:v15];

    v16 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [v16 setTextAlignment:1];

    v17 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [v17 setNumberOfLines:1];

    v18 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:34.0];
    v19 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [v19 setFont:v18];

    v20 = CalendarAppCircleTextColor();
    v21 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [v21 setTextColor:v20];

    v22 = [(EKExpandedReminderDateView *)v3 dateNumberView];
    v23 = [(EKExpandedReminderDateView *)v3 dateLabel];
    [v22 addSubview:v23];

    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setWeekdayLabel:v24];

    v25 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8]];
    v79 = [v25 fontDescriptorWithSymbolicTraits:2];

    v78 = [MEMORY[0x1E69DB878] fontWithDescriptor:v79 size:26.0];
    v26 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [v26 setFont:v78];

    v27 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [v27 setNumberOfLines:1];

    v28 = [MEMORY[0x1E69DC888] labelColor];
    v29 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [v29 setTextColor:v28];

    v30 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(EKExpandedReminderDateView *)v3 weekdayLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:v31];

    v32 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    [(EKExpandedReminderDateView *)v3 setMonthYearLabel:v32];

    v33 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
    v77 = [v33 fontDescriptorWithSymbolicTraits:2];

    v76 = [MEMORY[0x1E69DB878] fontWithDescriptor:v77 size:15.0];
    v34 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [v34 setFont:v76];

    v35 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [v35 setNumberOfLines:1];

    v36 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v37 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [v37 setTextColor:v36];

    v38 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

    v39 = [(EKExpandedReminderDateView *)v3 monthYearLabel];
    [(EKExpandedReminderDateView *)v3 addSubview:v39];

    v40 = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView topAnchor];
    v41 = [(EKExpandedReminderDateView *)v3 topAnchor];
    v80 = [v40 constraintEqualToAnchor:v41];

    LODWORD(v42) = 1132068864;
    [v80 setPriority:v42];
    v61 = MEMORY[0x1E696ACD8];
    v87[0] = v80;
    v75 = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView centerXAnchor];
    v74 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v87[1] = v73;
    v72 = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView widthAnchor];
    v71 = [v72 constraintEqualToConstant:62.0];
    v87[2] = v71;
    v70 = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView heightAnchor];
    v69 = [v70 constraintEqualToConstant:62.0];
    v87[3] = v69;
    v68 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v67 = [(EKExpandedReminderDayCircleView *)v3->_dateNumberView bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:32.0];
    v87[4] = v66;
    v65 = [(UILabel *)v3->_weekdayLabel centerXAnchor];
    v64 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v87[5] = v63;
    v62 = [(UILabel *)v3->_monthYearLabel firstBaselineAnchor];
    v43 = [(UILabel *)v3->_weekdayLabel firstBaselineAnchor];
    v44 = [v62 constraintEqualToAnchor:v43 constant:26.0];
    v87[6] = v44;
    v45 = [(UILabel *)v3->_monthYearLabel centerXAnchor];
    v46 = [(EKExpandedReminderDateView *)v3 centerXAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v87[7] = v47;
    v48 = [(UILabel *)v3->_monthYearLabel bottomAnchor];
    v49 = [(EKExpandedReminderDateView *)v3 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];
    v87[8] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:9];
    [v61 activateConstraints:v51];

    v52 = objc_alloc(MEMORY[0x1E6979378]);
    v53 = [v52 initWithType:*MEMORY[0x1E6979928]];
    [(EKExpandedReminderDateView *)v3 setBlurFilter:v53];

    v54 = [(EKExpandedReminderDateView *)v3 blurFilter];
    [v54 setValue:0 forKey:*MEMORY[0x1E6979BA8]];

    v55 = [(EKExpandedReminderDateView *)v3 blurFilter];
    v86 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
    v57 = [(EKExpandedReminderDateView *)v3 layer];
    [v57 setFilters:v56];

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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKExpandedReminderDateView;
    v5 = [(EKExpandedReminderDateView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setBlurFilterRadius:(double)a3
{
  v5 = [(EKExpandedReminderDateView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)setupWithDate:(id)a3
{
  v21 = a3;
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v21 isSameDayAsDate:v4 inCalendar:v5];

  if (v6)
  {
    v7 = CalendarAppTintColor();
    v8 = [(EKExpandedReminderDateView *)self dateNumberView];
    [v8 setCircleColor:v7];

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    v10 = [(EKExpandedReminderDateView *)self dateLabel];
    [v10 setTextColor:v9];
  }

  v11 = objc_alloc(MEMORY[0x1E69930C8]);
  v12 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  v13 = [v11 initWithDate:v21 timeZone:v12];

  [v13 day];
  v14 = CUIKLocalizedStringForInteger();
  v15 = [(EKExpandedReminderDateView *)self dateLabel];
  [v15 setText:v14];

  v16 = CUIKLongStringForWeekday();
  v17 = [(EKExpandedReminderDateView *)self weekdayLabel];
  [v17 setText:v16];

  v18 = CUIKStringForMonthYear();
  v19 = [v18 localizedUppercaseString];
  v20 = [(EKExpandedReminderDateView *)self monthYearLabel];
  [v20 setText:v19];
}

@end