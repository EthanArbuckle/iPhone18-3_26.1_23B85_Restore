@interface BKPendingAssetAuthorization
- (BKPendingAssetAuthorization)initWithAsset:(id)asset completion:(id)completion;
@end

@implementation BKPendingAssetAuthorization

- (BKPendingAssetAuthorization)initWithAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v11.receiver = self;
  v11.super_class = BKPendingAssetAuthorization;
  v8 = [(BKPendingAssetAuthorization *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BKPendingAssetAuthorization *)v8 setAsset:assetCopy];
    [(BKPendingAssetAuthorization *)v9 setCompletion:completionCopy];
  }

  return v9;
}

@end