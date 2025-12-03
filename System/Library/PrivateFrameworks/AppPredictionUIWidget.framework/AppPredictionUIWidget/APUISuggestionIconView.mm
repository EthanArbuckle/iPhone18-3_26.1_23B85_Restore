@interface APUISuggestionIconView
- (APUISuggestionIconViewDelegate)delegate;
- (void)_layoutImageView;
- (void)_layoutSBIconView;
- (void)layoutSubviews;
- (void)setAppBundleIdentifier:(id)identifier;
- (void)setImage:(id)image;
@end

@implementation APUISuggestionIconView

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    [(APUISuggestionIconView *)self setAppBundleIdentifier:0];
    objc_storeStrong(&self->_image, image);
    [(APUISuggestionIconView *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)setAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    if (!identifierCopy || ![(NSString *)appBundleIdentifier isEqualToString:identifierCopy])
    {
      [(APUISuggestionIconView *)self setImage:0];
      v6 = [(NSString *)v8 copy];
      v7 = self->_appBundleIdentifier;
      self->_appBundleIdentifier = v6;

      [(APUISuggestionIconView *)self setNeedsLayout];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = APUISuggestionIconView;
  [(APUISuggestionIconView *)&v4 layoutSubviews];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__APUISuggestionIconView_layoutSubviews__block_invoke;
  v3[3] = &unk_278C90A18;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __40__APUISuggestionIconView_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[55])
  {
    return [v1 _layoutSBIconView];
  }

  else
  {
    return [v1 _layoutImageView];
  }
}

- (void)_layoutSBIconView
{
  if (!self->_layoutProvider)
  {
    v3 = objc_alloc_init(APUISingleIconLayoutProvider);
    layoutProvider = self->_layoutProvider;
    self->_layoutProvider = v3;
  }

  [(APUISuggestionIconView *)self bounds];
  [(APUISingleIconLayoutProvider *)self->_layoutProvider setSize:v5, v6];
  _screen = [(APUISuggestionIconView *)self _screen];
  [_screen scale];
  [(APUISingleIconLayoutProvider *)self->_layoutProvider setScale:?];

  if (!self->_appIconView)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = getSBIconViewClass_softClass_0;
    v20 = getSBIconViewClass_softClass_0;
    if (!getSBIconViewClass_softClass_0)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getSBIconViewClass_block_invoke_0;
      v16[3] = &unk_278C90BC0;
      v16[4] = &v17;
      __getSBIconViewClass_block_invoke_0(v16);
      v8 = v18[3];
    }

    v9 = v8;
    _Block_object_dispose(&v17, 8);
    v10 = [[v8 alloc] initWithConfigurationOptions:118 listLayoutProvider:self->_layoutProvider];
    appIconView = self->_appIconView;
    self->_appIconView = v10;

    [(SBIconView *)self->_appIconView setImageLoadingBehavior:1];
    [(APUISuggestionIconView *)self addSubview:self->_appIconView];
  }

  delegate = [(APUISuggestionIconView *)self delegate];
  v13 = [delegate iconForSuggestionIconView:self];

  [(APUISuggestionIconView *)self bounds];
  [(SBIconView *)self->_appIconView setFrame:?];
  [(SBIconView *)self->_appIconView setIcon:v13 animated:0];
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView removeFromSuperview];
    v15 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)_layoutImageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_imageView;
    self->_imageView = v4;

    [(UIImageView *)self->_imageView setClipsToBounds:1];
    [(UIImageView *)self->_imageView setContentMode:1];
    layer = [(UIImageView *)self->_imageView layer];
    [layer setCornerRadius:5.0];

    [(APUISuggestionIconView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  [(UIImageView *)imageView setImage:self->_image];
  [(APUISuggestionIconView *)self bounds];
  [(UIImageView *)self->_imageView setFrame:?];
  appIconView = self->_appIconView;
  if (appIconView)
  {
    [(SBIconView *)appIconView removeFromSuperview];
    v8 = self->_appIconView;
    self->_appIconView = 0;
  }
}

- (APUISuggestionIconViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end