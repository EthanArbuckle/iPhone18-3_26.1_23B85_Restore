@interface ENUILoggingInfoHeaderView
- (ENUILoggingInfoHeaderView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)setTableView:(id)view;
- (void)setupSubviewsAndContstraints;
- (void)setupText;
- (void)updateConstraints;
@end

@implementation ENUILoggingInfoHeaderView

- (ENUILoggingInfoHeaderView)initWithSpecifier:(id)specifier
{
  v3 = [(ENUILoggingInfoHeaderView *)self initWithFrame:specifier, CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = v3;
  if (v3)
  {
    [(ENUILoggingInfoHeaderView *)v3 setupSubviewsAndContstraints];
    [(ENUILoggingInfoHeaderView *)v4 setupText];
  }

  return v4;
}

- (void)setupText
{
  v18 = [UITableViewHeaderFooterView _defaultTextColorForTableViewStyle:[(ENUILoggingInfoHeaderView *)self tableViewStyle] isSectionHeader:0];
  v3 = ENUILocalizedString();
  v4 = [v3 length];
  v5 = [[NSMutableAttributedString alloc] initWithString:v3];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v8 = objc_opt_new();
    LODWORD(v9) = 1055286886;
    [v8 setHyphenationFactor:v9];
    [v5 addAttribute:NSParagraphStyleAttributeName value:v8 range:{0, v4}];
  }

  v10 = [UITableViewHeaderFooterView _defaultFontForTableViewStyle:[(ENUILoggingInfoHeaderView *)self tableViewStyle] isSectionHeader:0];
  [v5 addAttribute:NSFontAttributeName value:v10 range:{0, v4}];
  v11 = [UIImageSymbolConfiguration configurationWithFont:v10 scale:1];
  v12 = objc_alloc_init(NSTextAttachment);
  v13 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v11];
  v14 = [v13 imageWithRenderingMode:2];
  [v12 setImage:v14];

  v15 = [NSAttributedString attributedStringWithAttachment:v12];
  [v5 insertAttributedString:v15 atIndex:0];
  v16 = [(ENUILoggingInfoHeaderView *)self _accessibilityHigherContrastTintColorForColor:v18];
  [v5 addAttribute:NSForegroundColorAttributeName value:v16 range:{0, objc_msgSend(v5, "length")}];

  textView = [(ENUILoggingInfoHeaderView *)self textView];
  [textView setAttributedText:v5];
}

- (void)setupSubviewsAndContstraints
{
  v3 = objc_alloc_init(UITextView);
  [(ENUILoggingInfoHeaderView *)self setTextView:v3];

  textView = [(ENUILoggingInfoHeaderView *)self textView];
  [textView setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor clearColor];
  textView2 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView2 setBackgroundColor:v5];

  textView3 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView3 setShowsVerticalScrollIndicator:0];

  textView4 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView4 setEditable:0];

  textView5 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView5 setSelectable:1];

  textView6 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView6 setScrollEnabled:0];

  textView7 = [(ENUILoggingInfoHeaderView *)self textView];
  textContainer = [textView7 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  textView8 = [(ENUILoggingInfoHeaderView *)self textView];
  [textView8 _setInteractiveTextSelectionDisabled:1];

  contentView = [(ENUILoggingInfoHeaderView *)self contentView];
  textView9 = [(ENUILoggingInfoHeaderView *)self textView];
  [contentView addSubview:textView9];

  v42 = +[NSMutableArray array];
  textView10 = [(ENUILoggingInfoHeaderView *)self textView];
  leadingAnchor = [textView10 leadingAnchor];
  contentView2 = [(ENUILoggingInfoHeaderView *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  tableView = [(ENUILoggingInfoHeaderView *)self tableView];
  [tableView _marginWidth];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  [(ENUILoggingInfoHeaderView *)self setTextViewLeadingConstraint:v22];

  textViewLeadingConstraint = [(ENUILoggingInfoHeaderView *)self textViewLeadingConstraint];
  [v42 addObject:textViewLeadingConstraint];

  contentView3 = [(ENUILoggingInfoHeaderView *)self contentView];
  safeAreaLayoutGuide2 = [contentView3 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  textView11 = [(ENUILoggingInfoHeaderView *)self textView];
  trailingAnchor2 = [textView11 trailingAnchor];
  tableView2 = [(ENUILoggingInfoHeaderView *)self tableView];
  [tableView2 _marginWidth];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
  [(ENUILoggingInfoHeaderView *)self setTextViewTrailingConstraint:v30];

  textViewTrailingConstraint = [(ENUILoggingInfoHeaderView *)self textViewTrailingConstraint];
  [v42 addObject:textViewTrailingConstraint];

  textView12 = [(ENUILoggingInfoHeaderView *)self textView];
  topAnchor = [textView12 topAnchor];
  contentView4 = [(ENUILoggingInfoHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v42 addObject:v36];

  textView13 = [(ENUILoggingInfoHeaderView *)self textView];
  bottomAnchor = [textView13 bottomAnchor];
  contentView5 = [(ENUILoggingInfoHeaderView *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v42 addObject:v41];

  [NSLayoutConstraint activateConstraints:v42];
}

- (void)setTableView:(id)view
{
  v4.receiver = self;
  v4.super_class = ENUILoggingInfoHeaderView;
  [(ENUILoggingInfoHeaderView *)&v4 setTableView:view];
  [(ENUILoggingInfoHeaderView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  textViewTrailingConstraint = [(ENUILoggingInfoHeaderView *)self textViewTrailingConstraint];
  [textViewTrailingConstraint constant];
  v5 = v4;
  tableView = [(ENUILoggingInfoHeaderView *)self tableView];
  [tableView _marginWidth];
  v8 = v7;

  if (v5 != v8)
  {
    tableView2 = [(ENUILoggingInfoHeaderView *)self tableView];
    [tableView2 _marginWidth];
    v11 = v10;
    textViewTrailingConstraint2 = [(ENUILoggingInfoHeaderView *)self textViewTrailingConstraint];
    [textViewTrailingConstraint2 setConstant:v11];
  }

  textViewLeadingConstraint = [(ENUILoggingInfoHeaderView *)self textViewLeadingConstraint];
  [textViewLeadingConstraint constant];
  v15 = v14;
  tableView3 = [(ENUILoggingInfoHeaderView *)self tableView];
  [tableView3 _marginWidth];
  v18 = v17;

  if (v15 != v18)
  {
    tableView4 = [(ENUILoggingInfoHeaderView *)self tableView];
    [tableView4 _marginWidth];
    v21 = v20;
    textViewLeadingConstraint2 = [(ENUILoggingInfoHeaderView *)self textViewLeadingConstraint];
    [textViewLeadingConstraint2 setConstant:v21];
  }

  v23.receiver = self;
  v23.super_class = ENUILoggingInfoHeaderView;
  [(ENUILoggingInfoHeaderView *)&v23 updateConstraints];
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  [(ENUILoggingInfoHeaderView *)self setTableView:view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [(ENUILoggingInfoHeaderView *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:v6, v7];
  return v8;
}

@end