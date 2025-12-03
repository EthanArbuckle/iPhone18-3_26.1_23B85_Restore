@interface ASAccessoryCompanionAppCell
- (void)commonInit;
@end

@implementation ASAccessoryCompanionAppCell

- (void)commonInit
{
  v23[4] = *MEMORY[0x277D85DE8];
  contentView = [(ASAccessoryCompanionAppCell *)self contentView];
  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  v5 = [[ASAccessoryCompanionAppView alloc] initWithBundleID:userInfo];
  appView = self->_appView;
  self->_appView = v5;

  [(ASAccessoryCompanionAppView *)self->_appView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_appView];
  v17 = MEMORY[0x277CCAAD0];
  topAnchor = [(ASAccessoryCompanionAppView *)self->_appView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[0] = v19;
  bottomAnchor = [(ASAccessoryCompanionAppView *)self->_appView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[1] = v8;
  leadingAnchor = [(ASAccessoryCompanionAppView *)self->_appView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[2] = v11;
  trailingAnchor = [(ASAccessoryCompanionAppView *)self->_appView trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end