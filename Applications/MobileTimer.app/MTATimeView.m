@interface MTATimeView
- (MTATimeView)init;
- (void)configureTimeLabel;
- (void)handleLocaleChange;
- (void)layoutSubviews;
- (void)setTime:(double)a3;
- (void)sizeLabelToFit;
@end

@implementation MTATimeView

- (void)configureTimeLabel
{
  v3 = +[UIColor whiteColor];
  [(UILabel *)self->_timeLabel setTextColor:v3];

  v4 = +[UIColor clearColor];
  [(UILabel *)self->_timeLabel setBackgroundColor:v4];

  [(UILabel *)self->_timeLabel setOpaque:0];
  v5 = +[UIColor blackColor];
  [(UILabel *)self->_timeLabel setShadowColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
  [(UILabel *)self->_timeLabel setFont:v6];

  [(UILabel *)self->_timeLabel setTextAlignment:2];
  [(UILabel *)self->_timeLabel setBaselineAdjustment:1];
  timeLabel = self->_timeLabel;

  [(UILabel *)timeLabel setLineBreakMode:2];
}

- (void)sizeLabelToFit
{
  [(MTATimeView *)self setTime:0.0];
  timeLabel = self->_timeLabel;

  [(UILabel *)timeLabel sizeToFit];
}

- (MTATimeView)init
{
  v11.receiver = self;
  v11.super_class = MTATimeView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v5 = [(MTATimeView *)&v11 initWithFrame:CGRectZero.origin.x, y, width, height];
  v6 = v5;
  if (v5)
  {
    [(MTATimeView *)v5 setOpaque:1];
    if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
    {
      v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      timeLabel = v6->_timeLabel;
      v6->_timeLabel = v7;

      [(MTATimeView *)v6 configureTimeLabel];
      [(MTATimeView *)v6 sizeLabelToFit];
      [(MTATimeView *)v6 configureBackground];
      [(MTATimeView *)v6 setTime:0.0];
      [(MTATimeView *)v6 addSubview:v6->_timeLabel];
    }

    v9 = v6;
  }

  return v6;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTATimeView;
  [(MTATimeView *)&v13 layoutSubviews];
  [(UILabel *)self->_timeLabel frame];
  v4 = v3;
  v6 = v5;
  maxTimeLabelWidth = self->_maxTimeLabelWidth;
  timeLabel = self->_timeLabel;
  [(MTATimeView *)self bounds];
  [(UILabel *)timeLabel sizeThatFits:v9, v10];
  if (maxTimeLabelWidth >= v11)
  {
    maxTimeLabelWidth = v11;
  }

  [(MTATimeView *)self bounds];
  [(UILabel *)self->_timeLabel setFrame:round((v12 - maxTimeLabelWidth) * 0.5), v4, maxTimeLabelWidth, v6];
}

- (void)handleLocaleChange
{
  ResetTimeFormatter();

  [(MTATimeView *)self setNeedsLayout];
}

- (void)setTime:(double)a3
{
  self->_timeValue = a3;
  [(MTATimeView *)self showSubseconds];
  v4 = FormatTime();
  [(UILabel *)self->_timeLabel setText:v4];
}

@end