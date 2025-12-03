@interface SRGuideViewCell
+ (BOOL)_allowsTextToWrap;
+ (BOOL)placesImageAboveText;
+ (UIEdgeInsets)defaultInsets;
+ (double)heightOfCellWithName:(id)name tagPhrase:(id)phrase width:(double)width;
- (SRGuideViewCell)initWithFrame:(CGRect)frame;
- (void)setIconImage:(id)image;
- (void)updateConstraints;
@end

@implementation SRGuideViewCell

- (SRGuideViewCell)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = SRGuideViewCell;
  v3 = [(SRGuideViewCell *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SRGuideViewCell *)v3 setKeylineType:0];
    [(SRGuideViewCell *)v4 setHasChevron:1];
    selectedBackgroundView = [(SRGuideViewCell *)v4 selectedBackgroundView];
    v6 = +[UIColor siriui_lightHighlightColor];
    [selectedBackgroundView setBackgroundColor:v6];

    v7 = objc_alloc_init(UIImageView);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v7;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setAccessibilityIgnoresInvertColors:1];
    v9 = objc_opt_new();
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v9;

    v11 = v4->_nameLabel;
    _nameLabelFont = [objc_opt_class() _nameLabelFont];
    [(SiriSharedUIContentLabel *)v11 setFont:_nameLabelFont];

    v13 = v4->_nameLabel;
    v14 = +[UIColor siriui_lightTextColor];
    [(SiriSharedUIContentLabel *)v13 setTextColor:v14];

    [(SiriSharedUIContentLabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[SiriSharedUIContentLabel label];
    tagPhraseLabel = v4->_tagPhraseLabel;
    v4->_tagPhraseLabel = v15;

    v17 = v4->_tagPhraseLabel;
    _tagPhraseLabelFont = [objc_opt_class() _tagPhraseLabelFont];
    [(SiriSharedUIContentLabel *)v17 setFont:_tagPhraseLabelFont];

    [(SiriSharedUIContentLabel *)v4->_tagPhraseLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v4->_tagPhraseLabel;
    v20 = +[UIColor siriui_blendEffectColor];
    [(SiriSharedUIContentLabel *)v19 setTextColor:v20];

    [(SRGuideViewCell *)v4 addSubview:v4->_nameLabel];
    [(SRGuideViewCell *)v4 addSubview:v4->_tagPhraseLabel];
    [(SRGuideViewCell *)v4 addSubview:v4->_iconImageView];
    [(SiriSharedUIContentLabel *)v4->_tagPhraseLabel siriui_setBlendEffectEnabled:1];
    if ([objc_opt_class() _allowsTextToWrap])
    {
      [(SiriSharedUIContentLabel *)v4->_nameLabel setNumberOfLines:0];
      LODWORD(v21) = 1.0;
      [(SiriSharedUIContentLabel *)v4->_nameLabel _setHyphenationFactor:v21];
      [(SiriSharedUIContentLabel *)v4->_tagPhraseLabel setNumberOfLines:0];
      LODWORD(v22) = 1.0;
      [(SiriSharedUIContentLabel *)v4->_tagPhraseLabel _setHyphenationFactor:v22];
    }
  }

  return v4;
}

+ (BOOL)_allowsTextToWrap
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  return IsAccessibilityContentSizeCategory;
}

+ (BOOL)placesImageAboveText
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  return IsAccessibilityContentSizeCategory;
}

