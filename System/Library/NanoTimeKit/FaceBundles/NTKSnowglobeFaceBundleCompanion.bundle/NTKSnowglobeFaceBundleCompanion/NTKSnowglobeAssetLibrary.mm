@interface NTKSnowglobeAssetLibrary
+ (NTKSnowglobeAssetLibrary)sharedInstance;
- (NTKSnowglobeAssetLibrary)init;
- (id)_copyAndConfigureDigitNode:(id)a3;
- (id)_lightMaterialContents;
- (id)_loadBackgroundObjects;
- (id)_loadDainty;
- (id)_loadDigitNumber:(unint64_t)a3;
- (id)createScene;
- (id)digitShaderModifier;
- (void)_applyCustomShadingToMaterial:(id)a3;
- (void)_configurePhysicsBodyForNode:(id)a3;
- (void)_fetchEyes:(id)a3;
- (void)_replaceEyesForNode:(id)a3 withCompletion:(id)a4;
- (void)digitNodeForNumber:(unint64_t)a3 queue:(id)a4 withCompletion:(id)a5;
- (void)loadDaintyOnQueue:(id)a3 withCompletion:(id)a4;
- (void)loadRandomBackgroundShapeOnQueue:(id)a3 withCompletion:(id)a4;
@end

@implementation NTKSnowglobeAssetLibrary

+ (NTKSnowglobeAssetLibrary)sharedInstance
{
  os_unfair_lock_lock(&unk_27E1EDDF0);
  WeakRetained = objc_loadWeakRetained(&qword_27E1EDDE8);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1EDDE8, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_27E1EDDF0);

  return WeakRetained;
}

- (NTKSnowglobeAssetLibrary)init
{
  v24.receiver = self;
  v24.super_class = NTKSnowglobeAssetLibrary;
  v2 = [(NTKSnowglobeAssetLibrary *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    digitPools = v2->_digitPools;
    v2->_digitPools = v3;

    v5 = objc_opt_new();
    v6 = 0;
    do
    {
      objc_initWeak(&location, v2);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_23C0856C4;
      v21[3] = &unk_278BAC6D0;
      objc_copyWeak(v22, &location);
      v22[1] = v6;
      v7 = [NTKSnowglobePromise asyncPromiseWithBlock:v21];
      [v5 addObject:v7];

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
      ++v6;
    }

    while (v6 != 10);
    v8 = [v5 copy];
    digitPromises = v2->_digitPromises;
    v2->_digitPromises = v8;

    objc_initWeak(&location, v2);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23C085740;
    v19[3] = &unk_278BAC6F8;
    objc_copyWeak(&v20, &location);
    v10 = [NTKSnowglobePromise asyncPromiseWithBlock:v19];
    backgroundObjectPromise = v2->_backgroundObjectPromise;
    v2->_backgroundObjectPromise = v10;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23C0857B8;
    v17[3] = &unk_278BAC6F8;
    objc_copyWeak(&v18, &location);
    v12 = [NTKSnowglobePromise asyncPromiseWithBlock:v17];
    daintyPromise = v2->_daintyPromise;
    v2->_daintyPromise = v12;

    v14 = MTLCreateSystemDefaultDevice();
    sharedDevice = v2->_sharedDevice;
    v2->_sharedDevice = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)digitNodeForNumber:(unint64_t)a3 queue:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(NSArray *)self->_digitPromises objectAtIndex:a3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23C085918;
  v13[3] = &unk_278BAC748;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  [v10 fetchWithCompletion:v13];
}

- (id)_loadDigitNumber:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"digit_%i", a3];
  v4 = sub_23C085C88();
  v5 = [v4 URLForResource:v3 withExtension:@"scn" subdirectory:@"SceneKit Asset Catalog.scnassets"];

  v14 = 0;
  v6 = [MEMORY[0x277CDBAF8] sceneWithURL:v5 options:0 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_23C07F000, v8, OS_LOG_TYPE_DEFAULT, "Snowglobe: Error loading digit scene: %@", buf, 0xCu);
    }
  }

  v9 = [v6 rootNode];
  v10 = [v9 childNodes];
  v11 = [v10 objectAtIndexedSubscript:0];

  [v11 setSimdPosition:0.0];
  [v11 removeFromParentNode];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_copyAndConfigureDigitNode:(id)a3
{
  v4 = [a3 clone];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_23C085D84;
  v11 = &unk_278BAC798;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [(NTKSnowglobeAssetLibrary *)self _replaceEyesForNode:v5 withCompletion:&v8];
  [(NTKSnowglobeAssetLibrary *)self _configurePhysicsBodyForNode:v5, v8, v9, v10, v11];
  v6 = v5;

  return v6;
}

