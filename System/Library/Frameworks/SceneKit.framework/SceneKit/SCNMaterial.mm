@interface SCNMaterial
+ (SCNMaterial)material;
+ (SCNMaterial)materialWithColor:(id)color;
+ (SCNMaterial)materialWithContents:(id)contents;
+ (SCNMaterial)materialWithMDLMaterial:(id)material options:(id)options;
+ (SCNMaterial)materialWithMaterialRef:(__C3DMaterial *)ref;
+ (id)materialNamed:(id)named;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)avoidsOverLighting;
- (BOOL)isAnimationForKeyPaused:(id)paused;
- (BOOL)isDoubleSided;
- (BOOL)isLitPerPixel;
- (BOOL)locksAmbientWithDiffuse;
- (BOOL)readsFromDepthBuffer;
- (BOOL)writesToDepthBuffer;
- (CGFloat)fresnelExponent;
- (CGFloat)shininess;
- (CGFloat)transparency;
- (NSArray)animationKeys;
- (NSString)description;
- (NSString)name;
- (SCNBlendMode)blendMode;
- (SCNColorMask)colorBufferWriteMask;
- (SCNCullMode)cullMode;
- (SCNFillMode)fillMode;
- (SCNLightingModel)lightingModelName;
- (SCNMaterial)init;
- (SCNMaterial)initWithCoder:(id)coder;
- (SCNMaterial)initWithMaterialRef:(__C3DMaterial *)ref;
- (SCNTransparencyMode)transparencyMode;
- (__C3DAnimationManager)animationManager;
- (__C3DEffectCommonProfile)commonProfile;
- (__C3DScene)sceneRef;
- (double)indexOfRefraction;
- (double)selfIlluminationOcclusion;
- (id)_integrateModelKitComputedMaps:(id)maps withGeometry:(id)geometry node:(id)node texturePathProvider:(id)provider vertexAttributeNamed:(id)named materialPropertyNamed:(id)propertyNamed filePath:(id)path;
- (id)_property:(id *)_property;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)builtinProperties;
- (id)color;
- (id)contents;
- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation;
- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)identifier;
- (id)initPresentationMaterialWithMaterialRef:(__C3DMaterial *)ref;
- (id)presentationMaterial;
- (id)properties;
- (id)scene;
- (id)valueForUndefinedKey:(id)key;
- (void)_copyAnimationsFrom:(id)from;
- (void)_customDecodingOfSCNMaterial:(id)material;
- (void)_customEncodingOfSCNMaterial:(id)material;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setupMaterialProperty:(id *)property;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block;
- (void)pauseAnimationForKey:(id)key;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)resumeAnimationForKey:(id)key;
- (void)setAvoidsOverLighting:(BOOL)lighting;
- (void)setBlendMode:(SCNBlendMode)blendMode;
- (void)setColor:(id)color;
- (void)setColorBufferWriteMask:(SCNColorMask)colorBufferWriteMask;
- (void)setContents:(id)contents;
- (void)setCullMode:(SCNCullMode)cullMode;
- (void)setDoubleSided:(BOOL)doubleSided;
- (void)setFillMode:(SCNFillMode)fillMode;
- (void)setFresnelExponent:(CGFloat)fresnelExponent;
- (void)setIdentifier:(id)identifier;
- (void)setIndexOfRefraction:(double)refraction;
- (void)setLightingModelName:(SCNLightingModel)lightingModelName;
- (void)setLitPerPixel:(BOOL)litPerPixel;
- (void)setLocksAmbientWithDiffuse:(BOOL)locksAmbientWithDiffuse;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setName:(NSString *)name;
- (void)setProgram:(id)program;
- (void)setReadsFromDepthBuffer:(BOOL)readsFromDepthBuffer;
- (void)setSelfIlluminationOcclusion:(double)occlusion;
- (void)setShaderModifiers:(id)modifiers;
- (void)setShininess:(CGFloat)shininess;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)setTransparency:(CGFloat)transparency;
- (void)setTransparencyMode:(SCNTransparencyMode)transparencyMode;
- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer;
- (void)unbindAnimatablePath:(id)path;
@end

@implementation SCNMaterial

- (id)_integrateModelKitComputedMaps:(id)maps withGeometry:(id)geometry node:(id)node texturePathProvider:(id)provider vertexAttributeNamed:(id)named materialPropertyNamed:(id)propertyNamed filePath:(id)path
{
  v16 = [named isEqualToString:*MEMORY[0x277CD7A68]];
  v17 = [maps propertyNamed:propertyNamed];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  if (![v17 textureSamplerValue] || !objc_msgSend(objc_msgSend(v18, "textureSamplerValue"), "texture"))
  {
    return 0;
  }

  if (provider)
  {
    v19 = (*(provider + 2))(provider, node);
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/ModelKit_AO_%@.png", objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78], "UUID"), "UUIDString")];
  }

  pathCopy = v19;
  if ([path isEqualToString:&stru_282DCC058])
  {
    v22 = [objc_msgSend(v18 "textureSamplerValue")];
    [v22 writeToURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", pathCopy)}];
    [path setString:pathCopy];
  }

  else
  {
    pathCopy = path;
  }

  v23 = [geometry geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
  v24 = [v23 count];
  v25 = v24;
  if (v24 < 1)
  {
    v28 = 0;
  }

  else
  {
    v26 = 0;
    v27 = v24 & 0x7FFFFFFF;
    while (([objc_msgSend(objc_msgSend(v23 objectAtIndexedSubscript:{v26), "mkSemantic"), "isEqualToString:", named}] & 1) == 0)
    {
      if (v27 == ++v26)
      {
        LODWORD(v26) = v25;
        break;
      }
    }

    v28 = v26;
  }

  if (v16)
  {
    [(SCNMaterialProperty *)[(SCNMaterial *)self ambientOcclusion] setMappingChannel:v28];
    ambientOcclusion = [(SCNMaterial *)self ambientOcclusion];
  }

  else
  {
    [(SCNMaterialProperty *)[(SCNMaterial *)self selfIllumination] setMappingChannel:v28];
    ambientOcclusion = [(SCNMaterial *)self selfIllumination];
  }

  [(SCNMaterialProperty *)ambientOcclusion setContents:pathCopy];
  v30 = MEMORY[0x277CBEBC0];

  return [v30 fileURLWithPath:pathCopy];
}

+ (SCNMaterial)materialWithMDLMaterial:(id)material options:(id)options
{
  if (!material)
  {
    return 0;
  }

  AssociatedObject = objc_getAssociatedObject(material, @"SCNSceneKitAssociatedObject");
  [material scatteringFunction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  material = AssociatedObject;
  if (!AssociatedObject)
  {
    material = [self material];
    -[SCNMaterial setName:](material, "setName:", [material name]);
    objc_setAssociatedObject(material, @"SCNSceneKitAssociatedObject", material, 0x301);
    objc_setAssociatedObject(material, @"SCNSceneKitAssociatedObject", material, 0);
  }

  v10 = &SCNLightingModelPhysicallyBased;
  if ((isKindOfClass & 1) == 0)
  {
    v10 = &SCNLightingModelBlinn;
  }

  [(SCNMaterial *)material setLightingModelName:*v10];
  setupSCNMaterialProperty([(SCNMaterial *)material emission], material, MDLMaterialSemanticEmission, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material diffuse], material, MDLMaterialSemanticBaseColor, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material specular], material, MDLMaterialSemanticSpecular, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material reflective], material, MDLMaterialSemanticUserDefined, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material transparent], material, MDLMaterialSemanticOpacity, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material displacement], material, MDLMaterialSemanticDisplacement, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material normal], material, MDLMaterialSemanticTangentSpaceNormal, AssociatedObject == 0, options);
  setupSCNMaterialProperty([(SCNMaterial *)material ambientOcclusion], material, MDLMaterialSemanticAmbientOcclusion, AssociatedObject == 0, options);
  if ([material materialFace] == 2)
  {
    [(SCNMaterial *)material setDoubleSided:1];
  }

  if (isKindOfClass)
  {
    v11 = AssociatedObject == 0;
    setupSCNMaterialProperty([(SCNMaterial *)material metalness], material, MDLMaterialSemanticMetallic, v11, options);
    setupSCNMaterialProperty([(SCNMaterial *)material roughness], material, MDLMaterialSemanticRoughness, v11, options);
  }

  else
  {
    [objc_msgSend(material propertyWithSemantic:{6), "floatValue"}];
    [(SCNMaterial *)material setShininess:((2.0 / (v12 * v12)) + -2.0)];
  }

  return material;
}

