@interface SCNMaterialProperty
+ (SCNMaterialProperty)materialPropertyWithContents:(id)contents;
+ (__C3DImage)_createC3DImageFromImage:(id)a3;
+ (__C3DImage)copyC3DImageFromImage:(id)a3 textureOptions:(int)a4 wasCached:(BOOL *)a5;
+ (id)_copyImageFromC3DImage:(__C3DImage *)a3;
+ (id)captureDeviceOutputConsumerWithOptions:(id)a3;
+ (id)copyImageFromC3DImage:(__C3DImage *)a3;
+ (id)dvt_supportedTypesForPropertyContents;
+ (id)precomputedLightingEnvironmentContentsWithData:(id)a3 error:(id *)a4;
+ (id)precomputedLightingEnvironmentContentsWithURL:(id)a3 error:(id *)a4;
+ (id)precomputedLightingEnvironmentDataForContents:(id)a3 device:(id)a4 error:(id *)a5;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)_hasDefaultValues;
- (BOOL)isAnimationForKeyPaused:(id)a3;
- (BOOL)sRGBTexture;
- (C3DColor4)borderColor4;
- (C3DColor4)color4;
- (CGFloat)intensity;
- (CGFloat)maxAnisotropy;
- (NSArray)animationKeys;
- (NSInteger)mappingChannel;
- (NSString)description;
- (SCNColorMask)textureComponents;
- (SCNFilterMode)magnificationFilter;
- (SCNFilterMode)minificationFilter;
- (SCNFilterMode)mipFilter;
- (SCNMaterialProperty)init;
- (SCNMaterialProperty)initWithCoder:(id)a3;
- (SCNMaterialProperty)initWithParent:(id)a3 andCustomName:(id)a4;
- (SCNMaterialProperty)initWithParent:(id)a3 propertyType:(char)a4;
- (SCNMatrix4)contentsTransform;
- (SCNWrapMode)wrapS;
- (SCNWrapMode)wrapT;
- (__C3DAnimationManager)animationManager;
- (__C3DEffectCommonProfile)commonProfile;
- (__C3DEffectSlot)effectSlotCreateIfNeeded:(BOOL)a3;
- (__C3DTextureSampler)textureSampler;
- (id)UIView;
- (id)_animationPathForKey:(id)a3;
- (id)_scnAnimationForKey:(id)a3;
- (id)animationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)attachment;
- (id)avPlayer;
- (id)borderColor;
- (id)captureDevice;
- (id)captureDeviceOutputConsumerSource;
- (id)color;
- (id)contents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)floatValue;
- (id)image;
- (id)initPresentationMaterialPropertyWithModelProperty:(id)a3;
- (id)layer;
- (id)mtlTexture;
- (id)precomputedLightingEnvironment;
- (id)presentationMaterialProperty;
- (id)proceduralContents;
- (id)propertyName;
- (id)pvrtcData;
- (id)skScene;
- (id)skTexture;
- (id)textureProvider;
- (int)_textureOptions;
- (int64_t)_presentationMappingChannel;
- (void)__allocateContentTransformIfNeeded;
- (void)_clearContents;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_customEncodingOfSCNMaterialProperty:(id)a3;
- (void)_didDecodeSCNMaterialProperty:(id)a3;
- (void)_layerDidChange:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setC3DImageRef:(__C3DImage *)a3;
- (void)_setColor:(id)a3;
- (void)_setImagePath:(id)a3 withResolvedPath:(id)a4;
- (void)_setupContentsFromC3DImage;
- (void)_skSceneDidChange:(id)a3;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateC3DImageWithContents:(id)a3;
- (void)_updateMaterialAVPlayer:(id)a3;
- (void)_updateMaterialAttachment:(id)a3;
- (void)_updateMaterialBorderColor:(id)a3;
- (void)_updateMaterialCaptureDevice:(id)a3;
- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)a3;
- (void)_updateMaterialColor:(id)a3;
- (void)_updateMaterialFilters;
- (void)_updateMaterialImage:(id)a3;
- (void)_updateMaterialLayer:(id)a3;
- (void)_updateMaterialMTLTexture:(id)a3;
- (void)_updateMaterialNumber:(id)a3;
- (void)_updateMaterialProceduralContents:(id)a3;
- (void)_updateMaterialPropertyTransform:(C3DMatrix4x4 *)a3;
- (void)_updateMaterialSKScene:(id)a3;
- (void)_updateMaterialSKTexture:(id)a3;
- (void)_updateMaterialTextureProvider:(id)a3;
- (void)_updateMaterialUIComponent:(id)a3;
- (void)_updatePrecomputedLightingEnvironment:(id)a3;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)copyPropertiesFrom:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)linkCustomPropertyWithParent:(id)a3 andCustomName:(id)a4;
- (void)parentWillDie:(id)a3;
- (void)pauseAnimationForKey:(id)a3;
- (void)propertyName;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(double)a4;
- (void)resumeAnimationForKey:(id)a3;
- (void)setAttachment:(id)a3;
- (void)setAvPlayer:(id)a3;
- (void)setBorderColor:(id)borderColor;
- (void)setCaptureDevice:(id)a3;
- (void)setCaptureDeviceOutputConsumerSource:(id)a3;
- (void)setColor:(id)a3;
- (void)setContents:(id)contents;
- (void)setContentsTransform:(SCNMatrix4 *)contentsTransform;
- (void)setFloatValue:(id)a3;
- (void)setImage:(id)a3;
- (void)setIntensity:(CGFloat)intensity;
- (void)setLayer:(id)a3;
- (void)setMagnificationFilter:(SCNFilterMode)magnificationFilter;
- (void)setMappingChannel:(NSInteger)mappingChannel;
- (void)setMaxAnisotropy:(CGFloat)maxAnisotropy;
- (void)setMinificationFilter:(SCNFilterMode)minificationFilter;
- (void)setMipFilter:(SCNFilterMode)mipFilter;
- (void)setMtlTexture:(id)a3;
- (void)setPrecomputedLightingEnvironment:(id)a3;
- (void)setProceduralContents:(id)a3;
- (void)setSRGBTexture:(BOOL)a3;
- (void)setSkScene:(id)a3;
- (void)setSkTexture:(id)a3;
- (void)setSpeed:(double)a3 forAnimationKey:(id)a4;
- (void)setTextureComponents:(SCNColorMask)textureComponents;
- (void)setTextureProvider:(id)a3;
- (void)setUIView:(id)a3;
- (void)setUIWindow:(id)a3;
- (void)setWrapS:(SCNWrapMode)wrapS;
- (void)setWrapT:(SCNWrapMode)wrapT;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation SCNMaterialProperty

- (SCNMaterialProperty)init
{
  v5.receiver = self;
  v5.super_class = SCNMaterialProperty;
  v2 = [(SCNMaterialProperty *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_parent = 0;
    v2->_propertyType = 27;
    *(v2 + 8) &= ~2u;
    v2->_customSlot = C3DEffectSlotCreate(0, 27);
    v3->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMaterialProperty *)v3 _syncObjCModel];
  }

  return v3;
}

+ (SCNMaterialProperty)materialPropertyWithContents:(id)contents
{
  v4 = [[a1 alloc] initWithParent:0 propertyType:27];
  [(SCNMaterialProperty *)v4 setContents:contents];
  return v4;
}

- (SCNMaterialProperty)initWithParent:(id)a3 propertyType:(char)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = SCNMaterialProperty;
  v6 = [(SCNMaterialProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (v6 == a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v6->_parent = v8;
    v6->_propertyType = v4;
    *(v6 + 8) = *(v6 + 8) & 0xFD | (2 * (v4 < 21));
    if (!v8)
    {
      v6->_customSlot = C3DEffectSlotCreate(0, 27);
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMaterialProperty *)v7 _syncObjCModel];
    [(SCNMaterialProperty *)v7 _syncObjCAnimations];
  }

  return v7;
}

- (SCNMaterialProperty)initWithParent:(id)a3 andCustomName:(id)a4
{
  v10.receiver = self;
  v10.super_class = SCNMaterialProperty;
  v6 = [(SCNMaterialProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (v6 == a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v6->_parent = v8;
    v6->_propertyType = 27;
    v6->_customSlotName = [a4 copy];
    *(v7 + 8) &= ~2u;
    v7->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMaterialProperty *)v7 _syncObjCModel];
    [(SCNMaterialProperty *)v7 _syncObjCAnimations];
  }

  return v7;
}

- (id)initPresentationMaterialPropertyWithModelProperty:(id)a3
{
  v9.receiver = self;
  v9.super_class = SCNMaterialProperty;
  v4 = [(SCNMaterialProperty *)&v9 init];
  if (v4)
  {
    if ([a3 parent] == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = [a3 parent];
    }

    v4->_parent = v5;
    v6 = [a3 propertyType];
    v4->_propertyType = v6;
    if (v6 >= 21)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    *(v4 + 8) = v7 | *(v4 + 8) & 0xFC;
    v4->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)__allocateContentTransformIfNeeded
{
  if (!self->_contentTransform)
  {
    v3 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
    self->_contentTransform = v3;
    *v3 = SCNMatrix4Identity;
  }
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_runtimeResolvedPath = 0;
  [(SCNMaterialProperty *)self _clearContents];

  free(self->_contentTransform);
  v3.receiver = self;
  v3.super_class = SCNMaterialProperty;
  [(SCNMaterialProperty *)&v3 dealloc];
}

- (void)linkCustomPropertyWithParent:(id)a3 andCustomName:(id)a4
{
  if (a3 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  self->_parent = v7;

  v8 = [a4 copy];
  self->_customSlotName = v8;
  self->_propertyType = 27;
  *(self + 8) &= ~2u;
  if (v8 && !self->_customSlot)
  {
    self->_customSlot = C3DEffectSlotCreate(0, 27);
  }

  if ([a3 __CFObject] == self)
  {
    v9 = 0;
  }

  else
  {
    v9 = [a3 __CFObject];
  }

  self->_customSlot[1].var0.var1 = v9;
}

- (__C3DEffectSlot)effectSlotCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  propertyType = self->_propertyType;
  if (propertyType <= 0x18)
  {
    if (propertyType == 22)
    {
      result = [self->_parent lightRef];
      if (result)
      {

        return C3DLightGetGobo(result, v3);
      }
    }

    else
    {
      if (propertyType != 24)
      {
LABEL_25:
        result = [(SCNMaterialProperty *)self commonProfile];
        if (result)
        {
          v7 = self->_propertyType;

          return C3DEffectCommonProfileGetEffectSlot(result, v7, v3);
        }

        return result;
      }

      result = [self->_parent sceneRef];
      if (result)
      {

        return C3DSceneGetBackgroundEffectSlot(result, v3);
      }
    }
  }

  else
  {
    switch(propertyType)
    {
      case 0x19u:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          result = [self->_parent sceneRef];
          if (result)
          {

            return C3DSceneGetLightingEnvironmentEffectSlot(result, v3);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            result = [self->_parent lightRef];
            if (result)
            {

              return C3DLightGetProbeEnvironment(result, v3);
            }
          }

          else
          {
            return 0;
          }
        }

        break;
      case 0x1Au:
        result = [self->_parent cameraRef];
        if (result)
        {

          return C3DCameraGetColorGradingEffectSlot(result, v3);
        }

        break;
      case 0x1Bu:
        return self->_customSlot;
      default:
        goto LABEL_25;
    }
  }

  return result;
}

