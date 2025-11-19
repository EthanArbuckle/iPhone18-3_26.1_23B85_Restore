@interface MobileTimerAssistantSnippetHeader
- (MobileTimerAssistantSnippetHeader)initWithFrame:(CGRect)a3;
- (void)localSetup;
- (void)setupConstraints;
- (void)setupTitleLabel;
@end

@implementation MobileTimerAssistantSnippetHeader

- (MobileTimerAssistantSnippetHeader)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MobileTimerAssistantSnippetHeader;
  v3 = [(MobileTimerAssistantSnippetHeader *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v5 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [v5 setTextColor:v4];

  v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v7 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [v7 setFont:v6];

  v8 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  [(MobileTimerAssistantSnippetHeader *)self addSubview:v9];
}

- (void)setupConstraints
{
  v23 = objc_opt_new();
  v3 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:8.0];
  [v23 addObject:v7];

  v8 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  v9 = [v8 trailingAnchor];
  v10 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v23 addObject:v12];

  v13 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  v14 = [v13 topAnchor];
  v15 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:8.0];
  [v23 addObject:v17];

  v18 = [(MobileTimerAssistantSnippetHeader *)self titleLabel];
  v19 = [v18 bottomAnchor];
  v20 = [(MobileTimerAssistantSnippetHeader *)self layoutMarginsGuide];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v23 addObject:v22];

  [NSLayoutConstraint activateConstraints:v23];
}

@end