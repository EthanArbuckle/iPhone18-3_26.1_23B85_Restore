@interface TransitDirectionsCollectionViewCell
+ (Class)stepViewClass;
- (TransitDirectionsCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setNavigationState:(int64_t)a3;
@end

@implementation TransitDirectionsCollectionViewCell

- (void)setNavigationState:(int64_t)a3
{
  [(TransitDirectionsStepView *)self->_stepView setNavigationState:a3];

  [(TransitDirectionsCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TransitDirectionsCollectionViewCell;
  [(TransitDirectionsCollectionViewCell *)&v5 setHighlighted:?];
  [(TransitDirectionsStepView *)self->_stepView setHighlighted:v3];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsCollectionViewCell;
  [(TransitDirectionsCollectionViewCell *)&v3 prepareForReuse];
  [(TransitDirectionsStepView *)self->_stepView prepareForReuse];
}

- (TransitDirectionsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = TransitDirectionsCollectionViewCell;
  v3 = [(TransitDirectionsCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitDirectionsCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = +[UIColor clearColor];
    v6 = [(TransitDirectionsCollectionViewCell *)v3 contentView];
    [v6 setBackgroundColor:v5];

    [(TransitDirectionsCollectionViewCell *)v3 setClipsToBounds:1];
    v7 = [(TransitDirectionsCollectionViewCell *)v3 contentView];
    stepView = v3->_stepView;
    v3->_stepView = v7;

    [(TransitDirectionsStepView *)v3->_stepView setCell:v3];
    [RoutingAppearanceManager configureBackgroundViewForStepCell:v3];
  }

  return v3;
}

+ (Class)stepViewClass
{
  [a1 doesNotRecognizeSelector:a2];

  return objc_opt_class();
}

@end