- (id)_animationPathForKey:(id)a3
{
  v4 = [-[SCNMaterialProperty slotName](self "slotName")];

  return [v4 stringByAppendingString:a3];
}

- (void)_clearContents
{
  contentType = self->_contentType;
  v4 = contentType > 0xD;
  v5 = (1 << contentType) & 0x3D0C;
  if (!v4 && v5 != 0)
  {
    contents = self->_contents;
    if (contents)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3052000000;
      v11[3] = __Block_byref_object_copy__9;
      v11[4] = __Block_byref_object_dispose__9;
      v11[5] = contents;
      v8 = [(SCNMaterialProperty *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__SCNMaterialProperty__clearContents__block_invoke;
      v10[3] = &unk_2782FF8C0;
      v10[4] = v11;
      [SCNTransaction postCommandWithContext:v8 object:0 applyBlock:v10];
      _Block_object_dispose(v11, 8);
    }
  }

  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
    CFRelease(c3dImage);
    self->_c3dImage = 0;
  }

  self->_contents = 0;
}

uint64_t __37__SCNMaterialProperty__clearContents__block_invoke(uint64_t a1)
{
  v2 = +[SCNSourceRendererRegistry sharedRegistry];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 removeSourceRenderersForSource:v3];
}

- (void)_setColor:(id)a3
{
  if (self->_contents != a3)
  {
    self->_contents = a3;
    self->_contentType = 0;
  }
}

- (void)setColor:(id)a3
{
  if (self->_contents != a3)
  {
    v9[10] = v3;
    v9[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 0;
    if (a3)
    {
      v7 = [(SCNMaterialProperty *)self sceneRef];
      v8 = [(SCNMaterialProperty *)self _animationPathForKey:@"color"];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__SCNMaterialProperty_setColor___block_invoke;
      v9[3] = &unk_2782FC950;
      v9[4] = self;
      v9[5] = a3;
      [SCNTransaction postCommandWithContext:v7 object:self keyPath:v8 applyBlock:v9];
    }
  }
}

- (id)color
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self effectSlot];
    if (v6 && (ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(v6)) != 0)
    {
      v3 = [MEMORY[0x277D75348] scn_colorWithC3DColor:ColorIfApplicable];
      if (!v5)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    C3DSceneUnlock(v5);
    return v3;
  }

  if (self->_contentType)
  {
    return 0;
  }

  v9 = self->_contents;

  return v9;
}

- (void)setFloatValue:(id)a3
{
  contents = self->_contents;
  if (contents != a3 && ([contents isEqual:?] & 1) == 0)
  {
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 9;
    if (a3)
    {
      v6 = [(SCNMaterialProperty *)self sceneRef];
      v7 = [(SCNMaterialProperty *)self _animationPathForKey:@"color"];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__SCNMaterialProperty_setFloatValue___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = a3;
      [SCNTransaction postCommandWithContext:v6 object:self keyPath:v7 applyBlock:v8];
    }
  }
}

- (id)floatValue
{
  if (*(self + 8))
  {
    v5 = [(SCNMaterialProperty *)self sceneRef];
    v6 = v5;
    if (v5)
    {
      C3DSceneLock(v5);
    }

    v7 = [(SCNMaterialProperty *)self effectSlot];
    if (v7)
    {
      v8 = v7;
      ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(v7);
      if (ColorIfApplicable)
      {
        EffectProperty = C3DEffectSlotGetEffectProperty(v8);
        v12 = 12;
        if (EffectProperty != 5)
        {
          v12 = 0;
        }

        LODWORD(v11) = *&ColorIfApplicable[v12];
        ColorIfApplicable = [MEMORY[0x277CCABB0] numberWithFloat:v11];
      }

      if (!v6)
      {
        return ColorIfApplicable;
      }
    }

    else
    {
      ColorIfApplicable = 0;
      if (!v6)
      {
        return ColorIfApplicable;
      }
    }

    C3DSceneUnlock(v6);
    return ColorIfApplicable;
  }

  if (self->_contentType != 9)
  {
    return 0;
  }

  v3 = self->_contents;

  return v3;
}

- (void)_setC3DImageRef:(__C3DImage *)a3
{
  c3dImage = self->_c3dImage;
  if (c3dImage != a3)
  {
    if (c3dImage)
    {
      CFRelease(c3dImage);
      self->_c3dImage = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_c3dImage = v6;
  }
}

- (void)_setupContentsFromC3DImage
{
  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
    if (C3DImageIsCatalogTexture(c3dImage))
    {

      v4 = C3DImageGetCatalogTextureName(self->_c3dImage);
LABEL_7:
      self->_contents = v4;
      self->_contentType = 1;
      return;
    }

    URL = C3DImageGetURL(self->_c3dImage);
    if (URL || (URL = [SCNMaterialProperty copyImageFromC3DImage:self->_c3dImage]) != 0)
    {
      v6 = URL;

      v4 = v6;
      goto LABEL_7;
    }
  }
}

- (C3DColor4)color4
{
  v11 = 0;
  v2 = [scn_NSColorFromCGColorIfApplicable(-[SCNMaterialProperty color](self "color"))];
  if (v11)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v11)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    v7 = HIDWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 | (v6 << 32);
  v10 = v8 | (v7 << 32);
  *&result.var0.var1.var2 = v9;
  *result.var0.var0 = v10;
  return result;
}

- (C3DColor4)borderColor4
{
  v2 = scn_NSColorFromCGColorIfApplicable(self->_borderColor);

  v3 = [v2 scn_C3DColorIgnoringColorSpace:0 success:0];
  *&result.var0.var1.var2 = v4;
  *result.var0.var0 = v3;
  return result;
}

- (SCNFilterMode)minificationFilter
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      MinFilter = C3DTextureSamplerGetMinFilter(v6);
      if (!v5)
      {
        return MinFilter;
      }
    }

    else
    {
      MinFilter = SCNFilterModeNone;
      if (!v5)
      {
        return MinFilter;
      }
    }

    C3DSceneUnlock(v5);
    return MinFilter;
  }

  return self->_minificationFilter;
}

- (SCNFilterMode)magnificationFilter
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      MagFilter = C3DTextureSamplerGetMagFilter(v6);
      if (!v5)
      {
        return MagFilter;
      }
    }

    else
    {
      MagFilter = SCNFilterModeNone;
      if (!v5)
      {
        return MagFilter;
      }
    }

    C3DSceneUnlock(v5);
    return MagFilter;
  }

  return self->_magnificationFilter;
}

- (SCNFilterMode)mipFilter
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      MipFilter = C3DTextureSamplerGetMipFilter(v6);
      if (!v5)
      {
        return MipFilter;
      }
    }

    else
    {
      MipFilter = SCNFilterModeNone;
      if (!v5)
      {
        return MipFilter;
      }
    }

    C3DSceneUnlock(v5);
    return MipFilter;
  }

  return self->_mipFilter;
}

- (void)setMinificationFilter:(SCNFilterMode)minificationFilter
{
  if (self->_minificationFilter != minificationFilter)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_minificationFilter = minificationFilter;
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SCNMaterialProperty_setMinificationFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (void)setMagnificationFilter:(SCNFilterMode)magnificationFilter
{
  if (self->_magnificationFilter != magnificationFilter)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_magnificationFilter = magnificationFilter;
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNMaterialProperty_setMagnificationFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (void)setMipFilter:(SCNFilterMode)mipFilter
{
  if (self->_mipFilter != mipFilter)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_mipFilter = mipFilter;
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNMaterialProperty_setMipFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (int64_t)_presentationMappingChannel
{
  v2 = [(SCNMaterialProperty *)self effectSlot];
  if (!v2)
  {
    return -1;
  }

  return C3DEffectSlotGetUVSet(v2);
}

- (NSInteger)mappingChannel
{
  if ((*(self + 8) & 1) == 0)
  {
    return self->_mappingChannel;
  }

  v4 = [(SCNMaterialProperty *)self sceneRef];
  if (v4)
  {
    v5 = v4;
    C3DSceneLock(v4);
    v6 = [(SCNMaterialProperty *)self _presentationMappingChannel];
    C3DSceneUnlock(v5);
    return v6;
  }

  else
  {

    return [(SCNMaterialProperty *)self _presentationMappingChannel];
  }
}

- (void)setMappingChannel:(NSInteger)mappingChannel
{
  if (self->_mappingChannel != mappingChannel)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_mappingChannel = mappingChannel;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__SCNMaterialProperty_setMappingChannel___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = mappingChannel;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

void __41__SCNMaterialProperty_setMappingChannel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectSlotCreateIfNeeded:*(a1 + 40) != 0];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DEffectSlotSetUVSet(v2, v3);
  }
}

- (SCNColorMask)textureComponents
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self effectSlot];
    if (v6)
    {
      TextureComponents = C3DEffectSlotGetTextureComponents(v6);
      if (!v5)
      {
        return TextureComponents;
      }
    }

    else
    {
      TextureComponents = 15;
      if (!v5)
      {
        return TextureComponents;
      }
    }

    C3DSceneUnlock(v5);
    return TextureComponents;
  }

  return self->_textureComponents;
}

- (void)setTextureComponents:(SCNColorMask)textureComponents
{
  if (self->_textureComponents != textureComponents)
  {
    v8[10] = v3;
    v8[11] = v4;
    self->_textureComponents = textureComponents;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__SCNMaterialProperty_setTextureComponents___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = textureComponents;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

void __44__SCNMaterialProperty_setTextureComponents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectSlotCreateIfNeeded:*(a1 + 40) != 15];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DEffectSlotSetTextureComponents(v2, v3);
  }
}

- (void)setIntensity:(CGFloat)intensity
{
  if (self->_intensity != intensity)
  {
    v5 = intensity;
    self->_intensity = v5;
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7 = [(SCNMaterialProperty *)self _animationPathForKey:@"intensity"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNMaterialProperty_setIntensity___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = intensity;
    [SCNTransaction postCommandWithContext:v6 object:self keyPath:v7 applyBlock:v8];
  }
}

void __36__SCNMaterialProperty_setIntensity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectSlot];
  if (v2)
  {
    v3 = *(a1 + 40);

    C3DEffectSlotSetIntensity(v2, v3);
  }
}

- (CGFloat)intensity
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self effectSlot];
    if (v6)
    {
      Intensity = C3DEffectSlotGetIntensity(v6);
      if (!v5)
      {
        return Intensity;
      }
    }

    else
    {
      Intensity = 0.0;
      if (!v5)
      {
        return Intensity;
      }
    }

    C3DSceneUnlock(v5);
    return Intensity;
  }

  return self->_intensity;
}

- (id)borderColor
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      v3 = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DTextureSamplerGetBorderColor(v6)];
      if (!v5)
      {
        return v3;
      }
    }

    else
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }
    }

    C3DSceneUnlock(v5);
    return v3;
  }

  return self->_borderColor;
}

