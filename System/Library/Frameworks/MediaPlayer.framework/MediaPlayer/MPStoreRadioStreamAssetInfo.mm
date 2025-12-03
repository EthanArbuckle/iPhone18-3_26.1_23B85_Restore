@interface MPStoreRadioStreamAssetInfo
- (MPStoreRadioStreamAssetInfo)initWithiTunesCloudStoreRadioStreamAssetInfo:(id)info;
- (int64_t)MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:(int64_t)flavor;
- (int64_t)MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:(int64_t)protocol;
- (int64_t)flavor;
- (int64_t)streamProtocol;
@end

@implementation MPStoreRadioStreamAssetInfo

- (int64_t)MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:(int64_t)protocol
{
  v3 = 1;
  if (protocol == 2)
  {
    v3 = 2;
  }

  if (protocol)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:(int64_t)flavor
{
  v3 = 1;
  if (flavor != 1)
  {
    v3 = 2;
  }

  if (flavor)
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
  streamProtocol = [(ICStoreRadioStreamAssetInfo *)self->_internalInfo streamProtocol];

  return [(MPStoreRadioStreamAssetInfo *)self MPStoreRadioStreamProtocolFromICStoreRadioStreamProtocol:streamProtocol];
}

- (int64_t)flavor
{
  flavor = [(ICStoreRadioStreamAssetInfo *)self->_internalInfo flavor];

  return [(MPStoreRadioStreamAssetInfo *)self MPStoreRadioStreamFlavorFromICStoreRadioStreamFlavor:flavor];
}

- (MPStoreRadioStreamAssetInfo)initWithiTunesCloudStoreRadioStreamAssetInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MPStoreRadioStreamAssetInfo;
  v6 = [(MPStoreRadioStreamAssetInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internalInfo, info);
  }

  return v7;
}

@end