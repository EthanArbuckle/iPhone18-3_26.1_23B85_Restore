@interface CarTaitStyleView
- (CGSize)contentSize;
- (CarTaitStyleView)initWithFrame:(CGRect)a3;
- (void)_refreshStyleText:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CarTaitStyleView

- (CarTaitStyleView)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = CarTaitStyleView;
  v3 = [(CarTaitStyleView *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v27 = [(UILabel *)v4->_traitStyleLabel topAnchor];
    v26 = [(CarTaitStyleView *)v4 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:5.0];
    v31[0] = v25;
    v24 = [(UILabel *)v4->_traitStyleLabel leftAnchor];
    v23 = [(CarTaitStyleView *)v4 leftAnchor];
    v22 = [v24 constraintEqualToAnchor:v23 constant:5.0];
    v31[1] = v22;
    v12 = [(UILabel *)v4->_traitStyleLabel rightAnchor];
    v13 = [(CarTaitStyleView *)v4 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-5.0];
    v31[2] = v14;
    v15 = [(UILabel *)v4->_traitStyleLabel bottomAnchor];
    v16 = [(CarTaitStyleView *)v4 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-5.0];
    v31[3] = v17;
    v18 = [(UILabel *)v4->_traitStyleLabel widthAnchor];
    v19 = [v18 constraintEqualToConstant:100.0];
    v31[4] = v19;
    v20 = [NSArray arrayWithObjects:v31 count:5];
    [NSLayoutConstraint activateConstraints:v20];

    [(CarTaitStyleView *)v4 _refreshStyleText:0];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = [(CarTaitStyleView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v4 == v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  [(CarTaitStyleView *)self _refreshStyleText:v7];
}

- (void)_refreshStyleText:(unint64_t)a3
{
  v5 = [(CarTaitStyleView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1000DAFC0[v6];
  }

  if (a3 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1000DAFD8[a3];
  }

  v9 = [NSString stringWithFormat:@"%@\n%@", v7, v8];
  v10 = [(CarTaitStyleView *)self traitStyleLabel];
  [v10 setText:v9];

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