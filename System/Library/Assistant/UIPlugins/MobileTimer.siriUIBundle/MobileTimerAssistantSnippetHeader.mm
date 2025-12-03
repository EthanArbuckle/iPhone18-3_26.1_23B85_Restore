@interface MobileTimerAssistantSnippetHeader
- (MobileTimerAssistantSnippetHeader)initWithFrame:(CGRect)frame;
- (void)localSetup;
- (void)setupConstraints;
- (void)setupTitleLabel;
@end

@implementation MobileTimerAssistantSnippetHeader

- (MobileTimerAssistantSnippetHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MobileTimerAssistantSnippetHeader;
  v3 = [(MobileTimerAssistantSnippetHeader *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MobileTimerAssistantSnippetHeader *)v3 localSetup];
  }

  return v4;
}

- (void)localSetup
{
  [(MobileTimerAssistantSnippetHeader *)self setupTitleLabel];

  [(MobileTimerAssistantSnippetHeader *)self setupConstraints];
}

- (void)setupTitleLabel
{
  v3 = objc_opt_new();
  [(MobileTimerAssistantSnippetHeader *)self setTitleLabel:v3];

  v4 = +[UIColor labelColor];
  titleLabel = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [titleLabel setTextColor:v4];

  v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  titleLabel2 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [titleLabel2 setFont:v6];

  titleLabel3 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel4 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [(MobileTimerAssistantSnippetHeader *)self addSubview:titleLabel4];
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  titleLabel = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  layoutMarginsGuide = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  [v23 addObject:v7];

  titleLabel2 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  layoutMarginsGuide2 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v23 addObject:v12];

  titleLabel3 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  layoutMarginsGuide3 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v23 addObject:v17];

  titleLabel4 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  layoutMarginsGuide4 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

@end