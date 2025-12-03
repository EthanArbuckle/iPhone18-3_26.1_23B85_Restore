@interface MonthTitleView
- (MonthTitleView)initWithFrame:(CGRect)frame;
- (id)backgroundImage;
- (void)animateVisible:(BOOL)visible duration:(double)duration completion:(id)completion;
- (void)setCalendarDate:(id)date;
@end

@implementation MonthTitleView

- (MonthTitleView)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v20.receiver = self;
  v20.super_class = MonthTitleView;
  v5 = [(MonthTitleView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    backgroundImage = [(MonthTitleView *)v5 backgroundImage];
    [backgroundImage size];
    [(MonthTitleView *)v6 setFrame:x, y, v8, v9];
    v10 = [UIColor colorWithPatternImage:backgroundImage];
    [(MonthTitleView *)v6 setBackgroundColor:v10];

    [(MonthTitleView *)v6 setAlpha:0.0];
    v11 = objc_opt_new();
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v11;

    [(UILabel *)v6->_titleLabel setAutoresizingMask:2];
    v13 = +[UIColor systemBackgroundColor];
    [(UILabel *)v6->_titleLabel setBackgroundColor:v13];

    [(UILabel *)v6->_titleLabel setOpaque:1];
    [(UILabel *)v6->_titleLabel setNumberOfLines:0];
    [(UILabel *)v6->_titleLabel setTextAlignment:1];
    [(MonthTitleView *)v6 addSubview:v6->_titleLabel];
    objc_initWeak(&location, v6);
    v21 = objc_opt_class();
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100036874;
    v17[3] = &unk_10020E9E0;
    objc_copyWeak(&v18, &location);
    v15 = [(MonthTitleView *)v6 registerForTraitChanges:v14 withHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (id)backgroundImage
{
  v2 = [UIImage imageNamed:@"monthScrollingHUDBackground"];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [v2 _flatImageWithColor:v3];

  return v4;
}

- (void)animateVisible:(BOOL)visible duration:(double)duration completion:(id)completion
{
  visibleCopy = visible;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100036B18;
  v12[3] = &unk_10020EAD8;
  v12[4] = self;
  visibleCopy2 = visible;
  completionCopy = completion;
  [UIView animateWithDuration:327684 delay:v12 options:completionCopy animations:duration completion:0.0];
  durationCopy = duration * 0.8;
  if (visibleCopy)
  {
    durationCopy = duration;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100036B34;
  v10[3] = &unk_10020EAD8;
  v10[4] = self;
  v11 = visibleCopy;
  [UIView animateWithDuration:327684 delay:v10 options:completionCopy animations:durationCopy completion:0.0];
}

- (void)setCalendarDate:(id)date
{
  dateCopy = date;
  year = [dateCopy year];
  if (year != -[EKCalendarDate year](self->_calendarDate, "year") || (v6 = [dateCopy month], v6 != -[EKCalendarDate month](self->_calendarDate, "month")))
  {
    if (dateCopy)
    {
      date = [dateCopy date];
      v8 = CUIKStringForMonthYear();
      [(UILabel *)self->_titleLabel setText:v8];
    }

    else
    {
      [(UILabel *)self->_titleLabel setText:&stru_1002133B8];
    }

    [(UILabel *)self->_titleLabel sizeToFit];
    [(UILabel *)self->_titleLabel frame];
    v10 = v9;
    v12 = v11;
    [(MonthTitleView *)self bounds];
    [(UILabel *)self->_titleLabel setFrame:v10, 14.0, CGRectGetWidth(v15), v12];
  }

  calendarDate = self->_calendarDate;
  self->_calendarDate = dateCopy;
}

@end