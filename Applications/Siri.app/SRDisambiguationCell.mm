@interface SRDisambiguationCell
- (SRDisambiguationCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImageView:(id)view;
- (void)setItem:(id)item;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)updateConstraintConstants;
- (void)updateConstraints;
@end

@implementation SRDisambiguationCell

- (SRDisambiguationCell)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = SRDisambiguationCell;
  v3 = [(SRDisambiguationCell *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SiriSharedUIContentLabel label];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = v3->_titleLabel;
    v7 = [UIFont siriui_lightWeightFontWithSize:18.0];
    [(SiriSharedUIContentLabel *)v6 setFont:v7];

    LODWORD(v8) = 1132068864;
    [(SiriSharedUIContentLabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v8];
    [(SiriSharedUIContentLabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(SRDisambiguationCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    v10 = +[SiriSharedUIContentLabel labelWithMediumWeightSubtextFont];
    secondaryTitleLabel = v3->_secondaryTitleLabel;
    v3->_secondaryTitleLabel = v10;

    [(SiriSharedUIContentLabel *)v3->_secondaryTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v12) = 1132068864;
    [(SiriSharedUIContentLabel *)v3->_secondaryTitleLabel setContentCompressionResistancePriority:0 forAxis:v12];
    contentView2 = [(SRDisambiguationCell *)v3 contentView];
    [contentView2 addSubview:v3->_secondaryTitleLabel];

    v14 = +[SiriSharedUIContentLabel labelWithLightWeightRegularFont];
    extraDisambiguationLabel = v3->_extraDisambiguationLabel;
    v3->_extraDisambiguationLabel = v14;

    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationLabel setTextAlignment:2];
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1144766464;
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationLabel setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationLabel setContentHuggingPriority:0 forAxis:v17];
    contentView3 = [(SRDisambiguationCell *)v3 contentView];
    [contentView3 addSubview:v3->_extraDisambiguationLabel];

    v19 = +[SiriSharedUIContentLabel labelWithMediumWeightSubtextFont];
    extraDisambiguationSubTextLabel = v3->_extraDisambiguationSubTextLabel;
    v3->_extraDisambiguationSubTextLabel = v19;

    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationSubTextLabel setTextAlignment:2];
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationSubTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1144766464;
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationSubTextLabel setContentCompressionResistancePriority:0 forAxis:v21];
    LODWORD(v22) = 1144750080;
    [(SiriSharedUIContentLabel *)v3->_extraDisambiguationSubTextLabel setContentHuggingPriority:0 forAxis:v22];
    contentView4 = [(SRDisambiguationCell *)v3 contentView];
    [contentView4 addSubview:v3->_extraDisambiguationSubTextLabel];

    v24 = [UIImageView alloc];
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [UIImage imageNamed:@"VIP" inBundle:v25];
    v27 = +[UIColor siriui_maskingColor];
    v28 = [v26 _flatImageWithColor:v27];
    v29 = [v24 initWithImage:v28];
    starView = v3->_starView;
    v3->_starView = v29;

    [(UIImageView *)v3->_starView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(SRDisambiguationCell *)v3 contentView];
    [contentView5 addSubview:v3->_starView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SRDisambiguationCell;
  [(SRDisambiguationCell *)&v10 layoutSubviews];
  [(UIImageView *)self->_starView setHidden:[(SiriUIDisambiguationItem *)self->_item showsFavoriteStar]^ 1];
  if ([(SRDisambiguationCell *)self isLastRow])
  {
    selfCopy2 = self;
    v4 = 0;
LABEL_7:
    [(SRDisambiguationCell *)selfCopy2 setKeylineType:v4];
    return;
  }

  if (![(SRDisambiguationCell *)self hasStarColumn])
  {
    selfCopy2 = self;
    v4 = 1;
    goto LABEL_7;
  }

  keyline = [(SRDisambiguationCell *)self keyline];
  [keyline setKeylineType:4];

  semanticContentAttribute = [(SRDisambiguationCell *)self semanticContentAttribute];
  keyline2 = [(SRDisambiguationCell *)self keyline];
  v8 = keyline2;
  if (semanticContentAttribute == 4)
  {
    [keyline2 setCustomRightPadding:35.0];

    keyline3 = [(SRDisambiguationCell *)self keyline];
    [keyline3 setCustomLeftPadding:0.0];
  }

  else
  {
    [keyline2 setCustomLeftPadding:35.0];

    keyline3 = [(SRDisambiguationCell *)self keyline];
    [keyline3 setCustomRightPadding:0.0];
  }
}

- (void)updateConstraints
{
  v30.receiver = self;
  v30.super_class = SRDisambiguationCell;
  [(SRDisambiguationCell *)&v30 updateConstraints];
  if (!self->_constraintsCreated)
  {
    v3 = _NSDictionaryOfVariableBindings(@"_titleLabel, _secondaryTitleLabel, _extraDisambiguationLabel, _extraDisambiguationSubTextLabel, _starView", self->_titleLabel, self->_secondaryTitleLabel, self->_extraDisambiguationLabel, self->_extraDisambiguationSubTextLabel, self->_starView, 0);
    contentView = [(SRDisambiguationCell *)self contentView];
    v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-starTop-[_starView(==starHeight)]-(>=0)-|", 0, &off_10016E788, v3);
    [contentView addConstraints:v5];

    v6 = v3;
    v7 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-starLeft-[_starView(==starWidth)]-(>=0)-|", 0, &off_10016E788, v3);
    [contentView addConstraints:v7];

    keyline = [(SRDisambiguationCell *)self keyline];
    v9 = [NSLayoutConstraint constraintWithItem:keyline attribute:4 relatedBy:0 toItem:contentView attribute:4 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v9];

    keyline2 = [(SRDisambiguationCell *)self keyline];
    v11 = [NSLayoutConstraint constraintWithItem:keyline2 attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v11];

    keyline3 = [(SRDisambiguationCell *)self keyline];
    v13 = [NSLayoutConstraint constraintWithItem:keyline3 attribute:6 relatedBy:0 toItem:contentView attribute:6 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v13];

    v14 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:11 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:28.5];
    titleBaselineConstraint = self->_titleBaselineConstraint;
    self->_titleBaselineConstraint = v14;

    [contentView addConstraint:self->_titleBaselineConstraint];
    v16 = [NSLayoutConstraint constraintWithItem:self->_secondaryTitleLabel attribute:11 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:41.0];
    secondaryTitleBaselineConstraint = self->_secondaryTitleBaselineConstraint;
    self->_secondaryTitleBaselineConstraint = v16;

    [contentView addConstraint:self->_secondaryTitleBaselineConstraint];
    v18 = v6;
    v19 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:[_titleLabel]-[_extraDisambiguationLabel]-edgePadding-|", 0, &off_10016E788, v6);
    [contentView addConstraints:v19];

    v20 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:35.0];
    titleLeadingOffsetConstraint = self->_titleLeadingOffsetConstraint;
    self->_titleLeadingOffsetConstraint = v20;

    LODWORD(v22) = 1144750080;
    [(NSLayoutConstraint *)self->_titleLeadingOffsetConstraint setPriority:v22];
    [contentView addConstraint:self->_titleLeadingOffsetConstraint];
    v23 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:self->_secondaryTitleLabel attribute:5 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v23];

    v24 = [NSLayoutConstraint constraintWithItem:self->_extraDisambiguationLabel attribute:5 relatedBy:0 toItem:self->_extraDisambiguationSubTextLabel attribute:5 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v24];

    v25 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:6 relatedBy:0 toItem:self->_secondaryTitleLabel attribute:6 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v25];

    v26 = [NSLayoutConstraint constraintWithItem:self->_extraDisambiguationLabel attribute:6 relatedBy:0 toItem:self->_extraDisambiguationSubTextLabel attribute:6 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v26];

    v27 = [NSLayoutConstraint constraintWithItem:self->_extraDisambiguationLabel attribute:11 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:28.5];
    extraTitleBaselineConstraint = self->_extraTitleBaselineConstraint;
    self->_extraTitleBaselineConstraint = v27;

    [contentView addConstraint:self->_extraTitleBaselineConstraint];
    v29 = [NSLayoutConstraint constraintWithItem:self->_extraDisambiguationSubTextLabel attribute:11 relatedBy:0 toItem:contentView attribute:3 multiplier:1.0 constant:41.0];
    [contentView addConstraint:v29];

    self->_constraintsCreated = 1;
  }

  [(SRDisambiguationCell *)self updateConstraintConstants];
}

