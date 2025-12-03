@interface SFDefaultBrowserAppCollectionViewCell
+ (CGSize)estimatedSizeForBounds:(CGSize)bounds withTraits:(id)traits;
- (SFDefaultBrowserAppCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)setLockupView:(id)view;
@end

@implementation SFDefaultBrowserAppCollectionViewCell

+ (CGSize)estimatedSizeForBounds:(CGSize)bounds withTraits:(id)traits
{
  ASCLockupViewSizeGetEstimatedSize();
  v6 = fmin(v5, 90.0) + 22.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v11.receiver = self;
  v11.super_class = SFDefaultBrowserAppCollectionViewCell;
  v4 = [(SFDefaultBrowserAppCollectionViewCell *)&v11 preferredLayoutAttributesFittingAttributes:attributes];
  [v4 size];
  v6 = v5;
  v8 = v7;
  traitCollection = [(SFDefaultBrowserAppCollectionViewCell *)self traitCollection];
  [SFDefaultBrowserAppCollectionViewCell estimatedSizeForBounds:traitCollection withTraits:v6, v8];
  [v4 setSize:?];

  return v4;
}

- (SFDefaultBrowserAppCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFDefaultBrowserAppCollectionViewCell;
  v3 = [(SFDefaultBrowserAppCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [(SFDefaultBrowserAppCollectionViewCell *)v3 setBackgroundConfiguration:clearConfiguration];

    v5 = v3;
  }

  return v3;
}

- (void)setLockupView:(id)view
{
  v24[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  lockupView = self->_lockupView;
  if (lockupView != viewCopy)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    objc_storeStrong(&self->_lockupView, view);
    if (viewCopy)
    {
      [(ASCLockupView *)self->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ASCLockupView *)self->_lockupView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
      contentView = [(SFDefaultBrowserAppCollectionViewCell *)self contentView];
      [contentView setContentMode:4];
      [contentView setDirectionalLayoutMargins:{11.0, 18.0, 11.0, 0.0}];
      [contentView addSubview:self->_lockupView];
      layoutMarginsGuide = [contentView layoutMarginsGuide];
      v19 = MEMORY[0x1E696ACD8];
      centerYAnchor = [(ASCLockupView *)self->_lockupView centerYAnchor];
      centerYAnchor2 = [contentView centerYAnchor];
      v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v24[0] = v20;
      leadingAnchor = [(ASCLockupView *)self->_lockupView leadingAnchor];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v24[1] = v11;
      trailingAnchor = [(ASCLockupView *)self->_lockupView trailingAnchor];
      v23 = layoutMarginsGuide;
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v24[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      [v19 activateConstraints:v15];

      subviews = [(ASCLockupView *)viewCopy subviews];
      firstObject = [subviews firstObject];

      if (firstObject)
      {
        semanticContentAttribute = [firstObject semanticContentAttribute];
      }

      else
      {
        semanticContentAttribute = 0;
      }

      [(SFDefaultBrowserAppCollectionViewCell *)self setSemanticContentAttribute:semanticContentAttribute];
    }
  }
}

@end