- (void)setBorderColor:(id)borderColor
{
  v5 = self->_borderColor;
  if (v5 != borderColor)
  {
    v10[10] = v3;
    v10[11] = v4;

    self->_borderColor = borderColor;
    v8 = [(SCNMaterialProperty *)self sceneRef];
    v9 = [(SCNMaterialProperty *)self _animationPathForKey:@"borderColor"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SCNMaterialProperty_setBorderColor___block_invoke;
    v10[3] = &unk_2782FC950;
    v10[4] = self;
    v10[5] = borderColor;
    [SCNTransaction postCommandWithContext:v8 object:self keyPath:v9 applyBlock:v10];
  }
}

- (SCNWrapMode)wrapS
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      WrapModeS = C3DTextureSamplerGetWrapModeS(v6);
      if (!v5)
      {
        return WrapModeS;
      }
    }

    else
    {
      WrapModeS = SCNWrapModeClamp;
      if (!v5)
      {
        return WrapModeS;
      }
    }

    C3DSceneUnlock(v5);
    return WrapModeS;
  }

  return self->_wrapS;
}

- (void)setWrapS:(SCNWrapMode)wrapS
{
  if ((wrapS - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    if (self->_wrapS != wrapS)
    {
      self->_wrapS = wrapS;
      v5 = [(SCNMaterialProperty *)self sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __32__SCNMaterialProperty_setWrapS___block_invoke;
      v6[3] = &unk_2782FB820;
      v6[4] = self;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
    }
  }

  else
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterialProperty setWrapS:];
    }
  }
}

- (SCNWrapMode)wrapT
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    v6 = [(SCNMaterialProperty *)self textureSampler];
    if (v6)
    {
      WrapModeT = C3DTextureSamplerGetWrapModeT(v6);
      if (!v5)
      {
        return WrapModeT;
      }
    }

    else
    {
      WrapModeT = SCNWrapModeClamp;
      if (!v5)
      {
        return WrapModeT;
      }
    }

    C3DSceneUnlock(v5);
    return WrapModeT;
  }

  return self->_wrapT;
}

- (void)setWrapT:(SCNWrapMode)wrapT
{
  if ((wrapT - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    if (self->_wrapT != wrapT)
    {
      self->_wrapT = wrapT;
      v5 = [(SCNMaterialProperty *)self sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __32__SCNMaterialProperty_setWrapT___block_invoke;
      v6[3] = &unk_2782FB820;
      v6[4] = self;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
    }
  }

  else
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterialProperty setWrapT:];
    }
  }
}

- (BOOL)sRGBTexture
{
  v2 = *(self + 8);
  if (v2)
  {
    v3 = self;
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    LOBYTE(v3) = C3DEffectSlotGetSRGB([(SCNMaterialProperty *)v3 effectSlot]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    LODWORD(v3) = (v2 >> 2) & 1;
  }

  return v3;
}

- (void)setSRGBTexture:(BOOL)a3
{
  v3 = *(self + 8);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 8) = v3 & 0xFB | v6;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNMaterialProperty_setSRGBTexture___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    v9 = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

void __38__SCNMaterialProperty_setSRGBTexture___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) effectSlot])
  {
    v2 = [*(a1 + 32) effectSlot];
    v3 = *(a1 + 40);

    C3DEffectSlotSetSRGB(v2, v3);
  }
}

- (int)_textureOptions
{
  v3 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0];
  if (v3)
  {

    return C3DEffectSlotGetTextureOptions(v3);
  }

  else
  {
    propertyType = self->_propertyType;
    v6 = (*(self + 8) >> 2) & 1;

    return C3DEffectSlotGetDefaultTextureOptions(propertyType, v6);
  }
}

- (void)setAttachment:(id)a3
{
  contents = self->_contents;
  if (contents != a3 && ([contents isEqual:?] & 1) == 0)
  {
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 7;
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNMaterialProperty_setAttachment___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:v6 object:self applyBlock:v7];
  }
}

- (id)attachment
{
  if (self->_contentType == 7)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)_updateC3DImageWithContents:(id)a3
{
  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
    CFRelease(c3dImage);
    self->_c3dImage = 0;
  }

  v11 = 0;
  v6 = [SCNMaterialProperty copyC3DImageFromImage:a3 textureOptions:[(SCNMaterialProperty *)self _textureOptions] wasCached:&v11];
  v7 = v6;
  if (v6)
  {
    v8 = v11 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(self + 8) & 8) == 0)
  {
    C3DImageCacheBitmap(v6);
  }

  v9 = [(SCNMaterialProperty *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SCNMaterialProperty__updateC3DImageWithContents___block_invoke;
  v10[3] = &unk_2782FC950;
  v10[4] = self;
  v10[5] = v7;
  [SCNTransaction postCommandWithContext:v9 object:self applyBlock:v10];
}

- (void)setImage:(id)a3
{
  if (self->_contents == a3)
  {
    if (a3)
    {
      return;
    }

    c3dImage = self->_c3dImage;
    if (!c3dImage)
    {
      return;
    }

    goto LABEL_3;
  }

  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
LABEL_3:
    CFRetain(c3dImage);
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 1;
    [(SCNMaterialProperty *)self _updateC3DImageWithContents:a3];

    CFRelease(c3dImage);
    return;
  }

  [(SCNMaterialProperty *)self _clearContents];
  self->_contents = a3;
  self->_contentType = 1;

  [(SCNMaterialProperty *)self _updateC3DImageWithContents:a3];
}

- (id)image
{
  if (self->_c3dImage && (self->_contentType != 1 || !self->_contents))
  {
    v3 = [SCNMaterialProperty copyImageFromC3DImage:?];
    if (v3)
    {
      v4 = v3;
      if ((self->_contentType & 0xFE) == 2)
      {
        v5 = scn_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          [(SCNMaterialProperty *)v5 image:v6];
        }
      }

      self->_contents = v4;
      self->_contentType = 1;
    }
  }

  if (self->_contentType == 1)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (id)pvrtcData
{
  v3 = [(SCNMaterialProperty *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  c3dImage = self->_c3dImage;
  if (c3dImage && C3DImageGetTextureRawDataCompression(c3dImage) == 1)
  {
    Data = C3DImageGetData(self->_c3dImage);
    if (!v4)
    {
      return Data;
    }

    goto LABEL_8;
  }

  Data = 0;
  if (v4)
  {
LABEL_8:
    C3DSceneUnlock(v4);
  }

  return Data;
}

- (void)setSkScene:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 3;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__SCNMaterialProperty_setSkScene___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)skScene
{
  if (self->_contentType == 3)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setSkTexture:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 4;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNMaterialProperty_setSkTexture___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)skTexture
{
  if (self->_contentType == 4)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setLayer:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 2;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__SCNMaterialProperty_setLayer___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)layer
{
  if (self->_contentType == 2)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setAvPlayer:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 10;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterialProperty_setAvPlayer___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)avPlayer
{
  if (self->_contentType == 10)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDevice:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 11;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SCNMaterialProperty_setCaptureDevice___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)captureDevice
{
  if (self->_contentType == 11)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDeviceOutputConsumerSource:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 12;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SCNMaterialProperty_setCaptureDeviceOutputConsumerSource___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)captureDeviceOutputConsumerSource
{
  if (self->_contentType == 12)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setTextureProvider:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 13;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNMaterialProperty_setTextureProvider___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)textureProvider
{
  if (self->_contentType == 13)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setPrecomputedLightingEnvironment:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 14;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNMaterialProperty_setPrecomputedLightingEnvironment___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)precomputedLightingEnvironment
{
  if (self->_contentType == 14)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)_updateMaterialUIComponent:(id)a3
{
  v5 = [(SCNMaterialProperty *)self effectSlot];
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __50__SCNMaterialProperty__updateMaterialUIComponent___block_invoke;
      v8[3] = &unk_2782FF8E8;
      v8[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v8);
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      C3DEffectSlotSetImageProxy(v6, IfNeededForSource);
    }

    else
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

      C3DEffectSlotSetImageProxy(v6, 0);
    }
  }
}

uint64_t __50__SCNMaterialProperty__updateMaterialUIComponent___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(0);
  v3 = objc_alloc_init(SCNUIKitSource);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    [(SCNUIKitSource *)v3 setUiView:v5];
  }

  else
  {
    [(SCNUIKitSource *)v3 setUiWindow:v5];
  }

  [(SCNImageSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)setUIView:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 8;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__SCNMaterialProperty_setUIView___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)UIView
{
  if (self->_contentType == 8)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setUIWindow:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 8;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterialProperty_setUIWindow___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (void)setContents:(id)contents
{
  if ([(SCNMaterialProperty *)self contents]== contents)
  {
    return;
  }

  self->_runtimeResolvedPath = 0;
  v5 = scn_NSColorFromCGColorIfApplicable(contents);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(SCNMaterialProperty *)self setColor:v5];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(SCNMaterialProperty *)self setLayer:v5];
    return;
  }

  if (NSClassFromString(&cfstr_Skscene.isa))
  {
    NSClassFromString(&cfstr_Skscene.isa);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      [(SCNMaterialProperty *)self setSkScene:v5];
      return;
    }
  }

  if (NSClassFromString(&cfstr_Sktexture.isa))
  {
    NSClassFromString(&cfstr_Sktexture.isa);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      [(SCNMaterialProperty *)self setSkTexture:v5];
      return;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self;
    v7 = v5;
LABEL_31:

    [(SCNMaterialProperty *)v6 setAttachment:v7];
    return;
  }

  NSClassFromString(&cfstr_Glktextureinfo.isa);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SCNMaterialAttachment materialAttachmentWithGLKTextureInfo:v5];
    v6 = self;
    goto LABEL_31;
  }

  if ([(SCNMaterialAttachment *)v5 conformsToProtocol:&unk_282E56760])
  {

    [(SCNMaterialProperty *)self setMtlTexture:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      [(SCNMaterialProperty *)self setUIView:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        [(SCNMaterialProperty *)self setUIWindow:v5];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          [(SCNMaterialProperty *)self setFloatValue:v5];
        }

        else
        {
          NSClassFromString(&cfstr_Avplayer.isa);
          if (objc_opt_isKindOfClass())
          {

            [(SCNMaterialProperty *)self setAvPlayer:v5];
          }

          else
          {
            NSClassFromString(&cfstr_Avcapturedevic.isa);
            if (objc_opt_isKindOfClass())
            {

              [(SCNMaterialProperty *)self setCaptureDevice:v5];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {

                [(SCNMaterialProperty *)self setCaptureDeviceOutputConsumerSource:v5];
              }

              else if ([(SCNMaterialAttachment *)v5 conformsToProtocol:&unk_282E57D88])
              {

                [(SCNMaterialProperty *)self setTextureProvider:v5];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
LABEL_10:

                  [(SCNMaterialProperty *)self setImage:v5];
                  return;
                }

                [(SCNMaterialProperty *)self setPrecomputedLightingEnvironment:v5];
              }
            }
          }
        }
      }
    }
  }
}

+ (id)dvt_supportedTypesForPropertyContents
{
  v3[14] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = NSClassFromString(&cfstr_Skscene.isa);
  v3[7] = NSClassFromString(&cfstr_Glktextureinfo.isa);
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = NSClassFromString(&cfstr_Avplayer.isa);
  v3[11] = NSClassFromString(&cfstr_Avcapturedevic.isa);
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:14];
}

