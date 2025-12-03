@interface ASCMaterialBackgroundView
- (ASCMaterialBackgroundView)initWithCoder:(id)coder;
- (ASCMaterialBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation ASCMaterialBackgroundView

- (ASCMaterialBackgroundView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = ASCMaterialBackgroundView;
  v3 = [(ASCMaterialBackgroundView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ASCMaterialBackgroundView *)v3 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ASCMaterialBackgroundView *)v4 setBackgroundColor:clearColor];

    v6 = [MEMORY[0x277D75210] effectWithStyle:9];
    v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v6];
    visualEffectView = v4->_visualEffectView;
    v4->_visualEffectView = v7;

    v9 = objc_alloc(MEMORY[0x277D755E8]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageView = v4->_imageView;
    v4->_imageView = v10;

    [(UIImageView *)v4->_imageView setClipsToBounds:1];
    [(UIImageView *)v4->_imageView setContentMode:2];
    [(ASCMaterialBackgroundView *)v4 addSubview:v4->_imageView];
    [(ASCMaterialBackgroundView *)v4 addSubview:v4->_visualEffectView];
  }

  return v4;
}

- (ASCMaterialBackgroundView)initWithCoder:(id)coder
{
  [(ASCMaterialBackgroundView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(ASCMaterialBackgroundView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = ASCMaterialBackgroundView;
  [(ASCMaterialBackgroundView *)&v13 layoutSubviews];
  [(ASCMaterialBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  visualEffectView = [(ASCMaterialBackgroundView *)self visualEffectView];
  [visualEffectView setFrame:{v4, v6, v8, v10}];

  imageView = [(ASCMaterialBackgroundView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

@end