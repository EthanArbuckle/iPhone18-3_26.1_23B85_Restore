@interface _MSStickerSendManager
+ (id)sharedInstance;
- (_MSStickerSendManagerDelegate)delegate;
- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4;
- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 frameInRemoteView:(CGRect)a5 completionHandler:(id)a6;
- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)startDragSticker:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6;
- (void)stickerDragCanceled;
- (void)stickerDragMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 fence:(id)a7 completionHandler:(id)a8;
- (void)stickerDruidDragEndedWithMSSticker:(id)a3;
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

- (void)insertSticker:(id)a3 forceStage:(BOOL)a4 frameInRemoteView:(CGRect)a5 completionHandler:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v18 = a6;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 insertSticker:v13 forceStage:v10 frameInRemoteView:v18 completionHandler:{x, y, width, height}];

    v16 = [[MSStickerUsageEvent alloc] initWithSticker:v13];
    [(MSStickerUsageEvent *)v16 setUsageType:0];
    [(MSStickerUsageEvent *)v16 send];
  }

  else
  {
    v16 = [[_MSMessageMediaPayload alloc] initWithSticker:v13];

    [(MSStickerUsageEvent *)v16 setSourceFrame:x, y, width, height];
    v17 = +[_MSMessageAppContext activeExtensionContext];
    [v17 stageMediaItem:v16 skipShelf:0 forceStage:v10 completionHandler:&__block_literal_global_6];
    [v17 requestPresentationStyle:0];
  }
}

- (void)startDragSticker:(id)a3 frameInRemoteView:(CGRect)a4 fence:(id)a5 completionHandler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [(_MSMessageMediaPayload *)v17 startDragSticker:v15 frameInRemoteView:v14 fence:v13 completionHandler:x, y, width, height];
  }

  else
  {
    v17 = [[_MSMessageMediaPayload alloc] initWithSticker:v15];

    v15 = +[_MSMessageAppContext activeExtensionContext];
    [v15 startDragMediaItem:v17 frameInRemoteView:v14 fence:v13 completionHandler:{x, y, width, height}];
  }
}

- (void)stickerDragMoved:(id)a3 frameInRemoteView:(CGRect)a4 rotation:(double)a5 scale:(double)a6 fence:(id)a7 completionHandler:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a7;
  v17 = a8;
  v18 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [(_MSMessageMediaPayload *)v20 stickerDragMoved:v18 frameInRemoteView:v21 rotation:v17 scale:x fence:y completionHandler:width, height, a5, a6];
  }

  else
  {
    v20 = [[_MSMessageMediaPayload alloc] initWithSticker:v18];

    v18 = +[_MSMessageAppContext activeExtensionContext];
    [v18 dragMediaItemMoved:v20 frameInRemoteView:v17 rotation:x scale:y completionHandler:{width, height, a5, a6}];
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

- (void)stickerDruidDragEndedWithMSSticker:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    [v7 stickerDruidDragEndedWithMSSticker:v4];
  }

  else
  {
    v7 = +[_MSMessageAppContext activeExtensionContext];
    v8 = [[_MSMessageMediaPayload alloc] initWithSticker:v4];
    [v7 stickerDruidDragEndedWithPayload:v8];
  }
}

- (void)canShowBrowserForPluginIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_MSMessageAppContext activeExtensionContext];
  [v7 canShowBrowserForPluginIdentifier:v6 completion:v5];
}

- (void)showBrowserForPluginIdentifier:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[_MSMessageAppContext activeExtensionContext];
  [v9 showBrowserForPluginIdentifier:v8 style:a4 completion:v7];
}

- (_MSStickerSendManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end