- (id)contents
{
  if (*(self + 8))
  {
    v6 = [(SCNMaterialProperty *)self sceneRef];
    v7 = v6;
    if (v6)
    {
      C3DSceneLock(v6);
    }

    v8 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0];
    v9 = v8;
    if (v8)
    {
      ImageProxy = C3DEffectSlotGetImageProxy(v8);
      if (ImageProxy)
      {
        Source = C3DImageProxyGetSource(ImageProxy);
      }

      else
      {
        Image = C3DEffectSlotGetImage(v9);
        if (Image)
        {
          Source = [SCNMaterialProperty copyImageFromC3DImage:Image];
        }

        else
        {
          ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(v9);
          if (!ColorIfApplicable)
          {
            v9 = 0;
            if (!v7)
            {
              return v9;
            }

            goto LABEL_20;
          }

          Source = C3DColor4ToRGBCFColor(ColorIfApplicable);
        }
      }

      v9 = Source;
    }

    if (!v7)
    {
      return v9;
    }

LABEL_20:
    C3DSceneUnlock(v7);
    return v9;
  }

  contents = self->_contents;
  if ((!contents || self->_contentType != 1) && self->_c3dImage)
  {
    [(SCNMaterialProperty *)self image];
    contents = self->_contents;
  }

  v4 = contents;

  return v4;
}

- (void)_setImagePath:(id)a3 withResolvedPath:(id)a4
{
  [(SCNMaterialProperty *)self _updateC3DImageWithContents:a4];
  [(SCNMaterialProperty *)self _clearContents];
  self->_contents = a3;
  self->_contentType = 1;
  runtimeResolvedPath = self->_runtimeResolvedPath;
  if (runtimeResolvedPath != a4)
  {

    self->_runtimeResolvedPath = a4;
  }
}

- (CGFloat)maxAnisotropy
{
  if (*(self + 8))
  {
    v4 = [(SCNMaterialProperty *)self sceneRef];
    v5 = v4;
    if (v4)
    {
      C3DSceneLock(v4);
    }

    Anisotropy = C3DTextureSamplerGetAnisotropy([(SCNMaterialProperty *)self textureSampler]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    return self->_maxAnisotropy;
  }

  return Anisotropy;
}

- (void)setMaxAnisotropy:(CGFloat)maxAnisotropy
{
  v3 = maxAnisotropy;
  if (self->_maxAnisotropy != v3)
  {
    self->_maxAnisotropy = v3;
    v5 = [(SCNMaterialProperty *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SCNMaterialProperty_setMaxAnisotropy___block_invoke;
    v6[3] = &unk_2782FF898;
    v6[4] = self;
    v7 = v3;
    [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
  }
}

int8x8_t __40__SCNMaterialProperty_setMaxAnisotropy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textureSampler];
  if (v2)
  {
    v4 = *(a1 + 40);

    return C3DTextureSamplerSetAnisotropy(v2, v4);
  }

  return result;
}

- (void)setProceduralContents:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 6;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__SCNMaterialProperty_setProceduralContents___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)proceduralContents
{
  if (self->_contentType == 6)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setMtlTexture:(id)a3
{
  if (self->_contents != a3)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = a3;
    self->_contentType = 5;
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SCNMaterialProperty_setMtlTexture___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = a3;
    [SCNTransaction postCommandWithContext:v7 object:self applyBlock:v8];
  }
}

- (id)mtlTexture
{
  if (self->_contentType == 5)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setContentsTransform:(SCNMatrix4 *)contentsTransform
{
  contentTransform = self->_contentTransform;
  if (!contentTransform || (v6 = *&contentsTransform->m21, *&a.m11 = *&contentsTransform->m11, *&a.m21 = v6, v7 = *&contentsTransform->m41, *&a.m31 = *&contentsTransform->m31, *&a.m41 = v7, v8 = *&contentTransform->m11, v9 = *&contentTransform->m21, v10 = *&contentTransform->m41, *&b.m31 = *&contentTransform->m31, *&b.m41 = v10, *&b.m11 = v8, *&b.m21 = v9, !SCNMatrix4EqualToMatrix4(&a, &b)))
  {
    if (*(self + 8))
    {
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCNMaterialProperty setContentsTransform:];
      }
    }

    else
    {
      v11 = *&contentsTransform->m21;
      *&a.m11 = *&contentsTransform->m11;
      *&a.m21 = v11;
      v12 = *&contentsTransform->m41;
      *&a.m31 = *&contentsTransform->m31;
      *&a.m41 = v12;
      if (SCNMatrix4IsIdentity(&a))
      {
        v13 = self->_contentTransform;
        if (!v13)
        {
          return;
        }

        free(v13);
        self->_contentTransform = 0;
      }

      else
      {
        [(SCNMaterialProperty *)self __allocateContentTransformIfNeeded];
        v15 = self->_contentTransform;
        v16 = *&contentsTransform->m11;
        v17 = *&contentsTransform->m21;
        v18 = *&contentsTransform->m41;
        *&v15->m31 = *&contentsTransform->m31;
        *&v15->m41 = v18;
        *&v15->m11 = v16;
        *&v15->m21 = v17;
      }

      memset(&a, 0, sizeof(a));
      v19 = [(SCNMaterialProperty *)self sceneRef:C3DMatrix4x4FromSCNMatrix4(&a];
      v20 = [(SCNMaterialProperty *)self _animationPathForKey:@"contentsTransform"];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__SCNMaterialProperty_setContentsTransform___block_invoke;
      v21[3] = &unk_2782FEFE0;
      v23 = self;
      v22 = a;
      [SCNTransaction postCommandWithContext:v19 object:self keyPath:v20 applyBlock:v21];
    }
  }
}

uint64_t __44__SCNMaterialProperty_setContentsTransform___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v2;
  v3 = *(a1 + 80);
  v5[2] = *(a1 + 64);
  v5[3] = v3;
  return [v1 _updateMaterialPropertyTransform:v5];
}

- (SCNMatrix4)contentsTransform
{
  v3 = self;
  *retstr = SCNMatrix4Identity;
  if ((LOBYTE(self->m13) & 1) == 0)
  {
    v5 = *&self[1].m43;
    if (v5)
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      *&retstr->m31 = v5[2];
      *&retstr->m41 = v8;
      *&retstr->m11 = v6;
      *&retstr->m21 = v7;
    }

    return self;
  }

  v9 = [(SCNMatrix4 *)self sceneRef];
  v10 = v9;
  if (v9)
  {
    C3DSceneLock(v9);
  }

  self = [(SCNMatrix4 *)v3 effectSlot];
  if (self)
  {
    self = C3DEffectSlotGetImageTransform(self);
    if (!self)
    {
      *retstr = SCNMatrix4Identity;
      if (!v10)
      {
        return self;
      }

      goto LABEL_10;
    }

    C3DMatrix4x4ToSCNMatrix4(self, retstr);
  }

  if (!v10)
  {
    return self;
  }

LABEL_10:

  return C3DSceneUnlock(v10);
}

- (id)propertyName
{
  [(SCNMaterialProperty *)self propertyType];
  result = @"diffuse";
  switch(@"diffuse")
  {
    case 0u:
      result = @"emission";
      break;
    case 1u:
      result = @"ambient";
      break;
    case 2u:
      return result;
    case 3u:
      result = @"specular";
      break;
    case 4u:
      result = @"reflective";
      break;
    case 5u:
      result = @"transparent";
      break;
    case 6u:
      result = @"multiply";
      break;
    case 7u:
      result = @"normal";
      break;
    case 8u:
      result = @"ambientOcclusion";
      break;
    case 9u:
      result = @"selfIllumination";
      break;
    case 0xAu:
      result = @"metalness";
      break;
    case 0xBu:
      result = @"roughness";
      break;
    case 0xCu:
      result = @"clearCoat";
      break;
    case 0xDu:
      result = @"clearCoatRoughness";
      break;
    case 0xEu:
      result = @"clearCoatNormal";
      break;
    case 0xFu:
      result = @"displacement";
      break;
    case 0x16u:
      result = @"gobo";
      break;
    case 0x17u:
      result = @"ies";
      break;
    case 0x18u:
      result = @"background";
      break;
    case 0x19u:
      [(SCNMaterialProperty *)self parent];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = @"probeEnvironment";
      }

      else
      {
        result = @"environment";
      }

      break;
    case 0x1Au:
      result = @"colorGrading";
      break;
    case 0x1Bu:
      result = self->_customSlotName;
      break;
    default:
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(SCNMaterialProperty *)self propertyName];
      }

      result = 0;
      break;
  }

  return result;
}

- (NSString)description
{
  v3 = [(SCNMaterialProperty *)self contents];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<data %p>", v3];
  }

  return [v4 stringWithFormat:@"<%@: %p | contents=%@>", v6, self, v3];
}

+ (__C3DImage)_createC3DImageFromImage:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:a3];
    if ([v4 scheme])
    {
      v5 = v4;
LABEL_6:

      return C3DImageCreateWithURL(v5);
    }

    return C3DImageCreateWithName(a3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = a3;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return C3DImageCreateWithData(a3);
    }

    else
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CGImageGetTypeID())
      {

        return C3DImageCreateWithCGImage(a3);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return C3DImageCreateWithClientImage(a3);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return C3DImageCreateWithMDLTexture(a3);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

+ (__C3DImage)copyC3DImageFromImage:(id)a3 textureOptions:(int)a4 wasCached:(BOOL *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = *&a4;
  v8 = CFGetTypeID(a3);
  if (v8 != C3DImageGetTypeID())
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v12 = isKindOfClass ^ 1;
    if (objc_opt_isKindOfClass())
    {
      if ([a3 count] != 6)
      {
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[SCNMaterialProperty copyC3DImageFromImage:textureOptions:wasCached:];
        }

        IfNeededForSource = 0;
        if (!a5)
        {
          goto LABEL_35;
        }

        v20 = 0;
        goto LABEL_34;
      }

      v13 = 0;
      memset(v31, 0, 48);
      v21 = 0x8400102uLL;
      do
      {
        v14 = [a1 copyC3DImageFromImage:objc_msgSend(a3 textureOptions:"objectAtIndexedSubscript:" wasCached:{v13, v21), v6, 0}];
        if (!v14)
        {
          v15 = scn_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [a3 objectAtIndexedSubscript:v13];
            *buf = v21;
            v30 = v16;
            _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: copyC3DImageFromImage: invalid sub-image %@\n", buf, 0xCu);
          }
        }

        v31[v13++] = v14;
      }

      while (v13 != 6);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __70__SCNMaterialProperty_copyC3DImageFromImage_textureOptions_wasCached___block_invoke;
      v24[3] = &unk_2782FF910;
      v24[4] = &v25;
      v24[5] = v31;
      IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(a3, v12 & 1, v24);
      for (i = 0; i != 6; ++i)
      {
        v18 = v31[i];
        if (v18)
        {
          CFRelease(v18);
          v31[i] = 0;
        }
      }

      if (!IfNeededForSource)
      {
LABEL_32:
        if (!a5)
        {
LABEL_35:
          _Block_object_dispose(&v25, 8);
          return IfNeededForSource;
        }

        v20 = (v26[3] & 1) == 0;
LABEL_34:
        *a5 = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__SCNMaterialProperty_copyC3DImageFromImage_textureOptions_wasCached___block_invoke_2;
      v23[3] = &unk_2782FF938;
      v23[4] = a1;
      v23[5] = a3;
      v23[6] = &v25;
      IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(a3, (isKindOfClass ^ 1) & 1, v23);
      if (!IfNeededForSource)
      {
        goto LABEL_32;
      }
    }

    if (*(v26 + 24) == 1)
    {
      if ((v6 & 2) != 0)
      {
        C3DWasLinkedBeforeMajorOSYear2016();
        C3DImageChangeImageTypeToCubeMapIfSuitable(IfNeededForSource);
      }

      if ((v6 & 8) != 0)
      {
        C3DImageChangeImageTypeTo3DIfSuitable(IfNeededForSource);
      }
    }

    goto LABEL_32;
  }

  if (a5)
  {
    *a5 = 1;
  }

  return a3;
}

