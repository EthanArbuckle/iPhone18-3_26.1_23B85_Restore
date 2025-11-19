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

    v6 = [(BKSearchLoadingTableViewCell *)self contentView];
    [v6 addSubview:self->_activityIndicator];

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
  v3 = [(BKSearchLoadingTableViewCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(BKSearchLoadingTableViewCell *)self contentView];
  [v8 bounds];
  Width = CGRectGetWidth(v48);

  v10 = [(BKSearchLoadingTableViewCell *)self textLabel];
  [v10 setFrame:{0.0, v5, Width, v7}];

  v11 = [(BKSearchLoadingTableViewCell *)self detailTextLabel];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v16 = [(BKSearchLoadingTableViewCell *)self contentView];
  [v16 bounds];
  v17 = CGRectGetWidth(v49);

  v18 = [(BKSearchLoadingTableViewCell *)self detailTextLabel];
  [v18 setFrame:{0.0, v13, v17, v15}];

  v19 = [(BKSearchLoadingTableViewCell *)self activityIndicator];
  if ([v19 isAnimating])
  {
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [(BKSearchLoadingTableViewCell *)self textLabel];
    v29 = [(BKSearchLoadingTableViewCell *)self contentView];
    [v29 bounds];
    [v28 sizeThatFits:{v30, v31}];
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
    v43 = [(BKSearchLoadingTableViewCell *)self textLabel];
    [v43 setFrame:{v42, v5, Width, v46}];

    [v19 setFrame:{v40, v35, v25, v27}];
    v44 = [(BKSearchLoadingTableViewCell *)self contentView];
    [v44 bringSubviewToFront:v19];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(BKSearchLoadingTableViewCell *)self contentView];
  [v2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end