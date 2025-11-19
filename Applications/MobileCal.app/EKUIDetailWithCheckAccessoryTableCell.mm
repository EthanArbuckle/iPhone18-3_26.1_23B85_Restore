@interface EKUIDetailWithCheckAccessoryTableCell
- (EKUIDetailWithCheckAccessoryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation EKUIDetailWithCheckAccessoryTableCell

- (EKUIDetailWithCheckAccessoryTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v47.receiver = self;
  v47.super_class = EKUIDetailWithCheckAccessoryTableCell;
  v4 = [(EKUIDetailWithCheckAccessoryTableCell *)&v47 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:&stru_1002133B8];
    [v5 setAccessoryType:3];
    v6 = objc_opt_new();
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v6;

    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v5 detailTextLabel];
    v9 = [v8 font];
    [(UILabel *)v4->_detailLabel setFont:v9];

    v46 = v5;
    v10 = [v5 detailTextLabel];
    v11 = [v10 textColor];
    [(UILabel *)v4->_detailLabel setTextColor:v11];

    LODWORD(v12) = 1144750080;
    [(UILabel *)v4->_detailLabel setContentHuggingPriority:0 forAxis:v12];
    [(EKUIDetailWithCheckAccessoryTableCell *)v4 addSubview:v4->_detailLabel];
    v13 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v5 textLabel];
    v16 = [v15 font];
    [(UILabel *)v4->_titleLabel setFont:v16];

    v17 = [v5 textLabel];
    v18 = [v17 textColor];
    [(UILabel *)v4->_titleLabel setTextColor:v18];

    v19 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    [v19 addSubview:v4->_titleLabel];

    v45 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 trailingAnchor];
    v44 = [(UILabel *)v4->_detailLabel trailingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44 constant:46.0];
    v48[0] = v43;
    v42 = [(UILabel *)v4->_detailLabel firstBaselineAnchor];
    v41 = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v48[1] = v40;
    v38 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v39 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    v37 = [v39 layoutMarginsGuide];
    v36 = [v37 leadingAnchor];
    v35 = [v38 constraintEqualToAnchor:v36];
    v48[2] = v35;
    v34 = [(UILabel *)v4->_detailLabel leadingAnchor];
    v33 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v32 = [v34 constraintEqualToSystemSpacingAfterAnchor:v33 multiplier:1.0];
    v48[3] = v32;
    v30 = [(UILabel *)v4->_titleLabel topAnchor];
    v31 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    v20 = [v31 layoutMarginsGuide];
    v21 = [v20 topAnchor];
    v22 = [v30 constraintEqualToAnchor:v21];
    v48[4] = v22;
    v23 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v24 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    v25 = [v24 layoutMarginsGuide];
    v26 = [v25 bottomAnchor];
    v27 = [v23 constraintEqualToAnchor:v26];
    v48[5] = v27;
    v28 = [NSArray arrayWithObjects:v48 count:6];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v4;
}

@end