- (void)updateConstraints
{
  v26.receiver = self;
  v26.super_class = SRGuideViewCell;
  [(SRGuideViewCell *)&v26 updateConstraints];
  if (!self->_hasCreatedConstraints)
  {
    v27[0] = @"cellHeight";
    v27[1] = @"imageHeight";
    v28[0] = &off_10016E490;
    v28[1] = &off_10016E4A0;
    v28[2] = &off_10016E4A0;
    v27[2] = @"imageWidth";
    v27[3] = @"nameLeading";
    UIFloorToViewScale();
    v3 = [NSNumber numberWithDouble:?];
    v28[3] = v3;
    v28[4] = &off_10016E4B0;
    v27[4] = @"nameTop";
    v27[5] = @"imageNameSpacing";
    UIFloorToViewScale();
    v4 = [NSNumber numberWithDouble:?];
    v28[5] = v4;
    v27[6] = @"leadingPadding";
    [objc_opt_class() defaultInsets];
    v6 = [NSNumber numberWithDouble:v5];
    v28[6] = v6;
    v27[7] = @"trailingPadding";
    [(SRGuideViewCell *)self chevronTrailingMargin];
    v7 = [NSNumber numberWithDouble:?];
    v28[7] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:8];

    v9 = _NSDictionaryOfVariableBindings(@"_nameLabel, _tagPhraseLabel, _iconImageView", self->_nameLabel, self->_tagPhraseLabel, self->_iconImageView, 0);
    if ([objc_opt_class() placesImageAboveText])
    {
      v10 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-leadingPadding-[_iconImageView(imageWidth)]", 0, v8, v9);
      [(SRGuideViewCell *)self addConstraints:v10];

      v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-leadingPadding-[_nameLabel]-trailingPadding-|", 0, v8, v9);
      [(SRGuideViewCell *)self addConstraints:v11];

      v12 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-leadingPadding-[_tagPhraseLabel]-trailingPadding-|", 0, v8, v9);
      [(SRGuideViewCell *)self addConstraints:v12];

      v13 = [NSLayoutConstraint constraintWithItem:self->_iconImageView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:11.0];
      [(SRGuideViewCell *)self addConstraint:v13];

      nameLabel = self->_nameLabel;
      iconImageView = self->_iconImageView;
      v16 = 1.0;
      v17 = 2.5;
      v18 = 4;
    }

    else
    {
      v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-leadingPadding-[_iconImageView(imageWidth)]-imageNameSpacing-[_nameLabel]-trailingPadding-|", 0, v8, v9);
      [(SRGuideViewCell *)self addConstraints:v19];

      v20 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-leadingPadding-[_iconImageView(imageWidth)]-imageNameSpacing-[_tagPhraseLabel]-trailingPadding-|", 0, v8, v9);
      [(SRGuideViewCell *)self addConstraints:v20];

      v21 = [NSLayoutConstraint constraintWithItem:self->_nameLabel attribute:5 relatedBy:0 toItem:self->_tagPhraseLabel attribute:5 multiplier:1.0 constant:0.0];
      [(SRGuideViewCell *)self addConstraint:v21];

      v22 = [NSLayoutConstraint constraintWithItem:self->_iconImageView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [(SRGuideViewCell *)self addConstraint:v22];

      nameLabel = self->_nameLabel;
      v16 = 1.0;
      v17 = 19.0;
      iconImageView = self;
      v18 = 3;
    }

    v23 = [NSLayoutConstraint constraintWithItem:nameLabel attribute:3 relatedBy:0 toItem:iconImageView attribute:v18 multiplier:v16 constant:v17];
    [(SRGuideViewCell *)self addConstraint:v23];

    v24 = [NSLayoutConstraint constraintWithItem:self->_tagPhraseLabel attribute:3 relatedBy:0 toItem:self->_nameLabel attribute:4 multiplier:1.0 constant:1.5];
    [(SRGuideViewCell *)self addConstraint:v24];

    v25 = [NSLayoutConstraint constraintWithItem:self->_iconImageView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
    [(SRGuideViewCell *)self addConstraint:v25];

    self->_hasCreatedConstraints = 1;
  }
}

+ (double)heightOfCellWithName:(id)name tagPhrase:(id)phrase width:(double)width
{
  nameCopy = name;
  phraseCopy = phrase;
  if ([self _allowsTextToWrap])
  {
    [self defaultInsets];
    v11 = width - v10;
    [self chevronTrailingMargin];
    v13 = v11 - v12;
    v33 = NSFontAttributeName;
    _nameLabelFont = [self _nameLabelFont];
    v34 = _nameLabelFont;
    v15 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [nameCopy boundingRectWithSize:1 options:v15 attributes:0 context:{v13, 1.79769313e308}];
    v17 = v16 + 22.0;

    v31 = NSFontAttributeName;
    _tagPhraseLabelFont = [self _tagPhraseLabelFont];
    v32 = _tagPhraseLabelFont;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [phraseCopy boundingRectWithSize:1 options:v19 attributes:0 context:{v13, 1.79769313e308}];
    v21 = v17 + v20;
  }

  else
  {
    v22 = +[UIApplication sharedApplication];
    preferredContentSizeCategory = [v22 preferredContentSizeCategory];
    v24 = _UIContentSizeCategoryCompareToContentSizeCategory();

    if (v24 == 1)
    {
      _nameLabelFont2 = [self _nameLabelFont];
      [_nameLabelFont2 lineHeight];
      _tagPhraseLabelFont2 = [self _tagPhraseLabelFont];
      [_tagPhraseLabelFont2 lineHeight];

      v27 = +[UIFont siriui_mediumWeightBodySizeFont];
      [v27 lineHeight];
      v28 = +[UIFont siriui_lightWeightBodySubtextSizeFont];
      [v28 lineHeight];

      UIRoundToViewScale();
      v21 = v29 + 80.0;
    }

    else
    {
      v21 = 80.0;
    }
  }

  if ([self placesImageAboveText])
  {
    v21 = v21 + 42.5;
  }

  return v21;
}

+ (UIEdgeInsets)defaultInsets
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];

  v3 = 0.0;
  v4 = 24.0;
  v5 = 0.0;
  v6 = 24.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setIconImage:(id)image
{
  v4 = [image copy];
  iconImage = self->_iconImage;
  self->_iconImage = v4;

  iconImageView = self->_iconImageView;
  v7 = self->_iconImage;

  [(UIImageView *)iconImageView setImage:v7];
}

@end