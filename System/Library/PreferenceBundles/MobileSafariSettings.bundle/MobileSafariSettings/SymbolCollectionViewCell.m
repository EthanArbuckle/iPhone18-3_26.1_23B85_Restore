@interface SymbolCollectionViewCell
- (SymbolCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_setSelectionRingBorderColor;
- (void)_updateUIForSelectionState;
- (void)setShowsSelection:(BOOL)a3;
- (void)setSymbolName:(id)a3;
@end

@implementation SymbolCollectionViewCell

- (SymbolCollectionViewCell)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = SymbolCollectionViewCell;
  v3 = [(SymbolCollectionViewCell *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SymbolCollectionViewCell *)v3 contentView];
    v6 = +[UIColor secondarySystemGroupedBackgroundColor];
    [v5 setBackgroundColor:v6];

    v7 = +[UIColor systemBlueColor];
    [(SymbolCollectionViewCell *)v4 setTintColor:v7];

    v8 = objc_alloc_init(UIImageView);
    imageView = v4->_imageView;
    v4->_imageView = v8;

    v10 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v10];

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_imageView];
    v44 = [(UIImageView *)v4->_imageView centerXAnchor];
    v43 = [v5 centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v46[0] = v42;
    v41 = [(UIImageView *)v4->_imageView centerYAnchor];
    v40 = [v5 centerYAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v46[1] = v39;
    v38 = [(UIImageView *)v4->_imageView widthAnchor];
    v37 = [v38 constraintEqualToConstant:0.0];
    LODWORD(v11) = 1132003328;
    v36 = [v37 sf_withPriority:v11];
    v46[2] = v36;
    v35 = [(UIImageView *)v4->_imageView heightAnchor];
    v34 = [v35 constraintEqualToConstant:0.0];
    LODWORD(v12) = 1132003328;
    v33 = [v34 sf_withPriority:v12];
    v46[3] = v33;
    v32 = [v5 widthAnchor];
    v31 = [(UIImageView *)v4->_imageView widthAnchor];
    v13 = [v32 constraintGreaterThanOrEqualToAnchor:v31 constant:4.0];
    v46[4] = v13;
    v14 = [v5 heightAnchor];
    v15 = [(UIImageView *)v4->_imageView heightAnchor];
    v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:4.0];
    v46[5] = v16;
    v17 = [v5 widthAnchor];
    v18 = [v5 heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v46[6] = v19;
    v20 = [NSArray arrayWithObjects:v46 count:7];
    [NSLayoutConstraint activateConstraints:v20];

    [(SymbolCollectionViewCell *)v4 _updateUIForSelectionState];
    v21 = objc_alloc_init(CircularCornerView);
    selectionRingView = v4->_selectionRingView;
    v4->_selectionRingView = v21;

    [(CircularCornerView *)v4->_selectionRingView setAlpha:0.0];
    v23 = [(CircularCornerView *)v4->_selectionRingView layer];
    [v23 setBorderWidth:3.0];

    [(CircularCornerView *)v4->_selectionRingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [(SymbolCollectionViewCell *)v4 tintColor];
    v25 = [v24 colorWithAlphaComponent:0.2];
    [(CircularCornerView *)v4->_selectionRingView setBackgroundColor:v25];

    [(SymbolCollectionViewCell *)v4 _setSelectionRingBorderColor];
    [v5 addSubview:v4->_selectionRingView];
    v26 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v4->_selectionRingView withFrameOfView:v5];
    [NSLayoutConstraint activateConstraints:v26];

    v27 = +[UITraitCollection systemTraitsAffectingColorAppearance];
    v28 = [(SymbolCollectionViewCell *)v4 registerForTraitChanges:v27 withTarget:v4 action:"_setSelectionRingBorderColor"];

    v29 = v4;
  }

  return v4;
}

- (void)setSymbolName:(id)a3
{
  v4 = a3;
  symbolName = self->_symbolName;
  v9 = v4;
  if ((WBSIsEqual() & 1) == 0)
  {
    v6 = [v9 copy];
    v7 = self->_symbolName;
    self->_symbolName = v6;

    v8 = [UIImage _systemImageNamed:v9];
    [(UIImageView *)self->_imageView setImage:v8];
  }
}

- (void)setShowsSelection:(BOOL)a3
{
  if (self->_showsSelection != a3)
  {
    self->_showsSelection = a3;
    if (a3)
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
  v5 = [(SymbolCollectionViewCell *)self tintColor];
  v3 = [v5 cgColor];
  v4 = [(CircularCornerView *)self->_selectionRingView layer];
  [v4 setBorderColor:v3];
}

@end