@interface VLFInfoRowView
+ (id)infoRowWithImage:(id)a3 text:(id)a4;
- (VLFInfoRowView)initWithImage:(id)a3 text:(id)a4;
@end

@implementation VLFInfoRowView

- (VLFInfoRowView)initWithImage:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  v66.receiver = self;
  v66.super_class = VLFInfoRowView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(VLFInfoRowView *)&v66 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = v11;
  if (v11)
  {
    [(VLFInfoRowView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(VLFInfoRowView *)v12 setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [(VLFInfoRowView *)v12 setContentHuggingPriority:1 forAxis:v14];
    v65 = v7;
    v15 = [(VLFInfoRowView *)v12 heightAnchor];
    LODWORD(v16) = 1132068864;
    v17 = [v15 constraintEqualToConstant:0.0 priority:v16];
    v69 = v17;
    v18 = [NSArray arrayWithObjects:&v69 count:1];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = [[UIImageView alloc] initWithImage:v6];
    iconImageView = v12->_iconImageView;
    v12->_iconImageView = v19;

    [(UIImageView *)v12->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [(UIImageView *)v12->_iconImageView setContentCompressionResistancePriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)v12->_iconImageView setContentHuggingPriority:1 forAxis:v22];
    v23 = +[UIColor labelColor];
    [(UIImageView *)v12->_iconImageView setTintColor:v23];

    [(UIImageView *)v12->_iconImageView setContentMode:1];
    [(VLFInfoRowView *)v12 addSubview:v12->_iconImageView];
    v62 = [(UIImageView *)v12->_iconImageView leadingAnchor];
    v60 = [(VLFInfoRowView *)v12 leadingAnchor];
    v58 = [v62 constraintEqualToAnchor:v60];
    v68[0] = v58;
    v56 = [(UIImageView *)v12->_iconImageView topAnchor];
    v54 = [(VLFInfoRowView *)v12 topAnchor];
    v52 = [v56 constraintGreaterThanOrEqualToAnchor:v54];
    v68[1] = v52;
    v51 = [(UIImageView *)v12->_iconImageView bottomAnchor];
    v48 = [(VLFInfoRowView *)v12 bottomAnchor];
    v47 = [v51 constraintLessThanOrEqualToAnchor:v48];
    v68[2] = v47;
    v46 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v24 = [v46 constraintEqualToConstant:40.0];
    v68[3] = v24;
    [(UIImageView *)v12->_iconImageView widthAnchor];
    v25 = v64 = v6;
    v26 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v68[4] = v27;
    v28 = [(UIImageView *)v12->_iconImageView centerYAnchor];
    v29 = [(VLFInfoRowView *)v12 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v68[5] = v30;
    v31 = [NSArray arrayWithObjects:v68 count:6];
    [NSLayoutConstraint activateConstraints:v31];

    v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    infoLabel = v12->_infoLabel;
    v12->_infoLabel = v32;

    [(UILabel *)v12->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v34) = 1148846080;
    [(UILabel *)v12->_infoLabel setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(UILabel *)v12->_infoLabel setContentHuggingPriority:1 forAxis:v35];
    [(UILabel *)v12->_infoLabel setNumberOfLines:0];
    [(UILabel *)v12->_infoLabel setText:v65];
    v36 = +[UIColor labelColor];
    [(UILabel *)v12->_infoLabel setTextColor:v36];

    [(VLFInfoRowView *)v12 addSubview:v12->_infoLabel];
    v63 = [(UILabel *)v12->_infoLabel leadingAnchor];
    v61 = [(UIImageView *)v12->_iconImageView trailingAnchor];
    v59 = [v63 constraintEqualToAnchor:v61 constant:14.0];
    v67[0] = v59;
    v57 = [(UILabel *)v12->_infoLabel trailingAnchor];
    v55 = [(VLFInfoRowView *)v12 trailingAnchor];
    v53 = [v57 constraintEqualToAnchor:v55];
    v67[1] = v53;
    v50 = [(UILabel *)v12->_infoLabel topAnchor];
    v49 = [(VLFInfoRowView *)v12 topAnchor];
    v37 = [v50 constraintGreaterThanOrEqualToAnchor:v49];
    v67[2] = v37;
    v38 = [(UILabel *)v12->_infoLabel bottomAnchor];
    v39 = [(VLFInfoRowView *)v12 bottomAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];
    v67[3] = v40;
    v41 = [(UILabel *)v12->_infoLabel heightAnchor];
    v42 = [(UIImageView *)v12->_iconImageView heightAnchor];
    v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];
    v67[4] = v43;
    v44 = [NSArray arrayWithObjects:v67 count:5];
    [NSLayoutConstraint activateConstraints:v44];

    v7 = v65;
    v6 = v64;
  }

  return v12;
}

+ (id)infoRowWithImage:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithImage:v7 text:v6];

  return v8;
}

@end