uint64_t __70__SCNMaterialProperty_copyC3DImageFromImage_textureOptions_wasCached___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(*(v1 + 8) + 24) = 1;
  return C3DImageCreateVerticalStripCubemapWithFaceImages(v2);
}

+ (id)_copyImageFromC3DImage:(__C3DImage *)a3
{
  v3 = C3DImageCopyCGImage(a3);
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

+ (id)copyImageFromC3DImage:(__C3DImage *)a3
{
  if (C3DImageHasTextureRawData(a3))
  {
    return 0;
  }

  SharedInstance = C3DResourceCacheGetSharedInstance();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SCNMaterialProperty_copyImageFromC3DImage___block_invoke;
  v9[3] = &unk_2782FF960;
  v9[4] = a1;
  v9[5] = a3;
  v5 = C3DResourceCacheCopySourceForResource(SharedInstance, a3, 1, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:{objc_msgSend(v5, "path")}];
    CFRelease(v5);
    return v7;
  }

  return v5;
}

- (void)parentWillDie:(id)a3
{
  if (self->_parent != a3)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(SCNMaterialProperty *)v4 parentWillDie:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  self->_parent = 0;
}

- (__C3DEffectCommonProfile)commonProfile
{
  if ((*(self + 8) & 2) != 0)
  {
    return [self->_parent commonProfile];
  }

  else
  {
    return 0;
  }
}

- (__C3DTextureSampler)textureSampler
{
  result = [(SCNMaterialProperty *)self effectSlot];
  if (result)
  {

    return C3DEffectSlotGetTextureSampler(result);
  }

  return result;
}

- (__C3DAnimationManager)animationManager
{
  result = [(SCNMaterialProperty *)self sceneRef];
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
    v8 = [(SCNMaterialProperty *)self __CFObject];
    if ((CFTypeIsC3DEntity(v8) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
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
    v8 = [(SCNMaterialProperty *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__SCNMaterialProperty_addAnimationPlayer_forKey___block_invoke;
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
      [SCNParticleSystem addAnimationPlayer:forKey:];
    }
  }
}

void __49__SCNMaterialProperty_addAnimationPlayer_forKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareWithTarget:*(a1 + 40) implicitDuration:?];
  if ((SCNAddAnimation(*(a1 + 32), *(a1 + 40), *(a1 + 48)) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 32));
    [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 48)];
    v2 = (*(a1 + 40) + 32);

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
    [(SCNMaterialProperty *)self addAnimationPlayer:v7 forKey:v5];

    [(SCNAnimationPlayer *)v7 play];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNParticleSystem addAnimation:forKey:];
    }
  }
}

- (void)removeAllAnimations
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v3 = [(SCNMaterialProperty *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SCNMaterialProperty_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)a3
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SCNMaterialProperty_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    v5 = [(SCNMaterialProperty *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__SCNMaterialProperty_removeAnimationForKey___block_invoke;
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
    v7 = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__SCNMaterialProperty_removeAnimationForKey_blendOutDuration___block_invoke;
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
  v3 = [(SCNMaterialProperty *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v5 = [(SCNMaterialProperty *)self __CFObject];
  if (v5)
  {
    v6 = v5;
    if ((CFTypeIsC3DEntity(v5) & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v7 _syncObjCAnimations:v8];
      }
    }

    Animations = C3DEntityGetAnimations(v6);
    if (Animations)
    {
      v16 = Animations;
      os_unfair_lock_lock(&self->_animationsLock);
      C3DOrderedDictionaryApplyFunction(v16, SCNConvertC3DAnimationDictionaryFunc, self->_animations);
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
  v3 = [(SCNMaterialProperty *)self _scnAnimationForKey:a3];
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
        [(SCNMaterialProperty *)self addAnimationPlayer:v11 forKey:v10];
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
  v9 = [(SCNMaterialProperty *)self __CFObject];
  if (v9)
  {
    v10 = v9;
    v11 = [(SCNMaterialProperty *)self animationManager];
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
  v5 = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNMaterialProperty_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)a3
{
  v5 = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNMaterialProperty_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

- (void)setSpeed:(double)a3 forAnimationKey:(id)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", a4];
  v8 = [(SCNMaterialProperty *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SCNMaterialProperty_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = a4;
  *&v9[6] = a3;
  [SCNTransaction postCommandWithContext:v8 object:self keyPath:v7 applyBlock:v9];
}

void __48__SCNMaterialProperty_setSpeed_forAnimationKey___block_invoke(uint64_t a1)
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
  v5 = [(SCNMaterialProperty *)self sceneRef];
  v6 = v5;
  if (v5)
  {
    C3DSceneLock(v5);
  }

  v7 = [(SCNMaterialProperty *)self __CFObject];
  if (v7)
  {
    v8 = v7;
    v9 = [(SCNMaterialProperty *)self animationManager];
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

    v15 = [(SCNMaterialProperty *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SCNMaterialProperty_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = a4;
    v16[6] = a3;
    v16[7] = a5;
    v16[8] = a6;
    [SCNTransaction postCommandWithContext:v15 object:self applyBlock:v16];
  }
}

void __71__SCNMaterialProperty_bindAnimatablePath_toObject_withKeyPath_options___block_invoke(uint64_t a1)
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

  v5 = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNMaterialProperty_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
}

void __44__SCNMaterialProperty_unbindAnimatablePath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __CFObject];
  v3 = *(a1 + 40);

  C3DEntityRemoveBindingWithKeyPath(v2, v3);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v3 = [(SCNMaterialProperty *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCNMaterialProperty_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:v3 object:self applyBlock:v4];
}

void __40__SCNMaterialProperty_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)_syncObjCModel
{
  v3 = [(SCNMaterialProperty *)self sceneRef];
  v4 = v3;
  if (v3)
  {
    C3DSceneLock(v3);
  }

  v5 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0];
  if (v5)
  {
    v6 = v5;
    TextureSampler = C3DEffectSlotGetTextureSampler(v5);
    if (TextureSampler || (TextureSampler = C3DTextureSamplerGetDefault()) != 0)
    {
      v8 = TextureSampler;
      self->_minificationFilter = C3DTextureSamplerGetMinFilter(TextureSampler);
      self->_magnificationFilter = C3DTextureSamplerGetMagFilter(v8);
      self->_mipFilter = C3DTextureSamplerGetMipFilter(v8);
      self->_wrapS = C3DTextureSamplerGetWrapModeS(v8);
      self->_wrapT = C3DTextureSamplerGetWrapModeT(v8);
      self->_borderColor = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DTextureSamplerGetBorderColor(v8)];
      self->_maxAnisotropy = C3DTextureSamplerGetAnisotropy(v8);
    }

    self->_mappingChannel = [(SCNMaterialProperty *)self _presentationMappingChannel];
    self->_textureComponents = C3DEffectSlotGetTextureComponents(v6);
    self->_intensity = C3DEffectSlotGetIntensity(v6);
    if (C3DEffectSlotGetSRGB(v6))
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v9;
    if (C3DKeyframeControllerHasInterpolationModesPerKey(v6))
    {
      [(SCNMaterialProperty *)self __allocateContentTransformIfNeeded];
      ImageTransform = C3DEffectSlotGetImageTransform(v6);
      C3DMatrix4x4ToSCNMatrix4(ImageTransform, &self->_contentTransform->m11);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
      if (!v4)
      {
        return;
      }
    }

    goto LABEL_20;
  }

  *&self->_minificationFilter = 514;
  self->_mipFilter = C3DWasLinkedBeforeMajorOSYear2016() ^ 1;
  *&self->_wrapS = 257;
  __asm { FMOV            V0.2S, #1.0 }

  *&self->_intensity = _D0;
  propertyType = self->_propertyType;
  if (propertyType == 15)
  {
    v17 = 8;
  }

  else
  {
    v17 = 15;
  }

  self->_textureComponents = v17;
  if (C3DEffectSlotDefaultSRGBForPropertyType(propertyType))
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFB | v18;
  if (v4)
  {
LABEL_20:

    C3DSceneUnlock(v4);
  }
}

- (void)copyPropertiesFrom:(id)a3
{
  if (*(a3 + 16) && ([a3 contents], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    -[SCNMaterialProperty _setImagePath:withResolvedPath:](self, "_setImagePath:withResolvedPath:", [a3 contents], *(a3 + 16));
  }

  else
  {
    -[SCNMaterialProperty setContents:](self, "setContents:", [a3 contents]);
  }

  -[SCNMaterialProperty setMinificationFilter:](self, "setMinificationFilter:", [a3 minificationFilter]);
  -[SCNMaterialProperty setMagnificationFilter:](self, "setMagnificationFilter:", [a3 magnificationFilter]);
  -[SCNMaterialProperty setMipFilter:](self, "setMipFilter:", [a3 mipFilter]);
  [a3 contentsTransform];
  v5[0] = v5[4];
  v5[1] = v5[5];
  v5[2] = v5[6];
  v5[3] = v5[7];
  [(SCNMaterialProperty *)self setContentsTransform:v5];
  -[SCNMaterialProperty setWrapS:](self, "setWrapS:", [a3 wrapS]);
  -[SCNMaterialProperty setWrapT:](self, "setWrapT:", [a3 wrapT]);
  [a3 intensity];
  [(SCNMaterialProperty *)self setIntensity:?];
  -[SCNMaterialProperty setSRGBTexture:](self, "setSRGBTexture:", [a3 sRGBTexture]);
  -[SCNMaterialProperty setBorderColor:](self, "setBorderColor:", [a3 borderColor]);
  -[SCNMaterialProperty setMappingChannel:](self, "setMappingChannel:", [a3 mappingChannel]);
  -[SCNMaterialProperty setTextureComponents:](self, "setTextureComponents:", [a3 textureComponents]);
  [(SCNMaterialProperty *)self _copyAnimationsFrom:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() materialPropertyWithContents:0];
  v5 = v4;
  [v4 copyPropertiesFrom:self];
  return v4;
}

- (id)presentationMaterialProperty
{
  if ((*(self + 8) & 1) == 0)
  {
    v2 = [[SCNMaterialProperty alloc] initPresentationMaterialPropertyWithModelProperty:self];

    return v2;
  }

  return self;
}

- (void)_updateMaterialBorderColor:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:a3 != 0];
  if (v4)
  {
    TextureSampler = C3DEffectSlotGetTextureSampler(v4);
    if (TextureSampler)
    {
      v6 = TextureSampler;
      v8 = C3DColor4FromRGBCFColor(a3, 0);

      C3DTextureSamplerSetBorderColor(v6, v8, v7);
    }
  }
}

- (void)_updateMaterialFilters
{
  v3 = [(SCNMaterialProperty *)self effectSlot];
  if (v3)
  {
    v4 = v3;
    TextureSampler = C3DEffectSlotGetTextureSampler(v3);
    minificationFilter = self->_minificationFilter;
    magnificationFilter = self->_magnificationFilter;
    mipFilter = self->_mipFilter;
    wrapS = self->_wrapS;
    wrapT = self->_wrapT;
    if (TextureSampler)
    {
      WrapModeP = C3DTextureSamplerGetWrapModeP(TextureSampler);
    }

    else
    {
      WrapModeP = 2;
    }

    v12 = [(SCNMaterialProperty *)self borderColor4];
    v14 = C3DTextureSamplerCreateEx(minificationFilter, magnificationFilter, mipFilter, wrapS, wrapT, WrapModeP, v12, v13, self->_maxAnisotropy);
    C3DEffectSlotSetTextureSampler(v4, v14);

    CFRelease(v14);
  }
}

- (void)_updateMaterialPropertyTransform:(C3DMatrix4x4 *)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {

    C3DEffectSlotSetImageTransform(v4, a3);
  }
}

- (void)_updateMaterialAttachment:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SCNMaterialProperty *)v5 _updateMaterialAttachment:v6, v7, v8, v9, v10, v11, v12];
      }
    }

    v13 = [a3 glID];
    v14 = [a3 target];
    [a3 size];
    v17 = 0;
    if (v13 && v14 && *&v15 > 0.0)
    {
      v23 = v15;
      v24 = v16;
      v17 = C3DTextureCreate();
      C3DTextureSetID(v17, v13, v14);
      *&v18.f64[0] = v23;
      v18.f64[1] = v24;
      C3DTextureSetSize(v17, COERCE_DOUBLE(vcvt_f32_f64(v18)));
      [objc_msgSend(objc_msgSend(a3 "options")];
      LODWORD(v24) = v19;
      [objc_msgSend(objc_msgSend(a3 "options")];
      C3DTextureSetOffset(v17, COERCE_DOUBLE(__PAIR64__(v20, LODWORD(v24))));
      C3DTextureSetHasAlpha(v17, 1);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [(SCNMaterialProperty *)self effectSlot];
  if (v21)
  {
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    C3DEffectSlotSetTexture(v21, v22);
  }
}

- (void)_layerDidChange:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(SCNMaterialProperty *)self sceneRef];

  [v4 postNotificationName:@"kC3DSceneDidUpdateNotification" object:v5];
}

