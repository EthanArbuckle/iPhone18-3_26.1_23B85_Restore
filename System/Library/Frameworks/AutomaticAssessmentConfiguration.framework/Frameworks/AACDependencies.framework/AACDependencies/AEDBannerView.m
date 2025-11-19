@interface AEDBannerView
- (AEDBannerView)initWithTitle:(id)a3;
- (UILabel)titleLabel;
- (UIView)backgroundView;
- (void)buildView;
@end

@implementation AEDBannerView

- (AEDBannerView)initWithTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEDBannerView;
  v5 = [(AEDBannerView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    [(AEDBannerView *)v5 buildView];
  }

  return v5;
}

- (void)buildView
{
  v40[8] = *MEMORY[0x277D85DE8];
  v3 = [(AEDBannerView *)self backgroundView];
  [(AEDBannerView *)self addSubview:v3];

  v4 = [(AEDBannerView *)self titleLabel];
  [(AEDBannerView *)self addSubview:v4];

  v26 = MEMORY[0x277CCAAD0];
  v39 = [(AEDBannerView *)self backgroundView];
  v38 = [v39 leadingAnchor];
  v37 = [(AEDBannerView *)self leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v40[0] = v36;
  v35 = [(AEDBannerView *)self backgroundView];
  v34 = [v35 trailingAnchor];
  v33 = [(AEDBannerView *)self trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v40[1] = v32;
  v31 = [(AEDBannerView *)self backgroundView];
  v30 = [v31 topAnchor];
  v29 = [(AEDBannerView *)self topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v40[2] = v28;
  v27 = [(AEDBannerView *)self backgroundView];
  v25 = [v27 bottomAnchor];
  v24 = [(AEDBannerView *)self bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v40[3] = v23;
  v22 = [(AEDBannerView *)self titleLabel];
  v21 = [v22 leadingAnchor];
  v20 = [(AEDBannerView *)self leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:5.0];
  v40[4] = v19;
  v18 = [(AEDBannerView *)self titleLabel];
  v17 = [v18 trailingAnchor];
  v16 = [(AEDBannerView *)self trailingAnchor];
  v5 = [v17 constraintEqualToAnchor:v16 constant:-5.0];
  v40[5] = v5;
  v6 = [(AEDBannerView *)self titleLabel];
  v7 = [v6 topAnchor];
  v8 = [(AEDBannerView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:13.0];
  v40[6] = v9;
  v10 = [(AEDBannerView *)self titleLabel];
  v11 = [v10 bottomAnchor];
  v12 = [(AEDBannerView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-13.0];
  v40[7] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:8];
  [v26 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (UIView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = __31__AEDBannerView_backgroundView__block_invoke();
    v5 = self->_backgroundView;
    self->_backgroundView = v4;

    backgroundView = self->_backgroundView;
  }

  v6 = backgroundView;

  return v6;
}

id __31__AEDBannerView_backgroundView__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2030];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v0;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__AEDBannerView_titleLabel__block_invoke;
    v8[3] = &unk_278A0C418;
    v8[4] = self;
    v4 = __27__AEDBannerView_titleLabel__block_invoke(v8);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    titleLabel = self->_titleLabel;
  }

  v6 = titleLabel;

  return v6;
}

id __27__AEDBannerView_titleLabel__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [*(a1 + 32) title];
  [v3 setText:v4];

  v5 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setLineBreakStrategy:0];
  v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76978] addingSymbolicTraits:0x8000 options:0];
  v7 = MEMORY[0x277D74300];
  [v6 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];
  [v6 pointSize];
  v9 = [v8 fontWithSize:?];
  [v3 setFont:v9];

  return v3;
}

@end