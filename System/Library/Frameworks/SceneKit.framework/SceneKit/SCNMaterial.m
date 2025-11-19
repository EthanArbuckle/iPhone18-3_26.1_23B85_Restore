@interface SCNMaterial
+ (SCNMaterial)material;
+ (SCNMaterial)materialWithColor:(id)a3;
+ (SCNMaterial)materialWithContents:(id)a3;
+ (SCNMaterial)materialWithMDLMaterial:(id)a3 options:(id)a4;
+ (SCNMaterial)materialWithMaterialRef:(__C3DMaterial *)a3;
+ (id)materialNamed:(id)a3;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)avoidsOverLighting;
- (BOOL)isAnimationForKeyPaused:(id)a3;
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
- (SCNMaterial)initWithCoder:(id)a3;
- (SCNMaterial)initWithMaterialRef:(__C3DMaterial *)a3;
- (SCNTransparencyMode)transparencyMode;
- (__C3DAnimationManager)animationManager;
- (__C3DEffectCommonProfile)commonProfile;
- (__C3DScene)sceneRef;
- (double)indexOfRefraction;
- (double)selfIlluminationOcclusion;
- (id)_integrateModelKitComputedMaps:(id)a3 withGeometry:(id)a4 node:(id)a5 texturePathProvider:(id)a6 vertexAttributeNamed:(id)a7 materialPropertyNamed:(id)a8 filePath:(id)a9;
- (id)_property:(id *)a3;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)builtinProperties;
- (id)color;
- (id)contents;
- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4;
- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customMaterialAttributeNames;
- (id)customMaterialAttributes;
- (id)customMaterialProperties;
- (id)customMaterialPropertyNames;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)identifier;
- (id)initPresentationMaterialWithMaterialRef:(__C3DMaterial *)a3;
- (id)presentationMaterial;
- (id)properties;
- (id)scene;
- (id)valueForUndefinedKey:(id)a3;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customDecodingOfSCNMaterial:(id)a3;
- (void)_customEncodingOfSCNMaterial:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setupMaterialProperty:(id *)a3;
- (void)_setupShadableHelperIfNeeded;
- (void)_shadableSetValue:(id)a3 forUndefinedKey:(id)a4;
- (void)_syncEntityObjCModel;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)copyShaderModifiersAndLanguageVersionFrom:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleBindingOfSymbol:(id)a3 usingBlock:(id)a4;
- (void)handleUnbindingOfSymbol:(id)a3 usingBlock:(id)a4;
- (void)pauseAnimationForKey:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setAvoidsOverLighting:(BOOL)a3;
- (void)setBlendMode:(SCNBlendMode)blendMode;
- (void)setColor:(id)a3;
- (void)setColorBufferWriteMask:(SCNColorMask)colorBufferWriteMask;
- (void)setContents:(id)a3;
- (void)setCullMode:(SCNCullMode)cullMode;
- (void)setDoubleSided:(BOOL)doubleSided;
- (void)setFillMode:(SCNFillMode)fillMode;
- (void)setFresnelExponent:(CGFloat)fresnelExponent;
- (void)setIdentifier:(id)a3;
- (void)setIndexOfRefraction:(double)a3;
- (void)setLightingModelName:(SCNLightingModel)lightingModelName;
- (void)setLitPerPixel:(BOOL)litPerPixel;
- (void)setLocksAmbientWithDiffuse:(BOOL)locksAmbientWithDiffuse;
- (void)setMinimumLanguageVersion:(id)a3;
- (void)setName:(NSString *)name;
- (void)setProgram:(id)a3;
- (void)setReadsFromDepthBuffer:(BOOL)readsFromDepthBuffer;
- (void)setSelfIlluminationOcclusion:(double)a3;
- (void)setShaderModifiers:(id)a3;
- (void)setShininess:(CGFloat)shininess;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setTransparency:(CGFloat)transparency;
- (void)setTransparencyMode:(SCNTransparencyMode)transparencyMode;
- (void)setWritesToDepthBuffer:(BOOL)writesToDepthBuffer;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNMaterial

- (id)_integrateModelKitComputedMaps:(id)a3 withGeometry:(id)a4 node:(id)a5 texturePathProvider:(id)a6 vertexAttributeNamed:(id)a7 materialPropertyNamed:(id)a8 filePath:(id)a9
{
  v16 = [a7 isEqualToString:*MEMORY[0x277CD7A68]];
  v17 = [a3 propertyNamed:a8];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  if (![v17 textureSamplerValue] || !objc_msgSend(objc_msgSend(v18, "textureSamplerValue"), "texture"))
  {
    return 0;
  }

  if (a6)
  {
    v19 = (*(a6 + 2))(a6, a5);
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/ModelKit_AO_%@.png", objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78], "UUID"), "UUIDString")];
  }

  v21 = v19;
  if ([a9 isEqualToString:&stru_282DCC058])
  {
    v22 = [objc_msgSend(v18 "textureSamplerValue")];
    [v22 writeToURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v21)}];
    [a9 setString:v21];
  }

  else
  {
    v21 = a9;
  }

  v23 = [a4 geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
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
    while (([objc_msgSend(objc_msgSend(v23 objectAtIndexedSubscript:{v26), "mkSemantic"), "isEqualToString:", a7}] & 1) == 0)
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
    v29 = [(SCNMaterial *)self ambientOcclusion];
  }

  else
  {
    [(SCNMaterialProperty *)[(SCNMaterial *)self selfIllumination] setMappingChannel:v28];
    v29 = [(SCNMaterial *)self selfIllumination];
  }

  [(SCNMaterialProperty *)v29 setContents:v21];
  v30 = MEMORY[0x277CBEBC0];

  return [v30 fileURLWithPath:v21];
}