- (SCNMaterial)init
{
  v5.receiver = self;
  v5.super_class = SCNMaterial;
  v2 = [(SCNMaterial *)&v5 init];
  if (v2)
  {
    v3 = C3DMaterialCreate();
    v2->_material = v3;
    if (v3)
    {
      C3DEntitySetObjCWrapper(v3, v2);
    }

    v2->_animationsLock._os_unfair_lock_opaque = 0;
    v2->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    [(SCNMaterial *)v2 _syncObjCModel];
  }

  return v2;
}

- (SCNMaterial)initWithMaterialRef:(__C3DMaterial *)ref
{
  v7.receiver = self;
  v7.super_class = SCNMaterial;
  v4 = [(SCNMaterial *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_material = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    v4->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    [(SCNMaterial *)v4 _syncObjCModel];
    [(SCNMaterial *)v4 _syncObjCAnimations];
  }

  return v4;
}

- (id)initPresentationMaterialWithMaterialRef:(__C3DMaterial *)ref
{
  v7.receiver = self;
  v7.super_class = SCNMaterial;
  v4 = [(SCNMaterial *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isPresentationInstance = 1;
    v4->_material = CFRetain(ref);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNMaterial)materialWithMaterialRef:(__C3DMaterial *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithMaterialRef:ref];

    return v6;
  }

  return result;
}

+ (SCNMaterial)material
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (SCNMaterial)materialWithColor:(id)color
{
  v4 = objc_alloc_init(self);
  [(SCNMaterial *)v4 setColor:color];
  return v4;
}

+ (SCNMaterial)materialWithContents:(id)contents
{
  v4 = objc_alloc_init(self);
  [(SCNMaterial *)v4 setContents:contents];
  return v4;
}

- (void)dealloc
{
  [(SCNMaterialProperty *)self->_ambient parentWillDie:self];
  [(SCNMaterialProperty *)self->_diffuse parentWillDie:self];
  [(SCNMaterialProperty *)self->_specular parentWillDie:self];
  [(SCNMaterialProperty *)self->_emission parentWillDie:self];
  [(SCNMaterialProperty *)self->_reflective parentWillDie:self];
  [(SCNMaterialProperty *)self->_transparent parentWillDie:self];
  [(SCNMaterialProperty *)self->_multiply parentWillDie:self];
  [(SCNMaterialProperty *)self->_normal parentWillDie:self];
  [(SCNMaterialProperty *)self->_ambientOcclusion parentWillDie:self];
  [(SCNMaterialProperty *)self->_selfIllumination parentWillDie:self];
  [(SCNMaterialProperty *)self->_metalness parentWillDie:self];
  [(SCNMaterialProperty *)self->_roughness parentWillDie:self];
  [(SCNMaterialProperty *)self->_displacement parentWillDie:self];
  [(SCNMaterialProperty *)self->_clearCoat parentWillDie:self];
  [(SCNMaterialProperty *)self->_clearCoatRoughness parentWillDie:self];
  [(SCNMaterialProperty *)self->_clearCoatNormal parentWillDie:self];
  [(SCNShadableHelper *)self->_shadableHelper ownerWillDie];

  material = self->_material;
  if (material)
  {
    if (!self->_isPresentationInstance)
    {
      C3DEntitySetObjCWrapper(material, 0);
      material = self->_material;
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __22__SCNMaterial_dealloc__block_invoke;
    v5[3] = &__block_descriptor_40_e8_v16__0d8l;
    v5[4] = material;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v5];
  }

  v4.receiver = self;
  v4.super_class = SCNMaterial;
  [(SCNMaterial *)&v4 dealloc];
}

- (void)setName:(NSString *)name
{
  if (self->_isPresentationInstance)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial setName:];
    }
  }

  else if (name | self->_name && ([(NSString *)name isEqual:?]& 1) == 0)
  {

    self->_name = [(NSString *)name copy];
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__SCNMaterial_setName___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = name;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

CFStringRef __23__SCNMaterial_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  return C3DEntitySetName(v2, v3);
}

- (NSString)name
{
  if (!self->_isPresentationInstance)
  {
    return self->_name;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  Name = C3DEntityGetName([(SCNMaterial *)self __CFObject]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Name;
}

- (void)setIdentifier:(id)identifier
{
  __CFObject = [(SCNMaterial *)self __CFObject];

  C3DEntitySetID(__CFObject, identifier);
}

- (id)identifier
{
  __CFObject = [(SCNMaterial *)self __CFObject];

  return C3DEntityGetID(__CFObject);
}

- (void)_syncEntityObjCModel
{
  __CFObject = [(SCNMaterial *)self __CFObject];

  self->_name = C3DEntityGetName(__CFObject);
}

- (void)_syncObjCModel
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  materialRef = [(SCNMaterial *)self materialRef];
  self->_cullMode = C3DMaterialGetCullMode(materialRef);
  self->_writesToDepthBuffer = C3DMaterialGetEnableWriteInDepthBuffer(materialRef);
  self->_readsFromDepthBuffer = C3DMaterialGetEnableReadsFromDepthBuffer(materialRef);
  self->_colorBufferWriteMask = C3DMaterialGetColorBufferWriteMask(materialRef);
  self->_doubleSided = C3DMaterialIsDoubleSided(materialRef);
  self->_fillMode = C3DMaterialGetFillMode(materialRef);
  self->_blendMode = C3DMaterialGetBlendMode(materialRef);
  CommonProfile = C3DMaterialGetCommonProfile(materialRef);
  if (CommonProfile)
  {
    v7 = CommonProfile;
    self->_shininess = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 16);
    self->_transparency = C3DEffectCommonProfileGetFloatProperty(v7, 18);
    self->_indexOfRefraction = C3DEffectCommonProfileGetFloatProperty(v7, 19);
    self->_fresnelExponent = C3DEffectCommonProfileGetFloatProperty(v7, 20);
    self->_transparencyMode = C3DEffectCommonProfileGetTransparencyMode(v7);
    LightingModel = C3DEffectCommonProfileGetLightingModel(v7);
    self->_lightingModelName = SCNObjCLightingModelFromCLightingModel(LightingModel);
    self->_litPerPixel = C3DEffectCommonProfileIsPerPixelLit(v7);
    self->_locksAmbientWithDiffuse = C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(v7);
    self->_avoidsOverLighting = C3DEffectCommonProfileGetAvoidsOverLighting(v7);
    self->_selfIlluminationOcclusion = C3DEffectCommonProfileGetSelfIlluminationOcclusion(v7);
  }

  Technique = C3DMaterialGetTechnique(materialRef);
  if (Technique)
  {
    v10 = Technique;
    if (C3DFXTechniqueGetPassCount(Technique) >= 1)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(v10, 0);
      Program = C3DFXPassGetProgram(PassAtIndex);
      if (Program)
      {
        v13 = Program;
        v14 = objc_alloc_init(SCNProgram);
        ShaderSources = C3DFXGLSLProgramGetShaderSources(v13);
        v17 = v16;
        [(SCNProgram *)v14 setVertexShader:ShaderSources];
        [(SCNProgram *)v14 setFragmentShader:v17];
        [(SCNProgram *)v14 setName:C3DEntityGetName(v13)];
        [(SCNMaterial *)self setProgram:v14];
      }
    }
  }

  [(SCNMaterial *)self _syncEntityObjCModel];
  if (v4)
  {

    C3DSceneUnlock(v4);
  }
}

- (id)presentationMaterial
{
  if ((*(self + 240) & 1) == 0)
  {
    v2 = [[SCNMaterial alloc] initPresentationMaterialWithMaterialRef:*(self + 1)];

    return v2;
  }

  return self;
}

- (__C3DEffectCommonProfile)commonProfile
{
  materialRef = [(SCNMaterial *)self materialRef];

  return C3DMaterialGetCommonProfile(materialRef);
}

