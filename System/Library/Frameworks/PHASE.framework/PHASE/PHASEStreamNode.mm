@interface PHASEStreamNode
- (PHASEEngine)engine;
- (PHASEStreamNode)initWithEngine:(id)engine actionTreeUniqueId:(UniqueObjectId)id nodeStringHashId:(unint64_t)hashId mixer:(id)mixer format:(id)format normalize:(BOOL)normalize targetLKFS:(id)s;
- (UniqueObjectId)actionTreeUniqueId;
@end

@implementation PHASEStreamNode

- (PHASEStreamNode)initWithEngine:(id)engine actionTreeUniqueId:(UniqueObjectId)id nodeStringHashId:(unint64_t)hashId mixer:(id)mixer format:(id)format normalize:(BOOL)normalize targetLKFS:(id)s
{
  v22 = id.mStorage[1];
  v12 = id.mStorage[0];
  engineCopy = engine;
  mixerCopy = mixer;
  formatCopy = format;
  sCopy = s;
  v23.receiver = self;
  v23.super_class = PHASEStreamNode;
  v18 = [(PHASEStreamNode *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_engine, engineCopy);
    v19->_actionTreeUniqueId.mStorage[0] = v12;
    v19->_actionTreeUniqueId.mStorage[1] = v22;
    v19->_nodeUID = hashId;
    objc_storeStrong(&v19->_mixer, mixer);
    objc_storeStrong(&v19->_format, format);
    v19->_normalize = normalize;
    objc_storeStrong(&v19->_targetLKFS, s);
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