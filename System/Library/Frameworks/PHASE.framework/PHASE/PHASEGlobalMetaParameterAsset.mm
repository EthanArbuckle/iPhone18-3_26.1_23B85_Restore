@interface PHASEGlobalMetaParameterAsset
- (PHASEGlobalMetaParameterAsset)init;
- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference;
- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d metaParameterWeakReference:(const void *)reference assetRegistry:(id)registry weakStringPoolReference:(void *)poolReference;
- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d ownedMetaParameter:()unique_ptr<Phase:(std:(id)phase :(void *)a6 default_delete<Phase::MetaParameter>>)a4 :MetaParameter assetRegistry:weakStringPoolReference:;
- (id).cxx_construct;
@end

@implementation PHASEGlobalMetaParameterAsset

- (PHASEGlobalMetaParameterAsset)init
{
  [(PHASEGlobalMetaParameterAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference
{
  [(PHASEGlobalMetaParameterAsset *)self doesNotRecognizeSelector:a2, registry, reference];

  return 0;
}

- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d ownedMetaParameter:()unique_ptr<Phase:(std:(id)phase :(void *)a6 default_delete<Phase::MetaParameter>>)a4 :MetaParameter assetRegistry:weakStringPoolReference:
{
  v7 = [(PHASEGlobalMetaParameterAsset *)self initWithUID:d metaParameterWeakReference:*a4.__ptr_ assetRegistry:phase weakStringPoolReference:a6];
  v8 = v7;
  if (v7)
  {
    v9 = *a4.__ptr_;
    *a4.__ptr_ = 0;
    ptr = v7->_metaParamOwnedAsset.__ptr_;
    v8->_metaParamOwnedAsset.__ptr_ = v9;
    if (ptr)
    {
      MEMORY[0x23EE864A0](ptr, 0x1000C40D9B47DDELL);
    }

    v11 = v8;
  }

  return v8;
}

- (PHASEGlobalMetaParameterAsset)initWithUID:(id)d metaParameterWeakReference:(const void *)reference assetRegistry:(id)registry weakStringPoolReference:(void *)poolReference
{
  v11.receiver = self;
  v11.super_class = PHASEGlobalMetaParameterAsset;
  v7 = [(PHASEAsset *)&v11 initWithUID:d assetRegistry:registry weakStringPoolReference:poolReference];
  v8 = v7;
  if (v7)
  {
    v7->_metaParamReference = reference;
    v9 = v7;
  }

  return v8;
}

- (id).cxx_construct
{
  self->_metaParamOwnedAsset.__ptr_ = 0;
  Phase::Fader<double>::Fader(&self->_metaParamState.mFader, 0.0);
  return self;
}

@end