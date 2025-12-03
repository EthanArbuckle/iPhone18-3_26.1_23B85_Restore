@interface DebugColorView
- (BOOL)isCellFocused;
- (BOOL)isCellSelected;
- (CGSize)contentSize;
- (DebugColorView)initWithModel:(id)model;
- (DebugColorViewDelegate)delegate;
- (void)_tappyTap;
- (void)setCellFocused:(BOOL)focused;
- (void)setCellHighlighted:(BOOL)highlighted;
- (void)setCellSelected:(BOOL)selected;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DebugColorView

- (DebugColorView)initWithModel:(id)model
{
  modelCopy = model;
  v77.receiver = self;
  v77.super_class = DebugColorView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(DebugColorView *)&v77 initWithFrame:CGRectZero.origin.x, y, width, height];
  v10 = height;
  if (height)
  {
    p_contentSize = &height->_contentSize;
    height->_contentSize = CGSizeZero;
    v11 = +[UIColor labelColor];
    cGColor = [v11 CGColor];
    layer = [(DebugColorView *)v10 layer];
    [layer setBorderColor:cGColor];

    layer2 = [(DebugColorView *)v10 layer];
    [layer2 setBorderWidth:0.5];

    objc_storeStrong(&v10->_colorModel, model);
    v15 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    colorView = v10->_colorView;
    v10->_colorView = v15;

    [(UIView *)v10->_colorView setTranslatesAutoresizingMaskIntoConstraints:0];
    color = [modelCopy color];
    [(UIView *)v10->_colorView setBackgroundColor:color];

    layer3 = [(UIView *)v10->_colorView layer];
    [layer3 setCornerRadius:10.0];

    [(DebugColorView *)v10 addSubview:v10->_colorView];
    v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    nameLabel = v10->_nameLabel;
    v10->_nameLabel = v19;

    [(UILabel *)v10->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_nameLabel setAdjustsFontForContentSizeCategory:1];
    v21 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2];
    v81 = UIFontWeightTrait;
    v22 = [NSNumber numberWithDouble:UIFontWeightRegular];
    v82 = v22;
    v74 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];

    v79 = UIFontDescriptorTraitsAttribute;
    v80 = v74;
    v23 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v73 = [v21 fontDescriptorByAddingAttributes:v23];

    v24 = [UIFont fontWithDescriptor:v73 size:0.0];
    [(UILabel *)v10->_nameLabel setFont:v24];

    [(UILabel *)v10->_nameLabel setTextAlignment:1];
    name = [modelCopy name];
    [(UILabel *)v10->_nameLabel setText:name];

    v26 = +[UIColor tableBackgroundColor];
    [(UILabel *)v10->_nameLabel setBackgroundColor:v26];

    [(DebugColorView *)v10 addSubview:v10->_nameLabel];
    v27 = [UIImageView alloc];
    v28 = [UIImage systemImageNamed:@"checkmark.circle"];
    v29 = [v27 initWithImage:v28];
    selectedImageView = v10->_selectedImageView;
    v10->_selectedImageView = v29;

    [(UIImageView *)v10->_selectedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = +[UIColor greenColor];
    [(UIImageView *)v10->_selectedImageView setTintColor:v31];

    [(DebugColorView *)v10 addSubview:v10->_selectedImageView];
    [(UIImageView *)v10->_selectedImageView setHidden:1];
    topAnchor = [(UIView *)v10->_colorView topAnchor];
    topAnchor2 = [(DebugColorView *)v10 topAnchor];
    v70 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v78[0] = v70;
    centerXAnchor = [(UIView *)v10->_colorView centerXAnchor];
    centerXAnchor2 = [(DebugColorView *)v10 centerXAnchor];
    v67 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v78[1] = v67;
    heightAnchor = [(UIView *)v10->_colorView heightAnchor];
    layer4 = [(UIView *)v10->_colorView layer];
    [layer4 cornerRadius];
    v64 = [heightAnchor constraintEqualToConstant:v32 + v32];
    v78[2] = v64;
    widthAnchor = [(UIView *)v10->_colorView widthAnchor];
    heightAnchor2 = [(UIView *)v10->_colorView heightAnchor];
    v61 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v78[3] = v61;
    topAnchor3 = [(UILabel *)v10->_nameLabel topAnchor];
    bottomAnchor = [(UIView *)v10->_colorView bottomAnchor];
    v58 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
    v78[4] = v58;
    bottomAnchor2 = [(UILabel *)v10->_nameLabel bottomAnchor];
    bottomAnchor3 = [(DebugColorView *)v10 bottomAnchor];
    v55 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-5.0];
    v78[5] = v55;
    leftAnchor = [(UILabel *)v10->_nameLabel leftAnchor];
    leftAnchor2 = [(DebugColorView *)v10 leftAnchor];
    v52 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
    v78[6] = v52;
    rightAnchor = [(UILabel *)v10->_nameLabel rightAnchor];
    rightAnchor2 = [(DebugColorView *)v10 rightAnchor];
    v49 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    v78[7] = v49;
    widthAnchor2 = [(UILabel *)v10->_nameLabel widthAnchor];
    v47 = [widthAnchor2 constraintEqualToConstant:100.0];
    v78[8] = v47;
    leftAnchor3 = [(UIImageView *)v10->_selectedImageView leftAnchor];
    leftAnchor4 = [(DebugColorView *)v10 leftAnchor];
    v44 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:5.0];
    v78[9] = v44;
    bottomAnchor4 = [(UIImageView *)v10->_selectedImageView bottomAnchor];
    [(DebugColorView *)v10 bottomAnchor];
    v34 = v76 = modelCopy;
    v35 = [bottomAnchor4 constraintEqualToAnchor:v34 constant:-5.0];
    v78[10] = v35;
    heightAnchor3 = [(UIImageView *)v10->_selectedImageView heightAnchor];
    v37 = [heightAnchor3 constraintEqualToConstant:20.0];
    v78[11] = v37;
    widthAnchor3 = [(UIImageView *)v10->_selectedImageView widthAnchor];
    v39 = [widthAnchor3 constraintEqualToConstant:20.0];
    v78[12] = v39;
    v40 = [NSArray arrayWithObjects:v78 count:13];
    [NSLayoutConstraint activateConstraints:v40];

    modelCopy = v76;
    [(DebugColorView *)v10 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    *&p_contentSize->width = v41;
    *&p_contentSize->height = v42;
    [(DebugColorView *)v10 invalidateIntrinsicContentSize];
  }

  return v10;
}

