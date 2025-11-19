@interface PHASEDataBundleAsset
- (PHASEDataBundleAsset)init;
- (PHASEDataBundleAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5;
- (PHASEDataBundleAsset)initWithURL:(id)a3 uid:(id)a4 dataBundle:()unique_ptr<Phase:(std:(id)a6 :(void *)a7 default_delete<Phase::DataBundle>>)a5 :DataBundle assetRegistry:weakStringPoolReference:;
- (unint64_t)sizeInBytes;
@end

@implementation PHASEDataBundleAsset

- (PHASEDataBundleAsset)init
{
  [(PHASEDataBundleAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEDataBundleAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5
{
  [(PHASEDataBundleAsset *)self doesNotRecognizeSelector:a2, a4, a5];

  return 0;
}

- (PHASEDataBundleAsset)initWithURL:(id)a3 uid:(id)a4 dataBundle:()unique_ptr<Phase:(std:(id)a6 :(void *)a7 default_delete<Phase::DataBundle>>)a5 :DataBundle assetRegistry:weakStringPoolReference:
{
  v13 = a3;
  v18.receiver = self;
  v18.super_class = PHASEDataBundleAsset;
  v14 = [(PHASEAsset *)&v18 initWithUID:a4 assetRegistry:a6 weakStringPoolReference:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_url, a3);
    v16 = *a5.__ptr_;
    *a5.__ptr_ = 0;
    std::unique_ptr<Phase::DataBundle>::reset[abi:ne200100](&v15->_dataBundle.__ptr_, v16);
  }

  return v15;
}

- (unint64_t)sizeInBytes
{
  v2 = [(PHASEDataBundleAsset *)self getDataBundle];
  v3 = v2[1];
  if (v3)
  {
    v4 = (v2[2] + 64);
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

  return v5 + 1064 * v2[3] + 1176 * v2[5] + 464 * v2[7];
}

@end