- (void)_applyCustomShadingToMaterial:(id)a3
{
  v3 = a3;
  v4 = [v3 roughness];
  [v4 setContents:&unk_284EDC838];

  v5 = [v3 metalness];
  [v5 setContents:&unk_284EDC848];

  [v3 setLightingModelName:*MEMORY[0x277CDBBA0]];
  v7 = +[NTKSnowglobeAssetLibrary sharedInstance];
  v6 = [v7 digitShaderModifier];
  [v3 setShaderModifiers:v6];
}

- (void)_configurePhysicsBodyForNode:(id)a3
{
  v3 = a3;
  v18 = [v3 childNodeWithName:@"Leg_1" recursively:1];
  v4 = [v3 childNodeWithName:@"Leg_2" recursively:1];
  v5 = sub_23C0861EC(v4, v3);
  [v3 setPhysicsBody:v5];

  v7 = sub_23C0861EC(v6, v18);
  [v18 setPhysicsBody:v7];

  v8 = [v18 physicsBody];
  [v8 setMass:0.05];

  v9 = [v18 physicsBody];
  [v9 setAngularDamping:0.95];

  v10 = [v18 physicsBody];
  [v10 setCollisionBitMask:0];

  v11 = [v18 physicsBody];
  [v11 setContactTestBitMask:0];

  v13 = sub_23C0861EC(v12, v4);
  [v4 setPhysicsBody:v13];

  v14 = [v4 physicsBody];
  [v14 setMass:0.05];

  v15 = [v4 physicsBody];
  [v15 setAngularDamping:0.95];

  v16 = [v4 physicsBody];
  [v16 setCollisionBitMask:0];

  v17 = [v4 physicsBody];
  [v17 setContactTestBitMask:0];
}

- (void)_fetchEyes:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  leftEye = self->_leftEye;
  if (!leftEye || (v6 = self->_rightEye) == 0)
  {
    v7 = sub_23C085C88();
    v8 = [v7 URLForResource:@"eyes" withExtension:@"scn" subdirectory:@"SceneKit Asset Catalog.scnassets"];

    v19 = 0;
    v9 = [MEMORY[0x277CDBAF8] sceneWithURL:v8 options:0 error:&v19];
    v10 = v19;
    if (v10)
    {
      v11 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_23C07F000, v11, OS_LOG_TYPE_DEFAULT, "Snowglobe: Error loading lighting scene: %@", buf, 0xCu);
      }
    }

    v12 = [v9 rootNode];
    v13 = [v12 childNodeWithName:@"LeftEye" recursively:1];
    v14 = self->_leftEye;
    self->_leftEye = v13;

    v15 = [v9 rootNode];
    v16 = [v15 childNodeWithName:@"RightEye" recursively:1];
    rightEye = self->_rightEye;
    self->_rightEye = v16;

    [(SCNNode *)self->_leftEye setSimdScale:?];
    [(SCNNode *)self->_rightEye setSimdScale:*vdupq_n_s32(0x3BE33153u).i64];

    leftEye = self->_leftEye;
    v6 = self->_rightEye;
  }

  v4[2](v4, leftEye, v6);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_replaceEyesForNode:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23C086600;
  v10[3] = &unk_278BAC7C0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NTKSnowglobeAssetLibrary *)self _fetchEyes:v10];
}

- (void)loadRandomBackgroundShapeOnQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  backgroundObjectPromise = self->_backgroundObjectPromise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C0867E8;
  v11[3] = &unk_278BAC810;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NTKSnowglobePromise *)backgroundObjectPromise fetchWithCompletion:v11];
}