- (void)_skSceneDidChange:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(SCNMaterialProperty *)self sceneRef];

  [v4 postNotificationName:@"kC3DSceneDidUpdateNotification" object:v5];
}

- (void)_updateMaterialSKScene:(id)a3
{
  v5 = [(SCNMaterialProperty *)self effectSlot];
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      v7 = [MEMORY[0x277CCAE60] valueWithPointer:a3];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__SCNMaterialProperty__updateMaterialSKScene___block_invoke;
      v10[3] = &unk_2782FF8E8;
      v10[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(v7, v10);
      C3DEffectSlotSetImageProxy(v6, IfNeededForSource);
    }

    else
    {
      C3DEffectSlotSetImageProxy(v5, 0);
      v9 = [MEMORY[0x277CCAB98] defaultCenter];

      [v9 removeObserver:self name:@"kC3DSceneDidUpdateNotification" object:0];
    }
  }
}

uint64_t __46__SCNMaterialProperty__updateMaterialSKScene___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(0);
  v3 = objc_alloc_init(SCNSpriteKitSource);
  [(SCNSpriteKitSource *)v3 setScene:*(a1 + 32)];
  [(SCNImageSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updateMaterialMTLTexture:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    C3DEffectSlotSetMTLTexture(v4, v5);
  }
}

- (void)_updateMaterialSKTexture:(id)a3
{
  v5 = [(SCNMaterialProperty *)self effectSlot];
  if (!v5)
  {
    return;
  }

  if (a3)
  {
    if (C3DMetalIsUsed())
    {
      v6 = [a3 metalTexture];
      if (v6)
      {
        v7 = v6;
        v8 = [(SCNMaterialProperty *)self effectSlot];
        v9 = [(SCNMaterialProperty *)self commonProfile];
        if (v9)
        {
          C3DEffectCommonProfileSetMTLTexture(v9, self->_propertyType, v7);
        }

        else
        {
          C3DEffectSlotSetMTLTexture(v8, v7);
        }

        if ([a3 hasAlpha])
        {
          v14 = 0;
        }

        else
        {
          v14 = 256;
        }

        *(v8 + 24) = *(v8 + 24) & 0xFEFF | v14;
      }

      goto LABEL_25;
    }

    [NSClassFromString(&cfstr_Skscnrenderer.isa) setPrefersOpenGL:1];
    v10 = [a3 glTextureId];
    if (v10)
    {
      v11 = v10;
      v12 = C3DTextureCreate();
      C3DTextureSetID(v12, v11, 3553);
      if ([a3 hasAlpha])
      {
        C3DTextureSetHasAlpha(v12, 1);
      }

      C3DTextureSetFormat(v12, [a3 textureTarget]);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(SCNMaterialProperty *)self effectSlot];
    if ([(SCNMaterialProperty *)self commonProfile])
    {
      C3DEffectCommonProfileSetTexture([(SCNMaterialProperty *)self commonProfile], self->_propertyType, v12);
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      C3DEffectSlotSetTexture(v13, v12);
      if (!v12)
      {
LABEL_25:
        [a3 textureRect];
        memset(&v21, 0, sizeof(v21));
        *&v15 = v15;
        *&v16 = v16;
        *&v17 = v17;
        *&v18 = v18;
        *&a.m14 = 0;
        *&a.m12 = 0;
        a.m11 = *&v17;
        a.m22 = *&v18;
        *&a.m23 = 0;
        *&a.m31 = 0;
        *&a.m42 = 0;
        *&a.m34 = 0;
        a.m33 = 1.0;
        a.m44 = 1.0;
        *&b.m14 = 0;
        *&b.m12 = 0;
        b.m11 = 1.0;
        b.m22 = 1.0;
        *&b.m23 = 0;
        *&b.m31 = 0;
        *&b.m33 = 1065353216;
        b.m41 = *&v15;
        b.m42 = *&v16;
        *&b.m43 = 0x3F80000000000000;
        SCNMatrix4Mult(&v21, &a, &b);
        *&b.m14 = 0;
        *&b.m12 = 0;
        b.m11 = 1.0;
        b.m22 = 1.0;
        *&b.m23 = 0;
        *&b.m31 = 0;
        *&b.m33 = xmmword_21C2A2410;
        *&b.m43 = 0x3F80000000000000;
        v23 = v21;
        SCNMatrix4Mult(&a, &b, &v23);
        v21 = a;
        if ([a3 isRotated])
        {
          memset(&a, 0, sizeof(a));
          SCNMatrix4MakeRotation(&a, -1.5708, 0.0, 0.0, 1.0);
          v23 = a;
          v22 = v21;
          SCNMatrix4Mult(&b, &v23, &v22);
          v21 = b;
        }

        memset(&b.m22, 0, 40);
        *&b.m12 = 0u;
        b.m11 = 1.0;
        b.m22 = -1.0;
        b.m33 = 1.0;
        b.m44 = 1.0;
        v23 = v21;
        SCNMatrix4Mult(&a, &b, &v23);
        v21 = a;
        *&b.m14 = 0;
        *&b.m12 = 0;
        b.m11 = 1.0;
        b.m22 = 1.0;
        *&b.m23 = 0;
        *&b.m31 = 0;
        *&b.m33 = xmmword_21C2A2420;
        *&b.m43 = 0x3F80000000000000;
        v23 = a;
        SCNMatrix4Mult(&a, &b, &v23);
        v21 = a;
        v19 = +[SCNTransaction immediateMode];
        if (!v19)
        {
          [SCNTransaction setImmediateMode:1];
        }

        a = v21;
        [(SCNMaterialProperty *)self setContentsTransform:&a];
        [(SCNMaterialProperty *)self setWrapS:1];
        [(SCNMaterialProperty *)self setWrapT:1];
        -[SCNMaterialProperty setMinificationFilter:](self, "setMinificationFilter:", 2 * ([a3 filteringMode] == 1));
        -[SCNMaterialProperty setMagnificationFilter:](self, "setMagnificationFilter:", 2 * ([a3 filteringMode] == 1));
        if ([a3 usesMipmaps])
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        [(SCNMaterialProperty *)self setMipFilter:v20];
        if (!v19)
        {
          [SCNTransaction setImmediateMode:0];
        }

        return;
      }
    }

    CFRelease(v12);
    goto LABEL_25;
  }

  C3DEffectSlotSetTexture(v5, 0);
}

- (void)_updateMaterialLayer:(id)a3
{
  v5 = [(SCNMaterialProperty *)self effectSlot];
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__SCNMaterialProperty__updateMaterialLayer___block_invoke;
      v9[3] = &unk_2782FF8E8;
      v9[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v9);
      C3DEffectSlotSetImageProxy(v6, IfNeededForSource);
    }

    else
    {
      C3DEffectSlotSetImageProxy(v5, 0);
      v8 = [MEMORY[0x277CCAB98] defaultCenter];

      [v8 removeObserver:self name:@"SCNLayerTreeDidChange" object:0];
    }
  }
}

uint64_t __44__SCNMaterialProperty__updateMaterialLayer___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(0);
  v3 = objc_alloc_init(SCNCoreAnimationSource);
  [(SCNCoreAnimationSource *)v3 setLayer:*(a1 + 32)];
  [(SCNImageSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updateMaterialAVPlayer:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__SCNMaterialProperty__updateMaterialAVPlayer___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(v4, 0);
    }
  }
}

uint64_t __47__SCNMaterialProperty__updateMaterialAVPlayer___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(1);
  v3 = objc_alloc_init(SCNAVPlayerSource);
  [(SCNAVPlayerSource *)v3 setPlayer:*(a1 + 32)];
  [(SCNAVPlayerSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updateMaterialCaptureDevice:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __52__SCNMaterialProperty__updateMaterialCaptureDevice___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(v4, 0);
    }
  }
}

uint64_t __52__SCNMaterialProperty__updateMaterialCaptureDevice___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(2);
  v3 = objc_alloc_init(SCNCaptureDeviceSource);
  [(SCNCaptureDeviceSource *)v3 setCaptureDevice:*(a1 + 32)];
  [(SCNCaptureDeviceSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __72__SCNMaterialProperty__updateMaterialCaptureDeviceOutputConsumerSource___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(v4, 0);
    }
  }
}

uint64_t __72__SCNMaterialProperty__updateMaterialCaptureDeviceOutputConsumerSource___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(3);
  [*(a1 + 32) connectToProxy:v2];
  return v2;
}

- (void)_updateMaterialTextureProvider:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {
    v5 = v4;
    if (a3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __54__SCNMaterialProperty__updateMaterialTextureProvider___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = a3;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(v4, 0);
    }
  }
}

