@interface DSSafetyCheckWelcomeTableCell
- (DSSafetyCheckWelcomeCellDelegate)delegate;
- (DSSafetyCheckWelcomeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 systemImageNamed:(id)a6;
- (void)didTapLearnMoreLink;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setDetailText:(id)a3 linkText:(id)a4;
@end

@implementation DSSafetyCheckWelcomeTableCell

- (DSSafetyCheckWelcomeTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 title:(id)a5 systemImageNamed:(id)a6
{
  v10 = a5;
  v11 = a6;
  v53.receiver = self;
  v53.super_class = DSSafetyCheckWelcomeTableCell;
  v12 = [(DSSafetyCheckWelcomeTableCell *)&v53 initWithStyle:a3 reuseIdentifier:a4];
  v13 = v12;
  if (v12)
  {
    [(DSSafetyCheckWelcomeTableCell *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(DSSafetyCheckWelcomeTableCell *)v13 titleLabel];
    [v14 setHidden:1];

    v15 = [(DSSafetyCheckWelcomeTableCell *)v13 detailTextLabel];
    [v15 setHidden:1];

    v16 = objc_opt_new();
    stackView = v13->_stackView;
    v13->_stackView = v16;

    [(UIStackView *)v13->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v13->_stackView setAxis:1];
    v18 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    [v18 addSubview:v13->_stackView];

    v19 = [(UIStackView *)v13->_stackView topAnchor];
    v20 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    v21 = [v20 topAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
    [v22 setActive:1];

    v23 = [(UIStackView *)v13->_stackView bottomAnchor];
    v24 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    v25 = [v24 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:-16.0];
    [v26 setActive:1];

    v27 = [(UIStackView *)v13->_stackView leadingAnchor];
    v28 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    v29 = [v28 leadingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
    [v30 setActive:1];

    v31 = [(UIStackView *)v13->_stackView trailingAnchor];
    v32 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:-16.0];
    [v34 setActive:1];

    v35 = +[UIColor systemBlueColor];
    v52 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v35];

    v36 = [UIImage systemImageNamed:v11 withConfiguration:v52];
    v37 = [v36 imageWithRenderingMode:2];

    v38 = objc_opt_new();
    symbolImageView = v13->_symbolImageView;
    v13->_symbolImageView = v38;

    [(UIImageView *)v13->_symbolImageView setImage:v37];
    [(UIImageView *)v13->_symbolImageView setContentMode:1];
    [(UIImageView *)v13->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [(UIImageView *)v13->_symbolImageView heightAnchor];
    v41 = [v40 constraintEqualToConstant:48.0];
    [v41 setActive:1];

    v42 = [(UIImageView *)v13->_symbolImageView widthAnchor];
    v43 = [v42 constraintEqualToConstant:48.0];
    [v43 setActive:1];

    [(UIStackView *)v13->_stackView addArrangedSubview:v13->_symbolImageView];
    [(UIStackView *)v13->_stackView setCustomSpacing:v13->_symbolImageView afterView:12.0];
    v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    v45 = [v44 fontDescriptor];
    v46 = [v45 fontDescriptorWithSymbolicTraits:2];

    v47 = objc_opt_new();
    [v47 setText:v10];
    [v47 setNumberOfLines:0];
    v48 = +[UIColor labelColor];
    [v47 setTextColor:v48];

    [v47 setTextAlignment:1];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [UIFont fontWithDescriptor:v46 size:0.0];
    [v47 setFont:v49];

    [(UIStackView *)v13->_stackView addArrangedSubview:v47];
    [(DSSafetyCheckWelcomeTableCell *)v13 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v50 = +[UIColor systemBlueColor];
    [(DSSafetyCheckWelcomeTableCell *)v13 setSymbolTintColor:v50];
  }

  return v13;
}

- (void)setDetailText:(id)a3 linkText:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [NSMutableAttributedString alloc];
  if (v17)
  {
    v8 = [NSString stringWithFormat:@"%@ %@", v6, v17];

    v6 = v8;
  }

  v9 = [v7 initWithString:v6];

  v10 = objc_alloc_init(UITextView);
  v11 = objc_opt_new();
  [v11 setAlignment:1];
  v12 = [v9 length];
  [v9 addAttribute:NSParagraphStyleAttributeName value:v11 range:{0, v12}];
  v13 = +[UIColor labelColor];
  [v9 addAttribute:NSForegroundColorAttributeName value:v13 range:{0, v12}];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v9 addAttribute:NSFontAttributeName value:v14 range:{0, v12}];

  [v10 setEditable:0];
  [v10 setDelegate:self];
  [v10 setSelectable:1];
  [v10 setScrollEnabled:0];
  [v10 setAttributedText:v9];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setShowsHorizontalScrollIndicator:0];
  v15 = [v10 textContainer];
  [v15 setLineFragmentPadding:0.0];

  [v10 _setInteractiveTextSelectionDisabled:1];
  v16 = +[UIColor clearColor];
  [v10 setBackgroundColor:v16];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:v10];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = DSSafetyCheckWelcomeTableCell;
  v4 = a3;
  [(DSSafetyCheckWelcomeTableCell *)&v7 refreshCellContentsWithSpecifier:v4];
  [(DSSafetyCheckWelcomeTableCell *)self setUserInteractionEnabled:1, v7.receiver, v7.super_class];
  v5 = [v4 objectForKeyedSubscript:@"DSSafetyCheckWelcomeCellDelegateKey"];

  v6 = [v5 nonretainedObjectValue];
  [(DSSafetyCheckWelcomeTableCell *)self setDelegate:v6];
}

- (void)didTapLearnMoreLink
{
  v3 = [(DSSafetyCheckWelcomeTableCell *)self delegate];
  [v3 didTapLearnMoreLink:self];
}

- (DSSafetyCheckWelcomeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end