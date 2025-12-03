@interface DevicesHeaderView
- (DevicesHeaderView)initWithSpecifier:(id)specifier;
- (NSString)name;
- (UIListContentConfiguration)listContentConfiguration;
- (double)preferredHeightForWidth:(double)width;
- (void)setListContentConfiguration:(id)configuration;
- (void)setName:(id)name;
- (void)setupSubviewsWithSpecifier:(id)specifier;
@end

@implementation DevicesHeaderView

- (DevicesHeaderView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = DevicesHeaderView;
  v5 = [(DevicesHeaderView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DevicesHeaderView *)v5 setAutoresizingMask:2];
    [(DevicesHeaderView *)v6 setupSubviewsWithSpecifier:specifierCopy];
  }

  return v6;
}

- (NSString)name
{
  listContentConfiguration = [(DevicesHeaderView *)self listContentConfiguration];
  text = [listContentConfiguration text];

  return text;
}

- (void)setName:(id)name
{
  nameCopy = name;
  listContentConfiguration = [(DevicesHeaderView *)self listContentConfiguration];
  [listContentConfiguration setText:nameCopy];

  [(DevicesHeaderView *)self setListContentConfiguration:listContentConfiguration];
}

- (UIListContentConfiguration)listContentConfiguration
{
  listContentView = [(DevicesHeaderView *)self listContentView];
  configuration = [listContentView configuration];

  return configuration;
}

- (void)setListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  listContentView = [(DevicesHeaderView *)self listContentView];
  [listContentView setConfiguration:configurationCopy];
}

- (double)preferredHeightForWidth:(double)width
{
  spinner = [(DevicesHeaderView *)self spinner];
  [spinner frame];
  v7 = v6 + 24.0;

  listContentView = [(DevicesHeaderView *)self listContentView];
  [listContentView sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;

  if (v7 >= v10)
  {
    return v7;
  }

  else
  {
    return v10;
  }
}

- (void)setupSubviewsWithSpecifier:(id)specifier
{
  v53[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756E0];
  specifierCopy = specifier;
  groupedHeaderConfiguration = [v4 groupedHeaderConfiguration];
  name = [specifierCopy name];

  v52 = groupedHeaderConfiguration;
  [groupedHeaderConfiguration setText:name];

  v8 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:groupedHeaderConfiguration];
  [(DevicesHeaderView *)self setListContentView:v8];

  contentView = [(DevicesHeaderView *)self contentView];
  listContentView = [(DevicesHeaderView *)self listContentView];
  [contentView addSubview:listContentView];

  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(DevicesHeaderView *)self setSpinner:v11];

  spinner = [(DevicesHeaderView *)self spinner];
  [spinner startAnimating];

  contentView2 = [(DevicesHeaderView *)self contentView];
  spinner2 = [(DevicesHeaderView *)self spinner];
  [contentView2 addSubview:spinner2];

  listContentView2 = [(DevicesHeaderView *)self listContentView];
  [listContentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner3 = [(DevicesHeaderView *)self spinner];
  [spinner3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = MEMORY[0x277CCAAD0];
  listContentView3 = [(DevicesHeaderView *)self listContentView];
  leadingAnchor = [listContentView3 leadingAnchor];
  contentView3 = [(DevicesHeaderView *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v47;
  listContentView4 = [(DevicesHeaderView *)self listContentView];
  topAnchor = [listContentView4 topAnchor];
  contentView4 = [(DevicesHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53[1] = v42;
  listContentView5 = [(DevicesHeaderView *)self listContentView];
  trailingAnchor = [listContentView5 trailingAnchor];
  contentView5 = [(DevicesHeaderView *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[2] = v36;
  listContentView6 = [(DevicesHeaderView *)self listContentView];
  bottomAnchor = [listContentView6 bottomAnchor];
  contentView6 = [(DevicesHeaderView *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[3] = v31;
  spinner4 = [(DevicesHeaderView *)self spinner];
  leadingAnchor3 = [spinner4 leadingAnchor];
  listContentView7 = [(DevicesHeaderView *)self listContentView];
  textLayoutGuide = [listContentView7 textLayoutGuide];
  trailingAnchor3 = [textLayoutGuide trailingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v53[4] = v19;
  spinner5 = [(DevicesHeaderView *)self spinner];
  centerYAnchor = [spinner5 centerYAnchor];
  listContentView8 = [(DevicesHeaderView *)self listContentView];
  textLayoutGuide2 = [listContentView8 textLayoutGuide];
  centerYAnchor2 = [textLayoutGuide2 centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[5] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:6];
  [v37 activateConstraints:v26];

  v27 = *MEMORY[0x277D85DE8];
}

@end