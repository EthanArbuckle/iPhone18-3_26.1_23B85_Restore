@interface _SFReaderFontOptionsGroupController
- (BOOL)isSelectedValue:(id)value;
- (NSArray)values;
- (_SFReaderFontOptionsGroupController)initWithReaderContext:(id)context;
- (id)_attributedStringForReaderFont:(id)font;
- (id)_downloadAccessoryForNotification:(id)notification;
- (id)_fontForFontNotification:(id)notification;
- (id)_itemForNotification:(id)notification;
- (id)_viewForNotification:(id)notification;
- (void)_fontDownloadDidBegin:(id)begin;
- (void)_fontDownloadDidFail:(id)fail;
- (void)_fontDownloadDidFinish:(id)finish;
- (void)_fontDownloadProgressDidChange:(id)change;
- (void)prepareView:(id)view forItem:(id)item value:(id)value;
@end

@implementation _SFReaderFontOptionsGroupController

- (_SFReaderFontOptionsGroupController)initWithReaderContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = _SFReaderFontOptionsGroupController;
  v6 = [(_SFReaderFontOptionsGroupController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readerContext, context);
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8]];
    [v8 pointSize];
    v7->_fontSize = v9;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    fontToItemDictionary = v7->_fontToItemDictionary;
    v7->_fontToItemDictionary = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    fontToViewDictionary = v7->_fontToViewDictionary;
    v7->_fontToViewDictionary = dictionary2;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__fontDownloadDidBegin_ name:*MEMORY[0x1E69C9548] object:0];
    [defaultCenter addObserver:v7 selector:sel__fontDownloadDidFail_ name:*MEMORY[0x1E69C9550] object:0];
    [defaultCenter addObserver:v7 selector:sel__fontDownloadDidFinish_ name:*MEMORY[0x1E69C9558] object:0];
    [defaultCenter addObserver:v7 selector:sel__fontDownloadProgressDidChange_ name:*MEMORY[0x1E69C9568] object:0];
    v15 = dispatch_queue_create("com.apple.SafariServices.ReaderFontInstallationStatusQueue", 0);
    fontInstallationStatusQueue = v7->_fontInstallationStatusQueue;
    v7->_fontInstallationStatusQueue = v15;

    v17 = v7;
  }

  return v7;
}

- (NSArray)values
{
  fontManager = [(SFReaderContext *)self->_readerContext fontManager];
  possibleFonts = [fontManager possibleFonts];

  return possibleFonts;
}

- (BOOL)isSelectedValue:(id)value
{
  readerContext = self->_readerContext;
  valueCopy = value;
  configurationManager = [(SFReaderContext *)readerContext configurationManager];
  fontManager = [(SFReaderContext *)self->_readerContext fontManager];
  languageTag = [fontManager languageTag];
  v9 = [configurationManager fontForLanguageTag:languageTag];
  familyName = [v9 familyName];

  familyName2 = [valueCopy familyName];

  LOBYTE(configurationManager) = [familyName2 isEqualToString:familyName];
  return configurationManager;
}

- (void)prepareView:(id)view forItem:(id)item value:(id)value
{
  viewCopy = view;
  itemCopy = item;
  valueCopy = value;
  objc_initWeak(&location, self);
  v11 = valueCopy;
  [(NSMutableDictionary *)self->_fontToItemDictionary setObject:itemCopy forKeyedSubscript:v11];
  [(NSMutableDictionary *)self->_fontToViewDictionary setObject:viewCopy forKeyedSubscript:v11];
  if ([v11 isReadyToUse])
  {
    [itemCopy setEnabled:1];
  }

  else
  {
    [itemCopy setEnabled:0];
    v12 = [_SFReaderFontDownloadAccessory alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke;
    v21[3] = &unk_1E8492978;
    v13 = v11;
    v22 = v13;
    v14 = [(_SFReaderFontDownloadAccessory *)v12 initWithTappedDownloadBlock:v21];
    [viewCopy setAccessoryView:v14];
    fontInstallationStatusQueue = self->_fontInstallationStatusQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65___SFReaderFontOptionsGroupController_prepareView_forItem_value___block_invoke_2;
    v16[3] = &unk_1E84929F0;
    v17 = v13;
    objc_copyWeak(&v20, &location);
    v18 = itemCopy;
    v19 = viewCopy;
    dispatch_async(fontInstallationStatusQueue, v16);

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (id)_attributedStringForReaderFont:(id)font
{
  v18[2] = *MEMORY[0x1E69E9840];
  fontSize = self->_fontSize;
  fontCopy = font;
  v6 = [fontCopy fontOfSize:fontSize];
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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v18[1] = labelColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  displayName = [fontCopy displayName];

  v15 = [v13 initWithString:displayName attributes:v12];

  return v15;
}

- (id)_fontForFontNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69C9560]];

  return v4;
}

- (id)_itemForNotification:(id)notification
{
  fontToItemDictionary = self->_fontToItemDictionary;
  v4 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:notification];
  v5 = [(NSMutableDictionary *)fontToItemDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)_viewForNotification:(id)notification
{
  fontToViewDictionary = self->_fontToViewDictionary;
  v4 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:notification];
  v5 = [(NSMutableDictionary *)fontToViewDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)_downloadAccessoryForNotification:(id)notification
{
  v3 = [(_SFReaderFontOptionsGroupController *)self _viewForNotification:notification];
  accessoryView = [v3 accessoryView];

  return accessoryView;
}

- (void)_fontDownloadDidBegin:(id)begin
{
  v4 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:begin];
  [v4 setDownloading:1];
  progressView = [v4 progressView];
  [progressView setProgress:0.0];
}

- (void)_fontDownloadDidFinish:(id)finish
{
  finishCopy = finish;
  v10 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:finishCopy];
  v5 = [(_SFReaderFontOptionsGroupController *)self _itemForNotification:finishCopy];
  v6 = [(_SFReaderFontOptionsGroupController *)self _attributedStringForReaderFont:v10];
  [v5 setAttributedTitle:v6];

  [v5 setEnabled:1];
  v7 = [(_SFReaderFontOptionsGroupController *)self _viewForNotification:finishCopy];

  [v7 setAccessoryView:0];
  readerContext = self->_readerContext;
  familyName = [v10 familyName];
  [(SFReaderContext *)readerContext activateFont:familyName];
}

- (void)_fontDownloadDidFail:(id)fail
{
  v3 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:fail];
  [v3 setDownloading:0];
}

- (void)_fontDownloadProgressDidChange:(id)change
{
  v4 = MEMORY[0x1E69C9010];
  changeCopy = change;
  sharedManager = [v4 sharedManager];
  v7 = [(_SFReaderFontOptionsGroupController *)self _fontForFontNotification:changeCopy];
  [sharedManager downloadProgressForFont:v7];
  v9 = v8 / 100.0;

  v12 = [(_SFReaderFontOptionsGroupController *)self _downloadAccessoryForNotification:changeCopy];

  progressView = [v12 progressView];
  *&v9 = v9;
  LODWORD(v11) = LODWORD(v9);
  [progressView setProgress:v11];
}

@end