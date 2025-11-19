@interface AXUIInstructionalCell
- (double)instrinsicContentHeight;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXUIInstructionalCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v52[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = AXUIInstructionalCell;
  v4 = a3;
  [(PSTableCell *)&v51 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"Title"];
  v6 = [v4 propertyForKey:@"Icon"];
  v7 = [v4 propertyForKey:@"IconIgnoresInvertColors"];
  v8 = [v4 propertyForKey:@"Description"];
  v9 = [v4 propertyForKey:@"URLText"];
  v10 = [v4 propertyForKey:@"ButtonCallback"];
  v11 = [v4 propertyForKey:@"CloseCallback"];
  v12 = [v4 propertyForKey:@"tipType"];

  v13 = [v12 integerValue];
  v14 = [(AXUIInstructionalCell *)self hostingController];

  if (!v14)
  {
    v15 = [[_TtC23AccessibilitySettingsUI37AXUIInstructionalCellContentViewModel alloc] initWithTipType:v13 title:v5 image:v6 imageIgnoresInvertColors:v7 != 0 description:v8 linkTitle:v9 linkCallback:v10 closeCallback:v11];
    [(AXUIInstructionalCell *)self setViewModel:v15];

    v16 = objc_opt_new();
    v17 = [v16 makeContentViewControllerWithViewModel:self->_viewModel];
    [(AXUIInstructionalCell *)self setHostingController:v17];

    v18 = [(AXUIInstructionalCell *)self hostingController];
    [v18 view];
    v19 = v47 = v10;

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(AXUIInstructionalCell *)self contentView];
    [v20 addSubview:v19];

    v39 = MEMORY[0x277CCAAD0];
    v44 = [v19 topAnchor];
    v45 = [(AXUIInstructionalCell *)self contentView];
    v43 = [v45 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:0.0];
    v52[0] = v42;
    v40 = [v19 leadingAnchor];
    v41 = [(AXUIInstructionalCell *)self contentView];
    v38 = [v41 leadingAnchor];
    v37 = [v40 constraintEqualToAnchor:v38 constant:0.0];
    v52[1] = v37;
    v35 = [v19 trailingAnchor];
    v36 = [(AXUIInstructionalCell *)self contentView];
    v34 = [v36 trailingAnchor];
    [v35 constraintEqualToAnchor:v34 constant:0.0];
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

  v29 = [(AXUIInstructionalCell *)self hostingController];
  v30 = [v29 view];
  [v30 setNeedsLayout];

  v31 = [(AXUIInstructionalCell *)self hostingController];
  v32 = [v31 view];
  [v32 layoutIfNeeded];

  v33 = *MEMORY[0x277D85DE8];
}

- (double)instrinsicContentHeight
{
  v2 = [(UIViewController *)self->_hostingController view];
  [v2 intrinsicContentSize];
  v4 = v3;

  return v4;
}

@end