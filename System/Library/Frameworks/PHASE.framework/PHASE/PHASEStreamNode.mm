@interface PHASEStreamNode
- (PHASEEngine)engine;
- (PHASEStreamNode)initWithEngine:(id)a3 actionTreeUniqueId:(UniqueObjectId)a4 nodeStringHashId:(unint64_t)a5 mixer:(id)a6 format:(id)a7 normalize:(BOOL)a8 targetLKFS:(id)a9;
- (UniqueObjectId)actionTreeUniqueId;
@end

@implementation PHASEStreamNode

- (PHASEStreamNode)initWithEngine:(id)a3 actionTreeUniqueId:(UniqueObjectId)a4 nodeStringHashId:(unint64_t)a5 mixer:(id)a6 format:(id)a7 normalize:(BOOL)a8 targetLKFS:(id)a9
{
  v22 = a4.mStorage[1];
  v12 = a4.mStorage[0];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = PHASEStreamNode;
  v18 = [(PHASEStreamNode *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_engine, v14);
    v19->_actionTreeUniqueId.mStorage[0] = v12;
    v19->_actionTreeUniqueId.mStorage[1] = v22;
    v19->_nodeUID = a5;
    objc_storeStrong(&v19->_mixer, a6);
    objc_storeStrong(&v19->_format, a7);
    v19->_normalize = a8;
    objc_storeStrong(&v19->_targetLKFS, a9);
    v20 = v19;
  }

  return v19;
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (UniqueObjectId)actionTreeUniqueId
{
  v2 = self->_actionTreeUniqueId.mStorage[1];
  v3 = self->_actionTreeUniqueId.mStorage[0];
  result.mStorage[1] = v2;
  result.mStorage[0] = v3;
  return result;
}

@end