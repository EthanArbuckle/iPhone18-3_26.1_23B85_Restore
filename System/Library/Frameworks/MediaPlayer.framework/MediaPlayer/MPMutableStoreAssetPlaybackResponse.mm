@interface MPMutableStoreAssetPlaybackResponse
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDialogDictionary:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setFileAssetInfoList:(id)a3;
- (void)setRadioStreamAssetInfoList:(id)a3;
@end

@implementation MPMutableStoreAssetPlaybackResponse

- (void)setRadioStreamAssetInfoList:(id)a3
{
  v4 = [a3 copy];
  radioStreamAssetInfoList = self->super._radioStreamAssetInfoList;
  self->super._radioStreamAssetInfoList = v4;
}

- (void)setFileAssetInfoList:(id)a3
{
  v4 = [a3 copy];
  fileAssetInfoList = self->super._fileAssetInfoList;
  self->super._fileAssetInfoList = v4;
}

- (void)setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;
}

- (void)setDialogDictionary:(id)a3
{
  v4 = [a3 copy];
  dialogDictionary = self->super._dialogDictionary;
  self->super._dialogDictionary = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(MPStoreAssetPlaybackResponse *)self _copyWithPlaybackResponseClass:v4];
}

@end