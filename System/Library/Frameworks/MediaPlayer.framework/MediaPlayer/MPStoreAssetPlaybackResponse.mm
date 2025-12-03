@interface MPStoreAssetPlaybackResponse
- (id)_copyWithPlaybackResponseClass:(Class)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MPStoreAssetPlaybackResponse

- (id)_copyWithPlaybackResponseClass:(Class)class
{
  v4 = objc_alloc_init(class);
  if (v4)
  {
    v5 = [(NSDictionary *)self->_dialogDictionary copy];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    objc_storeStrong(v4 + 2, self->_expirationDate);
    objc_storeStrong(v4 + 3, self->_fileAssetInfoList);
    objc_storeStrong(v4 + 4, self->_hlsAssetInfo);
    *(v4 + 40) = self->_liveRadioStream;
    v7 = [(NSArray *)self->_radioStreamAssetInfoList copy];
    v8 = *(v4 + 6);
    *(v4 + 6) = v7;

    objc_storeStrong(v4 + 7, self->_suzeLeaseID);
    *(v4 + 64) = self->_subscriptionRequired;
    *(v4 + 65) = self->_onlineSubscriptionKeysRequired;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(MPStoreAssetPlaybackResponse *)self _copyWithPlaybackResponseClass:v4];
}

@end