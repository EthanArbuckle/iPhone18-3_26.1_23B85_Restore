@interface EKSubscribedCalendarDescriptionHeader
- (BOOL)updateLayoutForWidth:(double)a3;
- (EKSubscribedCalendarDescriptionHeader)initWithParentWidth:(double)a3 showHolidayCalendarDescription:(BOOL)a4;
@end

@implementation EKSubscribedCalendarDescriptionHeader

- (EKSubscribedCalendarDescriptionHeader)initWithParentWidth:(double)a3 showHolidayCalendarDescription:(BOOL)a4
{
  v4 = a4;
  v18.receiver = self;
  v18.super_class = EKSubscribedCalendarDescriptionHeader;
  v6 = [(EKSubscribedCalendarDescriptionHeader *)&v18 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v8 = EventKitUIBundle();
    v9 = v8;
    if (v4)
    {
      v10 = @"Holiday calendar explanation";
      v11 = @"Holiday calendars are read-only feeds of data from external sources. You can subscribe to this feed to get events as they are updated by the data provider.";
    }

    else
    {
      v10 = @"Subscribed calendar explanation";
      v11 = @"Subscription calendars are read-only feeds of data from external sources. You can subscribe to this feed to get events as they are updated by the data provider.";
    }

    v12 = [v8 localizedStringForKey:v10 value:v11 table:0];
    [(UILabel *)v7 setText:v12];

    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v7 setFont:v13];

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v7 setBackgroundColor:v14];

    [(UILabel *)v7 setNumberOfLines:0];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v7 setTextColor:v15];

    [(EKSubscribedCalendarDescriptionHeader *)v6 addSubview:v7];
    label = v6->_label;
    v6->_label = v7;

    [(EKSubscribedCalendarDescriptionHeader *)v6 updateLayoutForWidth:a3];
  }

  return v6;
}

- (BOOL)updateLayoutForWidth:(double)a3
{
  if (self->_lastParentWidth == a3)
  {
    return 0;
  }

  [(EKSubscribedCalendarDescriptionHeader *)self bounds];
  Height = CGRectGetHeight(v9);
  [(UILabel *)self->_label setFrame:0.0, 0.0, a3 + -80.0, 1.79769313e308];
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label frame];
  v8 = v7;
  [(UILabel *)self->_label setFrame:40.0, 12.0];
  [(EKSubscribedCalendarDescriptionHeader *)self frame];
  [(EKSubscribedCalendarDescriptionHeader *)self setFrame:?];
  self->_lastParentWidth = a3;
  return Height != v8 + 24.0;
}

@end