+ (SCNMaterial)materialWithMDLMaterial:(id)a3 options:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  AssociatedObject = objc_getAssociatedObject(a3, @"SCNSceneKitAssociatedObject");
  [a3 scatteringFunction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = AssociatedObject;
  if (!AssociatedObject)
  {
    v9 = [a1 material];
    -[SCNMaterial setName:](v9, "setName:", [a3 name]);
    objc_setAssociatedObject(a3, @"SCNSceneKitAssociatedObject", v9, 0x301);
    objc_setAssociatedObject(v9, @"SCNSceneKitAssociatedObject", a3, 0);
  }

  v10 = &SCNLightingModelPhysicallyBased;
  if ((isKindOfClass & 1) == 0)
  {
    v10 = &SCNLightingModelBlinn;
  }

  [(SCNMaterial *)v9 setLightingModelName:*v10];
  setupSCNMaterialProperty([(SCNMaterial *)v9 emission], a3, MDLMaterialSemanticEmission, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 diffuse], a3, MDLMaterialSemanticBaseColor, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 specular], a3, MDLMaterialSemanticSpecular, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 reflective], a3, MDLMaterialSemanticUserDefined, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 transparent], a3, MDLMaterialSemanticOpacity, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 displacement], a3, MDLMaterialSemanticDisplacement, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 normal], a3, MDLMaterialSemanticTangentSpaceNormal, AssociatedObject == 0, a4);
  setupSCNMaterialProperty([(SCNMaterial *)v9 ambientOcclusion], a3, MDLMaterialSemanticAmbientOcclusion, AssociatedObject == 0, a4);
  if ([a3 materialFace] == 2)
  {
    [(SCNMaterial *)v9 setDoubleSided:1];
  }

  if (isKindOfClass)
  {
    v11 = AssociatedObject == 0;
    setupSCNMaterialProperty([(SCNMaterial *)v9 metalness], a3, MDLMaterialSemanticMetallic, v11, a4);
    setupSCNMaterialProperty([(SCNMaterial *)v9 roughness], a3, MDLMaterialSemanticRoughness, v11, a4);
  }

  else
  {
    [objc_msgSend(a3 propertyWithSemantic:{6), "floatValue"}];
    [(SCNMaterial *)v9 setShininess:((2.0 / (v12 * v12)) + -2.0)];
  }

  return v9;
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