- (void)_setupMaterialProperty:(id *)property
{
  if (property)
  {
    sceneRef = [(SCNMaterial *)self sceneRef];
    v6 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    v7 = [(SCNMaterial *)self commonProfile:0];
    if (!v7)
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SCNMaterial _setupMaterialProperty:];
      }

      goto LABEL_46;
    }

    if (&self->_diffuse == property)
    {
      v8 = 2;
    }

    else
    {
      v8 = 21;
    }

    if (&self->_ambient == property)
    {
      v8 = 1;
    }

    if (&self->_specular == property)
    {
      v8 = 3;
    }

    if (&self->_emission == property)
    {
      v8 = 0;
    }

    if (&self->_reflective == property)
    {
      v8 = 4;
    }

    if (&self->_transparent == property)
    {
      v8 = 5;
    }

    if (&self->_multiply == property)
    {
      v8 = 6;
    }

    if (&self->_normal == property)
    {
      v8 = 7;
    }

    if (&self->_selfIllumination == property)
    {
      v8 = 9;
    }

    if (&self->_ambientOcclusion == property)
    {
      v8 = 8;
    }

    if (&self->_metalness == property)
    {
      v8 = 10;
    }

    if (&self->_roughness == property)
    {
      v8 = 11;
    }

    if (&self->_displacement == property)
    {
      v8 = 15;
    }

    if (&self->_clearCoat == property)
    {
      v8 = 12;
    }

    if (&self->_clearCoatRoughness == property)
    {
      v8 = 13;
    }

    if (&self->_clearCoatNormal == property)
    {
      v8 = 14;
    }

    v9 = v8;
    if (v8 == 21)
    {
      Image = 0;
    }

    else
    {
      v12 = v7;
      Color = C3DEffectCommonProfileGetColor(v7, v9);
      Image = C3DEffectCommonProfileGetImage(v12, v9);
      if (Color)
      {
        goto LABEL_44;
      }
    }

    Color = &v15;
    C3DColor4Make(&v15, 0.5, 0.5, 0.5, 1.0);
LABEL_44:
    v14 = [objc_alloc(-[SCNMaterial _materialPropertyClass](self "_materialPropertyClass"))];
    *property = v14;
    [v14 _setColor:{objc_msgSend(MEMORY[0x277D75348], "scn_colorWithC3DColor:", Color)}];
    [*property _setC3DImageRef:Image];
    if ((C3DWasLinkedBeforeMajorOSYear2017() & 1) == 0)
    {
      [*property _setupContentsFromC3DImage];
    }

LABEL_46:
    if (v6)
    {
      C3DSceneUnlock(v6);
    }
  }
}

- (void)setColor:(id)color
{
  [(SCNMaterialProperty *)[(SCNMaterial *)self ambient] setColor:color];
  diffuse = [(SCNMaterial *)self diffuse];

  [(SCNMaterialProperty *)diffuse setColor:color];
}

- (id)color
{
  ambient = [(SCNMaterial *)self ambient];

  return [(SCNMaterialProperty *)ambient color];
}

- (id)builtinProperties
{
  v4[16] = *MEMORY[0x277D85DE8];
  v4[0] = [(SCNMaterial *)self ambient];
  v4[1] = [(SCNMaterial *)self diffuse];
  v4[2] = [(SCNMaterial *)self specular];
  v4[3] = [(SCNMaterial *)self emission];
  v4[4] = [(SCNMaterial *)self transparent];
  v4[5] = [(SCNMaterial *)self reflective];
  v4[6] = [(SCNMaterial *)self multiply];
  v4[7] = [(SCNMaterial *)self normal];
  v4[8] = [(SCNMaterial *)self ambientOcclusion];
  v4[9] = [(SCNMaterial *)self selfIllumination];
  v4[10] = [(SCNMaterial *)self metalness];
  v4[11] = [(SCNMaterial *)self roughness];
  v4[12] = [(SCNMaterial *)self displacement];
  v4[13] = [(SCNMaterial *)self clearCoat];
  v4[14] = [(SCNMaterial *)self clearCoatRoughness];
  v4[15] = [(SCNMaterial *)self clearCoatNormal];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:16];
}

- (id)properties
{
  builtinProperties = [(SCNMaterial *)self builtinProperties];
  customMaterialProperties = [(SCNMaterial *)self customMaterialProperties];
  if (![customMaterialProperties count])
  {
    return builtinProperties;
  }

  return [builtinProperties arrayByAddingObjectsFromArray:customMaterialProperties];
}

- (id)_property:(id *)_property
{
  if (!*_property)
  {
    [(SCNMaterial *)self _setupMaterialProperty:_property];
  }

  result = *_property;
  if (self->_isPresentationInstance)
  {

    return [result presentationMaterialProperty];
  }

  return result;
}

- (void)setTransparencyMode:(SCNTransparencyMode)transparencyMode
{
  if (self->_transparencyMode != transparencyMode)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_transparencyMode = transparencyMode;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterial_setTransparencyMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = transparencyMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __35__SCNMaterial_setTransparencyMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) commonProfile];
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetTransparencyMode(v2, v3);
}

- (SCNTransparencyMode)transparencyMode
{
  if (!self->_isPresentationInstance)
  {
    return self->_transparencyMode;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(commonProfile);
    if (!v4)
    {
      return TransparencyMode;
    }

    goto LABEL_9;
  }

  TransparencyMode = SCNTransparencyModeAOne;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return TransparencyMode;
}

- (void)setShininess:(CGFloat)shininess
{
  if (self->_shininess != shininess)
  {
    v5 = shininess;
    self->_shininess = v5;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNMaterial_setShininess___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = shininess;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"shininess" applyBlock:v7];
  }
}

void __28__SCNMaterial_setShininess___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetFloatProperty(CommonProfile, 16, v3);
}

- (CGFloat)shininess
{
  if (!self->_isPresentationInstance)
  {
    return self->_shininess;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(commonProfile, 16);
    if (!v4)
    {
      return FloatProperty;
    }

    goto LABEL_9;
  }

  FloatProperty = 0.0;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return FloatProperty;
}

- (void)setTransparency:(CGFloat)transparency
{
  if (self->_transparency != transparency)
  {
    v5 = transparency;
    self->_transparency = v5;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNMaterial_setTransparency___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = transparency;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"transparency" applyBlock:v7];
  }
}

void __31__SCNMaterial_setTransparency___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetFloatProperty(CommonProfile, 18, v3);
}

- (CGFloat)transparency
{
  if (!self->_isPresentationInstance)
  {
    return self->_transparency;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(commonProfile, 18);
    if (!v4)
    {
      return FloatProperty;
    }

    goto LABEL_9;
  }

  FloatProperty = 0.0;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return FloatProperty;
}

- (void)setIndexOfRefraction:(double)refraction
{
  if (self->_indexOfRefraction != refraction)
  {
    refractionCopy = refraction;
    self->_indexOfRefraction = refractionCopy;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNMaterial_setIndexOfRefraction___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = refraction;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"indexOfRefraction" applyBlock:v7];
  }
}

void __36__SCNMaterial_setIndexOfRefraction___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetFloatProperty(CommonProfile, 19, v3);
}

- (double)indexOfRefraction
{
  if (!self->_isPresentationInstance)
  {
    return self->_indexOfRefraction;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(commonProfile, 19);
    if (!v4)
    {
      return FloatProperty;
    }

    goto LABEL_9;
  }

  FloatProperty = 0.0;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return FloatProperty;
}

- (void)setFresnelExponent:(CGFloat)fresnelExponent
{
  if (self->_fresnelExponent != fresnelExponent)
  {
    v5 = fresnelExponent;
    self->_fresnelExponent = v5;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNMaterial_setFresnelExponent___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = fresnelExponent;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fresnelExponent" applyBlock:v7];
  }
}

void __34__SCNMaterial_setFresnelExponent___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetFloatProperty(CommonProfile, 20, v3);
}

- (CGFloat)fresnelExponent
{
  if (!self->_isPresentationInstance)
  {
    return self->_fresnelExponent;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(commonProfile, 20);
    if (!v4)
    {
      return FloatProperty;
    }

    goto LABEL_9;
  }

  FloatProperty = 0.0;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return FloatProperty;
}

- (void)setSelfIlluminationOcclusion:(double)occlusion
{
  if (self->_selfIlluminationOcclusion != occlusion)
  {
    occlusionCopy = occlusion;
    self->_selfIlluminationOcclusion = occlusionCopy;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNMaterial_setSelfIlluminationOcclusion___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = occlusion;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"selfIlluminationOcclusion" applyBlock:v7];
  }
}

void __44__SCNMaterial_setSelfIlluminationOcclusion___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetSelfIlluminationOcclusion(CommonProfile, v3);
}

- (double)selfIlluminationOcclusion
{
  if (!self->_isPresentationInstance)
  {
    return self->_selfIlluminationOcclusion;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    SelfIlluminationOcclusion = C3DEffectCommonProfileGetSelfIlluminationOcclusion(commonProfile);
    if (!v4)
    {
      return SelfIlluminationOcclusion;
    }

    goto LABEL_9;
  }

  SelfIlluminationOcclusion = 0.0;
  if (v4)
  {
LABEL_9:
    C3DSceneUnlock(v4);
  }

  return SelfIlluminationOcclusion;
}

