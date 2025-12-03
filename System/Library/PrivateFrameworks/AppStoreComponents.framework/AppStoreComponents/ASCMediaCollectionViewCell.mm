@interface ASCMediaCollectionViewCell
+ (CGSize)sizeForArtwork:(id)artwork thatFits:(CGSize)fits usingTraitCollection:(id)collection;
- (ASCMediaCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)applyArtwork:(id)artwork image:(id)image screenshotDisplayConfiguration:(id)configuration;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ASCMediaCollectionViewCell

- (ASCMediaCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = ASCMediaCollectionViewCell;
  v3 = [(ASCMediaCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    contentView = [(ASCMediaCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_screenshotView];
  }

  return v3;
}

- (void)applyArtwork:(id)artwork image:(id)image screenshotDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCopy = image;
  [(ASCMediaCollectionViewCell *)self setArtwork:artwork];
  screenshotView = [(ASCMediaCollectionViewCell *)self screenshotView];
  artworkView = [screenshotView artworkView];
  [artworkView setImage:imageCopy];

  screenshotView2 = [(ASCMediaCollectionViewCell *)self screenshotView];
  artworkView2 = [screenshotView2 artworkView];
  [artworkView2 setScreenshotDisplayConfiguration:configurationCopy];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = ASCMediaCollectionViewCell;
  [(ASCMediaCollectionViewCell *)&v8 prepareForReuse];
  [(ASCMediaCollectionViewCell *)self setArtwork:0];
  screenshotView = [(ASCMediaCollectionViewCell *)self screenshotView];
  artworkView = [screenshotView artworkView];
  [artworkView setImage:0];

  v5 = +[ASCScreenshotDisplayConfiguration defaultConfiguration];
  screenshotView2 = [(ASCMediaCollectionViewCell *)self screenshotView];
  artworkView2 = [screenshotView2 artworkView];
  [artworkView2 setScreenshotDisplayConfiguration:v5];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = ASCMediaCollectionViewCell;
  [(ASCMediaCollectionViewCell *)&v20 layoutSubviews];
  artwork = [(ASCMediaCollectionViewCell *)self artwork];
  contentView = [(ASCMediaCollectionViewCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  traitCollection = [(ASCMediaCollectionViewCell *)self traitCollection];
  [ASCMediaCollectionViewCell sizeForArtwork:artwork thatFits:traitCollection usingTraitCollection:v6, v8];
  v11 = v10;
  v13 = v12;

  contentView2 = [(ASCMediaCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v16 = v15;
  v18 = v17;

  screenshotView = [(ASCMediaCollectionViewCell *)self screenshotView];
  [screenshotView setFrame:{(v16 - v11) * 0.5, (v18 - v13) * 0.5, v11, v13}];
}

+ (CGSize)sizeForArtwork:(id)artwork thatFits:(CGSize)fits usingTraitCollection:(id)collection
{
  height = fits.height;
  width = fits.width;
  artworkCopy = artwork;
  collectionCopy = collection;
  if (([artworkCopy isPortrait] & 1) != 0 || objc_msgSend(collectionCopy, "userInterfaceIdiom"))
  {
    [artworkCopy width];
    v11 = v10;
    [artworkCopy height];
  }

  else
  {
    [artworkCopy height];
    v11 = v18;
    [artworkCopy width];
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