@interface CAMAssetTransportController
- (CAMAssetTransportController)initWithConversation:(id)a3 packageGeneratorClass:(Class)a4 statisticsManagerClass:(Class)a5 previewImageKey:(id)a6;
- (void)_transportAsset:(id)a3 toShelf:(BOOL)a4 suppressLivePhoto:(BOOL)a5 mediaOrigin:(int64_t)a6 completion:(id)a7;
@end

@implementation CAMAssetTransportController

- (CAMAssetTransportController)initWithConversation:(id)a3 packageGeneratorClass:(Class)a4 statisticsManagerClass:(Class)a5 previewImageKey:(id)a6
{
  v11 = a3;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = CAMAssetTransportController;
  v13 = [(CAMAssetTransportController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->__activeConversation, a3);
    v15 = objc_alloc_init(a4);
    assetPackageGenerator = v14->__assetPackageGenerator;
    v14->__assetPackageGenerator = v15;

    objc_storeStrong(&v14->__previewImageKey, a6);
    v17 = objc_alloc_init(a5);
    statisticsManager = v14->__statisticsManager;
    v14->__statisticsManager = v17;

    v19 = v14;
  }

  return v14;
}

- (void)_transportAsset:(id)a3 toShelf:(BOOL)a4 suppressLivePhoto:(BOOL)a5 mediaOrigin:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(CAMAssetTransportController *)self _activeConversation];
  v15 = [(CAMAssetTransportController *)self _previewImageKey];
  v16 = [(CAMAssetTransportController *)self _statisticsManager];
  assetPackageGenerator = self->__assetPackageGenerator;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000019F4;
  v23[3] = &unk_100010488;
  v30 = a5;
  v24 = v15;
  v25 = v12;
  v31 = a4;
  v26 = v14;
  v27 = v16;
  v28 = v13;
  v29 = a6;
  v18 = v13;
  v19 = v16;
  v20 = v14;
  v21 = v12;
  v22 = v15;
  [(AECameraAssetPackageGenerator *)assetPackageGenerator generatePackageFromReviewAsset:v21 withCompletionHandler:v23];
}

@end