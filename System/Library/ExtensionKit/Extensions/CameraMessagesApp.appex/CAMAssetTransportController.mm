@interface CAMAssetTransportController
- (CAMAssetTransportController)initWithConversation:(id)conversation packageGeneratorClass:(Class)class statisticsManagerClass:(Class)managerClass previewImageKey:(id)key;
- (void)_transportAsset:(id)asset toShelf:(BOOL)shelf suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin completion:(id)completion;
@end

@implementation CAMAssetTransportController

- (CAMAssetTransportController)initWithConversation:(id)conversation packageGeneratorClass:(Class)class statisticsManagerClass:(Class)managerClass previewImageKey:(id)key
{
  conversationCopy = conversation;
  keyCopy = key;
  v21.receiver = self;
  v21.super_class = CAMAssetTransportController;
  v13 = [(CAMAssetTransportController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->__activeConversation, conversation);
    v15 = objc_alloc_init(class);
    assetPackageGenerator = v14->__assetPackageGenerator;
    v14->__assetPackageGenerator = v15;

    objc_storeStrong(&v14->__previewImageKey, key);
    v17 = objc_alloc_init(managerClass);
    statisticsManager = v14->__statisticsManager;
    v14->__statisticsManager = v17;

    v19 = v14;
  }

  return v14;
}

- (void)_transportAsset:(id)asset toShelf:(BOOL)shelf suppressLivePhoto:(BOOL)photo mediaOrigin:(int64_t)origin completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  _activeConversation = [(CAMAssetTransportController *)self _activeConversation];
  _previewImageKey = [(CAMAssetTransportController *)self _previewImageKey];
  _statisticsManager = [(CAMAssetTransportController *)self _statisticsManager];
  assetPackageGenerator = self->__assetPackageGenerator;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000019F4;
  v23[3] = &unk_100010488;
  photoCopy = photo;
  v24 = _previewImageKey;
  v25 = assetCopy;
  shelfCopy = shelf;
  v26 = _activeConversation;
  v27 = _statisticsManager;
  v28 = completionCopy;
  originCopy = origin;
  v18 = completionCopy;
  v19 = _statisticsManager;
  v20 = _activeConversation;
  v21 = assetCopy;
  v22 = _previewImageKey;
  [(AECameraAssetPackageGenerator *)assetPackageGenerator generatePackageFromReviewAsset:v21 withCompletionHandler:v23];
}

@end