- (void)setBlendMode:(SCNBlendMode)blendMode
{
  if (self->_blendMode != blendMode)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_blendMode = blendMode;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNMaterial_setBlendMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = blendMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __28__SCNMaterial_setBlendMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetBlendMode(v2, v3);
}

- (SCNBlendMode)blendMode
{
  if (self->_isPresentationInstance)
  {
    sceneRef = [(SCNMaterial *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    BlendMode = C3DMaterialGetBlendMode([(SCNMaterial *)self materialRef]);
    if (v4)
    {
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    return self->_blendMode;
  }

  return BlendMode;
}

- (void)setLightingModelName:(SCNLightingModel)lightingModelName
{
  if (![(NSString *)lightingModelName isEqualToString:self->_lightingModelName])
  {

    self->_lightingModelName = [(NSString *)lightingModelName copy];
    sceneRef = [(SCNMaterial *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SCNMaterial_setLightingModelName___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = lightingModelName;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

void __36__SCNMaterial_setLightingModelName___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"SCNLightingModelPhysicallyBased"])
  {
    v4 = 5;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"SCNLightingModelBlinn"])
  {
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"SCNLightingModelPhong"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCNLightingModelLambert"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCNLightingModelConstant"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SCNLightingModelNone"])
  {
    v4 = 4;
  }

  else
  {
    if (([v3 isEqualToString:@"SCNLightingModelShadowOnly"] & 1) == 0)
    {
LABEL_5:
      v4 = 3;
      goto LABEL_6;
    }

    v4 = 6;
  }

LABEL_6:

  C3DEffectCommonProfileSetLightingModel(CommonProfile, v4);
}

- (SCNLightingModel)lightingModelName
{
  if (!self->_isPresentationInstance)
  {
    return self->_lightingModelName;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  LightingModel = C3DEffectCommonProfileGetLightingModel([(SCNMaterial *)self commonProfile]);
  v6 = SCNObjCLightingModelFromCLightingModel(LightingModel);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return &v6->isa;
}

- (void)setLitPerPixel:(BOOL)litPerPixel
{
  if (self->_litPerPixel != litPerPixel)
  {
    v10 = v3;
    v11 = v4;
    self->_litPerPixel = litPerPixel;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNMaterial_setLitPerPixel___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = litPerPixel;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"litPerPixel" applyBlock:v8];
  }
}

void __30__SCNMaterial_setLitPerPixel___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetPerPixelLit(CommonProfile, v3);
}

- (BOOL)isLitPerPixel
{
  if (self->_isPresentationInstance)
  {
    sceneRef = [(SCNMaterial *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    commonProfile = [(SCNMaterial *)self commonProfile];
    if (commonProfile)
    {
      IsPerPixelLit = C3DEffectCommonProfileIsPerPixelLit(commonProfile);
      if (!v4)
      {
        return IsPerPixelLit & 1;
      }

      goto LABEL_9;
    }

    IsPerPixelLit = 0;
    if (v4)
    {
LABEL_9:
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    IsPerPixelLit = self->_litPerPixel;
  }

  return IsPerPixelLit & 1;
}

- (void)setLocksAmbientWithDiffuse:(BOOL)locksAmbientWithDiffuse
{
  if (self->_locksAmbientWithDiffuse != locksAmbientWithDiffuse)
  {
    v10 = v3;
    v11 = v4;
    self->_locksAmbientWithDiffuse = locksAmbientWithDiffuse;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNMaterial_setLocksAmbientWithDiffuse___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = locksAmbientWithDiffuse;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"lockAmbientWithDiffuse" applyBlock:v8];
  }
}

void __42__SCNMaterial_setLocksAmbientWithDiffuse___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetEnableLockAmbientWithDiffuse(CommonProfile, v3);
}

- (BOOL)locksAmbientWithDiffuse
{
  if (self->_isPresentationInstance)
  {
    sceneRef = [(SCNMaterial *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    commonProfile = [(SCNMaterial *)self commonProfile];
    if (commonProfile)
    {
      EnableLockAmbientWithDiffuse = C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(commonProfile);
      if (!v4)
      {
        return EnableLockAmbientWithDiffuse & 1;
      }

      goto LABEL_9;
    }

    EnableLockAmbientWithDiffuse = 0;
    if (v4)
    {
LABEL_9:
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    EnableLockAmbientWithDiffuse = self->_locksAmbientWithDiffuse;
  }

  return EnableLockAmbientWithDiffuse & 1;
}

- (void)setAvoidsOverLighting:(BOOL)lighting
{
  if (self->_avoidsOverLighting != lighting)
  {
    v10 = v3;
    v11 = v4;
    self->_avoidsOverLighting = lighting;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SCNMaterial_setAvoidsOverLighting___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    lightingCopy = lighting;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __37__SCNMaterial_setAvoidsOverLighting___block_invoke(uint64_t a1)
{
  CommonProfile = C3DMaterialGetCommonProfile([*(a1 + 32) materialRef]);
  v3 = *(a1 + 40);

  C3DEffectCommonProfileSetAvoidsOverLighting(CommonProfile, v3);
}

- (BOOL)avoidsOverLighting
{
  if (self->_isPresentationInstance)
  {
    sceneRef = [(SCNMaterial *)self sceneRef];
    v4 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    commonProfile = [(SCNMaterial *)self commonProfile];
    if (commonProfile)
    {
      AvoidsOverLighting = C3DEffectCommonProfileGetAvoidsOverLighting(commonProfile);
      if (!v4)
      {
        return AvoidsOverLighting & 1;
      }

      goto LABEL_9;
    }

    AvoidsOverLighting = 0;
    if (v4)
    {
LABEL_9:
      C3DSceneUnlock(v4);
    }
  }

  else
  {
    AvoidsOverLighting = self->_avoidsOverLighting;
  }

  return AvoidsOverLighting & 1;
}

- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer
{
  if (self->_writesToDepthBuffer != writesToDepthBuffer)
  {
    v10 = v3;
    v11 = v4;
    self->_writesToDepthBuffer = writesToDepthBuffer;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNMaterial_setWritesToDepthBuffer___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = writesToDepthBuffer;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __38__SCNMaterial_setWritesToDepthBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetEnableWriteInDepthBuffer(v2, v3);
}

- (BOOL)writesToDepthBuffer
{
  if (!self->_isPresentationInstance)
  {
    return self->_writesToDepthBuffer;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    v5 = C3DMaterialGetEnableWriteInDepthBuffer(self->_material);
    C3DSceneUnlock(v4);
    return v5;
  }

  else
  {
    material = self->_material;

    return C3DMaterialGetEnableWriteInDepthBuffer(material);
  }
}

- (void)setColorBufferWriteMask:(SCNColorMask)colorBufferWriteMask
{
  if (self->_colorBufferWriteMask != colorBufferWriteMask)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_colorBufferWriteMask = colorBufferWriteMask;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SCNMaterial_setColorBufferWriteMask___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = colorBufferWriteMask;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __39__SCNMaterial_setColorBufferWriteMask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetColorBufferWriteMask(v2, v3);
}

- (SCNColorMask)colorBufferWriteMask
{
  if (!self->_isPresentationInstance)
  {
    return self->_colorBufferWriteMask;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (!sceneRef)
  {
    return C3DMaterialGetColorBufferWriteMask(self->_material);
  }

  v4 = sceneRef;
  C3DSceneLock(sceneRef);
  v5 = C3DMaterialGetColorBufferWriteMask(self->_material);
  C3DSceneUnlock(v4);
  return v5;
}

- (void)setReadsFromDepthBuffer:(BOOL)readsFromDepthBuffer
{
  if (self->_readsFromDepthBuffer != readsFromDepthBuffer)
  {
    v10 = v3;
    v11 = v4;
    self->_readsFromDepthBuffer = readsFromDepthBuffer;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SCNMaterial_setReadsFromDepthBuffer___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = readsFromDepthBuffer;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

void __39__SCNMaterial_setReadsFromDepthBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetEnableReadFromDepthBuffer(v2, v3);
}

- (BOOL)readsFromDepthBuffer
{
  if (!self->_isPresentationInstance)
  {
    return self->_readsFromDepthBuffer;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    EnableReadsFromDepthBuffer = C3DMaterialGetEnableReadsFromDepthBuffer(self->_material);
    C3DSceneUnlock(v4);
    return EnableReadsFromDepthBuffer;
  }

  else
  {
    material = self->_material;

    return C3DMaterialGetEnableReadsFromDepthBuffer(material);
  }
}

- (id)contents
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  if (!self->_diffuse)
  {
    [(SCNMaterial *)self _setupMaterialProperty:&self->_diffuse];
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  diffuse = self->_diffuse;

  return [(SCNMaterialProperty *)diffuse contents];
}

- (void)setContents:(id)contents
{
  [(SCNMaterialProperty *)[(SCNMaterial *)self diffuse] setContents:contents];
  ambient = [(SCNMaterial *)self ambient];

  [(SCNMaterialProperty *)ambient setContents:contents];
}

- (void)setDoubleSided:(BOOL)doubleSided
{
  if (self->_doubleSided != doubleSided)
  {
    v10 = v3;
    v11 = v4;
    self->_doubleSided = doubleSided;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNMaterial_setDoubleSided___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = doubleSided;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"doubleSided" applyBlock:v8];
  }
}

void __30__SCNMaterial_setDoubleSided___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetDoubleSided(v2, v3);
}

- (BOOL)isDoubleSided
{
  if (!self->_isPresentationInstance)
  {
    return self->_doubleSided;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (sceneRef)
  {
    v4 = sceneRef;
    C3DSceneLock(sceneRef);
    IsDoubleSided = C3DMaterialIsDoubleSided(self->_material);
    C3DSceneUnlock(v4);
    return IsDoubleSided;
  }

  else
  {
    material = self->_material;

    return C3DMaterialIsDoubleSided(material);
  }
}

- (void)setCullMode:(SCNCullMode)cullMode
{
  if (self->_cullMode != cullMode)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_cullMode = cullMode;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__SCNMaterial_setCullMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = cullMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"cullMode" applyBlock:v8];
  }
}

void __27__SCNMaterial_setCullMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetCullMode(v2, v3);
}

- (SCNCullMode)cullMode
{
  if (!self->_isPresentationInstance)
  {
    return self->_cullMode;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (!sceneRef)
  {
    return C3DMaterialGetCullMode(self->_material);
  }

  v4 = sceneRef;
  C3DSceneLock(sceneRef);
  CullMode = C3DMaterialGetCullMode(self->_material);
  C3DSceneUnlock(v4);
  return CullMode;
}

- (void)setFillMode:(SCNFillMode)fillMode
{
  if (self->_fillMode != fillMode)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_fillMode = fillMode;
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__SCNMaterial_setFillMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = fillMode;
    [SCNTransaction postCommandWithContext:sceneRef object:self key:@"fillMode" applyBlock:v8];
  }
}

void __27__SCNMaterial_setFillMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialRef];
  v3 = *(a1 + 40);

  C3DMaterialSetFillMode(v2, v3);
}

- (SCNFillMode)fillMode
{
  if (!self->_isPresentationInstance)
  {
    return self->_fillMode;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  if (!sceneRef)
  {
    return C3DMaterialGetFillMode(self->_material);
  }

  v4 = sceneRef;
  C3DSceneLock(sceneRef);
  FillMode = C3DMaterialGetFillMode(self->_material);
  C3DSceneUnlock(v4);
  return FillMode;
}

- (NSString)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  if ([(NSString *)[(SCNMaterial *)self name] length])
  {
    [v5 appendFormat:@" '%@'", -[SCNMaterial name](self, "name")];
  }

  properties = [(SCNMaterial *)self properties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(properties);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 _hasDefaultValues] & 1) == 0)
        {
          [v5 appendFormat:@"\n  %@=%@", objc_msgSend(v12, "propertyName"), v12];
          v9 = 1;
        }
      }

      v8 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
    if (v9)
    {
      [v5 appendString:@"\n"];
    }
  }

  [v5 appendString:@">"];
  return v5;
}

- (id)copyAnimationChannelForKeyPath:(id)path property:(id)property
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"commonProfile", objc_msgSend(property, "slotName")];
  if ([path isEqualToString:@"color"] || objc_msgSend(path, "isEqualToString:", @"contents") || objc_msgSend(path, "isEqualToString:", @"content"))
  {
    path = [v6 stringByAppendingString:@".color"];
  }

  else
  {
    path = [v6 stringByAppendingFormat:@".%@", path];
  }

  return SCNCreateAnimationChannelWithObjectAndPath(self, path);
}

