@interface ICNoteResultsImageBadgeView
- (ICNoteResultsImageBadgeView)initWithCoder:(id)a3;
- (ICNoteResultsImageBadgeView)initWithFrame:(CGRect)a3;
- (void)commonInit;
- (void)setSystemImageName:(id)a3;
- (void)updateForTraitCollection;
- (void)updateImage;
@end

@implementation ICNoteResultsImageBadgeView

- (ICNoteResultsImageBadgeView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsImageBadgeView;
  v3 = [(ICNoteResultsImageBadgeView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsImageBadgeView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsImageBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsImageBadgeView;
  v3 = [(ICNoteResultsImageBadgeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsImageBadgeView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  if (+[UIDevice ic_isVision])
  {
    [(ICNoteResultsImageBadgeView *)self setOverrideUserInterfaceStyle:1];
  }

  if (+[UIDevice ic_isVision])
  {
    v3 = 11;
  }

  else
  {
    v3 = 8;
  }

  v4 = [UIBlurEffect effectWithStyle:v3];
  v5 = [[UIVisualEffectView alloc] initWithEffect:v4];
  [(ICNoteResultsImageBadgeView *)self addSubview:v5];
  [v5 ic_addAnchorsToFillSuperview];
  v6 = objc_alloc_init(UIImageView);
  [(ICNoteResultsImageBadgeView *)self setImageView:v6];

  v7 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v7 setContentMode:4];

  v8 = +[UIColor secondaryLabelColor];
  v9 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v9 setTintColor:v8];

  v10 = +[UIColor clearColor];
  v11 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v11 setBackgroundColor:v10];

  v12 = [v5 contentView];
  v13 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v12 addSubview:v13];

  v14 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v14 ic_addAnchorsToFillSuperview];

  [(ICNoteResultsImageBadgeView *)self setSystemImageName:@"pin.fill"];
  v15 = [(ICNoteResultsImageBadgeView *)self widthAnchor];
  v16 = [v15 constraintEqualToConstant:24.0];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v16;

  [(NSLayoutConstraint *)self->_widthConstraint setActive:1];
  [(ICNoteResultsImageBadgeView *)self updateForTraitCollection];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v18 = [NSArray arrayWithObjects:v20 count:2];
  v19 = [(ICNoteResultsImageBadgeView *)self registerForTraitChanges:v18 withAction:"updateForTraitCollection"];
}

- (void)setSystemImageName:(id)a3
{
  objc_storeStrong(&self->_systemImageName, a3);

  [(ICNoteResultsImageBadgeView *)self updateImage];
}

- (void)updateImage
{
  v3 = [(ICNoteResultsImageBadgeView *)self traitCollection];
  v4 = [v3 ic_hasCompactSize];

  v5 = &UIFontTextStyleCaption1;
  if (!v4)
  {
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = *v5;
  v9 = [(ICNoteResultsImageBadgeView *)self systemImageName];
  v7 = [UIImage ic_systemImageNamed:v9 textStyle:v6];

  v8 = [(ICNoteResultsImageBadgeView *)self imageView];
  [v8 setImage:v7];
}

- (void)updateForTraitCollection
{
  v3 = [(ICNoteResultsImageBadgeView *)self traitCollection];
  v4 = [v3 ic_hasCompactSize];

  v5 = 8.0;
  if (v4)
  {
    v5 = 4.0;
    v6 = 24.0;
  }

  else
  {
    v6 = 32.0;
  }

  [(ICNoteResultsImageBadgeView *)self ic_applyRoundedCornersWithRadius:v5];
  v7 = [(ICNoteResultsImageBadgeView *)self widthConstraint];
  [v7 setConstant:v6];

  [(ICNoteResultsImageBadgeView *)self updateImage];
}

@end