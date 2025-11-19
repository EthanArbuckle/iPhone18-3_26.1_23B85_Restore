@interface AMUIDateTimeView
+ (id)defaultDateFont;
+ (id)defaultTimeFont;
- (AMUIDateTimeView)initWithFrame:(CGRect)a3;
- (void)_updateLabels;
- (void)setDate:(id)a3;
- (void)setDateFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTimeFont:(id)a3;
- (void)updateConstraints;
@end

@implementation AMUIDateTimeView

- (AMUIDateTimeView)initWithFrame:(CGRect)a3
{
  v55[2] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = AMUIDateTimeView;
  v3 = [(AMUIDateTimeView *)&v53 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() defaultTimeFont];
    timeFont = v3->_timeFont;
    v3->_timeFont = v4;

    v6 = [objc_opt_class() defaultDateFont];
    dateFont = v3->_dateFont;
    v3->_dateFont = v6;

    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v13;

    [(UILabel *)v3->_dateLabel setFont:v3->_dateFont];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v9, v10, v11, v12}];
    timeLabel = v3->_timeLabel;
    v3->_timeLabel = v15;

    [(UILabel *)v3->_timeLabel setFont:v3->_timeFont];
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UILabel *)v3->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:v3->_timeLabel];
    v18 = objc_alloc(MEMORY[0x277D75A68]);
    v55[0] = v3->_dateLabel;
    v55[1] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];

    [v20 setAxis:1];
    [v20 setAlignment:1];
    [v20 setSpacing:-8.0];
    [v20 setDistribution:3];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AMUIDateTimeView *)v3 addSubview:v20];
    v21 = [MEMORY[0x277CBEAA8] now];
    date = v3->_date;
    v3->_date = v21;

    [(AMUIDateTimeView *)v3 _updateLabels];
    [(UILabel *)v3->_dateLabel setHidden:1];
    v23 = [(UILabel *)v3->_timeLabel centerYAnchor];
    v24 = [v17 centerYAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];
    timeLabelYOffsetConstraint = v3->_timeLabelYOffsetConstraint;
    v3->_timeLabelYOffsetConstraint = v25;

    [(AMUIDateTimeView *)v3 setNeedsUpdateConstraints];
    v43 = MEMORY[0x277CCAAD0];
    v52 = [(AMUIDateTimeView *)v3 leadingAnchor];
    v51 = [v20 leadingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v54[0] = v50;
    v49 = [(AMUIDateTimeView *)v3 trailingAnchor];
    v48 = [v20 trailingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v54[1] = v47;
    v46 = [(AMUIDateTimeView *)v3 topAnchor];
    v45 = [v20 topAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v54[2] = v44;
    v42 = [(AMUIDateTimeView *)v3 bottomAnchor];
    v40 = [v20 bottomAnchor];
    v39 = [v42 constraintEqualToAnchor:v40];
    v54[3] = v39;
    v38 = [(UILabel *)v3->_timeLabel centerXAnchor];
    v37 = [v17 centerXAnchor];
    v27 = [v38 constraintEqualToAnchor:v37];
    v54[4] = v27;
    v54[5] = v3->_timeLabelYOffsetConstraint;
    v41 = v17;
    v28 = [v17 widthAnchor];
    v29 = [(UILabel *)v3->_timeLabel widthAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v54[6] = v30;
    v31 = [v17 heightAnchor];
    v32 = [(UILabel *)v3->_timeLabel heightAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v54[7] = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:8];
    [v43 activateConstraints:v34];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)defaultDateFont
{
  if (defaultDateFont_onceToken != -1)
  {
    +[AMUIDateTimeView defaultDateFont];
  }

  v3 = defaultDateFont___defaultDateFont;

  return v3;
}

void __35__AMUIDateTimeView_defaultDateFont__block_invoke()
{
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  v0 = [v5 fontDescriptor];
  v1 = [v0 fontDescriptorWithSymbolicTraits:2];
  v2 = MEMORY[0x277D74300];
  [v5 pointSize];
  v3 = [v2 fontWithDescriptor:v1 size:?];
  v4 = defaultDateFont___defaultDateFont;
  defaultDateFont___defaultDateFont = v3;
}

+ (id)defaultTimeFont
{
  if (defaultTimeFont_onceToken != -1)
  {
    +[AMUIDateTimeView defaultTimeFont];
  }

  v3 = defaultTimeFont___defaultTimeFont;

  return v3;
}

uint64_t __35__AMUIDateTimeView_defaultTimeFont__block_invoke()
{
  v0 = CTFontCreateWithNameAndOptions(@".SFSoftNumeric-Semibold", 93.0, 0, 0x20000uLL);
  v1 = defaultTimeFont___defaultTimeFont;
  defaultTimeFont___defaultTimeFont = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)setTimeFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultTimeFont];
  }

  v7 = v4;
  if (([(UIFont *)self->_timeFont isEqual:v4]& 1) == 0)
  {
    v5 = [v7 copy];
    timeFont = self->_timeFont;
    self->_timeFont = v5;

    [(UILabel *)self->_timeLabel setFont:self->_timeFont];
    [(AMUIDateTimeView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDateFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultDateFont];
  }

  v7 = v4;
  if (([(UIFont *)self->_dateFont isEqual:v4]& 1) == 0)
  {
    v5 = [v7 copy];
    dateFont = self->_dateFont;
    self->_dateFont = v5;

    [(UILabel *)self->_dateLabel setFont:self->_dateFont];
  }
}

- (void)setDate:(id)a3
{
  v6 = a3;
  if (([(NSDate *)self->_date isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    date = self->_date;
    self->_date = v4;

    [(AMUIDateTimeView *)self _updateLabels];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  textColor = self->_textColor;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->_textColor;
    self->_textColor = v6;

    [(AMUIDateTimeView *)self _updateLabels];
  }
}

- (void)updateConstraints
{
  v6.receiver = self;
  v6.super_class = AMUIDateTimeView;
  [(AMUIDateTimeView *)&v6 updateConstraints];
  [(UIFont *)self->_timeFont lineHeight];
  v4 = v3;
  [(UIFont *)self->_timeFont ascender];
  [(NSLayoutConstraint *)self->_timeLabelYOffsetConstraint setConstant:-(v4 - v5)];
}

- (void)_updateLabels
{
  v3 = MEMORY[0x277CF0BF0];
  v4 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v14 = [v3 formatterForDateAsTimeNoAMPMWithLocale:v4];

  [v14 setTimeZone:0];
  v5 = [v14 stringFromDate:self->_date];
  if (self->_date)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_28518E9B8;
  }

  [(UILabel *)self->_timeLabel setText:v6];
  [(UILabel *)self->_timeLabel setTextColor:self->_textColor];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setTimeZone:0];
  v8 = MEMORY[0x277CCA968];
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 dateFormatFromTemplate:@"EEEd" options:0 locale:v9];
  [v7 setDateFormat:v10];

  v11 = [v7 stringFromDate:self->_date];
  v12 = [v11 uppercaseString];

  if (self->_date)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_28518E9B8;
  }

  [(UILabel *)self->_dateLabel setText:v13];
  [(UILabel *)self->_dateLabel setTextColor:self->_textColor];
}

@end