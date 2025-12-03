@interface _MSStickerSendManager
+ (id)sharedInstance;
- (_MSStickerSendManagerDelegate)delegate;
- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion;
- (void)insertSticker:(id)sticker forceStage:(BOOL)stage frameInRemoteView:(CGRect)view completionHandler:(id)handler;
- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion;
- (void)startDragSticker:(id)sticker frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler;
- (void)stickerDragCanceled;
- (void)stickerDragMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale fence:(id)fence completionHandler:(id)handler;
- (void)stickerDruidDragEndedWithMSSticker:(id)sticker;
- (void)stickerDruidDragStarted;
@end

@implementation _MSStickerSendManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_MSStickerSendManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

- (void)insertSticker:(id)sticker forceStage:(BOOL)stage frameInRemoteView:(CGRect)view completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  stageCopy = stage;
  handlerCopy = handler;
  stickerCopy = sticker;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 insertSticker:stickerCopy forceStage:stageCopy frameInRemoteView:handlerCopy completionHandler:{x, y, width, height}];

    v16 = [[MSStickerUsageEvent alloc] initWithSticker:stickerCopy];
    [(MSStickerUsageEvent *)v16 setUsageType:0];
    [(MSStickerUsageEvent *)v16 send];
  }

  else
  {
    v16 = [[_MSMessageMediaPayload alloc] initWithSticker:stickerCopy];

    [(MSStickerUsageEvent *)v16 setSourceFrame:x, y, width, height];
    v17 = +[_MSMessageAppContext activeExtensionContext];
    [v17 stageMediaItem:v16 skipShelf:0 forceStage:stageCopy completionHandler:&__block_literal_global_6];
    [v17 requestPresentationStyle:0];
  }
}

- (void)startDragSticker:(id)sticker frameInRemoteView:(CGRect)view fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  handlerCopy = handler;
  fenceCopy = fence;
  stickerCopy = sticker;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [(_MSMessageMediaPayload *)v17 startDragSticker:stickerCopy frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:x, y, width, height];
  }

  else
  {
    v17 = [[_MSMessageMediaPayload alloc] initWithSticker:stickerCopy];

    stickerCopy = +[_MSMessageAppContext activeExtensionContext];
    [stickerCopy startDragMediaItem:v17 frameInRemoteView:fenceCopy fence:handlerCopy completionHandler:{x, y, width, height}];
  }
}

- (void)stickerDragMoved:(id)moved frameInRemoteView:(CGRect)view rotation:(double)rotation scale:(double)scale fence:(id)fence completionHandler:(id)handler
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  fenceCopy = fence;
  handlerCopy = handler;
  movedCopy = moved;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [(_MSMessageMediaPayload *)v20 stickerDragMoved:movedCopy frameInRemoteView:fenceCopy rotation:handlerCopy scale:x fence:y completionHandler:width, height, rotation, scale];
  }

  else
  {
    v20 = [[_MSMessageMediaPayload alloc] initWithSticker:movedCopy];

    movedCopy = +[_MSMessageAppContext activeExtensionContext];
    [movedCopy dragMediaItemMoved:v20 frameInRemoteView:handlerCopy rotation:x scale:y completionHandler:{width, height, rotation, scale}];
  }
}

- (void)stickerDragCanceled
{
  v2 = +[_MSMessageAppContext activeExtensionContext];
  [v2 dragMediaItemCanceled];
}

- (void)stickerDruidDragStarted
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[_MSStickerSendManager stickerDruidDragStarted]";
    _os_log_impl(&dword_1CADE6000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v3 = +[_MSMessageAppContext activeExtensionContext];
  [v3 stickerDruidDragStarted];
}

- (void)stickerDruidDragEndedWithMSSticker:(id)sticker
{
  v11 = *MEMORY[0x1E69E9840];
  stickerCopy = sticker;
  v5 = ms_defaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[_MSStickerSendManager stickerDruidDragEndedWithMSSticker:]";
    _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 stickerDruidDragEndedWithMSSticker:stickerCopy];
  }

  else
  {
    v7 = +[_MSMessageAppContext activeExtensionContext];
    v8 = [[_MSMessageMediaPayload alloc] initWithSticker:stickerCopy];
    [v7 stickerDruidDragEndedWithPayload:v8];
  }
}

- (void)canShowBrowserForPluginIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[_MSMessageAppContext activeExtensionContext];
  [v7 canShowBrowserForPluginIdentifier:identifierCopy completion:completionCopy];
}

- (void)showBrowserForPluginIdentifier:(id)identifier style:(unint64_t)style completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v9 = +[_MSMessageAppContext activeExtensionContext];
  [v9 showBrowserForPluginIdentifier:identifierCopy style:style completion:completionCopy];
}

- (_MSStickerSendManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end