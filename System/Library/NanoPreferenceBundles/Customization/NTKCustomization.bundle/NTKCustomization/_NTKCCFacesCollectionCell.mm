@interface _NTKCCFacesCollectionCell
+ (id)agaveReuseIdentifier;
+ (id)aloeReuseIdentifier;
+ (id)avoniaReuseIdentifier;
+ (id)begoniaReuseIdentifier;
+ (id)classicReuseIdentifier;
+ (id)luxoReuseIdentifier;
+ (id)reuseIdentifier;
- (CGSize)faceSize;
- (_NTKCCFacesCollectionCell)initWithFrame:(CGRect)frame;
- (void)_fontSizeDidChange;
- (void)_highlight;
- (void)dealloc;
- (void)setFaceSize:(CGSize)size;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setName:(id)name;
- (void)setSelected:(BOOL)selected;
@end

@implementation _NTKCCFacesCollectionCell

+ (id)classicReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)luxoReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-luxo"];

  return v3;
}

+ (id)aloeReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-aloe"];

  return v3;
}

+ (id)agaveReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-agave"];

  return v3;
}

+ (id)avoniaReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-avonia"];

  return v3;
}

+ (id)begoniaReuseIdentifier
{
  classicReuseIdentifier = [self classicReuseIdentifier];
  v3 = [classicReuseIdentifier stringByAppendingString:@"-begonia"];

  return v3;
}

+ (id)reuseIdentifier
{
  v3 = +[CLKDevice currentDevice];
  deviceCategory = [v3 deviceCategory];

  if (deviceCategory > 3)
  {
    if (deviceCategory == &dword_4)
    {
      agaveReuseIdentifier = [self agaveReuseIdentifier];
    }

    else
    {
      if (deviceCategory != (&dword_4 + 1))
      {
        if (deviceCategory == (&dword_4 + 2))
        {
          agaveReuseIdentifier = [self begoniaReuseIdentifier];
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      agaveReuseIdentifier = [self avoniaReuseIdentifier];
    }
  }

  else
  {
    if (deviceCategory == (&dword_0 + 1))
    {
LABEL_10:
      agaveReuseIdentifier = [self classicReuseIdentifier];
      goto LABEL_14;
    }

    if (deviceCategory != (&dword_0 + 2))
    {
      if (deviceCategory == (&dword_0 + 3))
      {
        agaveReuseIdentifier = [self aloeReuseIdentifier];
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    agaveReuseIdentifier = [self luxoReuseIdentifier];
  }

LABEL_14:

  return agaveReuseIdentifier;
}

- (_NTKCCFacesCollectionCell)initWithFrame:(CGRect)frame
{
  v41.receiver = self;
  v41.super_class = _NTKCCFacesCollectionCell;
  v3 = [(_NTKCCFacesCollectionCell *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    contentView = [(_NTKCCFacesCollectionCell *)v3 contentView];
    [contentView addSubview:v3->_faceContainerView];

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
    contentView2 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    [contentView2 addSubview:v3->_nameLabel];

    firstBaselineAnchor = [(UILabel *)v3->_nameLabel firstBaselineAnchor];
    bottomAnchor = [(NTKCFaceContainerView *)v3->_faceContainerView bottomAnchor];
    font = [(UILabel *)v3->_nameLabel font];
    [font _scaledValueForValue:*&v37];
    v16 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    faceNameFirstBaselineToFaceConstraint = v3->_faceNameFirstBaselineToFaceConstraint;
    v3->_faceNameFirstBaselineToFaceConstraint = v16;

    v29 = objc_opt_new();
    centerXAnchor = [(NTKCFaceContainerView *)v3->_faceContainerView centerXAnchor];
    contentView3 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v42[0] = v19;
    topAnchor = [(NTKCFaceContainerView *)v3->_faceContainerView topAnchor];
    contentView4 = [(_NTKCCFacesCollectionCell *)v3 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*&v33];
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

- (void)setFaceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(NTKCFaceContainerView *)self->_faceContainerView faceSize];
  if (width != v7 || height != v6)
  {
    [(NTKCFaceContainerView *)self->_faceContainerView setFaceSize:width, height];

    [(_NTKCCFacesCollectionCell *)self setNeedsLayout];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  text = [(UILabel *)self->_nameLabel text];
  v5 = [nameCopy isEqualToString:text];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_nameLabel setText:nameCopy];
    [(_NTKCCFacesCollectionCell *)self _fontSizeDidChange];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = _NTKCCFacesCollectionCell;
  [(_NTKCCFacesCollectionCell *)&v4 setHighlighted:highlighted];
  [(_NTKCCFacesCollectionCell *)self _highlight];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = _NTKCCFacesCollectionCell;
  [(_NTKCCFacesCollectionCell *)&v4 setSelected:selected];
  [(_NTKCCFacesCollectionCell *)self _highlight];
}

- (void)_highlight
{
  if (([(_NTKCCFacesCollectionCell *)self isSelected]& 1) != 0)
  {
    isHighlighted = &dword_0 + 1;
  }

  else
  {
    isHighlighted = [(_NTKCCFacesCollectionCell *)self isHighlighted];
  }

  faceContainerView = self->_faceContainerView;

  [(NTKCFaceContainerView *)faceContainerView setHighlighted:isHighlighted];
}

@end