- (id)copyAnimationChannelForKeyPath:(id)path animation:(id)animation
{
  v21 = *MEMORY[0x277D85DE8];
  result = [path length];
  if (result)
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v8 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:path];
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v8)
      {
        TargetedBaseType = SCNAnimationGetTargetedBaseType(animation);
        if (TargetedBaseType)
        {
          v15 = SCNDefaultValueWithBaseType(TargetedBaseType, v11, v12, v13, v14);
          sceneRef = [(SCNMaterial *)self sceneRef];
          if (sceneRef)
          {
            v17 = sceneRef;
            C3DSceneLock(sceneRef);
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNMaterial *)self setValue:v15 forUndefinedKey:path];
            +[SCNTransaction commitImmediate];
            C3DSceneUnlock(v17);
          }

          else
          {
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNMaterial *)self setValue:v15 forUndefinedKey:path];
            +[SCNTransaction commitImmediate];
          }
        }

        else
        {
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412290;
            pathCopy = path;
            _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", &v19, 0xCu);
          }
        }
      }
    }

    result = SCNCreateAnimationChannelWithObjectAndPath(self, path);
    if (!result)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SCNMaterial copyAnimationChannelForKeyPath:animation:];
      }

      return 0;
    }
  }

  return result;
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNMaterial *)self __CFObject];

  return C3DGetScene(__CFObject);
}

- (id)scene
{
  result = [(SCNMaterial *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNMaterial *)self sceneRef];
  if (result)
  {

    return C3DSceneGetAnimationManager(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)animation forKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{key), "animation"}] == animation;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    __CFObject = [(SCNMaterial *)self __CFObject];
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SCNTechnique __removeAnimation:v9 forKey:?];
      }
    }

    C3DEntityRemoveAnimationForKey(__CFObject, key, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)player forKey:(id)key
{
  if (player)
  {
    keyCopy = key;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:player forKey:keyCopy];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNMaterial *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCNMaterial_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = player;
    v10[5] = self;
    v10[6] = keyCopy;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial addAnimationPlayer:forKey:];
    }
  }
}

void __41__SCNMaterial_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 144));
    [*(*(a1 + 40) + 152) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 144);

    os_unfair_lock_unlock(v2);
  }
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  if (animation)
  {
    keyCopy = key;
    animationCopy = animation;
    if (!key)
    {
      keyCopy = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animationCopy = [SCNAnimation animationWithCAAnimation:animationCopy];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:animationCopy];
    [(SCNMaterial *)self addAnimationPlayer:v7 forKey:keyCopy];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNMaterial *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SCNMaterial_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SCNMaterial_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = duration;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNMaterial *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SCNMaterial_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = key;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration
{
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:key];
    os_unfair_lock_unlock(&self->_animationsLock);
    sceneRef = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SCNMaterial_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = key;
    *&v8[6] = duration;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  allKeys = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)allKeys count])
  {
    return allKeys;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_syncObjCAnimations
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  __CFObject = [(SCNMaterial *)self __CFObject];
  if (__CFObject)
  {
    v6 = __CFObject;
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNTechnique *)v7 _syncObjCAnimations];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v9 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v9, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v4)
  {
    C3DSceneUnlock(v4);
  }
}

- (id)animationForKey:(id)key
{
  v3 = [(SCNMaterial *)self _scnAnimationForKey:key];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{keyCopy), "animation"}];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_copyAnimationsFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animationKeys = [from animationKeys];
  v6 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(animationKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(from animationPlayerForKey:{v10), "copy"}];
        [(SCNMaterial *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      keyCopy = [(SCNOrderedDictionary *)animations objectForKey:keyCopy];
    }

    else
    {
      keyCopy = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return keyCopy;
}

- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node
{
  nodeCopy = node;
  animationCopy = animation;
  __CFObject = [(SCNMaterial *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNMaterial *)self animationManager];
    if (animationManager)
    {
      v12 = animationManager;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, key, animationCopy, nodeCopy, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)key
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNMaterial_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCNMaterial_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNMaterial *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SCNMaterial_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
}

void __40__SCNMaterial_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) animationManager];
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      C3DAnimationManagerChangeSpeedOfAnimationForKey(v4, v3, v5, v6);
    }
  }
}

