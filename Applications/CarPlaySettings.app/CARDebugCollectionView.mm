@interface CARDebugCollectionView
- (BOOL)isCellSelected;
- (CARDebugCollectionView)initWithConfig:(id)config color:(id)color;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)_updateColors;
- (void)action;
- (void)setActioned:(BOOL)actioned;
- (void)setCellFocused:(BOOL)focused;
- (void)setCellHighlighted:(BOOL)highlighted;
- (void)setCellSelected:(BOOL)selected;
@end

@implementation CARDebugCollectionView

- (CARDebugCollectionView)initWithConfig:(id)config color:(id)color
{
  configCopy = config;
  colorCopy = color;
  v45.receiver = self;
  v45.super_class = CARDebugCollectionView;
  v9 = [(CARDebugCollectionView *)&v45 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    [(CARDebugCollectionView *)v10 setBackgroundColor:colorCopy];
    layer = [(CARDebugCollectionView *)v10 layer];
    [layer setBorderWidth:2.0];

    v12 = [UIImageView alloc];
    [UIImage systemImageNamed:@"circle.fill"];
    v13 = v43 = colorCopy;
    v14 = [v12 initWithImage:v13];
    v44 = configCopy;
    actionedImageView = v10->_actionedImageView;
    v10->_actionedImageView = v14;

    [(UIImageView *)v10->_actionedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARDebugCollectionView *)v10 addSubview:v10->_actionedImageView];
    [(UIImageView *)v10->_actionedImageView setHidden:1];
    v16 = +[UIColor _carSystemFocusPrimaryColor];
    [(UIImageView *)v10->_actionedImageView setTintColor:v16];

    v17 = [UIImageView alloc];
    v18 = [UIImage systemImageNamed:@"checkmark.circle"];
    v19 = [v17 initWithImage:v18];
    selectedImageView = v10->_selectedImageView;
    v10->_selectedImageView = v19;

    [(UIImageView *)v10->_selectedImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARDebugCollectionView *)v10 addSubview:v10->_selectedImageView];
    [(UIImageView *)v10->_selectedImageView setHidden:1];
    centerXAnchor = [(UIImageView *)v10->_selectedImageView centerXAnchor];
    centerXAnchor2 = [(CARDebugCollectionView *)v10 centerXAnchor];
    v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v46[0] = v40;
    centerYAnchor = [(UIImageView *)v10->_selectedImageView centerYAnchor];
    centerYAnchor2 = [(CARDebugCollectionView *)v10 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[1] = v37;
    heightAnchor = [(UIImageView *)v10->_selectedImageView heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:20.0];
    v46[2] = v35;
    widthAnchor = [(UIImageView *)v10->_selectedImageView widthAnchor];
    v33 = [widthAnchor constraintEqualToConstant:20.0];
    v46[3] = v33;
    centerXAnchor3 = [(UIImageView *)v10->_actionedImageView centerXAnchor];
    centerXAnchor4 = [(CARDebugCollectionView *)v10 centerXAnchor];
    v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v46[4] = v21;
    centerYAnchor3 = [(UIImageView *)v10->_actionedImageView centerYAnchor];
    centerYAnchor4 = [(CARDebugCollectionView *)v10 centerYAnchor];
    v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v46[5] = v24;
    heightAnchor2 = [(UIImageView *)v10->_actionedImageView heightAnchor];
    v26 = [heightAnchor2 constraintEqualToConstant:20.0];
    v46[6] = v26;
    widthAnchor2 = [(UIImageView *)v10->_actionedImageView widthAnchor];
    v28 = [widthAnchor2 constraintEqualToConstant:20.0];
    v46[7] = v28;
    v29 = [NSArray arrayWithObjects:v46 count:8];
    [NSLayoutConstraint activateConstraints:v29];

    configCopy = v44;
    colorCopy = v43;

    [(CARDebugCollectionView *)v10 _updateColors];
  }

  return v10;
}

- (void)action
{
  v3 = [(CARDebugCollectionView *)self actioned]^ 1;

  [(CARDebugCollectionView *)self setActioned:v3];
}

- (void)setActioned:(BOOL)actioned
{
  if (self->_actioned != actioned)
  {
    actionedCopy = actioned;
    self->_actioned = actioned;
    actionedImageView = [(CARDebugCollectionView *)self actionedImageView];
    [actionedImageView setHidden:!actionedCopy];
  }
}

- (CGSize)intrinsicContentSize
{
  config = [(CARDebugCollectionView *)self config];
  [config intrinsictContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  v3 = [(CARDebugCollectionView *)self config:size.width];
  [v3 systemLayoutSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_updateColors
{
  if ([(CARDebugCollectionView *)self isCellFocused])
  {
    +[UIColor _carSystemFocusColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v6 = ;
  v3 = v6;
  cGColor = [v6 CGColor];
  layer = [(CARDebugCollectionView *)self layer];
  [layer setBorderColor:cGColor];

  [(UIImageView *)self->_selectedImageView setTintColor:v6];
}

- (void)setCellFocused:(BOOL)focused
{
  if (self->_cellFocused != focused)
  {
    self->_cellFocused = focused;
    [(CARDebugCollectionView *)self _updateColors];
  }
}

- (void)setCellSelected:(BOOL)selected
{
  selectedCopy = selected;
  selectedImageView = [(CARDebugCollectionView *)self selectedImageView];
  [selectedImageView setHidden:!selectedCopy];
}

- (BOOL)isCellSelected
{
  selectedImageView = [(CARDebugCollectionView *)self selectedImageView];
  isHidden = [selectedImageView isHidden];

  return isHidden ^ 1;
}

- (void)setCellHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    [(CARDebugCollectionView *)self setAlpha:0.5];
  }

  else
  {
    [(CARDebugCollectionView *)self setAlpha:1.0];
  }
}

@end