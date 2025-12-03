@interface ICNoteResultsImageBadgeView
- (ICNoteResultsImageBadgeView)initWithCoder:(id)coder;
- (ICNoteResultsImageBadgeView)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)setSystemImageName:(id)name;
- (void)updateForTraitCollection;
- (void)updateImage;
@end

@implementation ICNoteResultsImageBadgeView

- (ICNoteResultsImageBadgeView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsImageBadgeView;
  v3 = [(ICNoteResultsImageBadgeView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICNoteResultsImageBadgeView *)v3 commonInit];
  }

  return v4;
}

- (ICNoteResultsImageBadgeView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsImageBadgeView;
  v3 = [(ICNoteResultsImageBadgeView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  imageView = [(ICNoteResultsImageBadgeView *)self imageView];
  [imageView setContentMode:4];

  v8 = +[UIColor secondaryLabelColor];
  imageView2 = [(ICNoteResultsImageBadgeView *)self imageView];
  [imageView2 setTintColor:v8];

  v10 = +[UIColor clearColor];
  imageView3 = [(ICNoteResultsImageBadgeView *)self imageView];
  [imageView3 setBackgroundColor:v10];

  contentView = [v5 contentView];
  imageView4 = [(ICNoteResultsImageBadgeView *)self imageView];
  [contentView addSubview:imageView4];

  imageView5 = [(ICNoteResultsImageBadgeView *)self imageView];
  [imageView5 ic_addAnchorsToFillSuperview];

  [(ICNoteResultsImageBadgeView *)self setSystemImageName:@"pin.fill"];
  widthAnchor = [(ICNoteResultsImageBadgeView *)self widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:24.0];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v16;

  [(NSLayoutConstraint *)self->_widthConstraint setActive:1];
  [(ICNoteResultsImageBadgeView *)self updateForTraitCollection];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v18 = [NSArray arrayWithObjects:v20 count:2];
  v19 = [(ICNoteResultsImageBadgeView *)self registerForTraitChanges:v18 withAction:"updateForTraitCollection"];
}

- (void)setSystemImageName:(id)name
{
  objc_storeStrong(&self->_systemImageName, name);

  [(ICNoteResultsImageBadgeView *)self updateImage];
}

- (void)updateImage
{
  traitCollection = [(ICNoteResultsImageBadgeView *)self traitCollection];
  ic_hasCompactSize = [traitCollection ic_hasCompactSize];

  v5 = &UIFontTextStyleCaption1;
  if (!ic_hasCompactSize)
  {
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = *v5;
  systemImageName = [(ICNoteResultsImageBadgeView *)self systemImageName];
  v7 = [UIImage ic_systemImageNamed:systemImageName textStyle:v6];

  imageView = [(ICNoteResultsImageBadgeView *)self imageView];
  [imageView setImage:v7];
}

- (void)updateForTraitCollection
{
  traitCollection = [(ICNoteResultsImageBadgeView *)self traitCollection];
  ic_hasCompactSize = [traitCollection ic_hasCompactSize];

  v5 = 8.0;
  if (ic_hasCompactSize)
  {
    v5 = 4.0;
    v6 = 24.0;
  }

  else
  {
    v6 = 32.0;
  }

  [(ICNoteResultsImageBadgeView *)self ic_applyRoundedCornersWithRadius:v5];
  widthConstraint = [(ICNoteResultsImageBadgeView *)self widthConstraint];
  [widthConstraint setConstant:v6];

  [(ICNoteResultsImageBadgeView *)self updateImage];
}

@end