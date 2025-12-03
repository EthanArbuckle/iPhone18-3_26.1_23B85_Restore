@interface COSExpressSetupDetailItemView
- (void)populateItem:(id)item;
@end

@implementation COSExpressSetupDetailItemView

- (void)populateItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(COSExpressSetupDetailItemView *)self addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  title = [itemCopy title];
  [(UILabel *)self->_titleLabel setText:title];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_titleLabel setFont:v8];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v9 = objc_opt_new();
  statusLabel = self->_statusLabel;
  self->_statusLabel = v9;

  [(COSExpressSetupDetailItemView *)self addSubview:self->_statusLabel];
  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  status = [itemCopy status];
  [(UILabel *)self->_statusLabel setText:status];

  v12 = +[UIColor systemGrayColor];
  [(UILabel *)self->_statusLabel setTextColor:v12];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)self->_statusLabel setFont:v13];

  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_statusLabel setContentCompressionResistancePriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(UILabel *)self->_statusLabel setContentHuggingPriority:0 forAxis:v15];
  detail = [itemCopy detail];
  v17 = [detail length];

  v69 = v17;
  if (v17)
  {
    v18 = objc_opt_new();
    detailLabel = self->_detailLabel;
    self->_detailLabel = v18;

    [(COSExpressSetupDetailItemView *)self addSubview:self->_detailLabel];
    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    detail2 = [itemCopy detail];
    [(UILabel *)self->_detailLabel setText:detail2];

    v21 = +[UIColor systemGrayColor];
    [(UILabel *)self->_detailLabel setTextColor:v21];

    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_detailLabel setFont:v22];

    [(UILabel *)self->_detailLabel setNumberOfLines:0];
  }

  v23 = objc_opt_new();
  imageView = self->_imageView;
  self->_imageView = v23;

  [(COSExpressSetupDetailItemView *)self addSubview:self->_imageView];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setContentMode:1];
  v71 = itemCopy;
  image = [itemCopy image];
  [(UIImageView *)self->_imageView setImage:image];

  v67 = [NSMutableArray alloc];
  centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
  centerYAnchor2 = [(COSExpressSetupDetailItemView *)self centerYAnchor];
  v61 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v74[0] = v61;
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(COSExpressSetupDetailItemView *)self leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v74[1] = v58;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v56 = [widthAnchor constraintEqualToConstant:36.0];
  v74[2] = v56;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v54 = [heightAnchor constraintEqualToConstant:36.0];
  v74[3] = v54;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(COSExpressSetupDetailItemView *)self topAnchor];
  v51 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v74[4] = v51;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v48 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
  v74[5] = v48;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor4 = [(UILabel *)self->_statusLabel leadingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-8.0];
  v74[6] = v27;
  topAnchor3 = [(UILabel *)self->_statusLabel topAnchor];
  topAnchor4 = [(UILabel *)self->_titleLabel topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v74[7] = v30;
  trailingAnchor3 = [(UILabel *)self->_statusLabel trailingAnchor];
  trailingAnchor4 = [(COSExpressSetupDetailItemView *)self trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v74[8] = v33;
  v34 = [NSArray arrayWithObjects:v74 count:9];
  v68 = [v67 initWithArray:v34];

  v35 = objc_opt_new();
  if (v69)
  {
    topAnchor5 = [(UILabel *)self->_detailLabel topAnchor];
    bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
    v36 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:2.0];
    v73[0] = v36;
    leadingAnchor5 = [(UILabel *)self->_detailLabel leadingAnchor];
    leadingAnchor6 = [(UILabel *)self->_titleLabel leadingAnchor];
    v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v73[1] = v37;
    bottomAnchor2 = [(UILabel *)self->_detailLabel bottomAnchor];
    bottomAnchor3 = [(COSExpressSetupDetailItemView *)self bottomAnchor];
    v40 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
    v73[2] = v40;
    trailingAnchor5 = [(UILabel *)self->_detailLabel trailingAnchor];
    trailingAnchor6 = [(COSExpressSetupDetailItemView *)self trailingAnchor];
    v43 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v73[3] = v43;
    v44 = [NSArray arrayWithObjects:v73 count:4];

    bottomAnchor5 = bottomAnchor;
    bottomAnchor4 = topAnchor5;

    v35 = leadingAnchor5;
  }

  else
  {
    bottomAnchor4 = [(UILabel *)self->_titleLabel bottomAnchor];
    bottomAnchor5 = [(COSExpressSetupDetailItemView *)self bottomAnchor];
    v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-16.0];
    v72 = v36;
    v44 = [NSArray arrayWithObjects:&v72 count:1];
  }

  [v68 addObjectsFromArray:v44];
  [NSLayoutConstraint activateConstraints:v68];
}

@end