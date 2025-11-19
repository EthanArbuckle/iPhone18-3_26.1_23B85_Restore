@interface COSSoftwareUpdateTableView
- (double)preferredHeightForWidth:(double)a3;
- (id)upToDateManagedText;
- (id)upToDateText;
- (void)displayRevLockBootProgressIndicatorWithElapsedDuration:(double)a3 totalDuration:(double)a4;
- (void)layoutSubviews;
- (void)progressTimerFired:(id)a3;
- (void)setState:(int)a3;
@end

@implementation COSSoftwareUpdateTableView

- (void)displayRevLockBootProgressIndicatorWithElapsedDuration:(double)a3 totalDuration:(double)a4
{
  if (!self->_isDisplayingRevLockBootProgressIndicator)
  {
    [(COSSoftwareUpdateTableView *)self setState:2];
    self->_isDisplayingRevLockBootProgressIndicator = 1;
    self->_revLockBootProgressIndicatorElapsedDuration = a3;
    self->_revLockBootProgressIndicatorTotalDuration = a4;
    v7 = objc_alloc_init(UILabel);
    updateCompletingLabel = self->_updateCompletingLabel;
    self->_updateCompletingLabel = v7;

    v9 = self->_updateCompletingLabel;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"COMPLETING_UPDATE" value:&stru_10026E598 table:@"Software Update"];
    [(UILabel *)v9 setText:v11];

    [(UILabel *)self->_updateCompletingLabel setTextAlignment:0];
    v12 = self->_updateCompletingLabel;
    v13 = [UIFont systemFontOfSize:16.5];
    [(UILabel *)v12 setFont:v13];

    v14 = self->_updateCompletingLabel;
    v15 = +[UIColor clearColor];
    [(UILabel *)v14 setBackgroundColor:v15];

    v16 = self->_updateCompletingLabel;
    v17 = BPSDetailTextColor();
    [(UILabel *)v16 setTextColor:v17];

    [(UILabel *)self->_updateCompletingLabel setNumberOfLines:0];
    [(UILabel *)self->_updateCompletingLabel setLineBreakMode:0];
    v18 = [[UIProgressView alloc] initWithProgressViewStyle:1];
    progressBar = self->_progressBar;
    self->_progressBar = v18;

    [(UIProgressView *)self->_progressBar setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = self->_progressBar;
    v21 = +[UIColor lightGrayColor];
    [(UIProgressView *)v20 setBackgroundColor:v21];

    [(UIProgressView *)self->_progressBar setClipsToBounds:1];
    v22 = self->_progressBar;
    CGAffineTransformMakeScale(&v29, 1.0, 0.75);
    [(UIProgressView *)v22 setTransform:&v29];
    v23 = [(UIProgressView *)self->_progressBar layer];
    [(UIProgressView *)self->_progressBar bounds];
    [v23 setCornerRadius:v24 * 0.5];

    v25 = [(UIProgressView *)self->_progressBar layer];
    [v25 setMasksToBounds:1];

    v26 = self->_revLockBootProgressIndicatorElapsedDuration / self->_revLockBootProgressIndicatorTotalDuration;
    *&v26 = v26;
    if (*&v26 > 1.0)
    {
      *&v26 = 1.0;
    }

    [(UIProgressView *)self->_progressBar setProgress:v26];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000C36AC;
    v28[3] = &unk_1002682F0;
    v28[4] = self;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000C3728;
    v27[3] = &unk_100269800;
    v27[4] = self;
    [UIView animateWithDuration:v28 animations:v27 completion:0.300000012];
    [(COSSoftwareUpdateTableView *)self setNeedsLayout];
  }
}

- (id)upToDateText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UP_TO_DATE" value:&stru_10026E598 table:@"Software Update"];

  return v3;
}

- (id)upToDateManagedText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UP_TO_DATE_MANAGED" value:&stru_10026E598 table:@"Software Update"];

  return v3;
}

- (void)setState:(int)a3
{
  if (!self->_isDisplayingRevLockBootProgressIndicator)
  {
    v3.receiver = self;
    v3.super_class = COSSoftwareUpdateTableView;
    [(COSSoftwareUpdateTableView *)&v3 setState:*&a3];
  }
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = COSSoftwareUpdateTableView;
  [(COSSoftwareUpdateTableView *)&v30 layoutSubviews];
  if (self->_isDisplayingRevLockBootProgressIndicator)
  {
    v31 = &off_100281CC0;
    v32 = &off_100281F30;
    v3 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    BPSScreenValueGetRelevantZoomValue();
    v5 = v4;

    PSRoundToPixel();
    v7 = v6;
    [(COSSoftwareUpdateTableView *)self bounds:0x4030000000000000];
    v9 = v8;
    v11 = v10;
    v12 = [(UILabel *)self->_updateCompletingLabel text];
    v13 = [(UILabel *)self->_updateCompletingLabel font];
    v14 = v11 + v5 * -2.0;
    [v12 _legacy_sizeWithFont:v13 constrainedToSize:{v14, 1.79769313e308}];
    v16 = v15;
    v18 = v17;

    v19 = v16;
    v20 = ceilf(v19);
    v21 = v18;
    v22 = ceilf(v21);
    v23 = (v11 - v20) * 0.5;
    v24 = floorf(v23);
    v25 = [(UILabel *)self->_updateCompletingLabel font];
    [v25 ascender];
    *&v26 = v7 - v26;
    v27 = floorf(*&v26);

    [(UILabel *)self->_updateCompletingLabel setFrame:v24, v27, v20, v22];
    [(UIProgressView *)self->_progressBar frame];
    v29 = v28;
    v33.origin.x = v24;
    v33.origin.y = v27;
    v33.size.width = v20;
    v33.size.height = v22;
    [(UIProgressView *)self->_progressBar setFrame:v5 + v9, CGRectGetMaxY(v33) + 24.0, v14, v29];
  }
}

- (double)preferredHeightForWidth:(double)a3
{
  [(COSSoftwareUpdateTableView *)self layoutIfNeeded];
  [(COSSoftwareUpdateTableView *)self sizeThatFits:a3, 1.79769313e308];
  return v5;
}

- (void)progressTimerFired:(id)a3
{
  v4 = self->_revLockBootProgressIndicatorElapsedDuration + 1.0;
  self->_revLockBootProgressIndicatorElapsedDuration = v4;
  v5 = v4 / self->_revLockBootProgressIndicatorTotalDuration;
  *&v5 = v5;
  progressBar = self->_progressBar;
  if (*&v5 >= 1.0)
  {
    LODWORD(v5) = 1.0;
    [(UIProgressView *)progressBar setProgress:a3, v5];
    [(NSTimer *)self->_progressTimer invalidate];
    progressTimer = self->_progressTimer;
    self->_progressTimer = 0;
  }

  else
  {

    [(UIProgressView *)progressBar setProgress:a3];
  }
}

@end