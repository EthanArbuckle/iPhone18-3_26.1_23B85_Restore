@interface SFDefaultBrowserAppCollectionViewCell
+ (CGSize)estimatedSizeForBounds:(CGSize)a3 withTraits:(id)a4;
- (SFDefaultBrowserAppCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setLockupView:(id)a3;
@end

@implementation SFDefaultBrowserAppCollectionViewCell

+ (CGSize)estimatedSizeForBounds:(CGSize)a3 withTraits:(id)a4
{
  ASCLockupViewSizeGetEstimatedSize();
  v6 = fmin(v5, 90.0) + 22.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v11.receiver = self;
  v11.super_class = SFDefaultBrowserAppCollectionViewCell;
  v4 = [(SFDefaultBrowserAppCollectionViewCell *)&v11 preferredLayoutAttributesFittingAttributes:a3];
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = [(SFDefaultBrowserAppCollectionViewCell *)self traitCollection];
  [SFDefaultBrowserAppCollectionViewCell estimatedSizeForBounds:v9 withTraits:v6, v8];
  [v4 setSize:?];

  return v4;
}

- (SFDefaultBrowserAppCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SFDefaultBrowserAppCollectionViewCell;
  v3 = [(SFDefaultBrowserAppCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [(SFDefaultBrowserAppCollectionViewCell *)v3 setBackgroundConfiguration:v4];

    v5 = v3;
  }

  return v3;
}

- (void)setLockupView:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  lockupView = self->_lockupView;
  if (lockupView != v5)
  {
    [(ASCLockupView *)lockupView removeFromSuperview];
    objc_storeStrong(&self->_lockupView, a3);
    if (v5)
    {
      [(ASCLockupView *)self->_lockupView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ASCLockupView *)self->_lockupView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
      v7 = [(SFDefaultBrowserAppCollectionViewCell *)self contentView];
      [v7 setContentMode:4];
      [v7 setDirectionalLayoutMargins:{11.0, 18.0, 11.0, 0.0}];
      [v7 addSubview:self->_lockupView];
      v8 = [v7 layoutMarginsGuide];
      v19 = MEMORY[0x1E696ACD8];
      v22 = [(ASCLockupView *)self->_lockupView centerYAnchor];
      v21 = [v7 centerYAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v24[0] = v20;
      v9 = [(ASCLockupView *)self->_lockupView leadingAnchor];
      v10 = [v8 leadingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v24[1] = v11;
      v12 = [(ASCLockupView *)self->_lockupView trailingAnchor];
      v23 = v8;
      v13 = [v8 trailingAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v24[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      [v19 activateConstraints:v15];

      v16 = [(ASCLockupView *)v5 subviews];
      v17 = [v16 firstObject];

      if (v17)
      {
        v18 = [v17 semanticContentAttribute];
      }

      else
      {
        v18 = 0;
      }

      [(SFDefaultBrowserAppCollectionViewCell *)self setSemanticContentAttribute:v18];
    }
  }
}

@end