uint64_t __54__SCNMaterialProperty__updateMaterialTextureProvider___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(0);
  v3 = objc_alloc_init(SCNMaterialPropertyTextureProviderSource);
  [(SCNMaterialPropertyTextureProviderSource *)v3 setTextureProvider:*(a1 + 32)];
  [(SCNMaterialPropertyTextureProviderSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updatePrecomputedLightingEnvironment:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  if (v4)
  {

    C3DEffectSlotSetPrecomputedLightingEnvironment(v4, a3);
  }
}

- (void)_updateMaterialProceduralContents:(id)a3
{
  v4 = [(SCNMaterialProperty *)self effectSlot];
  v5 = v4;
  if (a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SCNMaterialProperty__updateMaterialProceduralContents___block_invoke;
    v7[3] = &unk_2782FF8E8;
    v7[4] = a3;
    IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(a3, v7);
    C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
  }

  else
  {

    C3DEffectSlotSetImageProxy(v4, 0);
  }
}

uint64_t __57__SCNMaterialProperty__updateMaterialProceduralContents___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(0);
  v3 = objc_alloc_init(SCNDelegateSource);
  [(SCNDelegateSource *)v3 setDelegate:*(a1 + 32)];
  [(SCNImageSource *)v3 connectToProxy:v2];

  return v2;
}

- (void)_updateMaterialImage:(id)a3
{
  [(SCNMaterialProperty *)self _setC3DImageRef:?];
  v5 = [(SCNMaterialProperty *)self effectSlot];
  if (v5)
  {
    v6 = v5;
    C3DEffectSlotSetImage(v5, a3);
    C3DEffectSlotSetImageProxy(v6, 0);
    C3DEffectSlotSetTexture(v6, 0);
    C3DEffectSlotSetMTLTexture(v6, 0);
    if (!a3)
    {

      C3DEffectSlotSetHasNoContents(v6);
    }
  }
}

- (void)_updateMaterialNumber:(id)a3
{
  if (a3)
  {
    v5 = [(SCNMaterialProperty *)self effectSlot];
    if (!v5)
    {
      return;
    }

    v6 = v5;
    C3DEffectSlotSetImage(v5, 0);
    C3DEffectSlotSetImageProxy(v6, 0);
    C3DEffectSlotSetTexture(v6, 0);
    goto LABEL_7;
  }

  v7 = scn_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __RemoveVRAMResourceFromDic_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v6 = [(SCNMaterialProperty *)self effectSlot];
  if (v6)
  {
LABEL_7:
    [a3 floatValue];
    v22 = v15;
    if (C3DEffectSlotGetEffectProperty(v6) == 5)
    {
      v16 = vdupq_lane_s32(v22, 0);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      _Q0.i32[0] = v22.i32[0];
      v16 = vzip1q_s32(_Q0, _Q0);
      v16.i32[2] = v22.i32[0];
    }

    v23 = v16;
    C3DEffectSlotSetColor(v6, v23.i32);
  }
}

- (void)_updateMaterialColor:(id)a3
{
  if (!a3)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DCGColorGetComponentsInColorSpace_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = [(SCNMaterialProperty *)self effectSlot];
  if (v13)
  {
    v14 = v13;
    EffectProperty = C3DEffectSlotGetEffectProperty(v13);
    IsRawFloatValue = C3DEffectPropertyGetSemanticForColorIsRawFloatValue(EffectProperty);
    v18[0] = C3DColor4FromRGBCFColor(a3, IsRawFloatValue);
    v18[1] = v17;
    if (a3)
    {
      C3DEffectSlotSetImage(v14, 0);
      C3DEffectSlotSetImageProxy(v14, 0);
      C3DEffectSlotSetTexture(v14, 0);
    }

    C3DEffectSlotSetColor(v14, v18);
  }
}

+ (id)captureDeviceOutputConsumerWithOptions:(id)a3
{
  v3 = [[SCNCaptureDeviceOutputConsumerSource alloc] initWithOptions:a3];

  return v3;
}

- (void)_customEncodingOfSCNMaterialProperty:(id)a3
{
  contentTransform = self->_contentTransform;
  if (contentTransform)
  {
    v6 = *&contentTransform->m11;
    v7 = *&contentTransform->m21;
    v8 = *&contentTransform->m41;
    v25[2] = *&contentTransform->m31;
    v25[3] = v8;
    v25[0] = v6;
    v25[1] = v7;
    SCNEncodeSCNMatrix4(a3, @"contentsTransform", v25);
  }

  p_contents = &self->_contents;
  if (self->_contents)
  {
    if (self->_contentType == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SCNEncodeImageArrayForKey(a3, *p_contents, @"imageArray");
        goto LABEL_15;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(objc_msgSend(a3 "options")] || (runtimeResolvedPath = self->_runtimeResolvedPath) == 0)
    {
      runtimeResolvedPath = *p_contents;
    }

    goto LABEL_13;
  }

  runtimeResolvedPath = *p_contents;
  if (!*p_contents)
  {
    c3dImage = self->_c3dImage;
    if (!c3dImage)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  contentType = self->_contentType;
  if (contentType == 1)
  {
LABEL_13:
    v11 = a3;
LABEL_14:
    SCNEncodeImageContentsForKey(v11, runtimeResolvedPath, @"image");
    goto LABEL_15;
  }

  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
LABEL_26:
    SCNEncodeC3DImageForKey(a3, c3dImage, @"image");
    goto LABEL_15;
  }

  if (self->_contentType <= 4u)
  {
    if (self->_contentType > 2u)
    {
      if (contentType == 3)
      {
        v16 = @"skscene";
      }

      else
      {
        v16 = @"sktexture";
      }

      goto LABEL_42;
    }

    if (self->_contentType)
    {
      v16 = @"layer";
LABEL_42:
      SCNEncodeUnsafeObjectForKey(a3, runtimeResolvedPath, v16);
      goto LABEL_15;
    }

    v17 = @"color";
    goto LABEL_37;
  }

  if (self->_contentType > 0xCu)
  {
    if (contentType == 13)
    {
      SCNEncodeImageFromMaterialPropertyTextureProviderForKey(a3, runtimeResolvedPath, @"data");
      goto LABEL_15;
    }

    if (contentType == 14)
    {
      v17 = @"precomputedLightingEnvironment";
LABEL_37:
      v18 = a3;
      v19 = *p_contents;
LABEL_38:
      [v18 encodeObject:v19 forKey:v17];
      goto LABEL_15;
    }
  }

  else
  {
    if (contentType == 5)
    {
      v20 = a3;
LABEL_40:
      SCNEncodeMTLTextureAsDataForKey(v20, runtimeResolvedPath, 0, @"data");
      goto LABEL_15;
    }

    if (contentType == 9)
    {
      [*p_contents floatValue];
      [a3 encodeFloat:@"float" forKey:?];
      goto LABEL_15;
    }
  }

  v21 = [*p_contents replacementObjectForCoder:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = a3;
    runtimeResolvedPath = v21;
    goto LABEL_14;
  }

  if ([v21 conformsToProtocol:&unk_282E56760])
  {
    v20 = a3;
    runtimeResolvedPath = v21;
    goto LABEL_40;
  }

  if ([*p_contents conformsToProtocol:&unk_282E10C00])
  {
    v22 = [*p_contents classForCoder];
    if ([v22 isSubclassOfClass:objc_opt_class()])
    {
      v19 = *p_contents;
      v17 = @"image";
      v18 = a3;
      goto LABEL_38;
    }

    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SCNMaterialProperty *)v22 _customEncodingOfSCNMaterialProperty:v24];
    }
  }

  else
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterialProperty _customEncodingOfSCNMaterialProperty:];
    }
  }

LABEL_15:
  [a3 encodeInteger:self->_mappingChannel forKey:@"mappingChannel"];
  textureComponents = self->_textureComponents;
  if (textureComponents != 15)
  {
    [a3 encodeInteger:textureComponents forKey:@"textureComponents"];
  }

  *&v12 = self->_maxAnisotropy;
  [a3 encodeFloat:@"maxAnisotropy" forKey:v12];
  [a3 encodeInteger:self->_minificationFilter forKey:@"minificationFilter"];
  [a3 encodeInteger:self->_magnificationFilter forKey:@"magnificationFilter"];
  [a3 encodeInteger:self->_mipFilter forKey:@"mipFilter"];
  [a3 encodeInteger:self->_wrapS forKey:@"wrapS"];
  [a3 encodeInteger:self->_wrapT forKey:@"wrapT"];
}

