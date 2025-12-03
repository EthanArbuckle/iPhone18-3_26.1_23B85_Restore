@interface MPMutableStoreAssetPlaybackResponse
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDialogDictionary:(id)dictionary;
- (void)setExpirationDate:(id)date;
- (void)setFileAssetInfoList:(id)list;
- (void)setRadioStreamAssetInfoList:(id)list;
@end

@implementation MPMutableStoreAssetPlaybackResponse

- (void)setRadioStreamAssetInfoList:(id)list
{
  v4 = [list copy];
  radioStreamAssetInfoList = self->super._radioStreamAssetInfoList;
  self->super._radioStreamAssetInfoList = v4;
}

- (void)setFileAssetInfoList:(id)list
{
  v4 = [list copy];
  fileAssetInfoList = self->super._fileAssetInfoList;
  self->super._fileAssetInfoList = v4;
}

- (void)setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;
}

- (void)setDialogDictionary:(id)dictionary
{
  v4 = [dictionary copy];
  dialogDictionary = self->super._dialogDictionary;
  self->super._dialogDictionary = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPStoreAssetPlaybackResponse *)self _copyWithPlaybackResponseClass:v4];
}

@end