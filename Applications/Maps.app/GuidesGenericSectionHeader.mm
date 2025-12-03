@interface GuidesGenericSectionHeader
- (GuidesGenericSectionHeader)initWithFrame:(CGRect)frame;
- (void)_didTapActionButton;
- (void)configureWithTitle:(id)title;
- (void)configureWithTitle:(id)title actionButtonTitle:(id)buttonTitle actionHandler:(id)handler;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation GuidesGenericSectionHeader

- (void)_didTapActionButton
{
  actionHandler = [(GuidesGenericSectionHeader *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(GuidesGenericSectionHeader *)self actionHandler];
    actionHandler2[2]();
  }
}

- (void)setupConstraints
{
  titleLabel = [(GuidesGenericSectionHeader *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(GuidesGenericSectionHeader *)self leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v39[0] = v35;
  titleLabel2 = [(GuidesGenericSectionHeader *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  trailingAnchor2 = [(GuidesGenericSectionHeader *)self trailingAnchor];
  v31 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v39[1] = v31;
  titleLabel3 = [(GuidesGenericSectionHeader *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  topAnchor2 = [(GuidesGenericSectionHeader *)self topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v39[2] = v27;
  titleLabel4 = [(GuidesGenericSectionHeader *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  bottomAnchor2 = [(GuidesGenericSectionHeader *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v39[3] = v23;
  actionButton = [(GuidesGenericSectionHeader *)self actionButton];
  leadingAnchor3 = [actionButton leadingAnchor];
  titleLabel5 = [(GuidesGenericSectionHeader *)self titleLabel];
  trailingAnchor3 = [titleLabel5 trailingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3];
  v39[4] = v18;
  actionButton2 = [(GuidesGenericSectionHeader *)self actionButton];
  trailingAnchor4 = [actionButton2 trailingAnchor];
  trailingAnchor5 = [(GuidesGenericSectionHeader *)self trailingAnchor];
  v14 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v39[5] = v14;
  actionButton3 = [(GuidesGenericSectionHeader *)self actionButton];
  topAnchor3 = [actionButton3 topAnchor];
  titleLabel6 = [(GuidesGenericSectionHeader *)self titleLabel];
  topAnchor4 = [titleLabel6 topAnchor];
  v6 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v39[6] = v6;
  actionButton4 = [(GuidesGenericSectionHeader *)self actionButton];
  bottomAnchor3 = [actionButton4 bottomAnchor];
  titleLabel7 = [(GuidesGenericSectionHeader *)self titleLabel];
  bottomAnchor4 = [titleLabel7 bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v39[7] = v11;
  v12 = [NSArray arrayWithObjects:v39 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UILabel);
  [(GuidesGenericSectionHeader *)self setTitleLabel:v3];

  titleLabel = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel3 setAccessibilityIdentifier:@"TitleLabel"];

  titleLabel4 = [(GuidesGenericSectionHeader *)self titleLabel];
  [(GuidesGenericSectionHeader *)self addSubview:titleLabel4];

  v8 = [MapsThemeButton buttonWithType:0];
  [(GuidesGenericSectionHeader *)self setActionButton:v8];

  actionButton = [(GuidesGenericSectionHeader *)self actionButton];
  LODWORD(v10) = 1144750080;
  [actionButton setContentHuggingPriority:0 forAxis:v10];

  actionButton2 = [(GuidesGenericSectionHeader *)self actionButton];
  LODWORD(v12) = 1144750080;
  [actionButton2 setContentCompressionResistancePriority:0 forAxis:v12];

  actionButton3 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  actionButton4 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton4 setTitleColorProvider:&stru_10162E300];

  v15 = +[UIFont system15];
  actionButton5 = [(GuidesGenericSectionHeader *)self actionButton];
  titleLabel5 = [actionButton5 titleLabel];
  [titleLabel5 setFont:v15];

  actionButton6 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton6 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];

  actionButton7 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton7 addTarget:self action:"_didTapActionButton" forControlEvents:64];

  actionButton8 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton8 setAccessibilityIdentifier:@"ActionButton"];

  actionButton9 = [(GuidesGenericSectionHeader *)self actionButton];
  [(GuidesGenericSectionHeader *)self addSubview:actionButton9];

  actionButton = self->_actionButton;

  [(MapsThemeButton *)actionButton setHidden:1];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = GuidesGenericSectionHeader;
  [(GuidesGenericSectionHeader *)&v7 prepareForReuse];
  titleLabel = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel setAttributedText:0];

  actionButton = [(GuidesGenericSectionHeader *)self actionButton];
  titleLabel2 = [actionButton titleLabel];
  [titleLabel2 setText:0];

  actionButton2 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton2 setHidden:1];

  [(GuidesGenericSectionHeader *)self setActionHandler:0];
}

- (void)configureWithTitle:(id)title actionButtonTitle:(id)buttonTitle actionHandler:(id)handler
{
  handlerCopy = handler;
  buttonTitleCopy = buttonTitle;
  titleCopy = title;
  titleLabel = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel setAttributedText:titleCopy];

  actionButton = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton setTitle:buttonTitleCopy forState:0];

  [(GuidesGenericSectionHeader *)self setActionHandler:handlerCopy];
  actionButton2 = [(GuidesGenericSectionHeader *)self actionButton];
  [actionButton2 setHidden:0];
}

- (void)configureWithTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(GuidesGenericSectionHeader *)self titleLabel];
  [titleLabel setAttributedText:titleCopy];
}

- (GuidesGenericSectionHeader)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GuidesGenericSectionHeader;
  v3 = [(GuidesGenericSectionHeader *)&v6 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = v3;
  if (v3)
  {
    [(GuidesGenericSectionHeader *)v3 setupSubviews];
    [(GuidesGenericSectionHeader *)v4 setupConstraints];
    [(GuidesGenericSectionHeader *)v4 setAccessibilityIdentifier:@"GuidesSectionHeader"];
  }

  return v4;
}

@end