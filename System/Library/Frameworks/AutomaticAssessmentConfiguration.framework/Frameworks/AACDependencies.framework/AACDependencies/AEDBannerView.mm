@interface AEDBannerView
- (AEDBannerView)initWithTitle:(id)title;
- (UILabel)titleLabel;
- (UIView)backgroundView;
- (void)buildView;
@end

@implementation AEDBannerView

- (AEDBannerView)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = AEDBannerView;
  v5 = [(AEDBannerView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    [(AEDBannerView *)v5 buildView];
  }

  return v5;
}

- (void)buildView
{
  v40[8] = *MEMORY[0x277D85DE8];
  backgroundView = [(AEDBannerView *)self backgroundView];
  [(AEDBannerView *)self addSubview:backgroundView];

  titleLabel = [(AEDBannerView *)self titleLabel];
  [(AEDBannerView *)self addSubview:titleLabel];

  v26 = MEMORY[0x277CCAAD0];
  backgroundView2 = [(AEDBannerView *)self backgroundView];
  leadingAnchor = [backgroundView2 leadingAnchor];
  leadingAnchor2 = [(AEDBannerView *)self leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v36;
  backgroundView3 = [(AEDBannerView *)self backgroundView];
  trailingAnchor = [backgroundView3 trailingAnchor];
  trailingAnchor2 = [(AEDBannerView *)self trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v32;
  backgroundView4 = [(AEDBannerView *)self backgroundView];
  topAnchor = [backgroundView4 topAnchor];
  topAnchor2 = [(AEDBannerView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v28;
  backgroundView5 = [(AEDBannerView *)self backgroundView];
  bottomAnchor = [backgroundView5 bottomAnchor];
  bottomAnchor2 = [(AEDBannerView *)self bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v23;
  titleLabel2 = [(AEDBannerView *)self titleLabel];
  leadingAnchor3 = [titleLabel2 leadingAnchor];
  leadingAnchor4 = [(AEDBannerView *)self leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:5.0];
  v40[4] = v19;
  titleLabel3 = [(AEDBannerView *)self titleLabel];
  trailingAnchor3 = [titleLabel3 trailingAnchor];
  trailingAnchor4 = [(AEDBannerView *)self trailingAnchor];
  v5 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-5.0];
  v40[5] = v5;
  titleLabel4 = [(AEDBannerView *)self titleLabel];
  topAnchor3 = [titleLabel4 topAnchor];
  topAnchor4 = [(AEDBannerView *)self topAnchor];
  v9 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:13.0];
  v40[6] = v9;
  titleLabel5 = [(AEDBannerView *)self titleLabel];
  bottomAnchor3 = [titleLabel5 bottomAnchor];
  bottomAnchor4 = [(AEDBannerView *)self bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-13.0];
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