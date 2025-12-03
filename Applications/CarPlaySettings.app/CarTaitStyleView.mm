@interface CarTaitStyleView
- (CGSize)contentSize;
- (CarTaitStyleView)initWithFrame:(CGRect)frame;
- (void)_refreshStyleText:(unint64_t)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CarTaitStyleView

- (CarTaitStyleView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = CarTaitStyleView;
  v3 = [(CarTaitStyleView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_contentSize = CGSizeZero;
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    traitStyleLabel = v4->_traitStyleLabel;
    v4->_traitStyleLabel = v5;

    [(UILabel *)v4->_traitStyleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_traitStyleLabel setTextAlignment:1];
    [(UILabel *)v4->_traitStyleLabel setText:@"Unset"];
    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2];
    v34 = UIFontWeightTrait;
    v8 = [NSNumber numberWithDouble:UIFontWeightRegular];
    v35 = v8;
    v29 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];

    v32 = UIFontDescriptorTraitsAttribute;
    v33 = v29;
    v9 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v28 = [v7 fontDescriptorByAddingAttributes:v9];

    v10 = [UIFont fontWithDescriptor:v28 size:0.0];
    [(UILabel *)v4->_traitStyleLabel setFont:v10];

    [(UILabel *)v4->_traitStyleLabel setNumberOfLines:0];
    v11 = +[UIColor tableBackgroundColor];
    [(UILabel *)v4->_traitStyleLabel setBackgroundColor:v11];

    [(CarTaitStyleView *)v4 addSubview:v4->_traitStyleLabel];
    topAnchor = [(UILabel *)v4->_traitStyleLabel topAnchor];
    topAnchor2 = [(CarTaitStyleView *)v4 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v31[0] = v25;
    leftAnchor = [(UILabel *)v4->_traitStyleLabel leftAnchor];
    leftAnchor2 = [(CarTaitStyleView *)v4 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
    v31[1] = v22;
    rightAnchor = [(UILabel *)v4->_traitStyleLabel rightAnchor];
    rightAnchor2 = [(CarTaitStyleView *)v4 rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    v31[2] = v14;
    bottomAnchor = [(UILabel *)v4->_traitStyleLabel bottomAnchor];
    bottomAnchor2 = [(CarTaitStyleView *)v4 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v31[3] = v17;
    widthAnchor = [(UILabel *)v4->_traitStyleLabel widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:100.0];
    v31[4] = v19;
    v20 = [NSArray arrayWithObjects:v31 count:5];
    [NSLayoutConstraint activateConstraints:v20];

    [(CarTaitStyleView *)v4 _refreshStyleText:0];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  traitCollection = [(CarTaitStyleView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == userInterfaceStyle2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [(CarTaitStyleView *)self _refreshStyleText:v7];
}

- (void)_refreshStyleText:(unint64_t)text
{
  traitCollection = [(CarTaitStyleView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1000DAFC0[userInterfaceStyle];
  }

  if (text > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1000DAFD8[text];
  }

  v9 = [NSString stringWithFormat:@"%@\n%@", v7, v8];
  traitStyleLabel = [(CarTaitStyleView *)self traitStyleLabel];
  [traitStyleLabel setText:v9];

  [(CarTaitStyleView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(CarTaitStyleView *)self setContentSize:?];

  [(CarTaitStyleView *)self invalidateIntrinsicContentSize];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end