@interface MPStoreRadioStreamAssetInfo
- (MPStoreRadioStreamAssetInfo)initWithiTunesCloudStoreRadioStreamAssetInfo:(id)a3;
- (int64_t)MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:(int64_t)a3;
- (int64_t)MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:(int64_t)a3;
- (int64_t)flavor;
- (int64_t)streamProtocol;
@end

@implementation MPStoreRadioStreamAssetInfo

- (int64_t)MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:(int64_t)a3
{
  v3 = 1;
  if (a3 == 2)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:(int64_t)a3
{
  v3 = 1;
  if (a3 != 1)
  {
    v3 = 2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)streamProtocol
{
  v3 = [(ICStoreRadioStreamAssetInfo *)self->_internalInfo streamProtocol];

  return [(MPStoreRadioStreamAssetInfo *)self MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:v3];
}

- (int64_t)flavor
{
  v3 = [(ICStoreRadioStreamAssetInfo *)self->_internalInfo flavor];

  return [(MPStoreRadioStreamAssetInfo *)self MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:v3];
}

- (MPStoreRadioStreamAssetInfo)initWithiTunesCloudStoreRadioStreamAssetInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPStoreRadioStreamAssetInfo;
  v6 = [(MPStoreRadioStreamAssetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInfo, a3);
  }

  return v7;
}

@end