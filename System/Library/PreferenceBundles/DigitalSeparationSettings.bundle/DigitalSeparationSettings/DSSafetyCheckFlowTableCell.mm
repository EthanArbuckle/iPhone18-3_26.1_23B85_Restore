@interface DSSafetyCheckFlowTableCell
- (DSSafetyCheckFlowTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 detail:(id)a6 systemImageNamed:(id)a7;
- (void)setDetailText:(id)a3;
@end

@implementation DSSafetyCheckFlowTableCell

- (DSSafetyCheckFlowTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 detail:(id)a6 systemImageNamed:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v62.receiver = self;
  v62.super_class = DSSafetyCheckFlowTableCell;
  v15 = [(DSSafetyCheckFlowTableCell *)&v62 initWithStyle:a3 reuseIdentifier:a4];
  v16 = v15;
  if (v15)
  {
    [(DSSafetyCheckFlowTableCell *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(DSSafetyCheckFlowTableCell *)v16 titleLabel];
    [v17 setHidden:1];

    v18 = [(DSSafetyCheckFlowTableCell *)v16 detailTextLabel];
    [v18 setHidden:1];

    v19 = +[UIColor systemBlueColor];
    v61 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v19];

    v20 = [UIImage systemImageNamed:v14 withConfiguration:v61];
    v60 = [v20 imageWithRenderingMode:2];

    v21 = objc_opt_new();
    symbolImageView = v16->_symbolImageView;
    v16->_symbolImageView = v21;

    [(UIImageView *)v16->_symbolImageView setImage:v60];
    [(UIImageView *)v16->_symbolImageView setContentMode:1];
    [(UIImageView *)v16->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    [v23 addSubview:v16->_symbolImageView];

    v24 = [(UIImageView *)v16->_symbolImageView heightAnchor];
    v25 = [v24 constraintEqualToConstant:40.0];
    [v25 setActive:1];

    v26 = [(UIImageView *)v16->_symbolImageView widthAnchor];
    v27 = [v26 constraintEqualToConstant:40.0];
    [v27 setActive:1];

    v28 = [(UIImageView *)v16->_symbolImageView leadingAnchor];
    v29 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    v30 = [v29 leadingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:10.0];
    [v31 setActive:1];

    v32 = [(UIImageView *)v16->_symbolImageView centerYAnchor];
    v33 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    v34 = [v33 centerYAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = objc_opt_new();
    textStackView = v16->_textStackView;
    v16->_textStackView = v36;

    [(UIStackView *)v16->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v16->_textStackView setAxis:1];
    v38 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    [v38 addSubview:v16->_textStackView];

    v39 = [(UIStackView *)v16->_textStackView topAnchor];
    v40 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    v41 = [v40 topAnchor];
    v42 = [v39 constraintEqualToAnchor:v41 constant:12.0];
    [v42 setActive:1];

    v43 = [(UIStackView *)v16->_textStackView bottomAnchor];
    v44 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:-12.0];
    [v46 setActive:1];

    v47 = [(UIStackView *)v16->_textStackView leadingAnchor];
    v48 = [(UIImageView *)v16->_symbolImageView trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:15.0];
    [v49 setActive:1];

    v50 = [(UIStackView *)v16->_textStackView trailingAnchor];
    v51 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    v52 = [v51 trailingAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:-10.0];
    [v53 setActive:1];

    v54 = objc_opt_new();
    [v54 setText:v12];
    [v54 setNumberOfLines:0];
    v55 = +[UIColor labelColor];
    [v54 setTextColor:v55];

    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v54 setLineBreakMode:0];
    v56 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v54 setFont:v56];

    [(UIStackView *)v16->_textStackView addArrangedSubview:v54];
    [(DSSafetyCheckFlowTableCell *)v16 setDetailText:v13];
    v57 = v16->_symbolImageView;
    v58 = +[UIColor systemBlueColor];
    [(UIImageView *)v57 setTintColor:v58];
  }

  return v16;
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(UILabel);
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [v7 setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [v7 setTextColor:v6];

  [v7 setNumberOfLines:0];
  [v7 setLineBreakMode:0];
  [v7 setText:v4];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_textStackView addArrangedSubview:v7];
}

@end