- (BOOL)isAnimationForKeyPaused:(id)paused
{
  sceneRef = [(SCNMaterial *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNMaterial *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNMaterial *)self animationManager];
    if (animationManager)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(animationManager, v8, paused);
      if (!v6)
      {
        return IsPaused;
      }

      goto LABEL_8;
    }
  }

  IsPaused = 0;
  if (v6)
  {
LABEL_8:
    C3DSceneUnlock(v6);
  }

  return IsPaused;
}

- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options
{
  if (self != object)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:object];
    [(C3DBinding *)v13 setKeyPathDst:path];
    [(C3DBinding *)v13 setKeyPathSrc:keyPath];
    [(C3DBinding *)v13 setOptions:options];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:path];

    sceneRef = [(SCNMaterial *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SCNMaterial_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
  }
}

void __63__SCNMaterial_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = objc_alloc_init(C3DBinding);
  -[C3DBinding setSourceObject:](v3, "setSourceObject:", [*(a1 + 40) __CFObject]);
  [(C3DBinding *)v3 setKeyPathDst:*(a1 + 48)];
  [(C3DBinding *)v3 setKeyPathSrc:*(a1 + 56)];
  [(C3DBinding *)v3 setOptions:*(a1 + 64)];
  C3DEntityAddBinding(v2, v3);
}

- (void)unbindAnimatablePath:(id)path
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  sceneRef = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNMaterial_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

void __36__SCNMaterial_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  sceneRef = [(SCNMaterial *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNMaterial_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __32__SCNMaterial_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = C3DMaterialCreateCopy(self->_material);
  v5 = [objc_alloc(objc_opt_class()) initWithMaterialRef:Copy];
  CFRelease(Copy);
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  [v5 setName:{-[SCNMaterial name](self, "name")}];
  [v5 setIdentifier:{-[SCNMaterial identifier](self, "identifier")}];
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v6 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys copy];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__SCNMaterial_copyWithZone___block_invoke;
  v8[3] = &unk_2782FC900;
  v8[4] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  [(SCNMaterial *)self shininess];
  [v5 setShininess:?];
  [(SCNMaterial *)self transparency];
  [v5 setTransparency:?];
  [v5 setTransparencyMode:{-[SCNMaterial transparencyMode](self, "transparencyMode")}];
  [v5 setLightingModelName:{-[SCNMaterial lightingModelName](self, "lightingModelName")}];
  [v5 setLitPerPixel:{-[SCNMaterial isLitPerPixel](self, "isLitPerPixel")}];
  [v5 setDoubleSided:{-[SCNMaterial isDoubleSided](self, "isDoubleSided")}];
  [v5 setCullMode:{-[SCNMaterial cullMode](self, "cullMode")}];
  [v5 setProgram:{-[SCNMaterial program](self, "program")}];
  [v5 setLocksAmbientWithDiffuse:{-[SCNMaterial locksAmbientWithDiffuse](self, "locksAmbientWithDiffuse")}];
  [v5 setAvoidsOverLighting:{-[SCNMaterial avoidsOverLighting](self, "avoidsOverLighting")}];
  [v5 setFillMode:{-[SCNMaterial fillMode](self, "fillMode")}];
  [(SCNMaterial *)self fresnelExponent];
  [v5 setFresnelExponent:?];
  [v5 setWritesToDepthBuffer:{-[SCNMaterial writesToDepthBuffer](self, "writesToDepthBuffer")}];
  [v5 setReadsFromDepthBuffer:{-[SCNMaterial readsFromDepthBuffer](self, "readsFromDepthBuffer")}];
  [v5 setColorBufferWriteMask:{-[SCNMaterial colorBufferWriteMask](self, "colorBufferWriteMask")}];
  [v5 setBlendMode:{-[SCNMaterial blendMode](self, "blendMode")}];
  if (self->_ambient)
  {
    [objc_msgSend(v5 "ambient")];
  }

  if (self->_diffuse)
  {
    [objc_msgSend(v5 "diffuse")];
  }

  if (self->_specular)
  {
    [objc_msgSend(v5 "specular")];
  }

  if (self->_emission)
  {
    [objc_msgSend(v5 "emission")];
  }

  if (self->_transparent)
  {
    [objc_msgSend(v5 "transparent")];
  }

  if (self->_multiply)
  {
    [objc_msgSend(v5 "multiply")];
  }

  if (self->_reflective)
  {
    [objc_msgSend(v5 "reflective")];
  }

  if (self->_normal)
  {
    [objc_msgSend(v5 "normal")];
  }

  if (self->_selfIllumination)
  {
    [objc_msgSend(v5 "selfIllumination")];
  }

  if (self->_ambientOcclusion)
  {
    [objc_msgSend(v5 "ambientOcclusion")];
  }

  if (self->_metalness)
  {
    [objc_msgSend(v5 "metalness")];
  }

  if (self->_roughness)
  {
    [objc_msgSend(v5 "roughness")];
  }

  if (self->_displacement)
  {
    [objc_msgSend(v5 "displacement")];
  }

  if (self->_clearCoat)
  {
    [objc_msgSend(v5 "clearCoat")];
  }

  if (self->_clearCoatRoughness)
  {
    [objc_msgSend(v5 "clearCoatRoughness")];
  }

  if (self->_clearCoatNormal)
  {
    [objc_msgSend(v5 "clearCoatNormal")];
  }

  [v5 _copyAnimationsFrom:self];
  [v5 copyShaderModifiersAndLanguageVersionFrom:self];
  +[SCNTransaction commitImmediate];
  return v5;
}

void __28__SCNMaterial_copyWithZone___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copy];
  [*(a1 + 32) _shadableSetValue:v5 forUndefinedKey:a2];
}

- (id)valueForUndefinedKey:(id)key
{
  if (self->_isPresentationInstance)
  {
    v5 = C3DCFTypeCopyModelInfoAtPath(self->_material, key, 0);
    if (v5)
    {
      v6 = v5;
      if (C3DModelTargetGetTargetAddress(v5))
      {
        TargetAddress = C3DModelTargetGetTargetAddress(v6);
        BaseType = C3DModelTargetGetBaseType(v6);
        v13 = SCNNSValueFromTypedBytes(TargetAddress, BaseType, v9, v10, v11, v12);
        CFRelease(v6);
        return v13;
      }

      CFRelease(v6);
    }
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v15 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:key];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);

  return v15;
}

- (void)_shadableSetValue:(id)value forUndefinedKey:(id)key
{
  if (!self->_isPresentationInstance)
  {
    keyCopy = key;
    if ([key hasPrefix:@"shaderModifiers."])
    {
      keyCopy = [keyCopy substringFromIndex:16];
    }

    os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
    v8 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      [(SCNMaterial *)self willChangeValueForKey:@"customMaterialProperties"];
      [(SCNMaterial *)self willChangeValueForKey:@"customMaterialAttributes"];
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
    }

    valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
    if (value)
    {
      if (!valuesForUndefinedKeys)
      {
        valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
      }

      [(NSMutableDictionary *)valuesForUndefinedKeys setObject:value forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)valuesForUndefinedKeys removeObjectForKey:keyCopy];
    }

    os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
    if ((isKindOfClass & 1) == 0)
    {
      [(SCNMaterial *)self didChangeValueForKey:@"customMaterialProperties"];
      [(SCNMaterial *)self didChangeValueForKey:@"customMaterialAttributes"];
    }

    __CFObject = [(SCNMaterial *)self __CFObject];
    objc_opt_class();
    v12 = keyCopy;
    if (objc_opt_isKindOfClass())
    {
      [v8 unlinkCustomPropertyWithParent:self];
      v12 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [value linkCustomPropertyWithParent:self andCustomName:keyCopy];
      effectSlot = [value effectSlot];
      if (effectSlot)
      {
        v14 = CFRetain(effectSlot);
        v12 = 0;
LABEL_28:
        sceneRef = [(SCNMaterial *)self sceneRef];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke_2;
        v20[3] = &unk_2782FED90;
        v20[6] = v14;
        v20[7] = __CFObject;
        v20[4] = keyCopy;
        v20[5] = value;
        [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v12 applyBlock:v20];
        return;
      }

      v12 = 0;
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    v14 = SCNCopyValueFromObjCProperty(self, keyCopy);
    if (!v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v22[0] = C3DColor4FromRGBCFColor(value, 0);
        v22[1] = v19;
        v14 = C3DValueCreate(10, 1);
        C3DValueInitFrom(v14, v22);
        if (!v14)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (!v8)
        {
          Type = C3DValueGetType(v14);
          Default = C3DValueCreateDefault(Type);
          sceneRef2 = [(SCNMaterial *)self sceneRef];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke;
          v21[3] = &unk_2782FE238;
          v21[4] = keyCopy;
          v21[5] = __CFObject;
          v21[6] = Default;
          [SCNTransaction postCommandWithContext:sceneRef2 object:self applyBlock:v21];
        }

        goto LABEL_28;
      }

      v14 = SCNCopyValueFromObjCValue(value);
    }

    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v5 = scn_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SCNMaterial _shadableSetValue:forUndefinedKey:];
  }
}

