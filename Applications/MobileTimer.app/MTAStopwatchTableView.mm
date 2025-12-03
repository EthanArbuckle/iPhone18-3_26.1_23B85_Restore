@interface MTAStopwatchTableView
- (MTAStopwatchTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)layoutSubviews;
@end

@implementation MTAStopwatchTableView

- (MTAStopwatchTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v10.receiver = self;
  v10.super_class = MTAStopwatchTableView;
  v4 = [(MTAStopwatchTableView *)&v10 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = objc_opt_new();
    [(MTAStopwatchTableView *)v4 setTopKeylineView:v5];

    v6 = +[UIColor mtui_cellSeparatorColor];
    topKeylineView = [(MTAStopwatchTableView *)v4 topKeylineView];
    [topKeylineView setBackgroundColor:v6];

    topKeylineView2 = [(MTAStopwatchTableView *)v4 topKeylineView];
    [(MTAStopwatchTableView *)v4 addSubview:topKeylineView2];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = MTAStopwatchTableView;
  [(MTAStopwatchTableView *)&v13 layoutSubviews];
  topKeylineView = [(MTAStopwatchTableView *)self topKeylineView];
  [(MTAStopwatchTableView *)self bringSubviewToFront:topKeylineView];

  LODWORD(topKeylineView) = [(MTAStopwatchTableView *)self mtui_isRTL];
  [(MTAStopwatchTableView *)self separatorInset];
  if (topKeylineView)
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
  topKeylineView2 = [(MTAStopwatchTableView *)self topKeylineView];
  [topKeylineView2 setFrame:{v6, v8, v9, v11}];
}

@end