- (void)_didDecodeSCNMaterialProperty:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  if (self->_customSlotName && !self->_customSlot)
  {
    self->_customSlot = C3DEffectSlotCreate(0, 27);
  }

  v5 = SCNDecodeImageContents(a3, @"image");
  if (v5)
  {
    v6 = v5;
    v7 = SCNEnclosingURLForSceneDecoder(a3);
    if (v7)
    {
      v8 = SCNResolveImageContents(v6, v7);
      if (v8)
      {
        [(SCNMaterialProperty *)self _setImagePath:v6 withResolvedPath:v8];
LABEL_12:
        v12 = 1;
        goto LABEL_13;
      }
    }

    v9 = self;
    v10 = v6;
LABEL_11:
    [(SCNMaterialProperty *)v9 setContents:v10];
    goto LABEL_12;
  }

  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v11)
  {
    v10 = v11;
    v9 = self;
    goto LABEL_11;
  }

  v16 = SCNDecodeImageArray(a3, @"imageArray");
  if (v16)
  {
    v17 = v16;
    v18 = SCNEnclosingURLForSceneDecoder(a3);
    if (!v18)
    {
LABEL_37:
      [(SCNMaterialProperty *)self setContents:v17];
      goto LABEL_12;
    }

    v19 = v18;
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v21)
    {
      v22 = *v45;
LABEL_30:
      v23 = 0;
      while (1)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = SCNResolveImageContents(*(*(&v44 + 1) + 8 * v23), v19);
        if (!v24)
        {
          goto LABEL_37;
        }

        [v20 addObject:v24];
        if (v21 == ++v23)
        {
          v21 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v21)
          {
            goto LABEL_30;
          }

          break;
        }
      }
    }

    [(SCNMaterialProperty *)self _updateC3DImageWithContents:v20];
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = v17;
    v12 = 1;
    self->_contentType = 1;
  }

  else
  {
    v25 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    if (v25)
    {
      [(SCNMaterialProperty *)self setColor:v25];
      goto LABEL_12;
    }

    v26 = pthread_main_np();
    if (!v26)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] activateBackground:1];
    }

    v27 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v28 = SCNDecodeUnsafeObjectForKey(a3, @"layer", v27);
    if (v28)
    {
      [(SCNMaterialProperty *)self setLayer:v28];
      if (!v26)
      {
        [MEMORY[0x277CD9FF0] commit];
      }

      goto LABEL_12;
    }

    if (!v26)
    {
      [MEMORY[0x277CD9FF0] commit];
    }

    v29 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v30 = SCNDecodeUnsafeObjectForKey(a3, @"attachment", v29);
    if (v30)
    {
      [(SCNMaterialProperty *)self setAttachment:v30];
      goto LABEL_12;
    }

    if ([a3 containsValueForKey:@"skscene"])
    {
      if (NSClassFromString(&cfstr_Skscene.isa))
      {
        *&v39 = 0;
        *(&v39 + 1) = &v39;
        *&v40 = 0x3052000000;
        *(&v40 + 1) = __Block_byref_object_copy__9;
        *&v41 = __Block_byref_object_dispose__9;
        *(&v41 + 1) = 0;
        if (C3DIsRunningInXcode() && [MEMORY[0x277CCACC8] isMainThread])
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __53__SCNMaterialProperty__didDecodeSCNMaterialProperty___block_invoke;
          block[3] = &unk_2782FF988;
          block[4] = a3;
          block[5] = &v39;
          dispatch_sync(MEMORY[0x277D85CD0], block);
          v31 = *(*(&v39 + 1) + 40);
        }

        else
        {
          v32 = [MEMORY[0x277CBEB98] setWithObject:NSClassFromString(&cfstr_Skscene.isa)];
          v31 = SCNDecodeUnsafeObjectForKey(a3, @"skscene", v32);
          *(*(&v39 + 1) + 40) = v31;
        }

        if (v31)
        {
          [(SCNMaterialProperty *)self setSkScene:?];
          _Block_object_dispose(&v39, 8);
          goto LABEL_12;
        }

        _Block_object_dispose(&v39, 8);
      }

      else
      {
        v33 = scn_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [SCNMaterialProperty _didDecodeSCNMaterialProperty:];
        }
      }
    }

    if ([a3 containsValueForKey:@"sktexture"])
    {
      if (NSClassFromString(&cfstr_Sktexture.isa))
      {
        v34 = [MEMORY[0x277CBEB98] setWithObject:NSClassFromString(&cfstr_Sktexture.isa)];
        v35 = SCNDecodeUnsafeObjectForKey(a3, @"sktexture", v34);
        if (v35)
        {
          [(SCNMaterialProperty *)self setSkTexture:v35];
          goto LABEL_12;
        }
      }

      else
      {
        v36 = scn_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SCNMaterialProperty _didDecodeSCNMaterialProperty:];
        }
      }
    }

    if ([a3 containsValueForKey:@"float"])
    {
      [a3 decodeFloatForKey:@"float"];
      -[SCNMaterialProperty setFloatValue:](self, "setFloatValue:", [MEMORY[0x277CCABB0] numberWithFloat:?]);
      goto LABEL_12;
    }

    if ([a3 containsValueForKey:@"precomputedLightingEnvironment"])
    {
      v37 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      [(SCNMaterialProperty *)self setPrecomputedLightingEnvironment:SCNDecodeUnsafeObjectForKey(a3, @"precomputedLightingEnvironment", v37)];
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_13:
  v13 = [a3 decodeIntegerForKey:@"mappingChannel"];
  if (v13 != -1)
  {
    [(SCNMaterialProperty *)self setMappingChannel:v13];
  }

  if ([a3 containsValueForKey:@"textureComponents"])
  {
    -[SCNMaterialProperty setTextureComponents:](self, "setTextureComponents:", [a3 decodeIntegerForKey:@"textureComponents"]);
  }

  self->_minificationFilter = [a3 decodeIntegerForKey:@"minificationFilter"];
  self->_magnificationFilter = [a3 decodeIntegerForKey:@"magnificationFilter"];
  self->_mipFilter = [a3 decodeIntegerForKey:@"mipFilter"];
  self->_wrapS = [a3 decodeIntegerForKey:@"wrapS"];
  self->_wrapT = [a3 decodeIntegerForKey:@"wrapT"];
  [(SCNMaterialProperty *)self _updateMaterialFilters];
  self->_maxAnisotropy = 1.0;
  if ([a3 containsValueForKey:@"maxAnisotropy"])
  {
    [a3 decodeFloatForKey:@"maxAnisotropy"];
    if (v14 != 3.4028e38)
    {
      [(SCNMaterialProperty *)self setMaxAnisotropy:v14];
    }
  }

  if ([a3 containsValueForKey:@"contentsTransform"])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    SCNDecodeSCNMatrix4(a3, @"contentsTransform", &v39);
    v38[0] = v39;
    v38[1] = v40;
    v38[2] = v41;
    v38[3] = v42;
    [(SCNMaterialProperty *)self setContentsTransform:v38];
  }

  if ((v12 & 1) == 0)
  {
    v15 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0];
    if (v15)
    {
      C3DEffectSlotSetHasNoContents(v15);
    }
  }
}

uint64_t __53__SCNMaterialProperty__didDecodeSCNMaterialProperty___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithObject:NSClassFromString(&cfstr_Skscene.isa)];
  result = SCNDecodeUnsafeObjectForKey(v2, @"skscene", v3);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_hasDefaultValues
{
  if ((*(self + 8) & 2) == 0)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (self->_customSlotName || [(SCNOrderedDictionary *)self->_animations count]|| self->_borderColor || self->_contentType || self->_mappingChannel > 0 || self->_intensity != 1.0 || self->_minificationFilter != 2 || self->_magnificationFilter != 2 || self->_mipFilter != 1 || self->_wrapS != 1 || self->_wrapT != 1)
  {
    return 0;
  }

  textureComponents = self->_textureComponents;
  if (textureComponents == 15 || (result = 0, textureComponents == 8) && self->_propertyType == 15)
  {
    if (!self->_contentTransform && self->_maxAnisotropy == 1.0)
    {
      if (!self->_contents)
      {
        return 1;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = C3DEffectCommonProfileDefaultColorForEffectProperty(self->_propertyType);
        v10 = 1;
        v9[0] = [self->_contents scn_C3DColorIgnoringColorSpace:0 success:&v10];
        v9[1] = v8;
        if (v10 == 1 && C3DColor4IsEqualToColor4WithThreshold(v9, v7))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 8))
  {
    [(SCNMaterialProperty *)self _syncObjCModel];
  }

  [(SCNMaterialProperty *)self _customEncodingOfSCNMaterialProperty:a3];
  [a3 encodeInt:(*(self + 8) >> 1) & 1 forKey:@"isCommonProfileProperty"];
  parent = self->_parent;
  if (parent)
  {
    [a3 encodeObject:parent forKey:@"parent"];
  }

  propertyType = self->_propertyType;
  if (propertyType < 0x1C && ((0xFC0FFFFu >> propertyType) & 1) != 0)
  {
    v7 = qword_21C2A2430[self->_propertyType];
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNMaterialProperty encodeWithCoder:];
    }

    v7 = 0;
  }

  [a3 encodeInteger:v7 forKey:@"propertyType"];
  customSlotName = self->_customSlotName;
  if (customSlotName)
  {
    [a3 encodeObject:customSlotName forKey:@"customSlotName"];
  }

  borderColor = self->_borderColor;
  if (borderColor)
  {
    SCNEncodeUnsafeObjectForKey(a3, borderColor, @"borderColor");
  }

  *&v9 = self->_intensity;
  [a3 encodeFloat:@"intensity" forKey:v9];
  if ([(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0])
  {
    [a3 encodeBool:-[SCNMaterialProperty sRGBTexture](self forKey:{"sRGBTexture"), @"sRGB"}];
  }

  SCNEncodeAnimations(a3, self);
}

- (SCNMaterialProperty)initWithCoder:(id)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SCNMaterialProperty;
  v4 = [(SCNMaterialProperty *)&v15 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    *(v4 + 8) |= 8u;
    v6 = [a3 decodeIntegerForKey:@"propertyType"];
    if (v6 >= 0x16)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNMaterialProperty initWithCoder:];
      }

      v7 = 0;
    }

    else
    {
      v7 = byte_21C2A2510[v6];
    }

    v4->_propertyType = v7;
    v9 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v10 = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 4)), @"parent"}];
    if (v10 == v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v4->_parent = v11;
    [(SCNMaterialProperty *)v4 _customDecodingOfSCNMaterialProperty:a3];
    *(v4 + 8) = (2 * ([a3 decodeIntForKey:@"isCommonProfileProperty"] & 1)) | *(v4 + 8) & 0xFD;
    v4->_customSlotName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"customSlotName"];
    v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [(SCNMaterialProperty *)v4 setBorderColor:SCNDecodeUnsafeObjectForKey(a3, @"borderColor", v12)];
    [a3 decodeFloatForKey:@"intensity"];
    [(SCNMaterialProperty *)v4 setIntensity:v13];
    if ([a3 containsValueForKey:@"sRGB"])
    {
      -[SCNMaterialProperty setSRGBTexture:](v4, "setSRGBTexture:", [a3 decodeBoolForKey:@"sRGB"]);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeAnimations(a3, v4);
    [(SCNMaterialProperty *)v4 _didDecodeSCNMaterialProperty:a3];
    *(v4 + 8) &= ~8u;
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

+ (id)precomputedLightingEnvironmentContentsWithURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:1 error:a4];

  return [a1 precomputedLightingEnvironmentContentsWithData:v6 error:a4];
}

+ (id)precomputedLightingEnvironmentContentsWithData:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();

  return [v6 unarchivedObjectOfClass:v7 fromData:a3 error:a4];
}

+ (id)precomputedLightingEnvironmentDataForContents:(id)a3 device:(id)a4 error:(id *)a5
{
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v8 = objc_alloc_init(SCNScene);
  v9 = [(SCNScene *)v8 lightingEnvironment];
  [(SCNMaterialProperty *)v9 setContents:a3];
  v10 = [(SCNMaterialProperty *)v9 effectSlot];
  if (!v10)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SCNMaterialProperty(SCNMaterialPropertyPrivate_PrecomputedLightingEnvironment) precomputedLightingEnvironmentDataForContents:v11 device:? error:?];
    }
  }

  +[SCNTransaction commit];
  if (C3DEffectSlotHasImageOrTexture(v10))
  {
    v12 = [+[SCNRenderer rendererWithDevice:options:](SCNRenderer _renderContextMetal:a4];
    [(SCNMTLRenderContext *)v12 beginFrame:?];
    v13 = [SCNMTLRenderContext radianceTextureForEffectSlot:v12];
    v14 = [SCNMTLRenderContext irradianceTextureForEffectSlot:v12];
    v21 = 5;
    [(SCNMTLRenderContext *)v12 endFrameWaitingUntilCompleted:&v21 status:a5 error:?];
    PrecomputedLightingEnvironment = 0;
    if (v13 && v14 && v21 == 4)
    {
      v16 = SCNCreateDataWithMTLTexture(v13, 1);
      v17 = SCNCreateDataWithMTLTexture(v14, 1);
      PrecomputedLightingEnvironment = objc_alloc_init(SCNPrecomputedLightingEnvironment);
      [(SCNPrecomputedLightingEnvironment *)PrecomputedLightingEnvironment setRadianceData:v16];
      [(SCNPrecomputedLightingEnvironment *)PrecomputedLightingEnvironment setIrradianceData:v17];
    }
  }

  else
  {
    if (!C3DEffectSlotHasPrecomputedLightingEnvironment(v10))
    {

      return 0;
    }

    PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(v10);
    v18 = PrecomputedLightingEnvironment;
  }

  if (!PrecomputedLightingEnvironment)
  {
    return 0;
  }

  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:PrecomputedLightingEnvironment requiringSecureCoding:1 error:a5];

  return v19;
}

- (void)propertyName
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 propertyType];
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: slotName %d not found", v3, 8u);
}

+ (void)copyC3DImageFromImage:textureOptions:wasCached:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_customEncodingOfSCNMaterialProperty:(NSObject *)a3 .cold.2(objc_class *a1, uint64_t *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(a1);
  v6 = *a2;
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Unsupported coder class %@ for material property contents %@", &v7, 0x16u);
}

- (void)_didDecodeSCNMaterialProperty:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end