void __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke(uint64_t a1)
{
  C3DEntitySetValueForKey(*(a1 + 40), *(a1 + 32), *(a1 + 48));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    C3DEntitySetValueForKey(*(a1 + 56), *(a1 + 32), v2);
    v3 = *(a1 + 48);

    CFRelease(v3);
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {

      C3DEntitySetValueForKey(v4, v5, v6);
    }

    else
    {

      C3DEntityResetValueForKey(v4, v5);
    }
  }
}

- (id)customMaterialPropertyNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SCNMaterial_customMaterialPropertyNames__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __42__SCNMaterial_customMaterialPropertyNames__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

- (id)customMaterialProperties
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNMaterial_customMaterialProperties__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __39__SCNMaterial_customMaterialProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a3];
  }

  return result;
}

- (id)customMaterialAttributeNames
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SCNMaterial_customMaterialAttributeNames__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __43__SCNMaterial_customMaterialAttributeNames__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = _isValidCustomPropertyType(a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

- (id)customMaterialAttributes
{
  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_valuesForUndefinedKeys, "count")}];
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SCNMaterial_customMaterialAttributes__block_invoke;
  v6[3] = &unk_2782FC900;
  v6[4] = v3;
  [(NSMutableDictionary *)valuesForUndefinedKeys enumerateKeysAndObjectsUsingBlock:v6];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
  return v3;
}

uint64_t __39__SCNMaterial_customMaterialAttributes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = _isValidCustomPropertyType(a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a3];
  }

  return result;
}

- (void)_setupShadableHelperIfNeeded
{
  if (!self->_shadableHelper)
  {
    self->_shadableHelper = [[SCNShadableHelper alloc] initWithOwner:self];
  }
}

- (void)setShaderModifiers:(id)modifiers
{
  if (self->_isPresentationInstance)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial setShaderModifiers:];
    }
  }

  else
  {
    if (modifiers)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setShaderModifiers:modifiers];
  }
}

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)from
{
  if (self->_isPresentationInstance)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial copyShaderModifiersAndLanguageVersionFrom:];
    }
  }

  else
  {
    if ([from shaderModifiers])
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    __shadableHelper = [from __shadableHelper];
    [(SCNShadableHelper *)self->_shadableHelper copyModifiersFrom:__shadableHelper];
    minimumLanguageVersion = [__shadableHelper minimumLanguageVersion];
    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:minimumLanguageVersion];
  }
}

- (void)setMinimumLanguageVersion:(id)version
{
  if (self->_isPresentationInstance)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial setMinimumLanguageVersion:];
    }
  }

  else
  {
    if (version)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:version];
  }
}

- (void)handleBindingOfSymbol:(id)symbol usingBlock:(id)block
{
  [(SCNMaterial *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleBindingOfSymbol:symbol usingBlock:block];
}

- (void)handleUnbindingOfSymbol:(id)symbol usingBlock:(id)block
{
  [(SCNMaterial *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleUnbindingOfSymbol:symbol usingBlock:block];
}

- (void)setProgram:(id)program
{
  if (self->_isPresentationInstance)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterial setProgram:];
    }
  }

  else
  {
    if (program)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
      shadableHelper = self->_shadableHelper;
      programCopy = program;
    }

    else
    {
      shadableHelper = self->_shadableHelper;
      programCopy = 0;
    }

    [(SCNShadableHelper *)shadableHelper setProgram:programCopy];
  }
}

+ (id)materialNamed:(id)named
{
  v4 = objc_opt_class();

  return [SCNAssetCatalog objectWithName:named class:v4];
}

- (void)_customDecodingOfSCNMaterial:(id)material
{
  v4 = [material decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"valuesForUndefinedKeys"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__SCNMaterial__customDecodingOfSCNMaterial___block_invoke;
    v5[3] = &unk_2782FC900;
    v5[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (void)_customEncodingOfSCNMaterial:(id)material
{
  commonProfile = [(SCNMaterial *)self commonProfile];
  if (commonProfile)
  {
    v6 = commonProfile;
    if (C3DEffectCommonProfileGetEffectSlot(commonProfile, 1, 0))
    {
      [(SCNMaterial *)self _property:&self->_ambient];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 2, 0))
    {
      [(SCNMaterial *)self _property:&self->_diffuse];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 3, 0))
    {
      [(SCNMaterial *)self _property:&self->_specular];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 0, 0))
    {
      [(SCNMaterial *)self _property:&self->_emission];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 6, 0))
    {
      [(SCNMaterial *)self _property:&self->_multiply];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 4, 0))
    {
      [(SCNMaterial *)self _property:&self->_reflective];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 5, 0))
    {
      [(SCNMaterial *)self _property:&self->_transparent];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 7, 0))
    {
      [(SCNMaterial *)self _property:&self->_normal];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 9, 0))
    {
      [(SCNMaterial *)self _property:&self->_selfIllumination];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 8, 0))
    {
      [(SCNMaterial *)self _property:&self->_ambientOcclusion];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 10, 0))
    {
      [(SCNMaterial *)self _property:&self->_metalness];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 11, 0))
    {
      [(SCNMaterial *)self _property:&self->_roughness];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 15, 0))
    {
      [(SCNMaterial *)self _property:&self->_displacement];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 12, 0))
    {
      [(SCNMaterial *)self _property:&self->_clearCoat];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 13, 0))
    {
      [(SCNMaterial *)self _property:&self->_clearCoatRoughness];
    }

    if (C3DEffectCommonProfileGetEffectSlot(v6, 14, 0))
    {
      [(SCNMaterial *)self _property:&self->_clearCoatNormal];
    }
  }

  os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
  valuesForUndefinedKeys = self->_valuesForUndefinedKeys;
  if (valuesForUndefinedKeys)
  {
    [material encodeObject:valuesForUndefinedKeys forKey:@"valuesForUndefinedKeys"];
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_isPresentationInstance)
  {
    [(SCNMaterial *)self _syncObjCModel];
  }

  [(SCNMaterial *)self _customEncodingOfSCNMaterial:coder];
  ambient = self->_ambient;
  if (ambient)
  {
    [coder encodeObject:ambient forKey:@"ambient"];
  }

  diffuse = self->_diffuse;
  if (diffuse)
  {
    [coder encodeObject:diffuse forKey:@"diffuse"];
  }

  specular = self->_specular;
  if (specular)
  {
    [coder encodeObject:specular forKey:@"specular"];
  }

  emission = self->_emission;
  if (emission)
  {
    [coder encodeObject:emission forKey:@"emission"];
  }

  reflective = self->_reflective;
  if (reflective)
  {
    [coder encodeObject:reflective forKey:@"reflective"];
  }

  transparent = self->_transparent;
  if (transparent)
  {
    [coder encodeObject:transparent forKey:@"transparent"];
  }

  multiply = self->_multiply;
  if (multiply)
  {
    [coder encodeObject:multiply forKey:@"multiply"];
  }

  normal = self->_normal;
  if (normal)
  {
    [coder encodeObject:normal forKey:@"normal"];
  }

  selfIllumination = self->_selfIllumination;
  if (selfIllumination)
  {
    [coder encodeObject:selfIllumination forKey:@"selfIllumination"];
  }

  ambientOcclusion = self->_ambientOcclusion;
  if (ambientOcclusion)
  {
    [coder encodeObject:ambientOcclusion forKey:@"ambientOcclusion"];
  }

  metalness = self->_metalness;
  if (metalness)
  {
    [coder encodeObject:metalness forKey:@"metalness"];
  }

  roughness = self->_roughness;
  if (roughness)
  {
    [coder encodeObject:roughness forKey:@"roughness"];
  }

  displacement = self->_displacement;
  if (displacement)
  {
    [coder encodeObject:displacement forKey:@"displacement"];
  }

  clearCoat = self->_clearCoat;
  if (clearCoat)
  {
    [coder encodeObject:clearCoat forKey:@"clearCoat"];
  }

  clearCoatRoughness = self->_clearCoatRoughness;
  if (clearCoatRoughness)
  {
    [coder encodeObject:clearCoatRoughness forKey:@"clearCoatRoughness"];
  }

  clearCoatNormal = self->_clearCoatNormal;
  if (clearCoatNormal)
  {
    [coder encodeObject:clearCoatNormal forKey:@"clearCoatNormal"];
  }

  name = self->_name;
  objc_opt_class();
  SCNEncodeNamedObject(coder, name);
  *&v22 = self->_shininess;
  [coder encodeFloat:@"shininess" forKey:v22];
  *&v23 = self->_transparency;
  [coder encodeFloat:@"transparency" forKey:v23];
  *&v24 = self->_indexOfRefraction;
  [coder encodeFloat:@"indexOfRefraction" forKey:v24];
  *&v25 = self->_fresnelExponent;
  [coder encodeFloat:@"fresnelExponent" forKey:v25];
  [coder encodeInteger:self->_transparencyMode forKey:@"transparencyMode"];
  lightingModelName = self->_lightingModelName;
  if (lightingModelName)
  {
    [coder encodeObject:lightingModelName forKey:@"lightingModelName"];
  }

  [coder encodeInteger:self->_cullMode forKey:@"cullMode"];
  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    [coder encodeObject:shadableHelper forKey:@"shadableHelper"];
  }

  [coder encodeBool:self->_litPerPixel forKey:@"litPerPixel"];
  [coder encodeBool:self->_doubleSided forKey:@"doubleSided"];
  [coder encodeBool:self->_locksAmbientWithDiffuse forKey:@"locksAmbientWithDiffuse"];
  [coder encodeBool:self->_avoidsOverLighting forKey:@"avoidsOverLighting"];
  [coder encodeBool:self->_writesToDepthBuffer forKey:@"writesToDepthBuffer"];
  [coder encodeBool:self->_readsFromDepthBuffer forKey:@"readsFromDepthBuffer"];
  [coder encodeInteger:self->_colorBufferWriteMask forKey:@"colorBufferWriteMask"];
  [coder encodeInteger:SCNFillModeToSCNLegacyFillMode[self->_fillMode] forKey:@"fillMode"];
  [coder encodeInteger:self->_blendMode forKey:@"blendMode"];
  *&v28 = self->_selfIlluminationOcclusion;
  [coder encodeFloat:@"selfIlluminationOcclusion" forKey:v28];
  SCNEncodeEntity(coder, self);

  SCNEncodeAnimations(coder, self);
}

