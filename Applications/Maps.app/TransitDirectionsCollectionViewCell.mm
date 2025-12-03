@interface TransitDirectionsCollectionViewCell
+ (Class)stepViewClass;
- (TransitDirectionsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNavigationState:(int64_t)state;
@end

@implementation TransitDirectionsCollectionViewCell

- (void)setNavigationState:(int64_t)state
{
  [(TransitDirectionsStepView *)self->_stepView setNavigationState:state];

  [(TransitDirectionsCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = TransitDirectionsCollectionViewCell;
  [(TransitDirectionsCollectionViewCell *)&v5 setHighlighted:?];
  [(TransitDirectionsStepView *)self->_stepView setHighlighted:highlightedCopy];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsCollectionViewCell;
  [(TransitDirectionsCollectionViewCell *)&v3 prepareForReuse];
  [(TransitDirectionsStepView *)self->_stepView prepareForReuse];
}

- (TransitDirectionsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = TransitDirectionsCollectionViewCell;
  v3 = [(TransitDirectionsCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitDirectionsCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    contentView = [(TransitDirectionsCollectionViewCell *)v3 contentView];
    [contentView setBackgroundColor:v5];

    [(TransitDirectionsCollectionViewCell *)v3 setClipsToBounds:1];
    contentView2 = [(TransitDirectionsCollectionViewCell *)v3 contentView];
    stepView = v3->_stepView;
    v3->_stepView = contentView2;

    [(TransitDirectionsStepView *)v3->_stepView setCell:v3];
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

+ (Class)stepViewClass
{
  [self doesNotRecognizeSelector:a2];

  return objc_opt_class();
}

@end