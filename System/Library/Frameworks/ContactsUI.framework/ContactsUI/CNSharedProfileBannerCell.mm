@interface CNSharedProfileBannerCell
- (CNSharedProfileBannerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNSharedProfileBannerView)sharedProfileBannerContentView;
- (CNSharedProfileBannerViewDelegate)delegate;
- (id)variableConstraints;
- (void)setDelegate:(id)delegate;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setUpView;
- (void)setUpWithSharedProfileStateOracle:(id)oracle tappedAction:(unint64_t)action hasPerformedAnimation:(BOOL)animation;
- (void)updateConstraints;
@end

@implementation CNSharedProfileBannerCell

- (CNSharedProfileBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setUpWithSharedProfileStateOracle:(id)oracle tappedAction:(unint64_t)action hasPerformedAnimation:(BOOL)animation
{
  animationCopy = animation;
  oracleCopy = oracle;
  sharedProfileBannerContentView = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
  [sharedProfileBannerContentView setUpWithSharedProfileStateOracle:oracleCopy tappedAction:action hasPerformedAnimation:animationCopy];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNSharedProfileBannerCell;
  [(CNContactCell *)&v4 updateConstraints];
  sharedProfileBannerContentView = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
  [sharedProfileBannerContentView updateConstraints];
}

- (id)variableConstraints
{
  v28[4] = *MEMORY[0x1E69E9840];
  sharedProfileBannerContentView = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];

  if (sharedProfileBannerContentView)
  {
    sharedProfileBannerContentView2 = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
    leadingAnchor = [sharedProfileBannerContentView2 leadingAnchor];
    contentView = [(CNSharedProfileBannerCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v22;
    sharedProfileBannerContentView3 = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
    trailingAnchor = [sharedProfileBannerContentView3 trailingAnchor];
    contentView2 = [(CNSharedProfileBannerCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v16;
    sharedProfileBannerContentView4 = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
    topAnchor = [sharedProfileBannerContentView4 topAnchor];
    contentView3 = [(CNSharedProfileBannerCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v7;
    sharedProfileBannerContentView5 = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
    bottomAnchor = [sharedProfileBannerContentView5 bottomAnchor];
    contentView4 = [(CNSharedProfileBannerCell *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (void)setLabelTextAttributes:(id)attributes
{
  v7 = [attributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  sharedProfileBannerContentView = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
  style = [sharedProfileBannerContentView style];

  [style setTitleFont:v7];
  [style setSubtitleFont:v7];
  sharedProfileBannerContentView2 = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
  [sharedProfileBannerContentView2 setStyle:style];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CNSharedProfileBannerView *)self->_sharedProfileBannerContentView setDelegate:obj];
  }
}

- (CNSharedProfileBannerView)sharedProfileBannerContentView
{
  sharedProfileBannerContentView = self->_sharedProfileBannerContentView;
  if (!sharedProfileBannerContentView)
  {
    v4 = objc_alloc_init(CNSharedProfileBannerView);
    v5 = self->_sharedProfileBannerContentView;
    self->_sharedProfileBannerContentView = v4;

    [(CNSharedProfileBannerView *)self->_sharedProfileBannerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    delegate = [(CNSharedProfileBannerCell *)self delegate];
    [(CNSharedProfileBannerView *)self->_sharedProfileBannerContentView setDelegate:delegate];

    sharedProfileBannerContentView = self->_sharedProfileBannerContentView;
  }

  return sharedProfileBannerContentView;
}

- (void)setUpView
{
  contentView = [(CNSharedProfileBannerCell *)self contentView];
  sharedProfileBannerContentView = [(CNSharedProfileBannerCell *)self sharedProfileBannerContentView];
  [contentView addSubview:sharedProfileBannerContentView];
}

- (CNSharedProfileBannerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNSharedProfileBannerCell;
  v4 = [(CNContactCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNSharedProfileBannerCell *)v4 setUpView];
    v6 = v5;
  }

  return v5;
}

@end