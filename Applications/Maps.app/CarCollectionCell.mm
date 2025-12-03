@interface CarCollectionCell
- (CarCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setupWithCollectionHandler:(id)handler;
@end

@implementation CarCollectionCell

- (void)setupWithCollectionHandler:(id)handler
{
  handlerCopy = handler;
  title = [handlerCopy title];
  textLabel = [(CarCollectionCell *)self textLabel];
  [textLabel setText:title];

  subtitle = [handlerCopy subtitle];

  detailTextLabel = [(CarCollectionCell *)self detailTextLabel];
  [detailTextLabel setText:subtitle];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v10.receiver = self;
  v10.super_class = CarCollectionCell;
  [(CarCollectionCell *)&v10 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
  {
    +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v6 = ;
  textLabel = [(CarCollectionCell *)self textLabel];
  [textLabel setTextColor:v6];

  if (highlightedCopy)
  {
    +[UIColor _carSystemFocusPrimaryColor];
  }

  else
  {
    +[UIColor _carSystemPrimaryColor];
  }
  v8 = ;
  detailTextLabel = [(CarCollectionCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v8];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CarCollectionCell;
  [(CarCollectionCell *)&v5 prepareForReuse];
  textLabel = [(CarCollectionCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(CarCollectionCell *)self detailTextLabel];
  [detailTextLabel setText:0];
}

- (CarCollectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = CarCollectionCell;
  v4 = [(CarCollectionCell *)&v17 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CarCollectionCell *)v4 setAccessibilityIdentifier:@"CarCollectionCell"];
    textLabel = [(CarCollectionCell *)v5 textLabel];
    [textLabel setNumberOfLines:2];

    v7 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
    textLabel2 = [(CarCollectionCell *)v5 textLabel];
    [textLabel2 setFont:v7];

    textLabel3 = [(CarCollectionCell *)v5 textLabel];
    [textLabel3 setAccessibilityIdentifier:@"TitleLabel"];

    detailTextLabel = [(CarCollectionCell *)v5 detailTextLabel];
    [detailTextLabel setNumberOfLines:2];

    v11 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
    detailTextLabel2 = [(CarCollectionCell *)v5 detailTextLabel];
    [detailTextLabel2 setFont:v11];

    v13 = +[UIColor _carSystemPrimaryColor];
    detailTextLabel3 = [(CarCollectionCell *)v5 detailTextLabel];
    [detailTextLabel3 setTextColor:v13];

    detailTextLabel4 = [(CarCollectionCell *)v5 detailTextLabel];
    [detailTextLabel4 setAccessibilityIdentifier:@"DetailLabel"];
  }

  return v5;
}

@end