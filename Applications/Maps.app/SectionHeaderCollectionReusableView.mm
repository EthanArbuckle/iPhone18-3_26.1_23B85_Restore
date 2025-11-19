@interface SectionHeaderCollectionReusableView
+ (NSString)reuseIdentifier;
- (BOOL)firstNonEmptySection;
- (BOOL)showsBottomHairline;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSString)actionTitle;
- (NSString)title;
- (SectionHeaderCollectionReusableView)initWithFrame:(CGRect)a3;
- (SectionHeaderCollectionReusableView)initWithTitle:(id)a3 isFirstNonEmptySection:(BOOL)a4;
- (id)actionHandler;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifiersWithBaseString:(id)a3;
- (void)setActionHandler:(id)a3;
- (void)setActionTitle:(id)a3;
- (void)setActionTitle:(id)a3 completionHandler:(id)a4;
- (void)setFirstNonEmptySection:(BOOL)a3;
- (void)setFirstNonEmptySection:(BOOL)a3 topMargin:(double)a4;
- (void)setShowsBottomHairline:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SectionHeaderCollectionReusableView

- (void)setActionTitle:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v8 setActionTitle:v7];

  v9 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v9 setActionHandler:v6];
}

- (SectionHeaderCollectionReusableView)initWithTitle:(id)a3 isFirstNonEmptySection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SectionHeaderCollectionReusableView *)self init];
  v8 = v7;
  if (v7)
  {
    [(SectionHeaderCollectionReusableView *)v7 setTitle:v6];
    [(SectionHeaderCollectionReusableView *)v8 setFirstNonEmptySection:v4];
  }

  return v8;
}

- (id)actionHandler
{
  v2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v3 = [v2 actionHandler];

  return v3;
}

- (void)setActionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v5 setActionHandler:v4];
}

- (BOOL)showsBottomHairline
{
  v2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v3 = [v2 showsBottomHairline];

  return v3;
}

- (void)setShowsBottomHairline:(BOOL)a3
{
  v3 = a3;
  v4 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v4 setShowsBottomHairline:v3];
}

- (BOOL)firstNonEmptySection
{
  v2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v3 = [v2 firstNonEmptySection];

  return v3;
}

- (void)setFirstNonEmptySection:(BOOL)a3
{
  v3 = a3;
  v4 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v4 setFirstNonEmptySection:v3];
}

- (NSString)actionTitle
{
  v2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v3 = [v2 actionTitle];

  return v3;
}

- (void)setActionTitle:(id)a3
{
  v4 = a3;
  v5 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v5 setActionTitle:v4];
}

- (NSString)title
{
  v2 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v3 = [v2 title];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v5 setTitle:v4];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"SectionHeaderView"];
  [(SectionHeaderCollectionReusableView *)self setAccessibilityIdentifier:v5];

  v6 = [v4 stringByAppendingString:@"Section"];
  v7 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v7 setAccessibilityIdentifier:v6];

  v8 = [v4 stringByAppendingString:@"Action"];
  v9 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v10 = [v9 actionButton];
  [v10 setAccessibilityIdentifier:v8];

  v13 = [v4 stringByAppendingString:@"Title"];

  v11 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  v12 = [v11 label];
  [v12 setAccessibilityIdentifier:v13];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = SectionHeaderCollectionReusableView;
  v4 = a3;
  [(SectionHeaderCollectionReusableView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SectionHeaderCollectionReusableView *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(SectionHeaderCollectionReusableView *)self layoutMargins];
  v11 = v10;
  [(SectionHeaderCollectionReusableView *)self layoutMargins];
  v13 = width - (v11 + v12);
  v14 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v14 updateConstraintsWithAvailableWidthWithoutMargins:v13];

  v19.receiver = self;
  v19.super_class = SectionHeaderCollectionReusableView;
  *&v15 = a4;
  *&v16 = a5;
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
  v3 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v3 clearContents];
}

- (void)setFirstNonEmptySection:(BOOL)a3 topMargin:(double)a4
{
  v5 = a3;
  v6 = [(SectionHeaderCollectionReusableView *)self sectionHeaderView];
  [v6 setFirstNonEmptySection:v5 topMargin:a4];
}

- (SectionHeaderCollectionReusableView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = SectionHeaderCollectionReusableView;
  v3 = [(SectionHeaderCollectionReusableView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v20 = [(SectionHeaderView *)v3->_sectionHeaderView leadingAnchor];
    v19 = [(SectionHeaderCollectionReusableView *)v3 leadingAnchor];
    v18 = [v20 constraintEqualToAnchor:v19];
    v22[0] = v18;
    v17 = [(SectionHeaderView *)v3->_sectionHeaderView trailingAnchor];
    v7 = [(SectionHeaderCollectionReusableView *)v3 trailingAnchor];
    v8 = [v17 constraintEqualToAnchor:v7];
    v22[1] = v8;
    v9 = [(SectionHeaderView *)v3->_sectionHeaderView topAnchor];
    v10 = [(SectionHeaderCollectionReusableView *)v3 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v22[2] = v11;
    v12 = [(SectionHeaderView *)v3->_sectionHeaderView bottomAnchor];
    v13 = [(SectionHeaderCollectionReusableView *)v3 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
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