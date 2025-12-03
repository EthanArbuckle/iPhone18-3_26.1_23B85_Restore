@interface BTTableCell
- (BTTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDeviceStatePaired:(BOOL)paired andConnected:(BOOL)connected andPendingSetup:(BOOL)setup;
@end

@implementation BTTableCell

- (BTTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = BTTableCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:1 reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    contentView = [(BTTableCell *)v5 contentView];
    [contentView addSubview:v5->_spinner];
  }

  return v5;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = BTTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setDeviceStatePaired:(BOOL)paired andConnected:(BOOL)connected andPendingSetup:(BOOL)setup
{
  if (connected)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (connected)
  {
    v6 = 5;
  }

  else
  {
    v6 = 3;
  }

  if (paired)
  {
    v5 = v6;
  }

  if (connected)
  {
    v7 = 7;
  }

  else
  {
    v7 = 6;
  }

  if (setup)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  [(BTTableCell *)self setDeviceState:v8];
}

- (void)layoutSubviews
{
  v86[1] = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = BTTableCell;
  [(PSTableCell *)&v84 layoutSubviews];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = 6.0;
  v13 = 6.0;
  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v13 = v14;
  }

  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v12 = v15;
  }

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if ([(BTTableCell *)self state]== 1 || [(BTTableCell *)self state]== 4)
  {
    valueLabel = [(PSTableCell *)self valueLabel];
    [valueLabel setAlpha:0.0];

    spinner = [(BTTableCell *)self spinner];
    [spinner frame];
    v20 = v19;
    v22 = v21;

    if (!userInterfaceLayoutDirection)
    {
      contentView = [(BTTableCell *)self contentView];
      [contentView frame];
      v12 = v24 - v20 - v12;
    }

    contentView2 = [(BTTableCell *)self contentView];
    [contentView2 frame];
    v27 = floor((v26 - v22) * 0.5);

    v87.origin.x = v12;
    v87.origin.y = v27;
    v87.size.width = v20;
    v87.size.height = v22;
    v88 = CGRectIntegral(v87);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    spinner2 = [(BTTableCell *)self spinner];
    [spinner2 setFrame:{x, y, width, height}];

    spinner3 = [(BTTableCell *)self spinner];
    [spinner3 startAnimating];

    contentView3 = [(BTTableCell *)self contentView];
    [contentView3 frame];
    v36 = v35 - v20;
    contentView4 = [(BTTableCell *)self contentView];
    [contentView4 layoutMargins];
    v9 = v36 - v38 - v13 + -12.0;
  }

  else
  {
    spinner4 = [(BTTableCell *)self spinner];
    [spinner4 stopAnimating];

    valueLabel2 = [(PSTableCell *)self valueLabel];
    [valueLabel2 setAlpha:1.0];

    traitCollection = [(BTTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      goto LABEL_14;
    }

    valueLabel3 = [(PSTableCell *)self valueLabel];
    text = [valueLabel3 text];
    contentView5 = [(BTTableCell *)self contentView];
    [contentView5 bounds];
    v61 = v60;
    v63 = v62;
    v85 = *MEMORY[0x277D740A8];
    valueLabel4 = [(PSTableCell *)self valueLabel];
    font = [valueLabel4 font];
    v86[0] = font;
    v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    [text boundingRectWithSize:0 options:v66 attributes:0 context:{v61, v63}];
    v68 = v67;
    v70 = v69;

    v71 = ceil(v68);
    v72 = ceil(v70);
    v73 = v13;
    if (!userInterfaceLayoutDirection)
    {
      contentView6 = [(BTTableCell *)self contentView];
      [contentView6 frame];
      v73 = v75 - v71 - v13;
    }

    v91.origin.x = v73;
    v91.origin.y = v7;
    v91.size.width = v71;
    v91.size.height = v72;
    v92 = CGRectIntegral(v91);
    v76 = v92.origin.x;
    v77 = v92.origin.y;
    v78 = v92.size.width;
    v79 = v92.size.height;
    valueLabel5 = [(PSTableCell *)self valueLabel];
    [valueLabel5 setFrame:{v76, v77, v78, v79}];

    contentView3 = [(BTTableCell *)self contentView];
    [contentView3 frame];
    v82 = v81 - v71;
    contentView4 = [(BTTableCell *)self contentView];
    [contentView4 layoutMargins];
    v9 = floor(v82 - v83 - v13 + -12.0);
  }

  contentView7 = [(BTTableCell *)self contentView];
  v40 = contentView7;
  if (userInterfaceLayoutDirection)
  {
    [contentView7 size];
    v42 = v41 - v9;
    contentView8 = [(BTTableCell *)self contentView];
    [contentView8 layoutMargins];
    v5 = v42 - v44;
  }

  else
  {
    [contentView7 layoutMargins];
    v5 = v45;
  }

LABEL_14:
  v89.origin.x = v5;
  v89.origin.y = v7;
  v89.size.width = v9;
  v89.size.height = v11;
  v90 = CGRectIntegral(v89);
  v46 = v90.origin.x;
  v47 = v90.origin.y;
  v48 = v90.size.width;
  v49 = v90.size.height;
  titleLabel2 = [(PSTableCell *)self titleLabel];
  [titleLabel2 setFrame:{v46, v47, v48, v49}];

  v51 = *MEMORY[0x277D85DE8];
}

@end