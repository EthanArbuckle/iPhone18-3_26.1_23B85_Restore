@interface SectionHeaderCollectionReusableView
+ (NSString)reuseIdentifier;
- (BOOL)firstNonEmptySection;
- (BOOL)showsBottomHairline;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)actionTitle;
- (NSString)title;
- (SectionHeaderCollectionReusableView)initWithFrame:(CGRect)frame;
- (SectionHeaderCollectionReusableView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section;
- (id)actionHandler;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifiersWithBaseString:(id)string;
- (void)setActionHandler:(id)handler;
- (void)setActionTitle:(id)title;
- (void)setActionTitle:(id)title completionHandler:(id)handler;
- (void)setFirstNonEmptySection:(BOOL)section;
- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SectionHeaderCollectionReusableView

- (void)setActionTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setActionTitle:titleCopy];

  sectionHeaderView2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView2 setActionHandler:handlerCopy];
}

- (SectionHeaderCollectionReusableView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section
{
  sectionCopy = section;
  titleCopy = title;
  v7 = [(SectionHeaderCollectionReusableView *)self init];
  v8 = v7;
  if (v7)
  {
    [(SectionHeaderCollectionReusableView *)v7 setTitle:titleCopy];
    [(SectionHeaderCollectionReusableView *)v8 setFirstNonEmptySection:sectionCopy];
  }

  return v8;
}

- (id)actionHandler
{
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  actionHandler = [sectionHeaderView actionHandler];

  return actionHandler;
}

- (void)setActionHandler:(id)handler
{
  handlerCopy = handler;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setActionHandler:handlerCopy];
}

- (BOOL)showsBottomHairline
{
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  showsBottomHairline = [sectionHeaderView showsBottomHairline];

  return showsBottomHairline;
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setShowsBottomHairline:hairlineCopy];
}

- (BOOL)firstNonEmptySection
{
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  firstNonEmptySection = [sectionHeaderView firstNonEmptySection];

  return firstNonEmptySection;
}

- (void)setFirstNonEmptySection:(BOOL)section
{
  sectionCopy = section;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setFirstNonEmptySection:sectionCopy];
}

- (NSString)actionTitle
{
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  actionTitle = [sectionHeaderView actionTitle];

  return actionTitle;
}

- (void)setActionTitle:(id)title
{
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setActionTitle:titleCopy];
}

- (NSString)title
{
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  title = [sectionHeaderView title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setTitle:titleCopy];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy stringByAppendingString:@"SectionHeaderView"];
  [(SectionHeaderCollectionReusableView *)self setAccessibilityIdentifier:v5];

  v6 = [stringCopy stringByAppendingString:@"Section"];
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setAccessibilityIdentifier:v6];

  v8 = [stringCopy stringByAppendingString:@"Action"];
  sectionHeaderView2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  actionButton = [sectionHeaderView2 actionButton];
  [actionButton setAccessibilityIdentifier:v8];

  v13 = [stringCopy stringByAppendingString:@"Title"];

  sectionHeaderView3 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  label = [sectionHeaderView3 label];
  [label setAccessibilityIdentifier:v13];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = SectionHeaderCollectionReusableView;
  changeCopy = change;
  [(SectionHeaderCollectionReusableView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(SectionHeaderCollectionReusableView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(SectionHeaderCollectionReusableView *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = SectionHeaderCollectionReusableView;
  [(SectionHeaderCollectionReusableView *)&v3 layoutMarginsDidChange];
  [(SectionHeaderCollectionReusableView *)self invalidateIntrinsicContentSize];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(SectionHeaderCollectionReusableView *)self layoutMargins];
  v11 = v10;
  [(SectionHeaderCollectionReusableView *)self layoutMargins];
  v13 = width - (v11 + v12);
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView updateConstraintsWithAvailableWidthWithoutMargins:v13];

  v19.receiver = self;
  v19.super_class = SectionHeaderCollectionReusableView;
  *&v15 = priority;
  *&v16 = fittingPriority;
  [(SectionHeaderCollectionReusableView *)&v19 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v15, v16];
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SectionHeaderCollectionReusableView;
  [(SectionHeaderCollectionReusableView *)&v4 prepareForReuse];
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView clearContents];
}

- (void)setFirstNonEmptySection:(BOOL)section topMargin:(double)margin
{
  sectionCopy = section;
  sectionHeaderView = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [sectionHeaderView setFirstNonEmptySection:sectionCopy topMargin:margin];
}

- (SectionHeaderCollectionReusableView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = SectionHeaderCollectionReusableView;
  v3 = [(SectionHeaderCollectionReusableView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(SectionHeaderCollectionReusableView *)v3 setBackgroundColor:v4];

    [(SectionHeaderCollectionReusableView *)v3 setAccessibilityIdentifier:@"SectionHeaderCollectionReusableView"];
    [(SectionHeaderCollectionReusableView *)v3 _mapsui_resetLayoutMargins];
    [(SectionHeaderCollectionReusableView *)v3 setEdgesPreservingSuperviewLayoutMargins:10];
    v5 = objc_alloc_init(SectionHeaderView);
    sectionHeaderView = v3->_sectionHeaderView;
    v3->_sectionHeaderView = v5;

    [(SectionHeaderView *)v3->_sectionHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SectionHeaderCollectionReusableView *)v3 addSubview:v3->_sectionHeaderView];
    leadingAnchor = [(SectionHeaderView *)v3->_sectionHeaderView leadingAnchor];
    leadingAnchor2 = [(SectionHeaderCollectionReusableView *)v3 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[0] = v18;
    trailingAnchor = [(SectionHeaderView *)v3->_sectionHeaderView trailingAnchor];
    trailingAnchor2 = [(SectionHeaderCollectionReusableView *)v3 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[1] = v8;
    topAnchor = [(SectionHeaderView *)v3->_sectionHeaderView topAnchor];
    topAnchor2 = [(SectionHeaderCollectionReusableView *)v3 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[2] = v11;
    bottomAnchor = [(SectionHeaderView *)v3->_sectionHeaderView bottomAnchor];
    bottomAnchor2 = [(SectionHeaderCollectionReusableView *)v3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[3] = v14;
    v15 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }

  return v3;
}

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end