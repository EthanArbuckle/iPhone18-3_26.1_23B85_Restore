@interface SwiftUIContainerCell
- (SwiftUIContainerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setNewSwiftUIViewFromSpecifier:(id)specifier;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation SwiftUIContainerCell

- (SwiftUIContainerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = SwiftUIContainerCell;
  v9 = [(SwiftUIContainerCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(SwiftUIContainerCell *)v9 setNewSwiftUIViewFromSpecifier:specifierCopy];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = SwiftUIContainerCell;
  specifierCopy = specifier;
  [(SwiftUIContainerCell *)&v5 refreshCellContentsWithSpecifier:specifierCopy];
  [(SwiftUIContainerCell *)self setNewSwiftUIViewFromSpecifier:specifierCopy, v5.receiver, v5.super_class];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = SwiftUIContainerCell;
  [(SwiftUIContainerCell *)&v6 prepareForReuse];
  child = [(SwiftUIContainerCell *)self child];

  if (child)
  {
    child2 = [(SwiftUIContainerCell *)self child];
    view = [child2 view];
    [view removeFromSuperview];

    [(SwiftUIContainerCell *)self setChild:0];
  }
}

- (void)setNewSwiftUIViewFromSpecifier:(id)specifier
{
  v4 = [specifier objectForKeyedSubscript:@"SwiftUIContainerCellViewController"];
  [(SwiftUIContainerCell *)self setChild:v4];

  child = [(SwiftUIContainerCell *)self child];
  view = [child view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(SwiftUIContainerCell *)self contentView];
  child2 = [(SwiftUIContainerCell *)self child];
  view2 = [child2 view];
  [contentView addSubview:view2];

  child3 = [(SwiftUIContainerCell *)self child];
  view3 = [child3 view];
  topAnchor = [view3 topAnchor];
  contentView2 = [(SwiftUIContainerCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v35[0] = v29;
  child4 = [(SwiftUIContainerCell *)self child];
  view4 = [child4 view];
  leadingAnchor = [view4 leadingAnchor];
  contentView3 = [(SwiftUIContainerCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[1] = v23;
  child5 = [(SwiftUIContainerCell *)self child];
  view5 = [child5 view];
  trailingAnchor = [view5 trailingAnchor];
  contentView4 = [(SwiftUIContainerCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[2] = v12;
  child6 = [(SwiftUIContainerCell *)self child];
  view6 = [child6 view];
  bottomAnchor = [view6 bottomAnchor];
  contentView5 = [(SwiftUIContainerCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v35[3] = v18;
  v20 = [NSArray arrayWithObjects:v35 count:4];

  [NSLayoutConstraint activateConstraints:v20];
  [(SwiftUIContainerCell *)self setNeedsLayout];
  [(SwiftUIContainerCell *)self setNeedsDisplay];
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = SwiftUIContainerCell;
  [(SwiftUIContainerCell *)&v3 setSeparatorStyle:0];
}

@end