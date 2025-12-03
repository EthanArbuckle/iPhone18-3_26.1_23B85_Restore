@interface DSSafetyCheckWelcomeTableCell
- (DSSafetyCheckWelcomeCellDelegate)delegate;
- (DSSafetyCheckWelcomeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title systemImageNamed:(id)named;
- (void)didTapLearnMoreLink;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setDetailText:(id)text linkText:(id)linkText;
@end

@implementation DSSafetyCheckWelcomeTableCell

- (DSSafetyCheckWelcomeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier title:(id)title systemImageNamed:(id)named
{
  titleCopy = title;
  namedCopy = named;
  v53.receiver = self;
  v53.super_class = DSSafetyCheckWelcomeTableCell;
  v12 = [(DSSafetyCheckWelcomeTableCell *)&v53 initWithStyle:style reuseIdentifier:identifier];
  v13 = v12;
  if (v12)
  {
    [(DSSafetyCheckWelcomeTableCell *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(DSSafetyCheckWelcomeTableCell *)v13 titleLabel];
    [titleLabel setHidden:1];

    detailTextLabel = [(DSSafetyCheckWelcomeTableCell *)v13 detailTextLabel];
    [detailTextLabel setHidden:1];

    v16 = objc_opt_new();
    stackView = v13->_stackView;
    v13->_stackView = v16;

    [(UIStackView *)v13->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v13->_stackView setAxis:1];
    contentView = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    [contentView addSubview:v13->_stackView];

    topAnchor = [(UIStackView *)v13->_stackView topAnchor];
    contentView2 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    [v22 setActive:1];

    bottomAnchor = [(UIStackView *)v13->_stackView bottomAnchor];
    contentView3 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    [v26 setActive:1];

    leadingAnchor = [(UIStackView *)v13->_stackView leadingAnchor];
    contentView4 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v30 setActive:1];

    trailingAnchor = [(UIStackView *)v13->_stackView trailingAnchor];
    contentView5 = [(DSSafetyCheckWelcomeTableCell *)v13 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v34 setActive:1];

    v35 = +[UIColor systemBlueColor];
    v52 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:v35];

    v36 = [UIImage systemImageNamed:namedCopy withConfiguration:v52];
    v37 = [v36 imageWithRenderingMode:2];

    v38 = objc_opt_new();
    symbolImageView = v13->_symbolImageView;
    v13->_symbolImageView = v38;

    [(UIImageView *)v13->_symbolImageView setImage:v37];
    [(UIImageView *)v13->_symbolImageView setContentMode:1];
    [(UIImageView *)v13->_symbolImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(UIImageView *)v13->_symbolImageView heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:48.0];
    [v41 setActive:1];

    widthAnchor = [(UIImageView *)v13->_symbolImageView widthAnchor];
    v43 = [widthAnchor constraintEqualToConstant:48.0];
    [v43 setActive:1];

    [(UIStackView *)v13->_stackView addArrangedSubview:v13->_symbolImageView];
    [(UIStackView *)v13->_stackView setCustomSpacing:v13->_symbolImageView afterView:12.0];
    v44 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    fontDescriptor = [v44 fontDescriptor];
    v46 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v47 = objc_opt_new();
    [v47 setText:titleCopy];
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

- (void)setDetailText:(id)text linkText:(id)linkText
{
  linkTextCopy = linkText;
  textCopy = text;
  v7 = [NSMutableAttributedString alloc];
  if (linkTextCopy)
  {
    linkTextCopy = [NSString stringWithFormat:@"%@ %@", textCopy, linkTextCopy];

    textCopy = linkTextCopy;
  }

  v9 = [v7 initWithString:textCopy];

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
  textContainer = [v10 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v10 _setInteractiveTextSelectionDisabled:1];
  v16 = +[UIColor clearColor];
  [v10 setBackgroundColor:v16];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:v10];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = DSSafetyCheckWelcomeTableCell;
  specifierCopy = specifier;
  [(DSSafetyCheckWelcomeTableCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  [(DSSafetyCheckWelcomeTableCell *)self setUserInteractionEnabled:1, v7.receiver, v7.super_class];
  v5 = [specifierCopy objectForKeyedSubscript:@"DSSafetyCheckWelcomeCellDelegateKey"];

  nonretainedObjectValue = [v5 nonretainedObjectValue];
  [(DSSafetyCheckWelcomeTableCell *)self setDelegate:nonretainedObjectValue];
}

- (void)didTapLearnMoreLink
{
  delegate = [(DSSafetyCheckWelcomeTableCell *)self delegate];
  [delegate didTapLearnMoreLink:self];
}

- (DSSafetyCheckWelcomeCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end