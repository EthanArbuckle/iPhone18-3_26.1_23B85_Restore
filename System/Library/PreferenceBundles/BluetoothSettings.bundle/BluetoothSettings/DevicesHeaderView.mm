@interface DevicesHeaderView
- (DevicesHeaderView)initWithSpecifier:(id)a3;
- (NSString)name;
- (UIListContentConfiguration)listContentConfiguration;
- (double)preferredHeightForWidth:(double)a3;
- (void)setListContentConfiguration:(id)a3;
- (void)setName:(id)a3;
- (void)setupSubviewsWithSpecifier:(id)a3;
@end

@implementation DevicesHeaderView

- (DevicesHeaderView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DevicesHeaderView;
  v5 = [(DevicesHeaderView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DevicesHeaderView *)v5 setAutoresizingMask:2];
    [(DevicesHeaderView *)v6 setupSubviewsWithSpecifier:v4];
  }

  return v6;
}

- (NSString)name
{
  v2 = [(DevicesHeaderView *)self listContentConfiguration];
  v3 = [v2 text];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(DevicesHeaderView *)self listContentConfiguration];
  [v5 setText:v4];

  [(DevicesHeaderView *)self setListContentConfiguration:v5];
}

- (UIListContentConfiguration)listContentConfiguration
{
  v2 = [(DevicesHeaderView *)self listContentView];
  v3 = [v2 configuration];

  return v3;
}

- (void)setListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(DevicesHeaderView *)self listContentView];
  [v5 setConfiguration:v4];
}

- (double)preferredHeightForWidth:(double)a3
{
  v5 = [(DevicesHeaderView *)self spinner];
  [v5 frame];
  v7 = v6 + 24.0;

  v8 = [(DevicesHeaderView *)self listContentView];
  [v8 sizeThatFits:{a3, 1.79769313e308}];
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

- (void)setupSubviewsWithSpecifier:(id)a3
{
  v53[6] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D756E0];
  v5 = a3;
  v6 = [v4 groupedHeaderConfiguration];
  v7 = [v5 name];

  v52 = v6;
  [v6 setText:v7];

  v8 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v6];
  [(DevicesHeaderView *)self setListContentView:v8];

  v9 = [(DevicesHeaderView *)self contentView];
  v10 = [(DevicesHeaderView *)self listContentView];
  [v9 addSubview:v10];

  v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(DevicesHeaderView *)self setSpinner:v11];

  v12 = [(DevicesHeaderView *)self spinner];
  [v12 startAnimating];

  v13 = [(DevicesHeaderView *)self contentView];
  v14 = [(DevicesHeaderView *)self spinner];
  [v13 addSubview:v14];

  v15 = [(DevicesHeaderView *)self listContentView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(DevicesHeaderView *)self spinner];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = MEMORY[0x277CCAAD0];
  v51 = [(DevicesHeaderView *)self listContentView];
  v49 = [v51 leadingAnchor];
  v50 = [(DevicesHeaderView *)self contentView];
  v48 = [v50 leadingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v53[0] = v47;
  v46 = [(DevicesHeaderView *)self listContentView];
  v44 = [v46 topAnchor];
  v45 = [(DevicesHeaderView *)self contentView];
  v43 = [v45 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v53[1] = v42;
  v41 = [(DevicesHeaderView *)self listContentView];
  v39 = [v41 trailingAnchor];
  v40 = [(DevicesHeaderView *)self contentView];
  v38 = [v40 trailingAnchor];
  v36 = [v39 constraintEqualToAnchor:v38];
  v53[2] = v36;
  v35 = [(DevicesHeaderView *)self listContentView];
  v33 = [v35 bottomAnchor];
  v34 = [(DevicesHeaderView *)self contentView];
  v32 = [v34 bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v53[3] = v31;
  v30 = [(DevicesHeaderView *)self spinner];
  v28 = [v30 leadingAnchor];
  v29 = [(DevicesHeaderView *)self listContentView];
  v17 = [v29 textLayoutGuide];
  v18 = [v17 trailingAnchor];
  v19 = [v28 constraintEqualToAnchor:v18 constant:10.0];
  v53[4] = v19;
  v20 = [(DevicesHeaderView *)self spinner];
  v21 = [v20 centerYAnchor];
  v22 = [(DevicesHeaderView *)self listContentView];
  v23 = [v22 textLayoutGuide];
  v24 = [v23 centerYAnchor];
  v25 = [v21 constraintEqualToAnchor:v24];
  v53[5] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:6];
  [v37 activateConstraints:v26];

  v27 = *MEMORY[0x277D85DE8];
}

@end