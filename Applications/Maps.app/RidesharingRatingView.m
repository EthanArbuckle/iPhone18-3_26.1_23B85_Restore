@interface RidesharingRatingView
- (RidesharingRatingView)initWithCoder:(id)a3;
- (RidesharingRatingView)initWithSelectedStars:(unint64_t)a3 updateBlock:(id)a4;
- (void)_commonInitWithStars:(unint64_t)a3;
- (void)handleStarTouches:(id)a3 withEvent:(id)a4;
- (void)performCallBackWithStarValue;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateTheme;
@end

@implementation RidesharingRatingView

- (void)performCallBackWithStarValue
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    updateBlock[2](updateBlock, self->_stars);
  }
}

- (void)handleStarTouches:(id)a3 withEvent:(id)a4
{
  v23 = a3;
  [(UIStackView *)self->_stackView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v23 allObjects];
  v14 = [v13 lastObject];
  [v14 locationInView:self->_stackView];
  v25.x = v15;
  v25.y = v16;
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v17 = CGRectContainsPoint(v26, v25);

  if (v17)
  {
    v18 = [v23 allObjects];
    v19 = [v18 lastObject];
    [v19 locationInView:self->_stackView];
    v21 = v20;

    [(UIStackView *)self->_stackView bounds];
    self->_stars = (v21 / (v22 * 0.2) + 1.0);
    [(RidesharingRatingView *)self updateTheme];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(RidesharingRatingView *)self updateTheme:a3];

  [(RidesharingRatingView *)self performCallBackWithStarValue];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(RidesharingRatingView *)self handleStarTouches:a3 withEvent:a4];

  [(RidesharingRatingView *)self performCallBackWithStarValue];
}

- (void)updateTheme
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(UIStackView *)self->_stackView arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = ([v8 tag] & 0x8000000000000000) == 0 && objc_msgSend(v8, "tag") < self->_stars;
        v10 = [(RidesharingRatingView *)self theme];
        v11 = [v10 ridesharingRatingStarColorOn:v9];
        [v8 setTintColor:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_commonInitWithStars:(unint64_t)a3
{
  v4 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:0];
  [(UIStackView *)self->_stackView setSpacing:5.0];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  for (i = 0; i != 5; ++i)
  {
    v7 = [UIImage imageNamed:@"ridesharing_rating_star"];
    v8 = [v7 imageWithRenderingMode:2];

    v9 = [[UIImageView alloc] initWithImage:v8];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setTag:i];
    [v9 setContentMode:1];
    [(UIStackView *)self->_stackView addArrangedSubview:v9];
  }

  [(RidesharingRatingView *)self addSubview:self->_stackView];
  v10 = [(UIStackView *)self->_stackView topAnchor];
  v11 = [(RidesharingRatingView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UIStackView *)self->_stackView bottomAnchor];
  v14 = [(RidesharingRatingView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(UIStackView *)self->_stackView centerXAnchor];
  v17 = [(RidesharingRatingView *)self centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v21 = [(UIStackView *)self->_stackView widthAnchor];
  v19 = [(RidesharingRatingView *)self widthAnchor];
  v20 = [v21 constraintLessThanOrEqualToAnchor:v19 multiplier:1.0];
  [v20 setActive:1];
}

- (RidesharingRatingView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RidesharingRatingView;
  v3 = [(RidesharingRatingView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RidesharingRatingView *)v3 _commonInitWithStars:0];
  }

  return v4;
}

- (RidesharingRatingView)initWithSelectedStars:(unint64_t)a3 updateBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RidesharingRatingView;
  v7 = [(RidesharingRatingView *)&v12 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    [(RidesharingRatingView *)v7 _commonInitWithStars:a3];
    v8->_stars = a3;
    v9 = [v6 copy];
    updateBlock = v8->_updateBlock;
    v8->_updateBlock = v9;
  }

  return v8;
}

@end