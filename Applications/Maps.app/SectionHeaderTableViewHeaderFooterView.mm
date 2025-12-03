@interface SectionHeaderTableViewHeaderFooterView
+ (NSString)reuseIdentifier;
- (BOOL)firstNonEmptySection;
- (BOOL)showsBottomHairline;
- (NSString)actionTitle;
- (NSString)title;
- (SectionHeaderTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (SectionHeaderTableViewHeaderFooterView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section;
- (id)actionHandler;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifiersWithBaseString:(id)string;
- (void)setActionHandler:(id)handler;
- (void)setActionTitle:(id)title;
- (void)setActionTitle:(id)title completionHandler:(id)handler;
- (void)setFirstNonEmptySection:(BOOL)section;
- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)setTitle:(id)title;
@end

@implementation SectionHeaderTableViewHeaderFooterView

- (void)setActionTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setActionTitle:titleCopy];

  sectionHeaderView2 = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView2 setActionHandler:handlerCopy];
}

- (SectionHeaderTableViewHeaderFooterView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section
{
  sectionCopy = section;
  titleCopy = title;
  v7 = [(SectionHeaderTableViewHeaderFooterView *)self initWithReuseIdentifier:0];
  v8 = v7;
  if (v7)
  {
    [(SectionHeaderTableViewHeaderFooterView *)v7 setTitle:titleCopy];
    [(SectionHeaderTableViewHeaderFooterView *)v8 setFirstNonEmptySection:sectionCopy];
  }

  return v8;
}

- (id)actionHandler
{
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  actionHandler = [sectionHeaderView actionHandler];

  return actionHandler;
}

- (void)setActionHandler:(id)handler
{
  handlerCopy = handler;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setActionHandler:handlerCopy];
}

- (BOOL)showsBottomHairline
{
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  showsBottomHairline = [sectionHeaderView showsBottomHairline];

  return showsBottomHairline;
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setShowsBottomHairline:hairlineCopy];
}

- (BOOL)firstNonEmptySection
{
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  firstNonEmptySection = [sectionHeaderView firstNonEmptySection];

  return firstNonEmptySection;
}

- (void)setFirstNonEmptySection:(BOOL)section
{
  sectionCopy = section;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setFirstNonEmptySection:sectionCopy];
}

- (NSString)actionTitle
{
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  actionTitle = [sectionHeaderView actionTitle];

  return actionTitle;
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setActionTitle:titleCopy];
}

- (NSString)title
{
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  title = [sectionHeaderView title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setTitle:titleCopy];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SectionHeaderTableViewHeaderFooterView;
  [(SectionHeaderTableViewHeaderFooterView *)&v4 prepareForReuse];
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView clearContents];
}

- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin
{
  sectionCopy = section;
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setFirstNonEmptySection:sectionCopy topMargin:margin];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy stringByAppendingString:@"SectionHeaderView"];
  [(SectionHeaderTableViewHeaderFooterView *)self setAccessibilityIdentifier:v5];

  v6 = [stringCopy stringByAppendingString:@"SectionHeaderViewContent"];
  contentView = [(SectionHeaderTableViewHeaderFooterView *)self contentView];
  [contentView setAccessibilityIdentifier:v6];

  v8 = [stringCopy stringByAppendingString:@"Section"];
  sectionHeaderView = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  [sectionHeaderView setAccessibilityIdentifier:v8];

  v10 = [stringCopy stringByAppendingString:@"Action"];
  sectionHeaderView2 = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  actionButton = [sectionHeaderView2 actionButton];
  [actionButton setAccessibilityIdentifier:v10];

  v15 = [stringCopy stringByAppendingString:@"Title"];

  sectionHeaderView3 = [(SectionHeaderTableViewHeaderFooterView *)self sectionHeaderView];
  label = [sectionHeaderView3 label];
  [label setAccessibilityIdentifier:v15];
}

- (SectionHeaderTableViewHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = SectionHeaderTableViewHeaderFooterView;
  v3 = [(SectionHeaderTableViewHeaderFooterView *)&v28 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(SectionHeaderTableViewHeaderFooterView *)v3 setBackgroundView:v4];

    [(SectionHeaderTableViewHeaderFooterView *)v3 setAccessibilityIdentifier:@"SectionHeaderTableViewHeaderFooterView"];
    contentView = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    [contentView setAccessibilityIdentifier:@"SectionHeaderTableViewHeaderFooterContent"];

    [(SectionHeaderTableViewHeaderFooterView *)v3 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    contentView2 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    [contentView2 _mapsui_resetLayoutMarginsWithPreservesSuperview:1];

    v7 = objc_alloc_init(SectionHeaderView);
    sectionHeaderView = v3->_sectionHeaderView;
    v3->_sectionHeaderView = v7;

    [(SectionHeaderView *)v3->_sectionHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    [contentView3 addSubview:v3->_sectionHeaderView];

    leadingAnchor = [(SectionHeaderView *)v3->_sectionHeaderView leadingAnchor];
    contentView4 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v24;
    trailingAnchor = [(SectionHeaderView *)v3->_sectionHeaderView trailingAnchor];
    contentView5 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v20;
    topAnchor = [(SectionHeaderView *)v3->_sectionHeaderView topAnchor];
    contentView6 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[2] = v13;
    bottomAnchor = [(SectionHeaderView *)v3->_sectionHeaderView bottomAnchor];
    contentView7 = [(SectionHeaderTableViewHeaderFooterView *)v3 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[3] = v17;
    v18 = [NSArray arrayWithObjects:v29 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v3;
}

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end