- (SCNMaterial)initWithMaterialRef:(__C3DMaterial *)a3
{
  v7.receiver = self;
  v7.super_class = SCNMaterial;
  v4 = [(SCNMaterial *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(a3);
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

- (id)initPresentationMaterialWithMaterialRef:(__C3DMaterial *)a3
{
  v7.receiver = self;
  v7.super_class = SCNMaterial;
  v4 = [(SCNMaterial *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_isPresentationInstance = 1;
    v4->_material = CFRetain(a3);
    v5->_animationsLock._os_unfair_lock_opaque = 0;
    v5->_valuesForUndefinedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (SCNMaterial)materialWithMaterialRef:(__C3DMaterial *)a3
{
  result = C3DEntityGetObjCWrapper(a3);
  if (!result)
  {
    v6 = [[a1 alloc] initWithMaterialRef:a3];

    return v6;
  }

  return result;
}

+ (SCNMaterial)material
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (SCNMaterial)materialWithColor:(id)a3
{
  v4 = objc_alloc_init(a1);
  [(SCNMaterial *)v4 setColor:a3];
  return v4;
}

+ (SCNMaterial)materialWithContents:(id)a3
{
  v4 = objc_alloc_init(a1);
  [(SCNMaterial *)v4 setContents:a3];
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
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__SCNMaterial_setName___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = name;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  Name = C3DEntityGetName([(SCNMaterial *)self __CFObject]);
  if (v4)
  {
    C3DSceneUnlock(v4);
  }

  return Name;
}

- (void)setIdentifier:(id)a3
{
  v4 = [(SCNMaterial *)self __CFObject];

  C3DEntitySetID(v4, a3);
}

- (id)identifier
{
  v2 = [(SCNMaterial *)self __CFObject];

  return C3DEntityGetID(v2);
}

- (void)_syncEntityObjCModel
{
  v3 = [(SCNMaterial *)self __CFObject];

  self->_name = C3DEntityGetName(v3);
}

- (void)_syncObjCModel
{
  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self materialRef];
  self->_cullMode = C3DMaterialGetCullMode(v5);
  self->_writesToDepthBuffer = C3DMaterialGetEnableWriteInDepthBuffer(v5);
  self->_readsFromDepthBuffer = C3DMaterialGetEnableReadsFromDepthBuffer(v5);
  self->_colorBufferWriteMask = C3DMaterialGetColorBufferWriteMask(v5);
  self->_doubleSided = C3DMaterialIsDoubleSided(v5);
  self->_fillMode = C3DMaterialGetFillMode(v5);
  self->_blendMode = C3DMaterialGetBlendMode(v5);
  CommonProfile = C3DMaterialGetCommonProfile(v5);
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

  Technique = C3DMaterialGetTechnique(v5);
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
  v2 = [(SCNMaterial *)self materialRef];

  return C3DMaterialGetCommonProfile(v2);
}

- (void)_setupMaterialProperty:(id *)a3
{
  if (a3)
  {
    v5 = [(SCNMaterial *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
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

    if (&self->_diffuse == a3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 21;
    }

    if (&self->_ambient == a3)
    {
      v8 = 1;
    }

    if (&self->_specular == a3)
    {
      v8 = 3;
    }

    if (&self->_emission == a3)
    {
      v8 = 0;
    }

    if (&self->_reflective == a3)
    {
      v8 = 4;
    }

    if (&self->_transparent == a3)
    {
      v8 = 5;
    }

    if (&self->_multiply == a3)
    {
      v8 = 6;
    }

    if (&self->_normal == a3)
    {
      v8 = 7;
    }

    if (&self->_selfIllumination == a3)
    {
      v8 = 9;
    }

    if (&self->_ambientOcclusion == a3)
    {
      v8 = 8;
    }

    if (&self->_metalness == a3)
    {
      v8 = 10;
    }

    if (&self->_roughness == a3)
    {
      v8 = 11;
    }

    if (&self->_displacement == a3)
    {
      v8 = 15;
    }

    if (&self->_clearCoat == a3)
    {
      v8 = 12;
    }

    if (&self->_clearCoatRoughness == a3)
    {
      v8 = 13;
    }

    if (&self->_clearCoatNormal == a3)
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
    *a3 = v14;
    [v14 _setColor:{objc_msgSend(MEMORY[0x277D75348], "scn_colorWithC3DColor:", Color)}];
    [*a3 _setC3DImageRef:Image];
    if ((C3DWasLinkedBeforeMajorOSYear2017() & 1) == 0)
    {
      [*a3 _setupContentsFromC3DImage];
    }

LABEL_46:
    if (v6)
    {
      C3DSceneUnlock(v6);
    }
  }
}

- (void)setColor:(id)a3
{
  [(SCNMaterialProperty *)[(SCNMaterial *)self ambient] setColor:a3];
  v5 = [(SCNMaterial *)self diffuse];

  [(SCNMaterialProperty *)v5 setColor:a3];
}

- (id)color
{
  v2 = [(SCNMaterial *)self ambient];

  return [(SCNMaterialProperty *)v2 color];
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
  v3 = [(SCNMaterial *)self builtinProperties];
  v4 = [(SCNMaterial *)self customMaterialProperties];
  if (![v4 count])
  {
    return v3;
  }

  return [v3 arrayByAddingObjectsFromArray:v4];
}

- (id)_property:(id *)a3
{
  if (!*a3)
  {
    [(SCNMaterial *)self _setupMaterialProperty:a3];
  }

  result = *a3;
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterial_setTransparencyMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = transparencyMode;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(v5);
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
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNMaterial_setShininess___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = shininess;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"shininess" applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(v5, 16);
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
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SCNMaterial_setTransparency___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = transparency;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"transparency" applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(v5, 18);
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

- (void)setIndexOfRefraction:(double)a3
{
  if (self->_indexOfRefraction != a3)
  {
    v5 = a3;
    self->_indexOfRefraction = v5;
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNMaterial_setIndexOfRefraction___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"indexOfRefraction" applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(v5, 19);
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
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__SCNMaterial_setFresnelExponent___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = fresnelExponent;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"fresnelExponent" applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    FloatProperty = C3DEffectCommonProfileGetFloatProperty(v5, 20);
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

- (void)setSelfIlluminationOcclusion:(double)a3
{
  if (self->_selfIlluminationOcclusion != a3)
  {
    v5 = a3;
    self->_selfIlluminationOcclusion = v5;
    v6 = [(SCNMaterial *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNMaterial_setSelfIlluminationOcclusion___block_invoke;
    v7[3] = &unk_2782FB7D0;
    v7[4] = self;
    *&v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self key:@"selfIlluminationOcclusion" applyBlock:v7];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    SelfIlluminationOcclusion = C3DEffectCommonProfileGetSelfIlluminationOcclusion(v5);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__SCNMaterial_setBlendMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = blendMode;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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
    v3 = [(SCNMaterial *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
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
    v5 = [(SCNMaterial *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SCNMaterial_setLightingModelName___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = lightingModelName;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
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

  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNMaterial_setLitPerPixel___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = litPerPixel;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"litPerPixel" applyBlock:v8];
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
    v3 = [(SCNMaterial *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
    }

    v5 = [(SCNMaterial *)self commonProfile];
    if (v5)
    {
      IsPerPixelLit = C3DEffectCommonProfileIsPerPixelLit(v5);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNMaterial_setLocksAmbientWithDiffuse___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = locksAmbientWithDiffuse;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"lockAmbientWithDiffuse" applyBlock:v8];
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
    v3 = [(SCNMaterial *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
    }

    v5 = [(SCNMaterial *)self commonProfile];
    if (v5)
    {
      EnableLockAmbientWithDiffuse = C3DEffectCommonProfileGetEnableLockAmbientWithDiffuse(v5);
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

- (void)setAvoidsOverLighting:(BOOL)a3
{
  if (self->_avoidsOverLighting != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_avoidsOverLighting = a3;
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SCNMaterial_setAvoidsOverLighting___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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
    v3 = [(SCNMaterial *)self sceneRef];
    v4 = v3;
    if (v3)
    {
      C3DSceneLock(v3);
    }

    v5 = [(SCNMaterial *)self commonProfile];
    if (v5)
    {
      AvoidsOverLighting = C3DEffectCommonProfileGetAvoidsOverLighting(v5);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNMaterial_setWritesToDepthBuffer___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = writesToDepthBuffer;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SCNMaterial_setColorBufferWriteMask___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = colorBufferWriteMask;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (!v3)
  {
    return C3DMaterialGetColorBufferWriteMask(self->_material);
  }

  v4 = v3;
  C3DSceneLock(v3);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SCNMaterial_setReadsFromDepthBuffer___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = readsFromDepthBuffer;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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
  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
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

- (void)setContents:(id)a3
{
  [(SCNMaterialProperty *)[(SCNMaterial *)self diffuse] setContents:a3];
  v5 = [(SCNMaterial *)self ambient];

  [(SCNMaterialProperty *)v5 setContents:a3];
}

- (void)setDoubleSided:(BOOL)doubleSided
{
  if (self->_doubleSided != doubleSided)
  {
    v10 = v3;
    v11 = v4;
    self->_doubleSided = doubleSided;
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__SCNMaterial_setDoubleSided___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = doubleSided;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"doubleSided" applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (v3)
  {
    v4 = v3;
    C3DSceneLock(v3);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__SCNMaterial_setCullMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = cullMode;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"cullMode" applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (!v3)
  {
    return C3DMaterialGetCullMode(self->_material);
  }

  v4 = v3;
  C3DSceneLock(v3);
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
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__SCNMaterial_setFillMode___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = fillMode;
    [SCNTransaction postCommandWithContext:v7 object:self key:@"fillMode" applyBlock:v8];
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

  v3 = [(SCNMaterial *)self sceneRef];
  if (!v3)
  {
    return C3DMaterialGetFillMode(self->_material);
  }

  v4 = v3;
  C3DSceneLock(v3);
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

  v6 = [(SCNMaterial *)self properties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (([v12 _hasDefaultValues] & 1) == 0)
        {
          [v5 appendFormat:@"\n  %@=%@", objc_msgSend(v12, "propertyName"), v12];
          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)copyAnimationChannelForKeyPath:(id)a3 property:(id)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"commonProfile", objc_msgSend(a4, "slotName")];
  if ([a3 isEqualToString:@"color"] || objc_msgSend(a3, "isEqualToString:", @"contents") || objc_msgSend(a3, "isEqualToString:", @"content"))
  {
    v7 = [v6 stringByAppendingString:@".color"];
  }

  else
  {
    v7 = [v6 stringByAppendingFormat:@".%@", a3];
  }

  return SCNCreateAnimationChannelWithObjectAndPath(self, v7);
}

- (id)copyAnimationChannelForKeyPath:(id)a3 animation:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  result = [a3 length];
  if (result)
  {
    if (self->_shadableHelper)
    {
      os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
      v8 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:a3];
      os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
      if (!v8)
      {
        TargetedBaseType = SCNAnimationGetTargetedBaseType(a4);
        if (TargetedBaseType)
        {
          v15 = SCNDefaultValueWithBaseType(TargetedBaseType, v11, v12, v13, v14);
          v16 = [(SCNMaterial *)self sceneRef];
          if (v16)
          {
            v17 = v16;
            C3DSceneLock(v16);
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNMaterial *)self setValue:v15 forUndefinedKey:a3];
            +[SCNTransaction commitImmediate];
            C3DSceneUnlock(v17);
          }

          else
          {
            +[SCNTransaction begin];
            [SCNTransaction setImmediateMode:1];
            [(SCNMaterial *)self setValue:v15 forUndefinedKey:a3];
            +[SCNTransaction commitImmediate];
          }
        }

        else
        {
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412290;
            v20 = a3;
            _os_log_impl(&dword_21BEF7000, v18, OS_LOG_TYPE_DEFAULT, "Warning: can't prepare shadable animation with path %@", &v19, 0xCu);
          }
        }
      }
    }

    result = SCNCreateAnimationChannelWithObjectAndPath(self, a3);
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
  v2 = [(SCNMaterial *)self __CFObject];

  return C3DGetScene(v2);
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

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v7 = [-[SCNOrderedDictionary objectForKey:](self->_animations objectForKey:{a4), "animation"}] == a3;
  if (v7)
  {
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a4];
    v8 = [(SCNMaterial *)self __CFObject];
    if ((CFTypeIsC3DEntity(v8) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SCNTechnique __removeAnimation:v9 forKey:?];
      }
    }

    C3DEntityRemoveAnimationForKey(v8, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v7;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (!animations)
    {
      animations = objc_alloc_init(SCNOrderedDictionary);
      self->_animations = animations;
    }

    [(SCNOrderedDictionary *)animations setObject:a3 forKey:v5];
    os_unfair_lock_unlock(&self->_animationsLock);
    v8 = [(SCNMaterial *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__SCNMaterial_addAnimationPlayer_forKey___block_invoke;
    v10[3] = &unk_2782FC928;
    v10[4] = a3;
    v10[5] = self;
    v10[6] = v5;
    [SCNTransaction postCommandWithContext:v8 object:self applyBlock:v10];
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

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v5 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [SCNAnimation animationWithCAAnimation:v6];
    }

    v7 = [SCNAnimationPlayer animationPlayerWithSCNAnimation:v6];
    [(SCNMaterial *)self addAnimationPlayer:v7 forKey:v5];

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
  v3 = [(SCNMaterial *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SCNMaterial_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SCNMaterial_removeAllAnimationsWithBlendOutDuration___block_invoke;
  v6[3] = &unk_2782FB7D0;
  v6[4] = self;
  *&v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v5 = [(SCNMaterial *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__SCNMaterial_removeAnimationForKey___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = self;
    v6[5] = a3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    [(SCNOrderedDictionary *)self->_animations removeObjectForKey:a3];
    os_unfair_lock_unlock(&self->_animationsLock);
    v7 = [(SCNMaterial *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SCNMaterial_removeAnimationForKey_blendOutDuration___block_invoke;
    v8[3] = &unk_2782FB630;
    v8[4] = self;
    v8[5] = a3;
    *&v8[6] = a4;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v3 = [(SCNOrderedDictionary *)self->_animations allKeys];
  os_unfair_lock_unlock(&self->_animationsLock);
  if ([(NSArray *)v3 count])
  {
    return v3;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)_syncObjCAnimations
{
  v3 = [(SCNMaterial *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMaterial *)self __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
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

- (id)animationForKey:(id)a3
{
  v3 = [(SCNMaterial *)self _scnAnimationForKey:a3];
  v4 = MEMORY[0x277CD9DF8];

  return [v4 animationWithSCNAnimation:v3];
}

- (id)_scnAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [-[SCNOrderedDictionary objectForKey:](animations objectForKey:{v3), "animation"}];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 animationKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [objc_msgSend(a3 animationPlayerForKey:{v10), "copy"}];
        [(SCNMaterial *)self addAnimationPlayer:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = [(SCNOrderedDictionary *)animations objectForKey:v3];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = [(SCNMaterial *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNMaterial *)self animationManager];
    if (v11)
    {
      v12 = v11;
      v13 = CACurrentMediaTime();

      C3DAnimationManagerPauseAnimationForKey(v12, v10, a4, v7, v5, v13);
    }
  }
}

- (void)pauseAnimationForKey:(id)a3
{
  v5 = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNMaterial_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCNMaterial_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNMaterial *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SCNMaterial_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
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

- (BOOL)isAnimationForKeyPaused:(id)a3
{
  v5 = [(SCNMaterial *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNMaterial *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNMaterial *)self animationManager];
    if (v9)
    {
      IsPaused = C3DAnimationManagerGetAnimationForKeyIsPaused(v9, v8, a3);
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

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v16[15] = v6;
    v16[16] = v7;
    v13 = objc_alloc_init(C3DBinding);
    [(C3DBinding *)v13 setSourceObject:a4];
    [(C3DBinding *)v13 setKeyPathDst:a3];
    [(C3DBinding *)v13 setKeyPathSrc:a5];
    [(C3DBinding *)v13 setOptions:a6];
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_bindings = bindings;
    }

    [(NSMutableDictionary *)bindings setValue:v13 forKey:a3];

    v15 = [(SCNMaterial *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SCNMaterial_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
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

- (void)unbindAnimatablePath:(id)a3
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  v5 = [(SCNMaterial *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SCNMaterial_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
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
  v3 = [(SCNMaterial *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__SCNMaterial_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __32__SCNMaterial_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)valueForUndefinedKey:(id)a3
{
  if (self->_isPresentationInstance)
  {
    v5 = C3DCFTypeCopyModelInfoAtPath(self->_material, a3, 0);
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
  v15 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:a3];
  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);

  return v15;
}

- (void)_shadableSetValue:(id)a3 forUndefinedKey:(id)a4
{
  if (!self->_isPresentationInstance)
  {
    v6 = a4;
    if ([a4 hasPrefix:@"shaderModifiers."])
    {
      v6 = [v6 substringFromIndex:16];
    }

    os_unfair_lock_lock(&self->_valuesForUndefinedKeysLock);
    v8 = [(NSMutableDictionary *)self->_valuesForUndefinedKeys objectForKey:v6];
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
    if (a3)
    {
      if (!valuesForUndefinedKeys)
      {
        valuesForUndefinedKeys = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_valuesForUndefinedKeys = valuesForUndefinedKeys;
      }

      [(NSMutableDictionary *)valuesForUndefinedKeys setObject:a3 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)valuesForUndefinedKeys removeObjectForKey:v6];
    }

    os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
    if ((isKindOfClass & 1) == 0)
    {
      [(SCNMaterial *)self didChangeValueForKey:@"customMaterialProperties"];
      [(SCNMaterial *)self didChangeValueForKey:@"customMaterialAttributes"];
    }

    v11 = [(SCNMaterial *)self __CFObject];
    objc_opt_class();
    v12 = v6;
    if (objc_opt_isKindOfClass())
    {
      [v8 unlinkCustomPropertyWithParent:self];
      v12 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 linkCustomPropertyWithParent:self andCustomName:v6];
      v13 = [a3 effectSlot];
      if (v13)
      {
        v14 = CFRetain(v13);
        v12 = 0;
LABEL_28:
        v18 = [(SCNMaterial *)self sceneRef];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke_2;
        v20[3] = &unk_2782FED90;
        v20[6] = v14;
        v20[7] = v11;
        v20[4] = v6;
        v20[5] = a3;
        [SCNTransaction postCommandWithContext:v18 object:self keyPath:v12 applyBlock:v20];
        return;
      }

      v12 = 0;
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    v14 = SCNCopyValueFromObjCProperty(self, v6);
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

        v22[0] = C3DColor4FromRGBCFColor(a3, 0);
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
          v17 = [(SCNMaterial *)self sceneRef];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __49__SCNMaterial__shadableSetValue_forUndefinedKey___block_invoke;
          v21[3] = &unk_2782FE238;
          v21[4] = v6;
          v21[5] = v11;
          v21[6] = Default;
          [SCNTransaction postCommandWithContext:v17 object:self applyBlock:v21];
        }

        goto LABEL_28;
      }

      v14 = SCNCopyValueFromObjCValue(a3);
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

- (void)setShaderModifiers:(id)a3
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
    if (a3)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setShaderModifiers:a3];
  }
}

- (void)copyShaderModifiersAndLanguageVersionFrom:(id)a3
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
    if ([a3 shaderModifiers])
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    v6 = [a3 __shadableHelper];
    [(SCNShadableHelper *)self->_shadableHelper copyModifiersFrom:v6];
    v7 = [v6 minimumLanguageVersion];
    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:v7];
  }
}

- (void)setMinimumLanguageVersion:(id)a3
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
    if (a3)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
    }

    shadableHelper = self->_shadableHelper;

    [(SCNShadableHelper *)shadableHelper setMinimumLanguageVersion:a3];
  }
}

- (void)handleBindingOfSymbol:(id)a3 usingBlock:(id)a4
{
  [(SCNMaterial *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleBindingOfSymbol:a3 usingBlock:a4];
}

- (void)handleUnbindingOfSymbol:(id)a3 usingBlock:(id)a4
{
  [(SCNMaterial *)self _setupShadableHelperIfNeeded];
  shadableHelper = self->_shadableHelper;

  [(SCNShadableHelper *)shadableHelper handleUnbindingOfSymbol:a3 usingBlock:a4];
}

- (void)setProgram:(id)a3
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
    if (a3)
    {
      [(SCNMaterial *)self _setupShadableHelperIfNeeded];
      shadableHelper = self->_shadableHelper;
      v7 = a3;
    }

    else
    {
      shadableHelper = self->_shadableHelper;
      v7 = 0;
    }

    [(SCNShadableHelper *)shadableHelper setProgram:v7];
  }
}

+ (id)materialNamed:(id)a3
{
  v4 = objc_opt_class();

  return [SCNAssetCatalog objectWithName:a3 class:v4];
}

- (void)_customDecodingOfSCNMaterial:(id)a3
{
  v4 = [a3 decodeObjectOfClasses:SCNUserInfoClasses() forKey:@"valuesForUndefinedKeys"];
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

- (void)_customEncodingOfSCNMaterial:(id)a3
{
  v5 = [(SCNMaterial *)self commonProfile];
  if (v5)
  {
    v6 = v5;
    if (C3DEffectCommonProfileGetEffectSlot(v5, 1, 0))
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
    [a3 encodeObject:valuesForUndefinedKeys forKey:@"valuesForUndefinedKeys"];
  }

  os_unfair_lock_unlock(&self->_valuesForUndefinedKeysLock);
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_isPresentationInstance)
  {
    [(SCNMaterial *)self _syncObjCModel];
  }

  [(SCNMaterial *)self _customEncodingOfSCNMaterial:a3];
  ambient = self->_ambient;
  if (ambient)
  {
    [a3 encodeObject:ambient forKey:@"ambient"];
  }

  diffuse = self->_diffuse;
  if (diffuse)
  {
    [a3 encodeObject:diffuse forKey:@"diffuse"];
  }

  specular = self->_specular;
  if (specular)
  {
    [a3 encodeObject:specular forKey:@"specular"];
  }

  emission = self->_emission;
  if (emission)
  {
    [a3 encodeObject:emission forKey:@"emission"];
  }

  reflective = self->_reflective;
  if (reflective)
  {
    [a3 encodeObject:reflective forKey:@"reflective"];
  }

  transparent = self->_transparent;
  if (transparent)
  {
    [a3 encodeObject:transparent forKey:@"transparent"];
  }

  multiply = self->_multiply;
  if (multiply)
  {
    [a3 encodeObject:multiply forKey:@"multiply"];
  }

  normal = self->_normal;
  if (normal)
  {
    [a3 encodeObject:normal forKey:@"normal"];
  }

  selfIllumination = self->_selfIllumination;
  if (selfIllumination)
  {
    [a3 encodeObject:selfIllumination forKey:@"selfIllumination"];
  }

  ambientOcclusion = self->_ambientOcclusion;
  if (ambientOcclusion)
  {
    [a3 encodeObject:ambientOcclusion forKey:@"ambientOcclusion"];
  }

  metalness = self->_metalness;
  if (metalness)
  {
    [a3 encodeObject:metalness forKey:@"metalness"];
  }

  roughness = self->_roughness;
  if (roughness)
  {
    [a3 encodeObject:roughness forKey:@"roughness"];
  }

  displacement = self->_displacement;
  if (displacement)
  {
    [a3 encodeObject:displacement forKey:@"displacement"];
  }

  clearCoat = self->_clearCoat;
  if (clearCoat)
  {
    [a3 encodeObject:clearCoat forKey:@"clearCoat"];
  }

  clearCoatRoughness = self->_clearCoatRoughness;
  if (clearCoatRoughness)
  {
    [a3 encodeObject:clearCoatRoughness forKey:@"clearCoatRoughness"];
  }

  clearCoatNormal = self->_clearCoatNormal;
  if (clearCoatNormal)
  {
    [a3 encodeObject:clearCoatNormal forKey:@"clearCoatNormal"];
  }

  name = self->_name;
  objc_opt_class();
  SCNEncodeNamedObject(a3, name);
  *&v22 = self->_shininess;
  [a3 encodeFloat:@"shininess" forKey:v22];
  *&v23 = self->_transparency;
  [a3 encodeFloat:@"transparency" forKey:v23];
  *&v24 = self->_indexOfRefraction;
  [a3 encodeFloat:@"indexOfRefraction" forKey:v24];
  *&v25 = self->_fresnelExponent;
  [a3 encodeFloat:@"fresnelExponent" forKey:v25];
  [a3 encodeInteger:self->_transparencyMode forKey:@"transparencyMode"];
  lightingModelName = self->_lightingModelName;
  if (lightingModelName)
  {
    [a3 encodeObject:lightingModelName forKey:@"lightingModelName"];
  }

  [a3 encodeInteger:self->_cullMode forKey:@"cullMode"];
  shadableHelper = self->_shadableHelper;
  if (shadableHelper)
  {
    [a3 encodeObject:shadableHelper forKey:@"shadableHelper"];
  }

  [a3 encodeBool:self->_litPerPixel forKey:@"litPerPixel"];
  [a3 encodeBool:self->_doubleSided forKey:@"doubleSided"];
  [a3 encodeBool:self->_locksAmbientWithDiffuse forKey:@"locksAmbientWithDiffuse"];
  [a3 encodeBool:self->_avoidsOverLighting forKey:@"avoidsOverLighting"];
  [a3 encodeBool:self->_writesToDepthBuffer forKey:@"writesToDepthBuffer"];
  [a3 encodeBool:self->_readsFromDepthBuffer forKey:@"readsFromDepthBuffer"];
  [a3 encodeInteger:self->_colorBufferWriteMask forKey:@"colorBufferWriteMask"];
  [a3 encodeInteger:SCNFillModeToSCNLegacyFillMode[self->_fillMode] forKey:@"fillMode"];
  [a3 encodeInteger:self->_blendMode forKey:@"blendMode"];
  *&v28 = self->_selfIlluminationOcclusion;
  [a3 encodeFloat:@"selfIlluminationOcclusion" forKey:v28];
  SCNEncodeEntity(a3, self);

  SCNEncodeAnimations(a3, self);
}

- (SCNMaterial)initWithCoder:(id)a3
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
    [(SCNMaterial *)v4 _customDecodingOfSCNMaterial:a3];
    v4->_ambient = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"ambient"];
    v4->_diffuse = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"diffuse"];
    v4->_specular = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"specular"];
    v4->_emission = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"emission"];
    v4->_reflective = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"reflective"];
    v4->_transparent = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"transparent"];
    v4->_multiply = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"multiply"];
    v4->_normal = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"normal"];
    if ([a3 containsValueForKey:@"selfIllumination"])
    {
      v4->_selfIllumination = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"selfIllumination"];
    }

    if ([a3 containsValueForKey:@"ambientOcclusion"])
    {
      v4->_ambientOcclusion = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"ambientOcclusion"];
    }

    if ([a3 containsValueForKey:@"metalness"])
    {
      v4->_metalness = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"metalness"];
    }

    if ([a3 containsValueForKey:@"roughness"])
    {
      v4->_roughness = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"roughness"];
    }

    if ([a3 containsValueForKey:@"displacement"])
    {
      v4->_displacement = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"displacement"];
    }

    if ([a3 containsValueForKey:@"clearCoat"])
    {
      v4->_clearCoat = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoat"];
    }

    if ([a3 containsValueForKey:@"clearCoatRoughness"])
    {
      v4->_clearCoatRoughness = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoatRoughness"];
    }

    if ([a3 containsValueForKey:@"clearCoatNormal"])
    {
      v4->_clearCoatNormal = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"clearCoatNormal"];
    }

    -[SCNMaterial setName:](v4, "setName:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    [a3 decodeFloatForKey:@"shininess"];
    [(SCNMaterial *)v4 setShininess:v7];
    [a3 decodeFloatForKey:@"transparency"];
    [(SCNMaterial *)v4 setTransparency:v8];
    [a3 decodeFloatForKey:@"indexOfRefraction"];
    [(SCNMaterial *)v4 setIndexOfRefraction:v9];
    [a3 decodeFloatForKey:@"fresnelExponent"];
    [(SCNMaterial *)v4 setFresnelExponent:v10];
    -[SCNMaterial setTransparencyMode:](v4, "setTransparencyMode:", [a3 decodeIntegerForKey:@"transparencyMode"]);
    -[SCNMaterial setLightingModelName:](v4, "setLightingModelName:", [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"lightingModelName"]);
    -[SCNMaterial setCullMode:](v4, "setCullMode:", [a3 decodeIntegerForKey:@"cullMode"]);
    v11 = [a3 scn_decodeObjectOfClass:objc_opt_class() forKey:@"shadableHelper"];
    v4->_shadableHelper = v11;
    if ([(SCNShadableHelper *)v11 owner]!= v4)
    {

      v4->_shadableHelper = 0;
    }

    -[SCNMaterial setLitPerPixel:](v4, "setLitPerPixel:", [a3 decodeBoolForKey:@"litPerPixel"]);
    -[SCNMaterial setDoubleSided:](v4, "setDoubleSided:", [a3 decodeBoolForKey:@"doubleSided"]);
    -[SCNMaterial setLocksAmbientWithDiffuse:](v4, "setLocksAmbientWithDiffuse:", [a3 decodeBoolForKey:@"locksAmbientWithDiffuse"]);
    -[SCNMaterial setAvoidsOverLighting:](v4, "setAvoidsOverLighting:", [a3 decodeBoolForKey:@"avoidsOverLighting"]);
    -[SCNMaterial setWritesToDepthBuffer:](v4, "setWritesToDepthBuffer:", [a3 decodeBoolForKey:@"writesToDepthBuffer"]);
    if ([a3 containsValueForKey:@"colorBufferWriteMask"])
    {
      -[SCNMaterial setColorBufferWriteMask:](v4, "setColorBufferWriteMask:", [a3 decodeIntegerForKey:@"colorBufferWriteMask"]);
    }

    -[SCNMaterial setReadsFromDepthBuffer:](v4, "setReadsFromDepthBuffer:", [a3 decodeBoolForKey:@"readsFromDepthBuffer"]);
    v12 = [a3 decodeIntegerForKey:@"fillMode"];
    v13 = 2;
    if (v12 < 2)
    {
      v13 = v12;
    }

    [(SCNMaterial *)v4 setFillMode:SCNFillModeFromSCNLegacyFillMode[v13 & ~(v13 >> 63)]];
    -[SCNMaterial setBlendMode:](v4, "setBlendMode:", [a3 decodeIntegerForKey:@"blendMode"]);
    [a3 decodeFloatForKey:@"selfIlluminationOcclusion"];
    [(SCNMaterial *)v4 setSelfIlluminationOcclusion:v14];
    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeEntity(a3, v4);
    SCNDecodeAnimations(a3, v4);
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
  v2 = [(SCNMaterial *)self debugQuickLookObject];

  return UIImagePNGRepresentation(v2);
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