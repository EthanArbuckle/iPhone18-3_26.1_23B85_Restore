@interface NTKSnowglobeAssetLibrary
+ (NTKSnowglobeAssetLibrary)sharedInstance;
- (NTKSnowglobeAssetLibrary)init;
- (id)_copyAndConfigureDigitNode:(id)node;
- (id)_lightMaterialContents;
- (id)_loadBackgroundObjects;
- (id)_loadDainty;
- (id)_loadDigitNumber:(unint64_t)number;
- (id)createScene;
- (id)digitShaderModifier;
- (void)_applyCustomShadingToMaterial:(id)material;
- (void)_configurePhysicsBodyForNode:(id)node;
- (void)_fetchEyes:(id)eyes;
- (void)_replaceEyesForNode:(id)node withCompletion:(id)completion;
- (void)digitNodeForNumber:(unint64_t)number queue:(id)queue withCompletion:(id)completion;
- (void)loadDaintyOnQueue:(id)queue withCompletion:(id)completion;
- (void)loadRandomBackgroundShapeOnQueue:(id)queue withCompletion:(id)completion;
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

- (void)digitNodeForNumber:(unint64_t)number queue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = [(NSArray *)self->_digitPromises objectAtIndex:number];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23C085918;
  v13[3] = &unk_278BAC748;
  v14 = queueCopy;
  selfCopy = self;
  v16 = completionCopy;
  numberCopy = number;
  v11 = completionCopy;
  v12 = queueCopy;
  [v10 fetchWithCompletion:v13];
}

- (id)_loadDigitNumber:(unint64_t)number
{
  v17 = *MEMORY[0x277D85DE8];
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"digit_%i", number];
  v4 = sub_23C085C88();
  v5 = [v4 URLForResource:number withExtension:@"scn" subdirectory:@"SceneKit Asset Catalog.scnassets"];

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

  rootNode = [v6 rootNode];
  childNodes = [rootNode childNodes];
  v11 = [childNodes objectAtIndexedSubscript:0];

  [v11 setSimdPosition:0.0];
  [v11 removeFromParentNode];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_copyAndConfigureDigitNode:(id)node
{
  clone = [node clone];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_23C085D84;
  v11 = &unk_278BAC798;
  v5 = clone;
  v12 = v5;
  selfCopy = self;
  [(NTKSnowglobeAssetLibrary *)self _replaceEyesForNode:v5 withCompletion:&v8];
  [(NTKSnowglobeAssetLibrary *)self _configurePhysicsBodyForNode:v5, v8, v9, v10, v11];
  v6 = v5;

  return v6;
}

- (void)_applyCustomShadingToMaterial:(id)material
{
  materialCopy = material;
  roughness = [materialCopy roughness];
  [roughness setContents:&unk_284EDC838];

  metalness = [materialCopy metalness];
  [metalness setContents:&unk_284EDC848];

  [materialCopy setLightingModelName:*MEMORY[0x277CDBBA0]];
  v7 = +[NTKSnowglobeAssetLibrary sharedInstance];
  digitShaderModifier = [v7 digitShaderModifier];
  [materialCopy setShaderModifiers:digitShaderModifier];
}

- (void)_configurePhysicsBodyForNode:(id)node
{
  nodeCopy = node;
  v18 = [nodeCopy childNodeWithName:@"Leg_1" recursively:1];
  v4 = [nodeCopy childNodeWithName:@"Leg_2" recursively:1];
  v5 = sub_23C0861EC(v4, nodeCopy);
  [nodeCopy setPhysicsBody:v5];

  v7 = sub_23C0861EC(v6, v18);
  [v18 setPhysicsBody:v7];

  physicsBody = [v18 physicsBody];
  [physicsBody setMass:0.05];

  physicsBody2 = [v18 physicsBody];
  [physicsBody2 setAngularDamping:0.95];

  physicsBody3 = [v18 physicsBody];
  [physicsBody3 setCollisionBitMask:0];

  physicsBody4 = [v18 physicsBody];
  [physicsBody4 setContactTestBitMask:0];

  v13 = sub_23C0861EC(v12, v4);
  [v4 setPhysicsBody:v13];

  physicsBody5 = [v4 physicsBody];
  [physicsBody5 setMass:0.05];

  physicsBody6 = [v4 physicsBody];
  [physicsBody6 setAngularDamping:0.95];

  physicsBody7 = [v4 physicsBody];
  [physicsBody7 setCollisionBitMask:0];

  physicsBody8 = [v4 physicsBody];
  [physicsBody8 setContactTestBitMask:0];
}

- (void)_fetchEyes:(id)eyes
{
  v22 = *MEMORY[0x277D85DE8];
  eyesCopy = eyes;
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

    rootNode = [v9 rootNode];
    v13 = [rootNode childNodeWithName:@"LeftEye" recursively:1];
    v14 = self->_leftEye;
    self->_leftEye = v13;

    rootNode2 = [v9 rootNode];
    v16 = [rootNode2 childNodeWithName:@"RightEye" recursively:1];
    rightEye = self->_rightEye;
    self->_rightEye = v16;

    [(SCNNode *)self->_leftEye setSimdScale:?];
    [(SCNNode *)self->_rightEye setSimdScale:*vdupq_n_s32(0x3BE33153u).i64];

    leftEye = self->_leftEye;
    v6 = self->_rightEye;
  }

  eyesCopy[2](eyesCopy, leftEye, v6);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_replaceEyesForNode:(id)node withCompletion:(id)completion
{
  nodeCopy = node;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23C086600;
  v10[3] = &unk_278BAC7C0;
  v11 = nodeCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = nodeCopy;
  [(NTKSnowglobeAssetLibrary *)self _fetchEyes:v10];
}

- (void)loadRandomBackgroundShapeOnQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  backgroundObjectPromise = self->_backgroundObjectPromise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C0867E8;
  v11[3] = &unk_278BAC810;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
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

    rootNode = [v5 rootNode];
    childNodes = [rootNode childNodes];
    v12 = [childNodes copy];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shaderModifier = selfCopy->_shaderModifier;
  if (!shaderModifier)
  {
    v4 = sub_23C085C88();
    v5 = [v4 URLForResource:@"shadermodifier" withExtension:@"metal.snippet"];

    v6 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v5 encoding:4 error:0];
    v12 = *MEMORY[0x277CDBC20];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = selfCopy->_shaderModifier;
    selfCopy->_shaderModifier = v7;

    shaderModifier = selfCopy->_shaderModifier;
  }

  v9 = shaderModifier;
  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)loadDaintyOnQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  daintyPromise = self->_daintyPromise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_23C086F14;
  v11[3] = &unk_278BAC618;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
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

  rootNode = [v5 rootNode];
  childNodes = [rootNode childNodes];
  v10 = [childNodes objectAtIndexedSubscript:0];

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
  scene = [MEMORY[0x277CDBAF8] scene];
  _lightMaterialContents = [(NTKSnowglobeAssetLibrary *)self _lightMaterialContents];
  lightingEnvironment = [scene lightingEnvironment];
  [lightingEnvironment setContents:_lightMaterialContents];

  lightingEnvironment2 = [scene lightingEnvironment];
  [lightingEnvironment2 setIntensity:2.0];

  return scene;
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