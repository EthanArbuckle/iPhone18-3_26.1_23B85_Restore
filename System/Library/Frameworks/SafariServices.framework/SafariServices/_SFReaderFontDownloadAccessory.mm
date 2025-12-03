@interface _SFReaderFontDownloadAccessory
- (_SFReaderFontDownloadAccessory)initWithTappedDownloadBlock:(id)block;
- (void)_tappedDownloadButton:(id)button;
- (void)setDownloading:(BOOL)downloading;
@end

@implementation _SFReaderFontDownloadAccessory

- (_SFReaderFontDownloadAccessory)initWithTappedDownloadBlock:(id)block
{
  v45[7] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud.and.arrow.down" withConfiguration:v5];
  [v6 size];
  v44.receiver = self;
  v44.super_class = _SFReaderFontDownloadAccessory;
  v9 = [(_SFReaderFontDownloadAccessory *)&v44 initWithFrame:0.0, 0.0, v7, v8];
  if (v9)
  {
    v10 = _Block_copy(blockCopy);
    tappedDownloadBlock = v9->_tappedDownloadBlock;
    v9->_tappedDownloadBlock = v10;

    v12 = objc_alloc(MEMORY[0x1E69DC738]);
    [(_SFReaderFontDownloadAccessory *)v9 bounds];
    v13 = [v12 initWithFrame:?];
    downloadButton = v9->_downloadButton;
    v9->_downloadButton = v13;

    [(UIButton *)v9->_downloadButton addTarget:v9 action:sel__tappedDownloadButton_ forControlEvents:0x2000];
    [(UIButton *)v9->_downloadButton setImage:v6 forState:0];
    [(UIButton *)v9->_downloadButton setPreferredSymbolConfiguration:v5 forImageInState:0];
    [(UIButton *)v9->_downloadButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFReaderFontDownloadAccessory *)v9 addSubview:v9->_downloadButton];
    v15 = objc_alloc_init(MEMORY[0x1E69DCE48]);
    v43 = blockCopy;
    progressView = v9->_progressView;
    v9->_progressView = v15;

    [(UIProgressView *)v9->_progressView setHidden:1];
    [(UIProgressView *)v9->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFReaderFontDownloadAccessory *)v9 addSubview:v9->_progressView];
    v32 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(_SFReaderFontDownloadAccessory *)v9 leadingAnchor];
    leadingAnchor2 = [(UIButton *)v9->_downloadButton leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v38;
    trailingAnchor = [(_SFReaderFontDownloadAccessory *)v9 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v9->_downloadButton trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[1] = v35;
    topAnchor = [(_SFReaderFontDownloadAccessory *)v9 topAnchor];
    topAnchor2 = [(UIButton *)v9->_downloadButton topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[2] = v31;
    bottomAnchor = [(_SFReaderFontDownloadAccessory *)v9 bottomAnchor];
    bottomAnchor2 = [(UIButton *)v9->_downloadButton bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[3] = v28;
    [(_SFReaderFontDownloadAccessory *)v9 centerXAnchor];
    v17 = v42 = v5;
    centerXAnchor = [(UIProgressView *)v9->_progressView centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:centerXAnchor];
    v45[4] = v19;
    centerYAnchor = [(_SFReaderFontDownloadAccessory *)v9 centerYAnchor];
    [(UIProgressView *)v9->_progressView centerYAnchor];
    v21 = v41 = v6;
    v22 = [centerYAnchor constraintEqualToAnchor:v21];
    v45[5] = v22;
    widthAnchor = [(UIProgressView *)v9->_progressView widthAnchor];
    v24 = [widthAnchor constraintEqualToConstant:20.0];
    v45[6] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:7];
    [v32 activateConstraints:v25];

    blockCopy = v43;
    v6 = v41;

    v5 = v42;
    v26 = v9;
  }

  return v9;
}

- (void)setDownloading:(BOOL)downloading
{
  if (self->_downloading != downloading)
  {
    downloadingCopy = downloading;
    self->_downloading = downloading;
    [(UIProgressView *)self->_progressView setHidden:!downloading];
    downloadButton = self->_downloadButton;

    [(UIButton *)downloadButton setHidden:downloadingCopy];
  }
}

- (void)_tappedDownloadButton:(id)button
{
  tappedDownloadBlock = self->_tappedDownloadBlock;
  if (tappedDownloadBlock)
  {
    tappedDownloadBlock[2](tappedDownloadBlock, self);
  }
}

@end