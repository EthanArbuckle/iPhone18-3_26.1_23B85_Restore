@interface SRButtonTrayCell
- (SRButtonTrayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dealloc;
@end

@implementation SRButtonTrayCell

- (SRButtonTrayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = SRButtonTrayCell;
  v4 = [(SRButtonTrayCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SRButtonTrayCell *)v4 setSelectionStyle:0];
    v5->_firstButton = sub_10000240C();
    v5->_secondButton = sub_10000240C();
    v6 = [UIStackView alloc];
    v11[0] = v5->_firstButton;
    v11[1] = v5->_secondButton;
    v7 = [v6 initWithArrangedSubviews:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v11, 2)}];
    [v7 setAxis:1];
    [v7 setSpacing:5.0];
    [v7 setAlignment:0];
    [v7 setDistribution:1];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [-[SRButtonTrayCell contentView](v5 "contentView")];
    v10[0] = [-[UIButton heightAnchor](v5->_firstButton "heightAnchor")];
    v10[1] = [-[UIButton heightAnchor](v5->_secondButton "heightAnchor")];
    v10[2] = [objc_msgSend(v7 "topAnchor")];
    v10[3] = [objc_msgSend(v7 "leadingAnchor")];
    v10[4] = [objc_msgSend(v7 "trailingAnchor")];
    v10[5] = [objc_msgSend(v7 "bottomAnchor")];
    [NSLayoutConstraint activateConstraints:[NSArray arrayWithObjects:v10 count:6]];
  }

  return v5;
}

- (void)dealloc
{
  self->_firstButton = 0;

  self->_secondButton = 0;
  v3.receiver = self;
  v3.super_class = SRButtonTrayCell;
  [(SRButtonTrayCell *)&v3 dealloc];
}

@end