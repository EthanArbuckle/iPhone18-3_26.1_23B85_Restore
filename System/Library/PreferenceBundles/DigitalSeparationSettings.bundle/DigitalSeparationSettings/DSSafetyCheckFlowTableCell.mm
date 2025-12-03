@interface DSSafetyCheckFlowTableCell
- (DSSafetyCheckFlowTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title detail:(id)detail systemImageNamed:(id)named;
- (void)setDetailText:(id)text;
@end

@implementation DSSafetyCheckFlowTableCell

- (DSSafetyCheckFlowTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title detail:(id)detail systemImageNamed:(id)named
{
  titleCopy = title;
  detailCopy = detail;
  namedCopy = named;
  v62.receiver = self;
  v62.super_class = DSSafetyCheckFlowTableCell;
  v15 = [(DSSafetyCheckFlowTableCell *)&v62 initWithStyle:style reuseIdentifier:identifier];
  v16 = v15;
  if (v15)
  {
    [(DSSafetyCheckFlowTableCell *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(DSSafetyCheckFlowTableCell *)v16 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(DSSafetyCheckFlowTableCell *)v16 detailTextLabel];
    [detailTextLabel setHidden:1];

    v19 = +[UIColor systemBlueColor];
    v61 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v19];

    v20 = [UIImage systemImageNamed:namedCopy withConfiguration:v61];
    v60 = [v20 imageWithRenderingMode:2];

    v21 = objc_opt_new();
    symbolImageView = v16->_symbolImageView;
    v16->_symbolImageView = v21;

    [(UIImageView *)v16->_symbolImageView setImage:v60];
    [(UIImageView *)v16->_symbolImageView setContentMode:1];
    [(UIImageView *)v16->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    [contentView addSubview:v16->_symbolImageView];

    heightAnchor = [(UIImageView *)v16->_symbolImageView heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:40.0];
    [v25 setActive:1];

    widthAnchor = [(UIImageView *)v16->_symbolImageView widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:40.0];
    [v27 setActive:1];

    leadingAnchor = [(UIImageView *)v16->_symbolImageView leadingAnchor];
    contentView2 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    [v31 setActive:1];

    centerYAnchor = [(UIImageView *)v16->_symbolImageView centerYAnchor];
    contentView3 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v35 setActive:1];

    v36 = objc_opt_new();
    textStackView = v16->_textStackView;
    v16->_textStackView = v36;

    [(UIStackView *)v16->_textStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v16->_textStackView setAxis:1];
    contentView4 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    [contentView4 addSubview:v16->_textStackView];

    topAnchor = [(UIStackView *)v16->_textStackView topAnchor];
    contentView5 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    [v42 setActive:1];

    bottomAnchor = [(UIStackView *)v16->_textStackView bottomAnchor];
    contentView6 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    [v46 setActive:1];

    leadingAnchor3 = [(UIStackView *)v16->_textStackView leadingAnchor];
    trailingAnchor = [(UIImageView *)v16->_symbolImageView trailingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
    [v49 setActive:1];

    trailingAnchor2 = [(UIStackView *)v16->_textStackView trailingAnchor];
    contentView7 = [(DSSafetyCheckFlowTableCell *)v16 contentView];
    trailingAnchor3 = [contentView7 trailingAnchor];
    v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-10.0];
    [v53 setActive:1];

    v54 = objc_opt_new();
    [v54 setText:titleCopy];
    [v54 setNumberOfLines:0];
    v55 = +[UIColor labelColor];
    [v54 setTextColor:v55];

    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v54 setLineBreakMode:0];
    v56 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v54 setFont:v56];

    [(UIStackView *)v16->_textStackView addArrangedSubview:v54];
    [(DSSafetyCheckFlowTableCell *)v16 setDetailText:detailCopy];
    v57 = v16->_symbolImageView;
    v58 = +[UIColor systemBlueColor];
    [(UIImageView *)v57 setTintColor:v58];
  }

  return v16;
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  v7 = objc_alloc_init(UILabel);
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [v7 setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [v7 setTextColor:v6];

  [v7 setNumberOfLines:0];
  [v7 setLineBreakMode:0];
  [v7 setText:textCopy];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_textStackView addArrangedSubview:v7];
}

@end