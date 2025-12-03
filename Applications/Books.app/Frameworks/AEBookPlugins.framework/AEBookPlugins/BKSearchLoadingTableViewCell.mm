@interface BKSearchLoadingTableViewCell
- (CGSize)intrinsicContentSize;
- (id)activityIndicator;
- (void)layoutSubviews;
@end

@implementation BKSearchLoadingTableViewCell

- (id)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    contentView = [(BKSearchLoadingTableViewCell *)self contentView];
    [contentView addSubview:self->_activityIndicator];

    activityIndicator = self->_activityIndicator;
  }

  v7 = activityIndicator;

  return v7;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = BKSearchLoadingTableViewCell;
  [(BKSearchLoadingTableViewCell *)&v47 layoutSubviews];
  textLabel = [(BKSearchLoadingTableViewCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;

  contentView = [(BKSearchLoadingTableViewCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v48);

  textLabel2 = [(BKSearchLoadingTableViewCell *)self textLabel];
  [textLabel2 setFrame:{0.0, v5, Width, v7}];

  detailTextLabel = [(BKSearchLoadingTableViewCell *)self detailTextLabel];
  [detailTextLabel frame];
  v13 = v12;
  v15 = v14;

  contentView2 = [(BKSearchLoadingTableViewCell *)self contentView];
  [contentView2 bounds];
  v17 = CGRectGetWidth(v49);

  detailTextLabel2 = [(BKSearchLoadingTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{0.0, v13, v17, v15}];

  activityIndicator = [(BKSearchLoadingTableViewCell *)self activityIndicator];
  if ([activityIndicator isAnimating])
  {
    [activityIndicator frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    textLabel3 = [(BKSearchLoadingTableViewCell *)self textLabel];
    contentView3 = [(BKSearchLoadingTableViewCell *)self contentView];
    [contentView3 bounds];
    [textLabel3 sizeThatFits:{v30, v31}];
    v45 = v32;

    v50.origin.x = 0.0;
    v50.origin.y = v5;
    v50.size.width = Width;
    v50.size.height = v7;
    v46 = v7;
    MidY = CGRectGetMidY(v50);
    v51.origin.x = v21;
    v51.origin.y = v23;
    v51.size.width = v25;
    v51.size.height = v27;
    v34 = MidY - CGRectGetHeight(v51) * 0.5;
    v35 = floorf(v34) + 1.0;
    v52.origin.x = 0.0;
    v52.origin.y = v5;
    v52.size.width = Width;
    v52.size.height = v7;
    v36 = CGRectGetMidX(v52) - v45 * 0.5;
    v37 = floorf(v36);
    v53.origin.x = v21;
    v53.origin.y = v35;
    v53.size.width = v25;
    v53.size.height = v27;
    v38 = v37 - CGRectGetWidth(v53) + -5.0;
    v54.origin.x = v38;
    v54.origin.y = v35;
    v54.size.width = v25;
    v54.size.height = v27;
    v39 = (CGRectGetWidth(v54) + 5.0) * 0.5;
    v40 = v38 + floorf(v39);
    v55.origin.x = v40;
    v55.origin.y = v35;
    v55.size.width = v25;
    v55.size.height = v27;
    v41 = (CGRectGetWidth(v55) + 5.0) * 0.5;
    v42 = floorf(v41) + 0.0;
    textLabel4 = [(BKSearchLoadingTableViewCell *)self textLabel];
    [textLabel4 setFrame:{v42, v5, Width, v46}];

    [activityIndicator setFrame:{v40, v35, v25, v27}];
    contentView4 = [(BKSearchLoadingTableViewCell *)self contentView];
    [contentView4 bringSubviewToFront:activityIndicator];
  }
}

- (CGSize)intrinsicContentSize
{
  contentView = [(BKSearchLoadingTableViewCell *)self contentView];
  [contentView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end