@interface TransitDirectionsExitPlanView
- (NSIndexSet)indexSetOfSuggestedCars;
- (TransitDirectionsExitPlanView)initWithFrame:(CGRect)frame;
- (id)bottomView;
- (id)topView;
- (unint64_t)_visibleCarIndexForCar:(unint64_t)car;
- (void)_updateCars;
- (void)_updateSuggestedCarTinting;
- (void)setIndexSetOfSuggestedCars:(id)cars;
- (void)setMaximumNumberOfVisibleCars:(unint64_t)cars;
- (void)setNumberOfCars:(unint64_t)cars;
- (void)setText:(id)text;
@end

@implementation TransitDirectionsExitPlanView

- (unint64_t)_visibleCarIndexForCar:(unint64_t)car
{
  v5 = [(NSArray *)self->_cars count];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!car)
  {
    return 0;
  }

  v6 = v5;
  if ([(TransitDirectionsExitPlanView *)self numberOfCars]- 1 == car)
  {
    return v6 - 1;
  }

  else
  {
    return vcvtas_u32_f32((v6 * car) / [(TransitDirectionsExitPlanView *)self numberOfCars]);
  }
}

- (void)_updateSuggestedCarTinting
{
  if ([(NSArray *)self->_cars count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_cars;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = +[UIColor systemGray3Color];
          [v8 setTintColor:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    indexSetOfSuggestedCars = [(TransitDirectionsExitPlanView *)self indexSetOfSuggestedCars];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100D1C4F8;
    v11[3] = &unk_101656938;
    v11[4] = self;
    [indexSetOfSuggestedCars enumerateIndexesUsingBlock:v11];
  }
}

- (void)_updateCars
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  numberOfCars = [(TransitDirectionsExitPlanView *)self numberOfCars];
  if (numberOfCars >= [(TransitDirectionsExitPlanView *)self maximumNumberOfVisibleCars])
  {
    maximumNumberOfVisibleCars = [(TransitDirectionsExitPlanView *)self maximumNumberOfVisibleCars];
  }

  else
  {
    maximumNumberOfVisibleCars = [(TransitDirectionsExitPlanView *)self numberOfCars];
  }

  v7 = maximumNumberOfVisibleCars;
  if (!maximumNumberOfVisibleCars)
  {
    goto LABEL_19;
  }

  v8 = [UIImage imageNamed:@"transit-exitplan-front"];
  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [UIImage imageNamed:@"transit-exitplan-rear"];
    if (v7 >= 3)
    {
      v10 = [UIImage imageNamed:@"transit-exitplan-middle"];
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  do
  {
    height = [[AutolayoutImageView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    LODWORD(v16) = 1148846080;
    [(AutolayoutImageView *)height setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(AutolayoutImageView *)height setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(AutolayoutImageView *)height setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [(AutolayoutImageView *)height setContentCompressionResistancePriority:1 forAxis:v19];
    if (--v7)
    {
      v20 = v10;
    }

    else
    {
      v20 = v9;
    }

    if (v11)
    {
      v21 = v20;
    }

    else
    {
      v21 = v8;
    }

    [(AutolayoutImageView *)height setImage:v21];
    [v3 addObject:height];
    [v4 addObject:height];

    --v11;
  }

  while (v7);

LABEL_19:
  v28 = v3;
  traitCollection = [(TransitDirectionsExitPlanView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  allObjects = v28;
  if (!layoutDirection)
  {
    reverseObjectEnumerator = [v28 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
  }

  v26 = [v4 copy];
  cars = self->_cars;
  self->_cars = v26;

  [(UIStackView *)self->_carStackView _maps_setArrangedSubviews:allObjects];
  [(TransitDirectionsExitPlanView *)self _updateSuggestedCarTinting];
}

- (NSIndexSet)indexSetOfSuggestedCars
{
  indexSetOfSuggestedCars = self->_indexSetOfSuggestedCars;
  if (!indexSetOfSuggestedCars)
  {
    v4 = +[NSIndexSet indexSet];
    v5 = self->_indexSetOfSuggestedCars;
    self->_indexSetOfSuggestedCars = v4;

    indexSetOfSuggestedCars = self->_indexSetOfSuggestedCars;
  }

  return indexSetOfSuggestedCars;
}

- (void)setIndexSetOfSuggestedCars:(id)cars
{
  carsCopy = cars;
  indexSetOfSuggestedCars = self->_indexSetOfSuggestedCars;
  v10 = carsCopy;
  v6 = indexSetOfSuggestedCars;
  if (v10 | v6)
  {
    v7 = [v10 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v10 copy];
      v9 = self->_indexSetOfSuggestedCars;
      self->_indexSetOfSuggestedCars = v8;

      [(TransitDirectionsExitPlanView *)self _updateSuggestedCarTinting];
    }
  }
}

- (void)setMaximumNumberOfVisibleCars:(unint64_t)cars
{
  if (self->_maximumNumberOfVisibleCars != cars)
  {
    self->_maximumNumberOfVisibleCars = cars;
    [(TransitDirectionsExitPlanView *)self _updateCars];
  }
}

- (void)setNumberOfCars:(unint64_t)cars
{
  if (self->_numberOfCars != cars)
  {
    self->_numberOfCars = cars;
    [(TransitDirectionsExitPlanView *)self _updateCars];
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  text = self->_text;
  v7 = textCopy;
  textCopy2 = text;
  if (v7 | textCopy2)
  {
    v9 = textCopy2;
    v10 = [v7 isEqual:textCopy2];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_text, text);
      if (v7)
      {
        v11 = [[MKServerFormattedString alloc] initWithComposedString:v7];
        v15 = NSFontAttributeName;
        font = [(MKMultiPartLabel *)self->_label font];
        v16 = font;
        v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = [v11 multiPartAttributedStringWithAttributes:v13];
        [(MKMultiPartLabel *)self->_label setMultiPartString:v14];
      }

      else
      {
        [(MKMultiPartLabel *)self->_label setMultiPartString:0];
      }
    }
  }
}

- (id)bottomView
{
  label = self->_label;
  if (!label)
  {
    v4 = [[MKMultiPartLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_label;
    self->_label = v4;

    [(MKMultiPartLabel *)self->_label setAccessibilityIdentifier:@"Label"];
    [(MKMultiPartLabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIColor secondaryLabelColor];
    [(MKMultiPartLabel *)self->_label setTextColor:v6];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(MKMultiPartLabel *)self->_label setFont:v7];

    [(MKMultiPartLabel *)self->_label setTextInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(MKMultiPartLabel *)self->_label setLineBreakMode:0];
    [(MKMultiPartLabel *)self->_label setNumberOfLines:2];
    [(MKMultiPartLabel *)self->_label setUserInteractionEnabled:0];
    LODWORD(v8) = 1148846080;
    [(MKMultiPartLabel *)self->_label setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148829696;
    [(MKMultiPartLabel *)self->_label setContentCompressionResistancePriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(MKMultiPartLabel *)self->_label setContentHuggingPriority:1 forAxis:v10];
    LODWORD(v11) = 1112014848;
    [(MKMultiPartLabel *)self->_label setContentHuggingPriority:0 forAxis:v11];
    [(TransitDirectionsExitPlanView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (id)topView
{
  carStackView = self->_carStackView;
  if (!carStackView)
  {
    v4 = [[UIStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
    v5 = self->_carStackView;
    self->_carStackView = v4;

    [(UIStackView *)self->_carStackView setAccessibilityIdentifier:@"CarStackView"];
    [(UIStackView *)self->_carStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_carStackView setAxis:0];
    [(UIStackView *)self->_carStackView setDistribution:0];
    [(UIStackView *)self->_carStackView setAlignment:0];
    [(UIStackView *)self->_carStackView setSpacing:2.0];
    LODWORD(v6) = 1148846080;
    [(UIStackView *)self->_carStackView setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UIStackView *)self->_carStackView setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(UIStackView *)self->_carStackView setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UIStackView *)self->_carStackView setContentCompressionResistancePriority:1 forAxis:v9];
    heightAnchor = [(UIStackView *)self->_carStackView heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:20.0];
    [v11 setActive:1];

    [(TransitDirectionsExitPlanView *)self addSubview:self->_carStackView];
    carStackView = self->_carStackView;
  }

  return carStackView;
}

- (TransitDirectionsExitPlanView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsExitPlanView;
  v3 = [(TransitDirectionsBoardingInfoStackView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(TransitDirectionsExitPlanView *)v3 setAccessibilityIdentifier:v5];

    v3->_maximumNumberOfVisibleCars = 3;
  }

  return v3;
}

@end