@interface BKPendingAssetAuthorization
- (BKPendingAssetAuthorization)initWithAsset:(id)a3 completion:(id)a4;
@end

@implementation BKPendingAssetAuthorization

- (BKPendingAssetAuthorization)initWithAsset:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKPendingAssetAuthorization;
  v8 = [(BKPendingAssetAuthorization *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BKPendingAssetAuthorization *)v8 setAsset:v6];
    [(BKPendingAssetAuthorization *)v9 setCompletion:v7];
  }

  return v9;
}

@end