- (id)_loadBackgroundObjects
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C07F000, v2, OS_LOG_TYPE_DEFAULT, "Loading Snowglobe background objects..", buf, 2u);
  }

  v3 = sub_23C085C88();
  v4 = [v3 URLForResource:@"all_shapes" withExtension:@"scn" subdirectory:@"SceneKit Asset Catalog.scnassets"];

  v23 = 0;
  v5 = [MEMORY[0x277CDBAF8] sceneWithURL:v4 options:0 error:&v23];
  v6 = v23;
  v7 = _NTKLoggingObjectForDomain();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23C08ED78(v6, v8);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C07F000, v8, OS_LOG_TYPE_DEFAULT, "Loaded Snowglobe background objects", buf, 2u);
    }

    v10 = [v5 rootNode];
    v11 = [v10 childNodes];
    v12 = [v11 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v12;
    v13 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v19 + 1) + 8 * i) removeFromParentNode];
        }

        v14 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v14);
    }

    v9 = v8;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)digitShaderModifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  shaderModifier = v2->_shaderModifier;
  if (!shaderModifier)
  {
    v4 = sub_23C085C88();
    v5 = [v4 URLForResource:@"shadermodifier" withExtension:@"metal.snippet"];

    v6 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v5 encoding:4 error:0];
    v12 = *MEMORY[0x277CDBC20];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = v2->_shaderModifier;
    v2->_shaderModifier = v7;

    shaderModifier = v2->_shaderModifier;
  }

  v9 = shaderModifier;
  objc_sync_exit(v2);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)loadDaintyOnQueue:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  daintyPromise = self->_daintyPromise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C086F14;
  v11[3] = &unk_278BAC618;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NTKSnowglobePromise *)daintyPromise fetchWithCompletion:v11];
}

- (id)_loadDainty
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C07F000, v2, OS_LOG_TYPE_DEFAULT, "Loading Dainty..", buf, 2u);
  }

  v3 = sub_23C085C88();
  v4 = [v3 URLForResource:@"dainty" withExtension:@"scn" subdirectory:@"SceneKit Asset Catalog.scnassets"];

  v14 = 0;
  v5 = [MEMORY[0x277CDBAF8] sceneWithURL:v4 options:0 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_23C07F000, v7, OS_LOG_TYPE_DEFAULT, "Snowglobe: Error loading dainty scene: %@", buf, 0xCu);
    }
  }

  v8 = [v5 rootNode];
  v9 = [v8 childNodes];
  v10 = [v9 objectAtIndexedSubscript:0];

  [v10 removeFromParentNode];
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v10 != 0;
    _os_log_impl(&dword_23C07F000, v11, OS_LOG_TYPE_DEFAULT, "Loaded Dainty %i", buf, 8u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createScene
{
  v3 = [MEMORY[0x277CDBAF8] scene];
  v4 = [(NTKSnowglobeAssetLibrary *)self _lightMaterialContents];
  v5 = [v3 lightingEnvironment];
  [v5 setContents:v4];

  v6 = [v3 lightingEnvironment];
  [v6 setIntensity:2.0];

  return v3;
}

- (id)_lightMaterialContents
{
  lightingMaterialContents = self->_lightingMaterialContents;
  if (lightingMaterialContents)
  {
    v3 = lightingMaterialContents;
  }

  else
  {
    v5 = sub_23C085C88();
    v6 = [v5 URLForResource:@"snowglobe" withExtension:@"lighting" subdirectory:@"SceneKit Asset Catalog.scnassets"];

    v15 = 0;
    v7 = [MEMORY[0x277CDBA98] precomputedLightingEnvironmentContentsWithURL:v6 error:&v15];
    v8 = v15;
    v9 = self->_lightingMaterialContents;
    self->_lightingMaterialContents = v7;

    v10 = self->_lightingMaterialContents;
    v11 = _NTKLoggingObjectForDomain();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23C07F000, v12, OS_LOG_TYPE_DEFAULT, "Loaded lighting environment successfully", v14, 2u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_23C08EDF0(v8, v12);
    }

    v3 = self->_lightingMaterialContents;
  }

  return v3;
}

@end