- (void)_tappyTap
{
  delegate = [(DebugColorView *)self delegate];

  if (delegate)
  {
    delegate2 = [(DebugColorView *)self delegate];
    [delegate2 colorViewWasTapped:self];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = DebugColorView;
  [(DebugColorView *)&v7 traitCollectionDidChange:change];
  v4 = +[UIColor labelColor];
  cGColor = [v4 CGColor];
  layer = [(DebugColorView *)self layer];
  [layer setBorderColor:cGColor];
}

- (void)setCellFocused:(BOOL)focused
{
  if (focused)
  {
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v4 = ;
  [(DebugColorView *)self setBackgroundColor:v4];
}

- (BOOL)isCellFocused
{
  backgroundColor = [(DebugColorView *)self backgroundColor];
  v3 = +[UIColor _carSystemFocusColor];
  v4 = [backgroundColor isEqual:v3];

  return v4;
}

- (void)setCellSelected:(BOOL)selected
{
  selectedCopy = selected;
  selectedImageView = [(DebugColorView *)self selectedImageView];
  [selectedImageView setHidden:!selectedCopy];
}

- (BOOL)isCellSelected
{
  selectedImageView = [(DebugColorView *)self selectedImageView];
  isHidden = [selectedImageView isHidden];

  return isHidden ^ 1;
}

- (void)setCellHighlighted:(BOOL)highlighted
{
  v3 = 0.800000012;
  if (!highlighted)
  {
    v3 = 1.0;
  }

  [(DebugColorView *)self setAlpha:v3];
}

- (DebugColorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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