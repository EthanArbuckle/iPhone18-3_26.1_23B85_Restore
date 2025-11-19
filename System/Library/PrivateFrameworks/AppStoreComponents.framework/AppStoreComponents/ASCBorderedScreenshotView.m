@interface ASCBorderedScreenshotView
- (ASCBorderedScreenshotView)initWithCoder:(id)a3;
- (ASCBorderedScreenshotView)initWithFrame:(CGRect)a3 screenshotDisplayConfiguration:(id)a4;
- (CGSize)preferredArtworkSize;
- (void)layoutSubviews;
@end

@implementation ASCBorderedScreenshotView

- (ASCBorderedScreenshotView)initWithFrame:(CGRect)a3 screenshotDisplayConfiguration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = ASCBorderedScreenshotView;
  v10 = [(ASCBorderedScreenshotView *)&v15 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [ASCArtworkView alloc];
    v12 = [(ASCArtworkView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    artworkView = v10->_artworkView;
    v10->_artworkView = v12;

    [(ASCArtworkView *)v10->_artworkView setDecoration:@"screenshot"];
    [(ASCArtworkView *)v10->_artworkView setScreenshotDisplayConfiguration:v9];
    [(ASCBorderedScreenshotView *)v10 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(ASCBorderedScreenshotView *)v10 addSubview:v10->_artworkView];
  }

  return v10;
}

- (ASCBorderedScreenshotView)initWithCoder:(id)a3
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