@interface ASAccessoryCompanionAppCell
- (void)commonInit;
@end

@implementation ASAccessoryCompanionAppCell

- (void)commonInit
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [(ASAccessoryCompanionAppCell *)self contentView];
  v4 = [(PSTableCell *)self specifier];
  v22 = [v4 userInfo];

  v5 = [[ASAccessoryCompanionAppView alloc] initWithBundleID:v22];
  appView = self->_appView;
  self->_appView = v5;

  [(ASAccessoryCompanionAppView *)self->_appView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_appView];
  v17 = MEMORY[0x277CCAAD0];
  v21 = [(ASAccessoryCompanionAppView *)self->_appView topAnchor];
  v20 = [v3 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v23[0] = v19;
  v18 = [(ASAccessoryCompanionAppView *)self->_appView bottomAnchor];
  v7 = [v3 bottomAnchor];
  v8 = [v18 constraintEqualToAnchor:v7];
  v23[1] = v8;
  v9 = [(ASAccessoryCompanionAppView *)self->_appView leadingAnchor];
  v10 = [v3 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v23[2] = v11;
  v12 = [(ASAccessoryCompanionAppView *)self->_appView trailingAnchor];
  v13 = [v3 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end