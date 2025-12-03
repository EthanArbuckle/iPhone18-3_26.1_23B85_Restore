@interface ASCBorderedScreenshotView
- (ASCBorderedScreenshotView)initWithCoder:(id)coder;
- (ASCBorderedScreenshotView)initWithFrame:(CGRect)frame screenshotDisplayConfiguration:(id)configuration;
- (CGSize)preferredArtworkSize;
- (void)layoutSubviews;
@end

@implementation ASCBorderedScreenshotView

- (ASCBorderedScreenshotView)initWithFrame:(CGRect)frame screenshotDisplayConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = ASCBorderedScreenshotView;
  height = [(ASCBorderedScreenshotView *)&v15 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [ASCArtworkView alloc];
    v12 = [(ASCArtworkView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    artworkView = height->_artworkView;
    height->_artworkView = v12;

    [(ASCArtworkView *)height->_artworkView setDecoration:@"screenshot"];
    [(ASCArtworkView *)height->_artworkView setScreenshotDisplayConfiguration:configurationCopy];
    [(ASCBorderedScreenshotView *)height setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCBorderedScreenshotView *)height addSubview:height->_artworkView];
  }

  return height;
}

- (ASCBorderedScreenshotView)initWithCoder:(id)coder
{
  [(ASCBorderedScreenshotView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = ASCBorderedScreenshotView;
  [(ASCBorderedScreenshotView *)&v5 layoutSubviews];
  [(ASCBorderedScreenshotView *)self bounds];
  [(ASCBorderedScreenshotView *)self bounds];
  [(ASCBorderedScreenshotView *)self bounds];
  v4 = v3;
  [(ASCBorderedScreenshotView *)self bounds];
  [(ASCArtworkView *)self->_artworkView setFrame:v4];
}

- (CGSize)preferredArtworkSize
{
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  [(ASCBorderedScreenshotView *)self bounds];
  v8 = v7 - (v3 + v6);
  [(ASCBorderedScreenshotView *)self bounds];
  v10 = v9 - (v4 + v5);
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

@end