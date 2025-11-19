@interface AVTomatoRatingView
- (AVTomatoRatingView)init;
- (void)setTextColor:(id)a3;
- (void)setTomatoFreshness:(unint64_t)a3;
- (void)setTomatoRating:(float)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVTomatoRatingView

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVTomatoRatingView;
  [(AVTomatoRatingView *)&v4 traitCollectionDidChange:a3];
  [(UILabel *)self->_tomatoRatingLabel setTextColor:self->_textColor];
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(UILabel *)self->_tomatoRatingLabel setTextColor:v6];
    v5 = v6;
  }
}

- (void)setTomatoRating:(float)a3
{
  if (self->_tomatoRating != a3)
  {
    if (a3 > 1.0)
    {
      a3 = a3 / 100.0;
    }

    self->_tomatoRating = a3;
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v7 setNumberStyle:3];
    *&v4 = self->_tomatoRating;
    v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    v6 = [v7 stringFromNumber:v5];

    [(UILabel *)self->_tomatoRatingLabel setText:v6];
  }
}

- (void)setTomatoFreshness:(unint64_t)a3
{
  if (self->_tomatoFreshness != a3)
  {
    self->_tomatoFreshness = a3;
    if (a3 > 2)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v5 = off_1E720A1C0[a3];
      v9 = AVLocalizedString(off_1E720A1A8[a3]);
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
    v4 = [MEMORY[0x1E69DC888] systemPinkColor];
    textColor = v3->_textColor;
    v3->_textColor = v4;

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
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [(UIImageView *)v3->_tomatoRatingIcon bottomAnchor];
    v14 = [(UILabel *)v3->_tomatoRatingLabel lastBaselineAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:1.0];
    [v12 addObject:v15];

    v16 = [(UIImageView *)v3->_tomatoRatingIcon leftAnchor];
    v17 = [(AVTomatoRatingView *)v3 leftAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v12 addObject:v18];

    v19 = [(UILabel *)v3->_tomatoRatingLabel topAnchor];
    v20 = [(AVTomatoRatingView *)v3 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v12 addObject:v21];

    v22 = [(UILabel *)v3->_tomatoRatingLabel rightAnchor];
    v23 = [(AVTomatoRatingView *)v3 rightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v12 addObject:v24];

    v25 = [(UILabel *)v3->_tomatoRatingLabel bottomAnchor];
    v26 = [(AVTomatoRatingView *)v3 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v12 addObject:v27];

    v28 = [(UIImageView *)v3->_tomatoRatingIcon heightAnchor];
    v29 = [(UILabel *)v3->_tomatoRatingLabel heightAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 multiplier:0.65];
    [v12 addObject:v30];

    v31 = [(UIImageView *)v3->_tomatoRatingIcon widthAnchor];
    v32 = [(UIImageView *)v3->_tomatoRatingIcon heightAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v12 addObject:v33];

    LODWORD(v34) = 1132068864;
    [(UIImageView *)v3->_tomatoRatingIcon setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1132068864;
    [(UIImageView *)v3->_tomatoRatingIcon setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(UILabel *)v3->_tomatoRatingLabel setContentHuggingPriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(UILabel *)v3->_tomatoRatingLabel setContentHuggingPriority:1 forAxis:v37];
    [(UIImageView *)v3->_tomatoRatingIcon setContentMode:1];
    v38 = [(UILabel *)v3->_tomatoRatingLabel leftAnchor];
    v39 = [(UIImageView *)v3->_tomatoRatingIcon rightAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:5.0];

    LODWORD(v41) = *"";
    [v40 setPriority:v41];
    [v12 addObject:v40];
    [MEMORY[0x1E696ACD8] activateConstraints:v12];
  }

  return v3;
}

@end