@interface GuidesGenericSectionHeader
- (GuidesGenericSectionHeader)initWithFrame:(CGRect)a3;
- (void)_didTapActionButton;
- (void)configureWithTitle:(id)a3;
- (void)configureWithTitle:(id)a3 actionButtonTitle:(id)a4 actionHandler:(id)a5;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation GuidesGenericSectionHeader

- (void)_didTapActionButton
{
  v3 = [(GuidesGenericSectionHeader *)self actionHandler];

  if (v3)
  {
    v4 = [(GuidesGenericSectionHeader *)self actionHandler];
    v4[2]();
  }
}

- (void)setupConstraints
{
  v38 = [(GuidesGenericSectionHeader *)self titleLabel];
  v37 = [v38 leadingAnchor];
  v36 = [(GuidesGenericSectionHeader *)self leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v39[0] = v35;
  v34 = [(GuidesGenericSectionHeader *)self titleLabel];
  v33 = [v34 trailingAnchor];
  v32 = [(GuidesGenericSectionHeader *)self trailingAnchor];
  v31 = [v33 constraintLessThanOrEqualToAnchor:v32];
  v39[1] = v31;
  v30 = [(GuidesGenericSectionHeader *)self titleLabel];
  v29 = [v30 topAnchor];
  v28 = [(GuidesGenericSectionHeader *)self topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v39[2] = v27;
  v26 = [(GuidesGenericSectionHeader *)self titleLabel];
  v25 = [v26 bottomAnchor];
  v24 = [(GuidesGenericSectionHeader *)self bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v39[3] = v23;
  v22 = [(GuidesGenericSectionHeader *)self actionButton];
  v20 = [v22 leadingAnchor];
  v21 = [(GuidesGenericSectionHeader *)self titleLabel];
  v19 = [v21 trailingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v39[4] = v18;
  v17 = [(GuidesGenericSectionHeader *)self actionButton];
  v16 = [v17 trailingAnchor];
  v15 = [(GuidesGenericSectionHeader *)self trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v39[5] = v14;
  v13 = [(GuidesGenericSectionHeader *)self actionButton];
  v3 = [v13 topAnchor];
  v4 = [(GuidesGenericSectionHeader *)self titleLabel];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v39[6] = v6;
  v7 = [(GuidesGenericSectionHeader *)self actionButton];
  v8 = [v7 bottomAnchor];
  v9 = [(GuidesGenericSectionHeader *)self titleLabel];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v39[7] = v11;
  v12 = [NSArray arrayWithObjects:v39 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(UILabel);
  [(GuidesGenericSectionHeader *)self setTitleLabel:v3];

  v4 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v6 setAccessibilityIdentifier:@"TitleLabel"];

  v7 = [(GuidesGenericSectionHeader *)self titleLabel];
  [(GuidesGenericSectionHeader *)self addSubview:v7];

  v8 = [MapsThemeButton buttonWithType:0];
  [(GuidesGenericSectionHeader *)self setActionButton:v8];

  v9 = [(GuidesGenericSectionHeader *)self actionButton];
  LODWORD(v10) = 1144750080;
  [v9 setContentHuggingPriority:0 forAxis:v10];

  v11 = [(GuidesGenericSectionHeader *)self actionButton];
  LODWORD(v12) = 1144750080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = [(GuidesGenericSectionHeader *)self actionButton];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(GuidesGenericSectionHeader *)self actionButton];
  [v14 setTitleColorProvider:&stru_10162E300];

  v15 = +[UIFont system15];
  v16 = [(GuidesGenericSectionHeader *)self actionButton];
  v17 = [v16 titleLabel];
  [v17 setFont:v15];

  v18 = [(GuidesGenericSectionHeader *)self actionButton];
  [v18 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];

  v19 = [(GuidesGenericSectionHeader *)self actionButton];
  [v19 addTarget:self action:"_didTapActionButton" forControlEvents:64];

  v20 = [(GuidesGenericSectionHeader *)self actionButton];
  [v20 setAccessibilityIdentifier:@"ActionButton"];

  v21 = [(GuidesGenericSectionHeader *)self actionButton];
  [(GuidesGenericSectionHeader *)self addSubview:v21];

  actionButton = self->_actionButton;

  [(MapsThemeButton *)actionButton setHidden:1];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = GuidesGenericSectionHeader;
  [(GuidesGenericSectionHeader *)&v7 prepareForReuse];
  v3 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v3 setAttributedText:0];

  v4 = [(GuidesGenericSectionHeader *)self actionButton];
  v5 = [v4 titleLabel];
  [v5 setText:0];

  v6 = [(GuidesGenericSectionHeader *)self actionButton];
  [v6 setHidden:1];

  [(GuidesGenericSectionHeader *)self setActionHandler:0];
}

- (void)configureWithTitle:(id)a3 actionButtonTitle:(id)a4 actionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v11 setAttributedText:v10];

  v12 = [(GuidesGenericSectionHeader *)self actionButton];
  [v12 setTitle:v9 forState:0];

  [(GuidesGenericSectionHeader *)self setActionHandler:v8];
  v13 = [(GuidesGenericSectionHeader *)self actionButton];
  [v13 setHidden:0];
}

- (void)configureWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(GuidesGenericSectionHeader *)self titleLabel];
  [v5 setAttributedText:v4];
}

- (GuidesGenericSectionHeader)initWithFrame:(CGRect)a3
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