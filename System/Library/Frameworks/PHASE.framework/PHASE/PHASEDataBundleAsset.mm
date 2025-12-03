@interface PHASEDataBundleAsset
- (PHASEDataBundleAsset)init;
- (PHASEDataBundleAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference;
- (PHASEDataBundleAsset)initWithURL:(id)l uid:(id)uid dataBundle:()unique_ptr<Phase:(std:(id)phase :(void *)a7 default_delete<Phase::DataBundle>>)a5 :DataBundle assetRegistry:weakStringPoolReference:;
- (unint64_t)sizeInBytes;
@end

@implementation PHASEDataBundleAsset

- (PHASEDataBundleAsset)init
{
  [(PHASEDataBundleAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDataBundleAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference
{
  [(PHASEDataBundleAsset *)self doesNotRecognizeSelector:a2, registry, reference];

  return 0;
}

- (PHASEDataBundleAsset)initWithURL:(id)l uid:(id)uid dataBundle:()unique_ptr<Phase:(std:(id)phase :(void *)a7 default_delete<Phase::DataBundle>>)a5 :DataBundle assetRegistry:weakStringPoolReference:
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = PHASEDataBundleAsset;
  v14 = [(PHASEAsset *)&v18 initWithUID:uid assetRegistry:phase weakStringPoolReference:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, l);
    v16 = *a5.__ptr_;
    *a5.__ptr_ = 0;
    std::unique_ptr<Phase::DataBundle>::reset[abi:ne200100](&v15->_dataBundle.__ptr_, v16);
  }

  return v15;
}

- (unint64_t)sizeInBytes
{
  getDataBundle = [(PHASEDataBundleAsset *)self getDataBundle];
  v3 = getDataBundle[1];
  if (v3)
  {
    v4 = (getDataBundle[2] + 64);
    v5 = 72;
    do
    {
      v5 += 4 * *(v4 - 6) + 8 * (*(v4 - 10) + *(v4 - 14) + *(v4 - 6)) + 464 * *v4 + v4[4] + 5944 * v4[8] + 120;
      v4 += 30;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 72;
  }

  return v5 + 1064 * getDataBundle[3] + 1176 * getDataBundle[5] + 464 * getDataBundle[7];
}

@end