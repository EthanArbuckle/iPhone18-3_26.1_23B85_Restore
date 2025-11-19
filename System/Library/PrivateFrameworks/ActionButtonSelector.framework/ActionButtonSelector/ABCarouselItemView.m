@interface ABCarouselItemView
- (ABCarouselItemView)initWithItem:(id)a3;
- (void)_setupImageView;
- (void)_updateForLayoutDirection;
- (void)setItem:(id)a3;
@end

@implementation ABCarouselItemView

- (ABCarouselItemView)initWithItem:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ABCarouselItemView;
  v5 = [(ABCarouselItemView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CDA5E8];
    v8 = [(ABCarouselItemView *)v5 layer];
    [v8 setCompositingFilter:v7];

    v9 = [(ABCarouselItemView *)v6 layer];
    [v9 setAllowsGroupOpacity:0];

    v10 = [(ABCarouselItemView *)v6 layer];
    [v10 setAllowsGroupBlending:0];

    v17[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [(ABCarouselItemView *)v6 registerForTraitChanges:v11 withAction:sel__updateForLayoutDirection];
    traitRegistration = v6->_traitRegistration;
    v6->_traitRegistration = v12;

    [(ABCarouselItemView *)v6 setItem:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setItem:(id)a3
{
  v5 = a3;
  if (self->_item != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_item, a3);
    if (!self->_imageView)
    {
      [(ABCarouselItemView *)self _setupImageView];
    }

    if (v9)
    {
      [(UIImageView *)self->_imageView setImage:v9->_image];
      image = v9->_image;
    }

    else
    {
      [ABCarouselItemView setItem:?];
      image = 0;
    }

    v7 = image;
    v8 = [(UIImage *)v7 accessibilityLabel];
    [(UIImageView *)self->_imageView setAccessibilityLabel:v8];

    v5 = v9;
  }
}

- (void)_setupImageView
{
  v3 = [ABAntialiasedImageView alloc];
  [(ABCarouselItemView *)self bounds];
  v4 = [(ABAntialiasedImageView *)v3 initWithFrame:?];
  imageView = self->_imageView;
  self->_imageView = v4;

  [(ABCarouselItemView *)self addSubview:self->_imageView];
  v6 = [MEMORY[0x277D75348] whiteColor];
  [(UIImageView *)self->_imageView setTintColor:v6];

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setAutoresizingMask:18];

  [(ABCarouselItemView *)self _updateForLayoutDirection];
}

- (void)_updateForLayoutDirection
{
  imageView = self->_imageView;
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIImageView *)imageView setTransform:v4];
}

@end