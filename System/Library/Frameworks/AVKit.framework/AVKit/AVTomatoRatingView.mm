@interface AVTomatoRatingView
- (AVTomatoRatingView)init;
- (void)setTextColor:(id)color;
- (void)setTomatoFreshness:(unint64_t)freshness;
- (void)setTomatoRating:(float)rating;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AVTomatoRatingView

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVTomatoRatingView;
  [(AVTomatoRatingView *)&v4 traitCollectionDidChange:change];
  [(UILabel *)self->_tomatoRatingLabel setTextColor:self->_textColor];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_tomatoRatingLabel setTextColor:v6];
    colorCopy = v6;
  }
}

- (void)setTomatoRating:(float)rating
{
  if (self->_tomatoRating != rating)
  {
    if (rating > 1.0)
    {
      rating = rating / 100.0;
    }

    self->_tomatoRating = rating;
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v7 setNumberStyle:3];
    *&v4 = self->_tomatoRating;
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    v6 = [v7 stringFromNumber:v5];

    [(UILabel *)self->_tomatoRatingLabel setText:v6];
  }
}

- (void)setTomatoFreshness:(unint64_t)freshness
{
  if (self->_tomatoFreshness != freshness)
  {
    self->_tomatoFreshness = freshness;
    if (freshness > 2)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v5 = off_1E720A1C0[freshness];
      v9 = AVLocalizedString(off_1E720A1A8[freshness]);
      v6 = MEMORY[0x1E69DCAB8];
      v7 = AVBundle();
      v8 = [v6 imageNamed:v5 inBundle:v7 compatibleWithTraitCollection:0];
    }

    [(UIImageView *)self->_tomatoRatingIcon setImage:v8];
    [(UIImageView *)self->_tomatoRatingIcon setAccessibilityValue:v9];
  }
}

- (AVTomatoRatingView)init
{
  v43.receiver = self;
  v43.super_class = AVTomatoRatingView;
  v2 = [(AVTomatoRatingView *)&v43 init];
  v3 = v2;
  if (v2)
  {
    v2->_tomatoFreshness = 3;
    v2->_tomatoRating = NAN;
    systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
    textColor = v3->_textColor;
    v3->_textColor = systemPinkColor;

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    tomatoRatingIcon = v3->_tomatoRatingIcon;
    v3->_tomatoRatingIcon = v6;

    [(UIImageView *)v3->_tomatoRatingIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_tomatoRatingIcon setAccessibilityIdentifier:@"AVTomatoRatingIcon"];
    [(AVTomatoRatingView *)v3 addSubview:v3->_tomatoRatingIcon];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tomatoRatingLabel = v3->_tomatoRatingLabel;
    v3->_tomatoRatingLabel = v8;

    [(UILabel *)v3->_tomatoRatingLabel setBackgroundColor:0];
    v10 = v3->_tomatoRatingLabel;
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_tomatoRatingLabel setOpaque:0];
    [(UILabel *)v3->_tomatoRatingLabel setTextColor:v3->_textColor];
    [(UILabel *)v3->_tomatoRatingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_tomatoRatingLabel setAccessibilityIdentifier:@"AVTomatoRatingLabel"];
    [(AVTomatoRatingView *)v3 addSubview:v3->_tomatoRatingLabel];
    array = [MEMORY[0x1E695DF70] array];
    bottomAnchor = [(UIImageView *)v3->_tomatoRatingIcon bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_tomatoRatingLabel lastBaselineAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:1.0];
    [array addObject:v15];

    leftAnchor = [(UIImageView *)v3->_tomatoRatingIcon leftAnchor];
    leftAnchor2 = [(AVTomatoRatingView *)v3 leftAnchor];
    v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v18];

    topAnchor = [(UILabel *)v3->_tomatoRatingLabel topAnchor];
    topAnchor2 = [(AVTomatoRatingView *)v3 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v21];

    rightAnchor = [(UILabel *)v3->_tomatoRatingLabel rightAnchor];
    rightAnchor2 = [(AVTomatoRatingView *)v3 rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [array addObject:v24];

    bottomAnchor2 = [(UILabel *)v3->_tomatoRatingLabel bottomAnchor];
    bottomAnchor3 = [(AVTomatoRatingView *)v3 bottomAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [array addObject:v27];

    heightAnchor = [(UIImageView *)v3->_tomatoRatingIcon heightAnchor];
    heightAnchor2 = [(UILabel *)v3->_tomatoRatingLabel heightAnchor];
    v30 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.65];
    [array addObject:v30];

    widthAnchor = [(UIImageView *)v3->_tomatoRatingIcon widthAnchor];
    heightAnchor3 = [(UIImageView *)v3->_tomatoRatingIcon heightAnchor];
    v33 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
    [array addObject:v33];

    LODWORD(v34) = 1132068864;
    [(UIImageView *)v3->_tomatoRatingIcon setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1132068864;
    [(UIImageView *)v3->_tomatoRatingIcon setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UILabel *)v3->_tomatoRatingLabel setContentHuggingPriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UILabel *)v3->_tomatoRatingLabel setContentHuggingPriority:1 forAxis:v37];
    [(UIImageView *)v3->_tomatoRatingIcon setContentMode:1];
    leftAnchor3 = [(UILabel *)v3->_tomatoRatingLabel leftAnchor];
    rightAnchor3 = [(UIImageView *)v3->_tomatoRatingIcon rightAnchor];
    v40 = [leftAnchor3 constraintEqualToAnchor:rightAnchor3 constant:5.0];

    LODWORD(v41) = *"";
    [v40 setPriority:v41];
    [array addObject:v40];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v3;
}

@end