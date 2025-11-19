@interface COSExpressSetupDetailItemView
- (void)populateItem:(id)a3;
@end

@implementation COSExpressSetupDetailItemView

- (void)populateItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(COSExpressSetupDetailItemView *)self addSubview:self->_titleLabel];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v4 title];
  [(UILabel *)self->_titleLabel setText:v7];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_titleLabel setFont:v8];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v9 = objc_opt_new();
  statusLabel = self->_statusLabel;
  self->_statusLabel = v9;

  [(COSExpressSetupDetailItemView *)self addSubview:self->_statusLabel];
  [(UILabel *)self->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v4 status];
  [(UILabel *)self->_statusLabel setText:v11];

  v12 = +[UIColor systemGrayColor];
  [(UILabel *)self->_statusLabel setTextColor:v12];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  [(UILabel *)self->_statusLabel setFont:v13];

  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_statusLabel setContentCompressionResistancePriority:0 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [(UILabel *)self->_statusLabel setContentHuggingPriority:0 forAxis:v15];
  v16 = [v4 detail];
  v17 = [v16 length];

  v69 = v17;
  if (v17)
  {
    v18 = objc_opt_new();
    detailLabel = self->_detailLabel;
    self->_detailLabel = v18;

    [(COSExpressSetupDetailItemView *)self addSubview:self->_detailLabel];
    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v4 detail];
    [(UILabel *)self->_detailLabel setText:v20];

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
  v71 = v4;
  v25 = [v4 image];
  [(UIImageView *)self->_imageView setImage:v25];

  v67 = [NSMutableArray alloc];
  v65 = [(UIImageView *)self->_imageView centerYAnchor];
  v63 = [(COSExpressSetupDetailItemView *)self centerYAnchor];
  v61 = [v65 constraintEqualToAnchor:v63];
  v74[0] = v61;
  v60 = [(UIImageView *)self->_imageView leadingAnchor];
  v59 = [(COSExpressSetupDetailItemView *)self leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:16.0];
  v74[1] = v58;
  v57 = [(UIImageView *)self->_imageView widthAnchor];
  v56 = [v57 constraintEqualToConstant:36.0];
  v74[2] = v56;
  v55 = [(UIImageView *)self->_imageView heightAnchor];
  v54 = [v55 constraintEqualToConstant:36.0];
  v74[3] = v54;
  v53 = [(UILabel *)self->_titleLabel topAnchor];
  v52 = [(COSExpressSetupDetailItemView *)self topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:16.0];
  v74[4] = v51;
  v50 = [(UILabel *)self->_titleLabel leadingAnchor];
  v49 = [(UIImageView *)self->_imageView trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:8.0];
  v74[5] = v48;
  v47 = [(UILabel *)self->_titleLabel trailingAnchor];
  v26 = [(UILabel *)self->_statusLabel leadingAnchor];
  v27 = [v47 constraintEqualToAnchor:v26 constant:-8.0];
  v74[6] = v27;
  v28 = [(UILabel *)self->_statusLabel topAnchor];
  v29 = [(UILabel *)self->_titleLabel topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v74[7] = v30;
  v31 = [(UILabel *)self->_statusLabel trailingAnchor];
  v32 = [(COSExpressSetupDetailItemView *)self trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-16.0];
  v74[8] = v33;
  v34 = [NSArray arrayWithObjects:v74 count:9];
  v68 = [v67 initWithArray:v34];

  v35 = objc_opt_new();
  if (v69)
  {
    v70 = [(UILabel *)self->_detailLabel topAnchor];
    v62 = [(UILabel *)self->_titleLabel bottomAnchor];
    v36 = [v70 constraintEqualToAnchor:v62 constant:2.0];
    v73[0] = v36;
    v66 = [(UILabel *)self->_detailLabel leadingAnchor];
    v64 = [(UILabel *)self->_titleLabel leadingAnchor];
    v37 = [v66 constraintEqualToAnchor:v64];
    v73[1] = v37;
    v38 = [(UILabel *)self->_detailLabel bottomAnchor];
    v39 = [(COSExpressSetupDetailItemView *)self bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-16.0];
    v73[2] = v40;
    v41 = [(UILabel *)self->_detailLabel trailingAnchor];
    v42 = [(COSExpressSetupDetailItemView *)self trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-16.0];
    v73[3] = v43;
    v44 = [NSArray arrayWithObjects:v73 count:4];

    v45 = v62;
    v46 = v70;

    v35 = v66;
  }

  else
  {
    v46 = [(UILabel *)self->_titleLabel bottomAnchor];
    v45 = [(COSExpressSetupDetailItemView *)self bottomAnchor];
    v36 = [v46 constraintEqualToAnchor:v45 constant:-16.0];
    v72 = v36;
    v44 = [NSArray arrayWithObjects:&v72 count:1];
  }

  [v68 addObjectsFromArray:v44];
  [NSLayoutConstraint activateConstraints:v68];
}

@end