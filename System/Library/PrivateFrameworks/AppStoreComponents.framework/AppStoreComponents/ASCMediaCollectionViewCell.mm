@interface ASCMediaCollectionViewCell
+ (CGSize)sizeForArtwork:(id)a3 thatFits:(CGSize)a4 usingTraitCollection:(id)a5;
- (ASCMediaCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)applyArtwork:(id)a3 image:(id)a4 screenshotDisplayConfiguration:(id)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ASCMediaCollectionViewCell

- (ASCMediaCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = ASCMediaCollectionViewCell;
  v3 = [(ASCMediaCollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [ASCBorderedScreenshotView alloc];
    v5 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
    v6 = [(ASCBorderedScreenshotView *)v4 initWithFrame:v5 screenshotDisplayConfiguration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    screenshotView = v3->_screenshotView;
    v3->_screenshotView = v6;

    [(ASCBorderedScreenshotView *)v3->_screenshotView setIsAccessibilityElement:1];
    [(ASCBorderedScreenshotView *)v3->_screenshotView setAccessibilityTraits:*MEMORY[0x277D76560]];
    v9 = ASCLocalizedString(@"AX_ARTWORK", v8);
    [(ASCBorderedScreenshotView *)v3->_screenshotView setAccessibilityLabel:v9];

    v10 = [(ASCMediaCollectionViewCell *)v3 contentView];
    [v10 addSubview:v3->_screenshotView];
  }

  return v3;
}

- (void)applyArtwork:(id)a3 image:(id)a4 screenshotDisplayConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ASCMediaCollectionViewCell *)self setArtwork:a3];
  v10 = [(ASCMediaCollectionViewCell *)self screenshotView];
  v11 = [v10 artworkView];
  [v11 setImage:v9];

  v13 = [(ASCMediaCollectionViewCell *)self screenshotView];
  v12 = [v13 artworkView];
  [v12 setScreenshotDisplayConfiguration:v8];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = ASCMediaCollectionViewCell;
  [(ASCMediaCollectionViewCell *)&v8 prepareForReuse];
  [(ASCMediaCollectionViewCell *)self setArtwork:0];
  v3 = [(ASCMediaCollectionViewCell *)self screenshotView];
  v4 = [v3 artworkView];
  [v4 setImage:0];

  v5 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
  v6 = [(ASCMediaCollectionViewCell *)self screenshotView];
  v7 = [v6 artworkView];
  [v7 setScreenshotDisplayConfiguration:v5];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = ASCMediaCollectionViewCell;
  [(ASCMediaCollectionViewCell *)&v20 layoutSubviews];
  v3 = [(ASCMediaCollectionViewCell *)self artwork];
  v4 = [(ASCMediaCollectionViewCell *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(ASCMediaCollectionViewCell *)self traitCollection];
  [ASCMediaCollectionViewCell sizeForArtwork:v3 thatFits:v9 usingTraitCollection:v6, v8];
  v11 = v10;
  v13 = v12;

  v14 = [(ASCMediaCollectionViewCell *)self contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  v19 = [(ASCMediaCollectionViewCell *)self screenshotView];
  [v19 setFrame:{(v16 - v11) * 0.5, (v18 - v13) * 0.5, v11, v13}];
}

+ (CGSize)sizeForArtwork:(id)a3 thatFits:(CGSize)a4 usingTraitCollection:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  if (([v8 isPortrait] & 1) != 0 || objc_msgSend(v9, "userInterfaceIdiom"))
  {
    [v8 width];
    v11 = v10;
    [v8 height];
  }

  else
  {
    [v8 height];
    v11 = v18;
    [v8 width];
  }

  if (v11 / v12 <= width / height)
  {
    v13 = height / v12;
  }

  else
  {
    v13 = width / v11;
  }

  v14 = v12 * v13;
  v15 = v11 * v13;

  v16 = v15;
  v17 = v14;
  result.height = v17;
  result.width = v16;
  return result;
}

@end