- (SCNMaterial)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = SCNMaterial;
  v4 = [(SCNMaterial *)&v16 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = C3DMaterialCreate();
    v4->_material = v6;
    if (v6)
    {
      C3DEntitySetObjCWrapper(v6, v4);
    }

    [(SCNMaterial *)v4 _syncObjCModel];
    v4->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
    [(SCNMaterial *)v4 _customDecodingOfSCNMaterial:coder];
    v4->_ambient = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"ambient"];
    v4->_diffuse = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"diffuse"];
    v4->_specular = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"specular"];
    v4->_emission = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"emission"];
    v4->_reflective = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"reflective"];
    v4->_transparent = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"transparent"];
    v4->_multiply = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"multiply"];
    v4->_normal = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"normal"];
    if ([coder containsValueForKey:@"selfIllumination"])
    {
      v4->_selfIllumination = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"selfIllumination"];
    }

    if ([coder containsValueForKey:@"ambientOcclusion"])
    {
      v4->_ambientOcclusion = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"ambientOcclusion"];
    }

    if ([coder containsValueForKey:@"metalness"])
    {
      v4->_metalness = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"metalness"];
    }

    if ([coder containsValueForKey:@"roughness"])
    {
      v4->_roughness = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"roughness"];
    }

    if ([coder containsValueForKey:@"displacement"])
    {
      v4->_displacement = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"displacement"];
    }

    if ([coder containsValueForKey:@"clearCoat"])
    {
      v4->_clearCoat = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoat"];
    }

    if ([coder containsValueForKey:@"clearCoatRoughness"])
    {
      v4->_clearCoatRoughness = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoatRoughness"];
    }

    if ([coder containsValueForKey:@"clearCoatNormal"])
    {
      v4->_clearCoatNormal = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoatNormal"];
    }

    -[SCNMaterial setName:](v4, "setName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    [coder decodeFloatForKey:@"shininess"];
    [(SCNMaterial *)v4 setShininess:v7];
    [coder decodeFloatForKey:@"transparency"];
    [(SCNMaterial *)v4 setTransparency:v8];
    [coder decodeFloatForKey:@"indexOfRefraction"];
    [(SCNMaterial *)v4 setIndexOfRefraction:v9];
    [coder decodeFloatForKey:@"fresnelExponent"];
    [(SCNMaterial *)v4 setFresnelExponent:v10];
    -[SCNMaterial setTransparencyMode:](v4, "setTransparencyMode:", [coder decodeIntegerForKey:@"transparencyMode"]);
    -[SCNMaterial setLightingModelName:](v4, "setLightingModelName:", [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"lightingModelName"]);
    -[SCNMaterial setCullMode:](v4, "setCullMode:", [coder decodeIntegerForKey:@"cullMode"]);
    v11 = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"shadableHelper"];
    v4->_shadableHelper = v11;
    if ([(SCNShadableHelper *)v11 owner]!= v4)
    {

      v4->_shadableHelper = 0;
    }

    -[SCNMaterial setLitPerPixel:](v4, "setLitPerPixel:", [coder decodeBoolForKey:@"litPerPixel"]);
    -[SCNMaterial setDoubleSided:](v4, "setDoubleSided:", [coder decodeBoolForKey:@"doubleSided"]);
    -[SCNMaterial setLocksAmbientWithDiffuse:](v4, "setLocksAmbientWithDiffuse:", [coder decodeBoolForKey:@"locksAmbientWithDiffuse"]);
    -[SCNMaterial setAvoidsOverLighting:](v4, "setAvoidsOverLighting:", [coder decodeBoolForKey:@"avoidsOverLighting"]);
    -[SCNMaterial setWritesToDepthBuffer:](v4, "setWritesToDepthBuffer:", [coder decodeBoolForKey:@"writesToDepthBuffer"]);
    if ([coder containsValueForKey:@"colorBufferWriteMask"])
    {
      -[SCNMaterial setColorBufferWriteMask:](v4, "setColorBufferWriteMask:", [coder decodeIntegerForKey:@"colorBufferWriteMask"]);
    }

    -[SCNMaterial setReadsFromDepthBuffer:](v4, "setReadsFromDepthBuffer:", [coder decodeBoolForKey:@"readsFromDepthBuffer"]);
    v12 = [coder decodeIntegerForKey:@"fillMode"];
    v13 = 2;
    if (v12 < 2)
    {
      v13 = v12;
    }

    [(SCNMaterial *)v4 setFillMode:SCNFillModeFromSCNLegacyFillMode[v13 & ~(v13 >> 63)]];
    -[SCNMaterial setBlendMode:](v4, "setBlendMode:", [coder decodeIntegerForKey:@"blendMode"]);
    [coder decodeFloatForKey:@"selfIlluminationOcclusion"];
    [(SCNMaterial *)v4 setSelfIlluminationOcclusion:v14];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(coder, v4);
    SCNDecodeAnimations(coder, v4);
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

- (id)debugQuickLookObject
{
  v3 = [SCNSphere sphereWithRadius:1.0];
  [(SCNGeometry *)v3 setFirstMaterial:self];

  return [(SCNGeometry *)v3 debugQuickLookObject];
}

- (id)debugQuickLookData
{
  debugQuickLookObject = [(SCNMaterial *)self debugQuickLookObject];

  return UIImagePNGRepresentation(debugQuickLookObject);
}

- (void)setName:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)copyAnimationChannelForKeyPath:animation:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addAnimationPlayer:forKey:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)addAnimation:forKey:.cold.1()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_shadableSetValue:forUndefinedKey:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setShaderModifiers:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)copyShaderModifiersAndLanguageVersionFrom:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setMinimumLanguageVersion:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setProgram:.cold.1()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_customEncodingOfSCNMaterial:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_7();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Error: Failed to archive material's custom attributes. %@ %@", v2, 0x16u);
}

@end