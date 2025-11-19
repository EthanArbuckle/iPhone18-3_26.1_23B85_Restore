@interface _SFReaderFontOptionsGroupController
- (BOOL)isSelectedValue:(id)a3;
- (NSArray)values;
- (_SFReaderFontOptionsGroupController)initWithReaderContext:(id)a3;
- (id)_attributedStringForReaderFont:(id)a3;
- (id)_downloadAccessoryForNotification:(id)a3;
- (id)_fontForFontNotification:(id)a3;
- (id)_itemForNotification:(id)a3;
- (id)_viewForNotification:(id)a3;
- (void)_fontDownloadDidBegin:(id)a3;
- (void)_fontDownloadDidFail:(id)a3;
- (void)_fontDownloadDidFinish:(id)a3;
- (void)_fontDownloadProgressDidChange:(id)a3;
- (void)prepareView:(id)a3 forItem:(id)a4 value:(id)a5;
@end

@implementation _SFReaderFontOptionsGroupController

- (_SFReaderFontOptionsGroupController)initWithReaderContext:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _SFReaderFontOptionsGroupController;
  v6 = [(_SFReaderFontOptionsGroupController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readerContext, a3);
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8]];
    [v8 pointSize];
    v7->_fontSize = v9;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    fontToItemDictionary = v7->_fontToItemDictionary;
    v7->_fontToItemDictionary = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    fontToViewDictionary = v7->_fontToViewDictionary;
    v7->_fontToViewDictionary = v12;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v7 selector:sel__fontDownloadDidBegin_ name:*MEMORY[0x1E69C9548] object:0];
    [v14 addObserver:v7 selector:sel__fontDownloadDidFail_ name:*MEMORY[0x1E69C9550] object:0];
    [v14 addObserver:v7 selector:sel__fontDownloadDidFinish_ name:*MEMORY[0x1E69C9558] object:0];
    [v14 addObserver:v7 selector:sel__fontDownloadProgressDidChange_ name:*MEMORY[0x1E69C9568] object:0];
    v15 = dispatch_queue_create("com.apple.SafariServices.ReaderFontInstallationStatusQueue", 0);
    fontInstallationStatusQueue = v7->_fontInstallationStatusQueue;
    v7->_fontInstallationStatusQueue = v15;

    v17 = v7;
  }

  return v7;
}

- (NSArray)values
{
  v2 = [(SFReaderContext *)self->_readerContext fontManager];
  v3 = [v2 possibleFonts];

  return v3;
}

- (BOOL)isSelectedValue:(id)a3
{
  readerContext = self->_readerContext;
  v5 = a3;
  v6 = [(SFReaderContext *)readerContext configurationManager];
  v7 = [(SFReaderContext *)self->_readerContext fontManager];
  v8 = [v7 languageTag];
  v9 = [v6 fontForLanguageTag:v8];
  v10 = [v9 familyName];

  v11 = [v5 familyName];

  LOBYTE(v6) = [v11 isEqualToString:v10];
  return v6;
}

- (void)prepareView:(id)a3 forItem:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = v10;
  [(NSMutableDictionary *)self->_fontToItemDictionary setObject:v9 forKeyedSubscript:v11];
  [(NSMutableDictionary *)self->_fontToViewDictionary setObject:v8 forKeyedSubscript:v11];
  if ([v11 isReadyToUse])
  {
    [v9 setEnabled:1];
  }

  else
  {
    [v9 setEnabled:0];
    v12 = [_SFReaderFontDownloadAccessory alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke;
    v21[3] = &unk_1E8492978;
    v13 = v11;
    v22 = v13;
    v14 = [(_SFReaderFontDownloadAccessory *)v12 initWithTappedDownloadBlock:v21];
    [v8 setAccessoryView:v14];
    fontInstallationStatusQueue = self->_fontInstallationStatusQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_2;
    v16[3] = &unk_1E84929F0;
    v17 = v13;
    objc_copyWeak(&v20, &location);
    v18 = v9;
    v19 = v8;
    dispatch_async(fontInstallationStatusQueue, v16);

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (id)_attributedStringForReaderFont:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  fontSize = self->_fontSize;
  v5 = a3;
  v6 = [v5 fontOfSize:fontSize];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:self->_fontSize];
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v10;
  v18[0] = v9;
  v11 = [MEMORY[0x1E69DC888] labelColor];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [v5 displayName];

  v15 = [v13 initWithString:v14 attributes:v12];

  return v15;
}

- (id)_fontForFontNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C9560]];

  return v4;
}

- (id)_itemForNotification:(id)a3
{
  fontToItemDictionary = self->_fontToItemDictionary;
  v4 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:a3];
  v5 = [(NSMutableDictionary *)fontToItemDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)_viewForNotification:(id)a3
{
  fontToViewDictionary = self->_fontToViewDictionary;
  v4 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:a3];
  v5 = [(NSMutableDictionary *)fontToViewDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)_downloadAccessoryForNotification:(id)a3
{
  v3 = [(_SFReaderFontOptionsGroupController *)self _viewForNotification:a3];
  v4 = [v3 accessoryView];

  return v4;
}

- (void)_fontDownloadDidBegin:(id)a3
{
  v4 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:a3];
  [v4 setDownloading:1];
  v3 = [v4 progressView];
  [v3 setProgress:0.0];
}

- (void)_fontDownloadDidFinish:(id)a3
{
  v4 = a3;
  v10 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:v4];
  v5 = [(_SFReaderFontOptionsGroupController *)self _itemForNotification:v4];
  v6 = [(_SFReaderFontOptionsGroupController *)self _attributedStringForReaderFont:v10];
  [v5 setAttributedTitle:v6];

  [v5 setEnabled:1];
  v7 = [(_SFReaderFontOptionsGroupController *)self _viewForNotification:v4];

  [v7 setAccessoryView:0];
  readerContext = self->_readerContext;
  v9 = [v10 familyName];
  [(SFReaderContext *)readerContext activateFont:v9];
}

- (void)_fontDownloadDidFail:(id)a3
{
  v3 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:a3];
  [v3 setDownloading:0];
}

- (void)_fontDownloadProgressDidChange:(id)a3
{
  v4 = MEMORY[0x1E69C9010];
  v5 = a3;
  v6 = [v4 sharedManager];
  v7 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:v5];
  [v6 downloadProgressForFont:v7];
  v9 = v8 / 100.0;

  v12 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:v5];

  v10 = [v12 progressView];
  *&v9 = v9;
  LODWORD(v11) = LODWORD(v9);
  [v10 setProgress:v11];
}

@end