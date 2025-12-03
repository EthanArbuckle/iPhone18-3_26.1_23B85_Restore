@interface MTAPresetCollectionViewCell
- (MTAPresetCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPresetItem:(id)item;
- (void)setupLayoutConstraints;
- (void)setupPresetView;
@end

@implementation MTAPresetCollectionViewCell

- (MTAPresetCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTAPresetCollectionViewCell;
  v3 = [(MTAPresetCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTAPresetCollectionViewCell *)v3 setupPresetView];
    [(MTAPresetCollectionViewCell *)v4 setupLayoutConstraints];
  }

  return v4;
}

- (void)setPresetItem:(id)item
{
  itemCopy = item;
  presetView = [(MTAPresetCollectionViewCell *)self presetView];
  [presetView setPresetItem:itemCopy];
}

- (void)setupPresetView
{
  v3 = [MTATimerPresetView alloc];
  [(MTAPresetCollectionViewCell *)self bounds];
  v4 = [(MTATimerPresetView *)v3 initWithFrame:?];
  [(MTAPresetCollectionViewCell *)self setPresetView:v4];

  presetView = [(MTAPresetCollectionViewCell *)self presetView];
  [presetView setTranslatesAutoresizingMaskIntoConstraints:0];

  presetView2 = [(MTAPresetCollectionViewCell *)self presetView];
  [presetView2 setUserInteractionEnabled:0];

  contentView = [(MTAPresetCollectionViewCell *)self contentView];
  presetView3 = [(MTAPresetCollectionViewCell *)self presetView];
  [contentView addSubview:presetView3];
}

- (void)setupLayoutConstraints
{
  v23 = objc_opt_new();
  presetView = [(MTAPresetCollectionViewCell *)self presetView];
  leadingAnchor = [presetView leadingAnchor];
  contentView = [(MTAPresetCollectionViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v23 addObject:v7];

  presetView2 = [(MTAPresetCollectionViewCell *)self presetView];
  trailingAnchor = [presetView2 trailingAnchor];
  contentView2 = [(MTAPresetCollectionViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 addObject:v12];

  presetView3 = [(MTAPresetCollectionViewCell *)self presetView];
  topAnchor = [presetView3 topAnchor];
  contentView3 = [(MTAPresetCollectionViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v23 addObject:v17];

  presetView4 = [(MTAPresetCollectionViewCell *)self presetView];
  bottomAnchor = [presetView4 bottomAnchor];
  contentView4 = [(MTAPresetCollectionViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = MTAPresetCollectionViewCell;
  [(MTAPresetCollectionViewCell *)&v6 setHighlighted:?];
  presetView = [(MTAPresetCollectionViewCell *)self presetView];
  [presetView setHighlighted:highlightedCopy];
}

@end