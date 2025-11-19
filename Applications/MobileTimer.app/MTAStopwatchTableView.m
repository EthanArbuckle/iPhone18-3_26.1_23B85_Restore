@interface MTAStopwatchTableView
- (MTAStopwatchTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation MTAStopwatchTableView

- (MTAStopwatchTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = MTAStopwatchTableView;
  v4 = [(MTAStopwatchTableView *)&v10 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = objc_opt_new();
    [(MTAStopwatchTableView *)v4 setTopKeylineView:v5];

    v6 = +[UIColor mtui_cellSeparatorColor];
    v7 = [(MTAStopwatchTableView *)v4 topKeylineView];
    [v7 setBackgroundColor:v6];

    v8 = [(MTAStopwatchTableView *)v4 topKeylineView];
    [(MTAStopwatchTableView *)v4 addSubview:v8];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAStopwatchTableView;
  [(MTAStopwatchTableView *)&v13 layoutSubviews];
  v3 = [(MTAStopwatchTableView *)self topKeylineView];
  [(MTAStopwatchTableView *)self bringSubviewToFront:v3];

  LODWORD(v3) = [(MTAStopwatchTableView *)self mtui_isRTL];
  [(MTAStopwatchTableView *)self separatorInset];
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(MTAStopwatchTableView *)self contentOffset];
  v8 = fmax(v7, 0.0);
  [(MTAStopwatchTableView *)self bounds];
  v9 = CGRectGetWidth(v14) + v6 * -2.0;
  MTUIMainScreenScale();
  v11 = 1.0 / v10;
  v12 = [(MTAStopwatchTableView *)self topKeylineView];
  [v12 setFrame:{v6, v8, v9, v11}];
}

@end