@interface PBASimpleLockScreenStackItemView
- (PBASimpleLockScreenStackItemView)initWithFrame:(CGRect)frame;
- (void)setItem:(id)item;
- (void)setShowSeparator:(BOOL)separator;
@end

@implementation PBASimpleLockScreenStackItemView

- (PBASimpleLockScreenStackItemView)initWithFrame:(CGRect)frame
{
  v58.receiver = self;
  v58.super_class = PBASimpleLockScreenStackItemView;
  v3 = [(PBASimpleLockScreenStackItemView *)&v58 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    heightAnchor = [(UIView *)v3->_separator heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:0.0];
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
    leadingAnchor = [(UIImageView *)v3->_iconImageView leadingAnchor];
    leadingAnchor2 = [(PBASimpleLockScreenStackItemView *)v3 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v59[0] = v55;
    topAnchor = [(UIImageView *)v3->_iconImageView topAnchor];
    topAnchor2 = [(PBASimpleLockScreenStackItemView *)v3 topAnchor];
    v52 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:12.0];
    v59[1] = v52;
    bottomAnchor = [(UIImageView *)v3->_iconImageView bottomAnchor];
    bottomAnchor2 = [(PBASimpleLockScreenStackItemView *)v3 bottomAnchor];
    v49 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-12.0];
    v59[2] = v49;
    centerYAnchor = [(UIImageView *)v3->_iconImageView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v3->_titleLabel centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v59[3] = v46;
    heightAnchor2 = [(UIImageView *)v3->_iconImageView heightAnchor];
    v44 = [heightAnchor2 constraintEqualToConstant:24.0];
    v59[4] = v44;
    widthAnchor = [(UIImageView *)v3->_iconImageView widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:24.0];
    v59[5] = v42;
    leadingAnchor3 = [(UILabel *)v3->_titleLabel leadingAnchor];
    trailingAnchor = [(UIImageView *)v3->_iconImageView trailingAnchor];
    v39 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
    v59[6] = v39;
    topAnchor3 = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor4 = [(PBASimpleLockScreenStackItemView *)v3 topAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
    v59[7] = v36;
    trailingAnchor2 = [(UILabel *)v3->_titleLabel trailingAnchor];
    trailingAnchor3 = [(PBASimpleLockScreenStackItemView *)v3 trailingAnchor];
    v33 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v59[8] = v33;
    bottomAnchor3 = [(UILabel *)v3->_titleLabel bottomAnchor];
    topAnchor5 = [(UIView *)v3->_separator topAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:-12.0];
    v59[9] = v30;
    leadingAnchor4 = [(UIView *)v3->_separator leadingAnchor];
    leadingAnchor5 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v20 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v59[10] = v20;
    trailingAnchor4 = [(UIView *)v3->_separator trailingAnchor];
    trailingAnchor5 = [(PBASimpleLockScreenStackItemView *)v3 trailingAnchor];
    v23 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v59[11] = v23;
    bottomAnchor4 = [(UIView *)v3->_separator bottomAnchor];
    bottomAnchor5 = [(PBASimpleLockScreenStackItemView *)v3 bottomAnchor];
    v26 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v59[12] = v26;
    v59[13] = v3->_separatorHeightConstraint;
    v27 = [NSArray arrayWithObjects:v59 count:14];
    [NSLayoutConstraint activateConstraints:v27];
  }

  return v3;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (![(PBASimpleLockScreenStackItem *)self->_item isEqual:?])
  {
    objc_storeStrong(&self->_item, item);
    iconImageView = self->_iconImageView;
    iconSystemName = [itemCopy iconSystemName];
    v7 = [UIImage _systemImageNamed:iconSystemName];
    [(UIImageView *)iconImageView setImage:v7];

    titleLabel = self->_titleLabel;
    title = [itemCopy title];
    [(UILabel *)titleLabel setText:title];
  }
}

- (void)setShowSeparator:(BOOL)separator
{
  if (self->_showSeparator != separator)
  {
    self->_showSeparator = separator;
    [(NSLayoutConstraint *)self->_separatorHeightConstraint setConstant:separator];
  }
}

@end