@interface ASAccessoryInfoHeaderCell
- (void)commonInit;
@end

@implementation ASAccessoryInfoHeaderCell

- (void)commonInit
{
  v27[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(ASAccessoryInfoHeaderCell *)self setBackgroundColor:v3];

  v4 = [(PSTableCell *)self specifier];
  v26 = [v4 userInfo];

  v5 = [[ASAccessoryInfoHeaderView alloc] initWithDevice:v26 insets:16.0, 16.0, 16.0, 16.0];
  [(ASAccessoryInfoHeaderView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(ASAccessoryInfoHeaderCell *)self contentView];
  [v6 addSubview:v5];

  v18 = MEMORY[0x277CCAAD0];
  v24 = [(ASAccessoryInfoHeaderView *)v5 leadingAnchor];
  v25 = [(ASAccessoryInfoHeaderCell *)self contentView];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v20 = [(ASAccessoryInfoHeaderView *)v5 trailingAnchor];
  v21 = [(ASAccessoryInfoHeaderCell *)self contentView];
  v19 = [v21 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v27[1] = v17;
  v7 = [(ASAccessoryInfoHeaderView *)v5 topAnchor];
  v8 = [(ASAccessoryInfoHeaderCell *)self contentView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v27[2] = v10;
  v11 = [(ASAccessoryInfoHeaderView *)v5 bottomAnchor];
  v12 = [(ASAccessoryInfoHeaderCell *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v27[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [v18 activateConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

@end