@interface _BKBaseSceneInfo
- (BKSceneControlling)sceneController;
- (BOOL)supportsOpeningToAuxiliaryScene;
- (NSString)openBookAssetID;
- (_BKBaseSceneInfo)initWithSceneSession:(id)a3 userData:(id)a4;
@end

@implementation _BKBaseSceneInfo

- (NSString)openBookAssetID
{
  v2 = [(_BKBaseSceneInfo *)self userData];
  v3 = [v2 objectForKeyedSubscript:BCContinuationActivityAssetIDKey];

  return v3;
}

- (_BKBaseSceneInfo)initWithSceneSession:(id)a3 userData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_BKBaseSceneInfo *)self init];
  if (v9)
  {
    v10 = [v7 persistentIdentifier];
    sceneIdentifier = v9->_sceneIdentifier;
    v9->_sceneIdentifier = v10;

    objc_storeStrong(&v9->_sceneSession, a3);
    objc_storeStrong(&v9->_userData, a4);
  }

  return v9;
}

- (BOOL)supportsOpeningToAuxiliaryScene
{
  v2 = self;
  v3 = [(_BKBaseSceneInfo *)self userData];
  v4 = [v3 objectForKeyedSubscript:@"BKSceneInfoIsAudiobookKey"];
  v5 = [v4 BOOLValue];

  v6 = [(_BKBaseSceneInfo *)v2 openBookAssetID];
  LOBYTE(v2) = v6 != 0;

  return v2 & (v5 ^ 1);
}

- (BKSceneControlling)sceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneController);

  return WeakRetained;
}

@end