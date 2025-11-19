@interface _NTKCCFacesCollectionCell
+ (id)agaveReuseIdentifier;
+ (id)aloeReuseIdentifier;
+ (id)avoniaReuseIdentifier;
+ (id)begoniaReuseIdentifier;
+ (id)classicReuseIdentifier;
+ (id)luxoReuseIdentifier;
+ (id)reuseIdentifier;
- (CGSize)faceSize;
- (_NTKCCFacesCollectionCell)initWithFrame:(CGRect)a3;
- (void)_fontSizeDidChange;
- (void)_highlight;
- (void)dealloc;
- (void)setFaceSize:(CGSize)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation _NTKCCFacesCollectionCell

+ (id)classicReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)luxoReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-luxo"];

  return v3;
}

+ (id)aloeReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-aloe"];

  return v3;
}

+ (id)agaveReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-agave"];

  return v3;
}

+ (id)avoniaReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-avonia"];

  return v3;
}

+ (id)begoniaReuseIdentifier
{
  v2 = [a1 classicReuseIdentifier];
  v3 = [v2 stringByAppendingString:@"-begonia"];

  return v3;
}

+ (id)reuseIdentifier
{
  v3 = +[CLKDevice currentDevice];
  v4 = [v3 deviceCategory];

  if (v4 > 3)
  {
    if (v4 == &dword_4)
    {
      v5 = [a1 agaveReuseIdentifier];
    }

    else
    {
      if (v4 != (&dword_4 + 1))
      {
        if (v4 == (&dword_4 + 2))
        {
          v5 = [a1 begoniaReuseIdentifier];
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v5 = [a1 avoniaReuseIdentifier];
    }
  }

  else
  {
    if (v4 == (&dword_0 + 1))
    {
LABEL_10:
      v5 = [a1 classicReuseIdentifier];
      goto LABEL_14;
    }

    if (v4 != (&dword_0 + 2))
    {
      if (v4 == (&dword_0 + 3))
      {
        v5 = [a1 aloeReuseIdentifier];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v5 = [a1 luxoReuseIdentifier];
  }

LABEL_14:

  return v5;
}

- (_NTKCCFacesCollectionCell)initWithFrame:(CGRect)a3
{
  v41.receiver = self;
  v41.super_class = _NTKCCFacesCollectionCell;
  v3 = [(_NTKCCFacesCollectionCell *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    sub_254C(&v32);
    v4 = [[NTKCFaceContainerView alloc] initWithFaceSize:3 style:CGSizeZero.width, CGSizeZero.height];
    faceContainerView = v3->_faceContainerView;
    v3->_faceContainerView = v4;

    [(NTKCFaceContainerView *)v3->_faceContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    [v6 addSubview:v3->_faceContainerView];

    v7 = objc_opt_new();
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v7;

    [(UILabel *)v3->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = +[UIColor whiteColor];
    [(UILabel *)v3->_nameLabel setTextColor:v9];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v3->_nameLabel setFont:v10];

    [(UILabel *)v3->_nameLabel setMinimumScaleFactor:0.2];
    [(UILabel *)v3->_nameLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v3->_nameLabel setTextAlignment:1];
    [(UILabel *)v3->_nameLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_nameLabel setNumberOfLines:0];
    HIDWORD(v11) = HIDWORD(v40);
    *&v11 = *(&v40 + 1);
    [(UILabel *)v3->_nameLabel _setHyphenationFactor:v11];
    v12 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    [v12 addSubview:v3->_nameLabel];

    v13 = [(UILabel *)v3->_nameLabel firstBaselineAnchor];
    v14 = [(NTKCFaceContainerView *)v3->_faceContainerView bottomAnchor];
    v15 = [(UILabel *)v3->_nameLabel font];
    [v15 _scaledValueForValue:*&v37];
    v16 = [v13 constraintEqualToAnchor:v14 constant:?];
    faceNameFirstBaselineToFaceConstraint = v3->_faceNameFirstBaselineToFaceConstraint;
    v3->_faceNameFirstBaselineToFaceConstraint = v16;

    v29 = objc_opt_new();
    v30 = [(NTKCFaceContainerView *)v3->_faceContainerView centerXAnchor];
    v31 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    v18 = [v31 centerXAnchor];
    v19 = [v30 constraintEqualToAnchor:v18];
    v42[0] = v19;
    v20 = [(NTKCFaceContainerView *)v3->_faceContainerView topAnchor];
    v21 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    v22 = [v21 topAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:*&v33];
    v42[1] = v23;
    v42[2] = v3->_faceNameFirstBaselineToFaceConstraint;
    v24 = [NSArray arrayWithObjects:v42 count:3];
    [v29 addObjectsFromArray:v24];

    v25 = _NSDictionaryOfVariableBindings(@"_nameLabel", v3->_nameLabel, 0);
    v26 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_nameLabel]|" options:0 metrics:0 views:v25];
    [v29 addObjectsFromArray:v26];

    [NSLayoutConstraint activateConstraints:v29];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v3 selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = _NTKCCFacesCollectionCell;
  [(_NTKCCFacesCollectionCell *)&v4 dealloc];
}

- (void)_fontSizeDidChange
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  sub_254C(v4);
  [v3 _scaledValueForValue:v5];
  [(NSLayoutConstraint *)self->_faceNameFirstBaselineToFaceConstraint setConstant:?];
}

- (CGSize)faceSize
{
  [(NTKCFaceContainerView *)self->_faceContainerView faceSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setFaceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NTKCFaceContainerView *)self->_faceContainerView faceSize];
  if (width != v7 || height != v6)
  {
    [(NTKCFaceContainerView *)self->_faceContainerView setFaceSize:width, height];

    [(_NTKCCFacesCollectionCell *)self setNeedsLayout];
  }
}

- (void)setName:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_nameLabel text];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_nameLabel setText:v6];
    [(_NTKCCFacesCollectionCell *)self _fontSizeDidChange];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKCCFacesCollectionCell;
  [(_NTKCCFacesCollectionCell *)&v4 setHighlighted:a3];
  [(_NTKCCFacesCollectionCell *)self _highlight];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _NTKCCFacesCollectionCell;
  [(_NTKCCFacesCollectionCell *)&v4 setSelected:a3];
  [(_NTKCCFacesCollectionCell *)self _highlight];
}

- (void)_highlight
{
  if (([(_NTKCCFacesCollectionCell *)self isSelected]& 1) != 0)
  {
    v3 = &dword_0 + 1;
  }

  else
  {
    v3 = [(_NTKCCFacesCollectionCell *)self isHighlighted];
  }

  faceContainerView = self->_faceContainerView;

  [(NTKCFaceContainerView *)faceContainerView setHighlighted:v3];
}

@end