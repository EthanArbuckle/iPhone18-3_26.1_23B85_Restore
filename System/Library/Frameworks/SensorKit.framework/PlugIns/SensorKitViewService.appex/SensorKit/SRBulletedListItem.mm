@interface SRBulletedListItem
- (SRBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 textStyle:(id)a6;
- (void)_updateImageViewLayout;
- (void)dealloc;
@end

@implementation SRBulletedListItem

- (SRBulletedListItem)initWithTitle:(id)a3 description:(id)a4 image:(id)a5 textStyle:(id)a6
{
  if (!(a3 | a4))
  {
    return 0;
  }

  v28.receiver = self;
  v28.super_class = SRBulletedListItem;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v6 = [(SRBulletedListItem *)&v28 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v6)
  {
    v14 = [UIFont preferredFontForTextStyle:a6];
    [(UIFont *)v14 pointSize];
    v15 = [UIFont boldSystemFontOfSize:?];
    v16 = [[UIImageView alloc] initWithImage:a5];
    [(SRBulletedListItem *)v6 setImageView:v16];

    [(UIImageView *)[(SRBulletedListItem *)v6 imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)[(SRBulletedListItem *)v6 imageView] setContentMode:1];
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v6->_imageContainer = v17;
    [(UIView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v6->_imageContainer addSubview:v6->_imageView];
    if ([a3 length])
    {
      v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(SRBulletedListItem *)v6 setTitleLabel:v18];

      [(UILabel *)[(SRBulletedListItem *)v6 titleLabel] setNumberOfLines:0];
      [(UILabel *)[(SRBulletedListItem *)v6 titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)[(SRBulletedListItem *)v6 titleLabel] setFont:v15];
      [(UILabel *)[(SRBulletedListItem *)v6 titleLabel] setText:a3];
      v19 = [(SRBulletedListItem *)v6 titleLabel];
      LODWORD(v20) = 1148846080;
      [(UILabel *)v19 setContentHuggingPriority:1 forAxis:v20];
    }

    if ([a4 length])
    {
      v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      [(SRBulletedListItem *)v6 setDescriptionLabel:v21];

      [(UILabel *)[(SRBulletedListItem *)v6 descriptionLabel] setNumberOfLines:0];
      [(UILabel *)[(SRBulletedListItem *)v6 descriptionLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)[(SRBulletedListItem *)v6 descriptionLabel] setFont:v14];
      [(UILabel *)[(SRBulletedListItem *)v6 descriptionLabel] setText:a4];
      [(UILabel *)[(SRBulletedListItem *)v6 descriptionLabel] setTextColor:[UIColor colorWithRed:0.56 green:0.56 blue:0.58 alpha:1.0]];
      v22 = [(SRBulletedListItem *)v6 descriptionLabel];
      LODWORD(v23) = 1148846080;
      [(UILabel *)v22 setContentHuggingPriority:1 forAxis:v23];
    }

    else
    {
      [(UILabel *)[(SRBulletedListItem *)v6 titleLabel] setFont:v14];
    }

    v24 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(SRBulletedListItem *)v6 setStackView:v24];

    [(UIStackView *)[(SRBulletedListItem *)v6 stackView] setAxis:1];
    [(UIStackView *)[(SRBulletedListItem *)v6 stackView] setAlignment:1];
    [(UIStackView *)[(SRBulletedListItem *)v6 stackView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)[(SRBulletedListItem *)v6 stackView] addArrangedSubview:[(SRBulletedListItem *)v6 titleLabel]];
    [(UIStackView *)[(SRBulletedListItem *)v6 stackView] addArrangedSubview:[(SRBulletedListItem *)v6 descriptionLabel]];
    [(SRBulletedListItem *)v6 addSubview:v6->_imageContainer];
    [(SRBulletedListItem *)v6 addSubview:[(SRBulletedListItem *)v6 stackView]];
    [[(UIImageView *)[(SRBulletedListItem *)v6 imageView] image] size];
    v26 = v25;
    v29[0] = [-[UIImageView widthAnchor](-[SRBulletedListItem imageView](v6 "imageView")];
    v29[1] = [-[UIImageView heightAnchor](-[SRBulletedListItem imageView](v6 "imageView")];
    v29[2] = [-[UIImageView centerXAnchor](-[SRBulletedListItem imageView](v6 "imageView")];
    v29[3] = [-[UIImageView centerYAnchor](-[SRBulletedListItem imageView](v6 "imageView")];
    v29[4] = [-[UIStackView trailingAnchor](-[SRBulletedListItem stackView](v6 "stackView")];
    v29[5] = [-[UIStackView topAnchor](-[SRBulletedListItem stackView](v6 "stackView")];
    v29[6] = [-[SRBulletedListItem bottomAnchor](v6 "bottomAnchor")];
    [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v29 count:7]];
    [(SRBulletedListItem *)v6 _updateImageViewLayout];
  }

  return v6;
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