- (void)updateConstraintConstants
{
  titleLeadingOffsetConstraint = self->_titleLeadingOffsetConstraint;
  if (self->_hasStarColumn)
  {
    v4 = 35.0;
  }

  else
  {
    v4 = 15.0;
  }

  [(NSLayoutConstraint *)titleLeadingOffsetConstraint setConstant:v4];
  if (self->_hasStarColumn)
  {
    v5 = 35.0;
  }

  else
  {
    v5 = 15.0;
  }

  [(NSLayoutConstraint *)self->_imageLeadingOffsetConstraint setConstant:v5];
  imageView = self->_imageView;
  if (imageView)
  {
    v7 = 46.0;
  }

  else
  {
    v7 = 28.5;
  }

  if (imageView)
  {
    v8 = 56.0;
  }

  else
  {
    v8 = 41.0;
  }

  item = [(SRDisambiguationCell *)self item];
  subtitle = [item subtitle];
  v11 = [subtitle length];

  if (v11)
  {
    if (imageView)
    {
      v12 = 34.0;
    }

    else
    {
      v12 = 21.0;
    }
  }

  else
  {
    item2 = [(SRDisambiguationCell *)self item];
    headingText = [item2 headingText];
    v15 = [headingText length];

    if (v15)
    {
      v12 = 40.5;
    }

    else
    {
      v12 = v7;
    }

    if (v15)
    {
      v8 = 19.0;
    }
  }

  item3 = [(SRDisambiguationCell *)self item];
  extraDisambiguationSubText = [item3 extraDisambiguationSubText];
  v18 = [extraDisambiguationSubText length];

  if (v18)
  {
    v7 = 21.0;
  }

  [(NSLayoutConstraint *)self->_titleBaselineConstraint setConstant:v12];
  [(NSLayoutConstraint *)self->_secondaryTitleBaselineConstraint setConstant:v8];
  extraTitleBaselineConstraint = self->_extraTitleBaselineConstraint;

  [(NSLayoutConstraint *)extraTitleBaselineConstraint setConstant:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SRDisambiguationCell;
  [(SRDisambiguationCell *)&v3 prepareForReuse];
  [(SRDisambiguationCell *)self setItem:0];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  title = [itemCopy title];
  titleBoldedRange = [itemCopy titleBoldedRange];
  if (v7)
  {
    v8 = titleBoldedRange;
    v9 = v7;
    v10 = [[NSMutableAttributedString alloc] initWithString:title];
    v11 = [UIFont siriui_mediumWeightFontWithSize:18.0];
    [v10 addAttribute:NSFontAttributeName value:v11 range:{v8, v9}];
    [(SiriSharedUIContentLabel *)self->_titleLabel setAttributedText:v10];
  }

  else
  {
    [(SiriSharedUIContentLabel *)self->_titleLabel setText:title];
  }

  subtitle = [itemCopy subtitle];

  secondaryTitleLabel = self->_secondaryTitleLabel;
  if (subtitle)
  {
    [itemCopy subtitle];
  }

  else
  {
    [itemCopy headingText];
  }
  v14 = ;
  [(SiriSharedUIContentLabel *)secondaryTitleLabel setText:v14];

  extraDisambiguationLabel = self->_extraDisambiguationLabel;
  extraDisambiguationText = [itemCopy extraDisambiguationText];
  [(SiriSharedUIContentLabel *)extraDisambiguationLabel setText:extraDisambiguationText];

  extraDisambiguationSubTextLabel = self->_extraDisambiguationSubTextLabel;
  extraDisambiguationSubText = [itemCopy extraDisambiguationSubText];
  [(SiriSharedUIContentLabel *)extraDisambiguationSubTextLabel setText:extraDisambiguationSubText];

  imageView = [itemCopy imageView];
  [(SRDisambiguationCell *)self setImageView:imageView];

  [(SRDisambiguationCell *)self setNeedsUpdateConstraints];
  [(SRDisambiguationCell *)self setNeedsLayout];
}

- (void)setImageView:(id)view
{
  viewCopy = view;
  [(UIImageView *)self->_imageView removeFromSuperview];
  imageLeadingOffsetConstraint = self->_imageLeadingOffsetConstraint;
  self->_imageLeadingOffsetConstraint = 0;

  objc_storeStrong(&self->_imageView, view);
  if (self->_imageView)
  {
    contentView = [(SRDisambiguationCell *)self contentView];
    [contentView addSubview:self->_imageView];

    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(SRDisambiguationCell *)self contentView];
    v8 = _NSDictionaryOfVariableBindings(@"_imageView", self->_imageView, 0);
    v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_imageView(==imageWidth)]" options:0 metrics:&off_10016E7B0 views:v8];
    [contentView2 addConstraints:v9];

    v10 = _NSDictionaryOfVariableBindings(@"_imageView, _titleLabel", self->_imageView, self->_titleLabel, 0);
    v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-imageTop-[_imageView(==imageHeight)]", 0, &off_10016E7B0, v10);
    [contentView2 addConstraints:v11];

    v12 = [NSLayoutConstraint constraintWithItem:self->_titleLabel attribute:5 relatedBy:0 toItem:self->_imageView attribute:6 multiplier:1.0 constant:15.0];
    LODWORD(v13) = 1144766464;
    [v12 setPriority:v13];
    [contentView2 addConstraint:v12];
    if (self->_hasStarColumn)
    {
      v14 = 35.0;
    }

    else
    {
      v14 = 15.0;
    }

    v15 = [NSLayoutConstraint constraintWithItem:self->_imageView attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:v14];
    v16 = self->_imageLeadingOffsetConstraint;
    self->_imageLeadingOffsetConstraint = v15;

    [contentView2 addConstraint:self->_imageLeadingOffsetConstraint];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  contentView = [(SRDisambiguationCell *)self contentView];
  constraints = [contentView constraints];

  contentView2 = [(SRDisambiguationCell *)self contentView];
  [contentView2 removeConstraints:constraints];

  v9.receiver = self;
  v9.super_class = SRDisambiguationCell;
  [(SRDisambiguationCell *)&v9 setSemanticContentAttribute:attribute];
  contentView3 = [(SRDisambiguationCell *)self contentView];
  [contentView3 addConstraints:constraints];
}

@end