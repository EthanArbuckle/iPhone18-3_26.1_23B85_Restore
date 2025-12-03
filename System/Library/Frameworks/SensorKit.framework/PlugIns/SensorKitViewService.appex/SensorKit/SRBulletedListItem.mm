@interface SRBulletedListItem
- (SRBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image textStyle:(id)style;
- (void)_updateImageViewLayout;
- (void)dealloc;
@end

@implementation SRBulletedListItem

- (SRBulletedListItem)initWithTitle:(id)title description:(id)description image:(id)image textStyle:(id)style
{
  if (!(title | description))
  {
    return 0;
  }

  v28.receiver = self;
  v28.super_class = SRBulletedListItem;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(SRBulletedListItem *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v14 = [UIFont preferredFontForTextStyle:style];
    [(UIFont *)v14 pointSize];
    v15 = [UIFont boldSystemFontOfSize:?];
    v16 = [[UIImageView alloc] initWithImage:image];
    [(SRBulletedListItem *)height setImageView:v16];

    [(UIImageView *)[(SRBulletedListItem *)height imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)[(SRBulletedListItem *)height imageView] setContentMode:1];
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    height->_imageContainer = v17;
    [(UIView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_imageContainer addSubview:height->_imageView];
    if ([title length])
    {
      v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(SRBulletedListItem *)height setTitleLabel:v18];

      [(UILabel *)[(SRBulletedListItem *)height titleLabel] setNumberOfLines:0];
      [(UILabel *)[(SRBulletedListItem *)height titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)[(SRBulletedListItem *)height titleLabel] setFont:v15];
      [(UILabel *)[(SRBulletedListItem *)height titleLabel] setText:title];
      titleLabel = [(SRBulletedListItem *)height titleLabel];
      LODWORD(v20) = 1148846080;
      [(UILabel *)titleLabel setContentHuggingPriority:1 forAxis:v20];
    }

    if ([description length])
    {
      v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(SRBulletedListItem *)height setDescriptionLabel:v21];

      [(UILabel *)[(SRBulletedListItem *)height descriptionLabel] setNumberOfLines:0];
      [(UILabel *)[(SRBulletedListItem *)height descriptionLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)[(SRBulletedListItem *)height descriptionLabel] setFont:v14];
      [(UILabel *)[(SRBulletedListItem *)height descriptionLabel] setText:description];
      [(UILabel *)[(SRBulletedListItem *)height descriptionLabel] setTextColor:[UIColor colorWithRed:0.56 green:0.56 blue:0.58 alpha:1.0]];
      descriptionLabel = [(SRBulletedListItem *)height descriptionLabel];
      LODWORD(v23) = 1148846080;
      [(UILabel *)descriptionLabel setContentHuggingPriority:1 forAxis:v23];
    }

    else
    {
      [(UILabel *)[(SRBulletedListItem *)height titleLabel] setFont:v14];
    }

    v24 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(SRBulletedListItem *)height setStackView:v24];

    [(UIStackView *)[(SRBulletedListItem *)height stackView] setAxis:1];
    [(UIStackView *)[(SRBulletedListItem *)height stackView] setAlignment:1];
    [(UIStackView *)[(SRBulletedListItem *)height stackView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)[(SRBulletedListItem *)height stackView] addArrangedSubview:[(SRBulletedListItem *)height titleLabel]];
    [(UIStackView *)[(SRBulletedListItem *)height stackView] addArrangedSubview:[(SRBulletedListItem *)height descriptionLabel]];
    [(SRBulletedListItem *)height addSubview:height->_imageContainer];
    [(SRBulletedListItem *)height addSubview:[(SRBulletedListItem *)height stackView]];
    [[(UIImageView *)[(SRBulletedListItem *)height imageView] image] size];
    v26 = v25;
    v29[0] = [-[UIImageView widthAnchor](-[SRBulletedListItem imageView](height "imageView")];
    v29[1] = [-[UIImageView heightAnchor](-[SRBulletedListItem imageView](height "imageView")];
    v29[2] = [-[UIImageView centerXAnchor](-[SRBulletedListItem imageView](height "imageView")];
    v29[3] = [-[UIImageView centerYAnchor](-[SRBulletedListItem imageView](height "imageView")];
    v29[4] = [-[UIStackView trailingAnchor](-[SRBulletedListItem stackView](height "stackView")];
    v29[5] = [-[UIStackView topAnchor](-[SRBulletedListItem stackView](height "stackView")];
    v29[6] = [-[SRBulletedListItem bottomAnchor](height "bottomAnchor")];
    [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v29 count:7]];
    [(SRBulletedListItem *)height _updateImageViewLayout];
  }

  return height;
}

- (void)dealloc
{
  [(SRBulletedListItem *)self setImageView:0];
  [(SRBulletedListItem *)self setImageContainer:0];
  [(SRBulletedListItem *)self setStackView:0];
  [(SRBulletedListItem *)self setTitleLabel:0];
  [(SRBulletedListItem *)self setDescriptionLabel:0];
  [(SRBulletedListItem *)self setStackViewLeadingConstraintVertical:0];
  [(SRBulletedListItem *)self setStackViewLeadingConstraintHorizontal:0];
  v3.receiver = self;
  v3.super_class = SRBulletedListItem;
  [(SRBulletedListItem *)&v3 dealloc];
}

- (void)_updateImageViewLayout
{
  [(UIView *)[(SRBulletedListItem *)self imageContainer] removeFromSuperview];
  [[(UIImageView *)[(SRBulletedListItem *)self imageView] image] size];
  v4 = v3;
  [(SRBulletedListItem *)self addSubview:[(SRBulletedListItem *)self imageContainer]];
  if (![(SRBulletedListItem *)self stackViewLeadingConstraintHorizontal])
  {
    -[SRBulletedListItem setStackViewLeadingConstraintHorizontal:](self, "setStackViewLeadingConstraintHorizontal:", [-[UIStackView leadingAnchor](-[SRBulletedListItem stackView](self "stackView")]);
  }

  [(NSLayoutConstraint *)[(SRBulletedListItem *)self stackViewLeadingConstraintHorizontal] setActive:1];
  [(NSLayoutConstraint *)[(SRBulletedListItem *)self stackViewLeadingConstraintVertical] setActive:0];
  v5[1] = -[NSLayoutDimension constraintEqualToConstant:](-[UIView widthAnchor](-[SRBulletedListItem imageContainer](self, "imageContainer", [-[SRBulletedListItem topAnchor](self "topAnchor")]), "widthAnchor"), "constraintEqualToConstant:", v4);
  v5[2] = [-[SRBulletedListItem leadingAnchor](self "leadingAnchor")];
  v5[3] = [(NSLayoutXAxisAnchor *)[(UIView *)[(SRBulletedListItem *)self imageContainer] trailingAnchor] constraintEqualToAnchor:[(UIStackView *)[(SRBulletedListItem *)self stackView] leadingAnchor] constant:-14.0];
  v5[4] = [-[UIStackView centerYAnchor](-[SRBulletedListItem stackView](self "stackView")];
  [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v5 count:5]];
}

@end