@interface AXUIInstructionalCell
- (double)instrinsicContentHeight;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXUIInstructionalCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v52[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = AXUIInstructionalCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v51 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"Title"];
  v6 = [specifierCopy propertyForKey:@"Icon"];
  v7 = [specifierCopy propertyForKey:@"IconIgnoresInvertColors"];
  v8 = [specifierCopy propertyForKey:@"Description"];
  v9 = [specifierCopy propertyForKey:@"URLText"];
  v10 = [specifierCopy propertyForKey:@"ButtonCallback"];
  v11 = [specifierCopy propertyForKey:@"CloseCallback"];
  v12 = [specifierCopy propertyForKey:@"tipType"];

  integerValue = [v12 integerValue];
  hostingController = [(AXUIInstructionalCell *)self hostingController];

  if (!hostingController)
  {
    v15 = [[_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel alloc] initWithTipType:integerValue title:v5 image:v6 imageIgnoresInvertColors:v7 != 0 description:v8 linkTitle:v9 linkCallback:v10 closeCallback:v11];
    [(AXUIInstructionalCell *)self setViewModel:v15];

    v16 = objc_opt_new();
    v17 = [v16 makeContentViewControllerWithViewModel:self->_viewModel];
    [(AXUIInstructionalCell *)self setHostingController:v17];

    hostingController2 = [(AXUIInstructionalCell *)self hostingController];
    [hostingController2 view];
    v19 = v47 = v10;

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(AXUIInstructionalCell *)self contentView];
    [contentView addSubview:v19];

    v39 = MEMORY[0x277CCAAD0];
    topAnchor = [v19 topAnchor];
    contentView2 = [(AXUIInstructionalCell *)self contentView];
    topAnchor2 = [contentView2 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v52[0] = v42;
    leadingAnchor = [v19 leadingAnchor];
    contentView3 = [(AXUIInstructionalCell *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v52[1] = v37;
    trailingAnchor = [v19 trailingAnchor];
    contentView4 = [(AXUIInstructionalCell *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v21 = v50 = v5;
    v52[2] = v21;
    [v19 bottomAnchor];
    v22 = v46 = v11;
    [(AXUIInstructionalCell *)self contentView];
    v23 = v49 = v6;
    [v23 bottomAnchor];
    v24 = v48 = v7;
    v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
    v52[3] = v25;
    [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    v26 = v9;
    v28 = v27 = v8;
    [v39 activateConstraints:v28];

    v8 = v27;
    v9 = v26;

    v7 = v48;
    v6 = v49;

    v11 = v46;
    v5 = v50;

    v10 = v47;
  }

  hostingController3 = [(AXUIInstructionalCell *)self hostingController];
  view = [hostingController3 view];
  [view setNeedsLayout];

  hostingController4 = [(AXUIInstructionalCell *)self hostingController];
  view2 = [hostingController4 view];
  [view2 layoutIfNeeded];

  v33 = *MEMORY[0x277D85DE8];
}

- (double)instrinsicContentHeight
{
  view = [(UIViewController *)self->_hostingController view];
  [view intrinsicContentSize];
  v4 = v3;

  return v4;
}

@end