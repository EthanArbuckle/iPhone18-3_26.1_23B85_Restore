@interface SymbolCollectionViewCell
- (SymbolCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_setSelectionRingBorderColor;
- (void)_updateUIForSelectionState;
- (void)setShowsSelection:(BOOL)selection;
- (void)setSymbolName:(id)name;
@end

@implementation SymbolCollectionViewCell

- (SymbolCollectionViewCell)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = SymbolCollectionViewCell;
  v3 = [(SymbolCollectionViewCell *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(SymbolCollectionViewCell *)v3 contentView];
    v6 = +[UIColor secondarySystemGroupedBackgroundColor];
    [contentView setBackgroundColor:v6];

    v7 = +[UIColor systemBlueColor];
    [(SymbolCollectionViewCell *)v4 setTintColor:v7];

    v8 = objc_alloc_init(UIImageView);
    imageView = v4->_imageView;
    v4->_imageView = v8;

    v10 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v10];

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_imageView];
    centerXAnchor = [(UIImageView *)v4->_imageView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v46[0] = v42;
    centerYAnchor = [(UIImageView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [contentView centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v46[1] = v39;
    widthAnchor = [(UIImageView *)v4->_imageView widthAnchor];
    v37 = [widthAnchor constraintEqualToConstant:0.0];
    LODWORD(v11) = 1132003328;
    v36 = [v37 sf_withPriority:v11];
    v46[2] = v36;
    heightAnchor = [(UIImageView *)v4->_imageView heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:0.0];
    LODWORD(v12) = 1132003328;
    v33 = [v34 sf_withPriority:v12];
    v46[3] = v33;
    widthAnchor2 = [contentView widthAnchor];
    widthAnchor3 = [(UIImageView *)v4->_imageView widthAnchor];
    v13 = [widthAnchor2 constraintGreaterThanOrEqualToAnchor:widthAnchor3 constant:4.0];
    v46[4] = v13;
    heightAnchor2 = [contentView heightAnchor];
    heightAnchor3 = [(UIImageView *)v4->_imageView heightAnchor];
    v16 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3 constant:4.0];
    v46[5] = v16;
    widthAnchor4 = [contentView widthAnchor];
    heightAnchor4 = [contentView heightAnchor];
    v19 = [widthAnchor4 constraintEqualToAnchor:heightAnchor4];
    v46[6] = v19;
    v20 = [NSArray arrayWithObjects:v46 count:7];
    [NSLayoutConstraint activateConstraints:v20];

    [(SymbolCollectionViewCell *)v4 _updateUIForSelectionState];
    v21 = objc_alloc_init(CircularCornerView);
    selectionRingView = v4->_selectionRingView;
    v4->_selectionRingView = v21;

    [(CircularCornerView *)v4->_selectionRingView setAlpha:0.0];
    layer = [(CircularCornerView *)v4->_selectionRingView layer];
    [layer setBorderWidth:3.0];

    [(CircularCornerView *)v4->_selectionRingView setTranslatesAutoresizingMaskIntoConstraints:0];
    tintColor = [(SymbolCollectionViewCell *)v4 tintColor];
    v25 = [tintColor colorWithAlphaComponent:0.2];
    [(CircularCornerView *)v4->_selectionRingView setBackgroundColor:v25];

    [(SymbolCollectionViewCell *)v4 _setSelectionRingBorderColor];
    [contentView addSubview:v4->_selectionRingView];
    v26 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v4->_selectionRingView withFrameOfView:contentView];
    [NSLayoutConstraint activateConstraints:v26];

    v27 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v28 = [(SymbolCollectionViewCell *)v4 registerForTraitChanges:v27 withTarget:v4 action:"_setSelectionRingBorderColor"];

    v29 = v4;
  }

  return v4;
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  symbolName = self->_symbolName;
  v9 = nameCopy;
  if ((WBSIsEqual() & 1) == 0)
  {
    v6 = [v9 copy];
    v7 = self->_symbolName;
    self->_symbolName = v6;

    v8 = [UIImage _systemImageNamed:v9];
    [(UIImageView *)self->_imageView setImage:v8];
  }
}

- (void)setShowsSelection:(BOOL)selection
{
  if (self->_showsSelection != selection)
  {
    self->_showsSelection = selection;
    if (selection)
    {
      v5[5] = v3;
      v5[6] = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __46__SymbolCollectionViewCell_setShowsSelection___block_invoke;
      v5[3] = &unk_895D8;
      v5[4] = self;
      [UIView animateWithDuration:v5 animations:0.2];
    }

    else
    {

      [(SymbolCollectionViewCell *)self _updateUIForSelectionState];
    }
  }
}

- (void)_updateUIForSelectionState
{
  LOBYTE(v2) = self->_showsSelection;
  [(CircularCornerView *)self->_selectionRingView setAlpha:v2];
  if (self->_showsSelection)
  {
    [(SymbolCollectionViewCell *)self tintColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v4 = ;
  [(UIImageView *)self->_imageView setTintColor:v4];
}

- (void)_setSelectionRingBorderColor
{
  tintColor = [(SymbolCollectionViewCell *)self tintColor];
  cgColor = [tintColor cgColor];
  layer = [(CircularCornerView *)self->_selectionRingView layer];
  [layer setBorderColor:cgColor];
}

@end