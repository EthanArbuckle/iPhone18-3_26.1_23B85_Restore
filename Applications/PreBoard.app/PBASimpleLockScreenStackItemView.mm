@interface PBASimpleLockScreenStackItemView
- (PBASimpleLockScreenStackItemView)initWithFrame:(CGRect)a3;
- (void)setItem:(id)a3;
- (void)setShowSeparator:(BOOL)a3;
@end

@implementation PBASimpleLockScreenStackItemView

- (PBASimpleLockScreenStackItemView)initWithFrame:(CGRect)a3
{
  v58.receiver = self;
  v58.super_class = PBASimpleLockScreenStackItemView;
  v3 = [(PBASimpleLockScreenStackItemView *)&v58 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(PBASimpleLockScreenStackItemView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UIView);
    separator = v3->_separator;
    v3->_separator = v5;

    v7 = v3->_separator;
    v8 = +[UIColor quaternaryLabelColor];
    [(UIView *)v7 setBackgroundColor:v8];

    [(UIView *)v3->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBASimpleLockScreenStackItemView *)v3 addSubview:v3->_separator];
    v9 = [(UIView *)v3->_separator heightAnchor];
    v10 = [v9 constraintEqualToConstant:0.0];
    separatorHeightConstraint = v3->_separatorHeightConstraint;
    v3->_separatorHeightConstraint = v10;

    v12 = objc_alloc_init(UIImageView);
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v12;

    [(UIImageView *)v3->_iconImageView setContentMode:2];
    [(UIImageView *)v3->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBASimpleLockScreenStackItemView *)v3 addSubview:v3->_iconImageView];
    v14 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v14;

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v16 = v3->_titleLabel;
    v17 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightRegular];
    [(UILabel *)v16 setFont:v17];

    LODWORD(v18) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBASimpleLockScreenStackItemView *)v3 addSubview:v3->_titleLabel];
    v57 = [(UIImageView *)v3->_iconImageView leadingAnchor];
    v56 = [(PBASimpleLockScreenStackItemView *)v3 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:16.0];
    v59[0] = v55;
    v54 = [(UIImageView *)v3->_iconImageView topAnchor];
    v53 = [(PBASimpleLockScreenStackItemView *)v3 topAnchor];
    v52 = [v54 constraintGreaterThanOrEqualToAnchor:v53 constant:12.0];
    v59[1] = v52;
    v51 = [(UIImageView *)v3->_iconImageView bottomAnchor];
    v50 = [(PBASimpleLockScreenStackItemView *)v3 bottomAnchor];
    v49 = [v51 constraintLessThanOrEqualToAnchor:v50 constant:-12.0];
    v59[2] = v49;
    v48 = [(UIImageView *)v3->_iconImageView centerYAnchor];
    v47 = [(UILabel *)v3->_titleLabel centerYAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v59[3] = v46;
    v45 = [(UIImageView *)v3->_iconImageView heightAnchor];
    v44 = [v45 constraintEqualToConstant:24.0];
    v59[4] = v44;
    v43 = [(UIImageView *)v3->_iconImageView widthAnchor];
    v42 = [v43 constraintEqualToConstant:24.0];
    v59[5] = v42;
    v41 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v40 = [(UIImageView *)v3->_iconImageView trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:16.0];
    v59[6] = v39;
    v38 = [(UILabel *)v3->_titleLabel topAnchor];
    v37 = [(PBASimpleLockScreenStackItemView *)v3 topAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:12.0];
    v59[7] = v36;
    v35 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v34 = [(PBASimpleLockScreenStackItemView *)v3 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:-16.0];
    v59[8] = v33;
    v32 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v31 = [(UIView *)v3->_separator topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:-12.0];
    v59[9] = v30;
    v29 = [(UIView *)v3->_separator leadingAnchor];
    v19 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v20 = [v29 constraintEqualToAnchor:v19];
    v59[10] = v20;
    v21 = [(UIView *)v3->_separator trailingAnchor];
    v22 = [(PBASimpleLockScreenStackItemView *)v3 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v59[11] = v23;
    v24 = [(UIView *)v3->_separator bottomAnchor];
    v25 = [(PBASimpleLockScreenStackItemView *)v3 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v59[12] = v26;
    v59[13] = v3->_separatorHeightConstraint;
    v27 = [NSArray arrayWithObjects:v59 count:14];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v3;
}

- (void)setItem:(id)a3
{
  v10 = a3;
  if (![(PBASimpleLockScreenStackItem *)self->_item isEqual:?])
  {
    objc_storeStrong(&self->_item, a3);
    iconImageView = self->_iconImageView;
    v6 = [v10 iconSystemName];
    v7 = [UIImage _systemImageNamed:v6];
    [(UIImageView *)iconImageView setImage:v7];

    titleLabel = self->_titleLabel;
    v9 = [v10 title];
    [(UILabel *)titleLabel setText:v9];
  }
}

- (void)setShowSeparator:(BOOL)a3
{
  if (self->_showSeparator != a3)
  {
    self->_showSeparator = a3;
    [(NSLayoutConstraint *)self->_separatorHeightConstraint setConstant:a3];
  }
}

@end