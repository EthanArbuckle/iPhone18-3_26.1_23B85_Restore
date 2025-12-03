@interface _BKBaseSceneInfo
- (BKSceneControlling)sceneController;
- (BOOL)supportsOpeningToAuxiliaryScene;
- (NSString)openBookAssetID;
- (_BKBaseSceneInfo)initWithSceneSession:(id)session userData:(id)data;
@end

@implementation _BKBaseSceneInfo

- (NSString)openBookAssetID
{
  userData = [(_BKBaseSceneInfo *)self userData];
  v3 = [userData objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

  return v3;
}

- (_BKBaseSceneInfo)initWithSceneSession:(id)session userData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v9 = [(_BKBaseSceneInfo *)self init];
  if (v9)
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    sceneIdentifier = v9->_sceneIdentifier;
    v9->_sceneIdentifier = persistentIdentifier;

    objc_storeStrong(&v9->_sceneSession, session);
    objc_storeStrong(&v9->_userData, data);
  }

  return v9;
}

- (BOOL)supportsOpeningToAuxiliaryScene
{
  selfCopy = self;
  userData = [(_BKBaseSceneInfo *)self userData];
  v4 = [userData objectForKeyedSubscript:@"BKSceneInfoIsAudiobookKey"];
  bOOLValue = [v4 BOOLValue];

  openBookAssetID = [(_BKBaseSceneInfo *)selfCopy openBookAssetID];
  LOBYTE(selfCopy) = openBookAssetID != 0;

  return selfCopy & (bOOLValue ^ 1);
}

- (BKSceneControlling)sceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneController);

  return WeakRetained;
}

@end