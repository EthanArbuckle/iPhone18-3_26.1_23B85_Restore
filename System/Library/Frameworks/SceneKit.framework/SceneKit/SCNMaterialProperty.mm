@interface SCNMaterialProperty
+ (SCNMaterialProperty)materialPropertyWithContents:(id)contents;
+ (__C3DImage)_createC3DImageFromImage:(id)image;
+ (__C3DImage)copyC3DImageFromImage:(id)image textureOptions:(int)options wasCached:(BOOL *)cached;
+ (id)_copyImageFromC3DImage:(__C3DImage *)image;
+ (id)captureDeviceOutputConsumerWithOptions:(id)options;
+ (id)copyImageFromC3DImage:(__C3DImage *)image;
+ (id)dvt_supportedTypesForPropertyContents;
+ (id)precomputedLightingEnvironmentContentsWithData:(id)data error:(id *)error;
+ (id)precomputedLightingEnvironmentContentsWithURL:(id)l error:(id *)error;
+ (id)precomputedLightingEnvironmentDataForContents:(id)contents device:(id)device error:(id *)error;
- (BOOL)__removeAnimation:(id)animation forKey:(id)key;
- (BOOL)_hasDefaultValues;
- (BOOL)isAnimationForKeyPaused:(id)paused;
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
- (SCNMaterialProperty)initWithCoder:(id)coder;
- (SCNMaterialProperty)initWithParent:(id)parent andCustomName:(id)name;
- (SCNMaterialProperty)initWithParent:(id)parent propertyType:(char)type;
- (SCNMatrix4)contentsTransform;
- (SCNWrapMode)wrapS;
- (SCNWrapMode)wrapT;
- (__C3DAnimationManager)animationManager;
- (__C3DEffectCommonProfile)commonProfile;
- (__C3DEffectSlot)effectSlotCreateIfNeeded:(BOOL)needed;
- (__C3DTextureSampler)textureSampler;
- (id)UIView;
- (id)_animationPathForKey:(id)key;
- (id)_scnAnimationForKey:(id)key;
- (id)animationForKey:(id)key;
- (id)animationPlayerForKey:(id)key;
- (id)attachment;
- (id)avPlayer;
- (id)borderColor;
- (id)captureDevice;
- (id)captureDeviceOutputConsumerSource;
- (id)color;
- (id)contents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)floatValue;
- (id)image;
- (id)initPresentationMaterialPropertyWithModelProperty:(id)property;
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
- (void)_copyAnimationsFrom:(id)from;
- (void)_customEncodingOfSCNMaterialProperty:(id)property;
- (void)_didDecodeSCNMaterialProperty:(id)property;
- (void)_layerDidChange:(id)change;
- (void)_pauseAnimation:(BOOL)animation forKey:(id)key pausedByNode:(BOOL)node;
- (void)_setC3DImageRef:(__C3DImage *)ref;
- (void)_setColor:(id)color;
- (void)_setImagePath:(id)path withResolvedPath:(id)resolvedPath;
- (void)_setupContentsFromC3DImage;
- (void)_skSceneDidChange:(id)change;
- (void)_syncObjCAnimations;
- (void)_syncObjCModel;
- (void)_updateC3DImageWithContents:(id)contents;
- (void)_updateMaterialAVPlayer:(id)player;
- (void)_updateMaterialAttachment:(id)attachment;
- (void)_updateMaterialBorderColor:(id)color;
- (void)_updateMaterialCaptureDevice:(id)device;
- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)source;
- (void)_updateMaterialColor:(id)color;
- (void)_updateMaterialFilters;
- (void)_updateMaterialImage:(id)image;
- (void)_updateMaterialLayer:(id)layer;
- (void)_updateMaterialMTLTexture:(id)texture;
- (void)_updateMaterialNumber:(id)number;
- (void)_updateMaterialProceduralContents:(id)contents;
- (void)_updateMaterialPropertyTransform:(C3DMatrix4x4 *)transform;
- (void)_updateMaterialSKScene:(id)scene;
- (void)_updateMaterialSKTexture:(id)texture;
- (void)_updateMaterialTextureProvider:(id)provider;
- (void)_updateMaterialUIComponent:(id)component;
- (void)_updatePrecomputedLightingEnvironment:(id)environment;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addAnimationPlayer:(id)player forKey:(id)key;
- (void)bindAnimatablePath:(id)path toObject:(id)object withKeyPath:(id)keyPath options:(id)options;
- (void)copyPropertiesFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)linkCustomPropertyWithParent:(id)parent andCustomName:(id)name;
- (void)parentWillDie:(id)die;
- (void)pauseAnimationForKey:(id)key;
- (void)propertyName;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(double)duration;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)key;
- (void)removeAnimationForKey:(id)key blendOutDuration:(double)duration;
- (void)resumeAnimationForKey:(id)key;
- (void)setAttachment:(id)attachment;
- (void)setAvPlayer:(id)player;
- (void)setBorderColor:(id)borderColor;
- (void)setCaptureDevice:(id)device;
- (void)setCaptureDeviceOutputConsumerSource:(id)source;
- (void)setColor:(id)color;
- (void)setContents:(id)contents;
- (void)setContentsTransform:(SCNMatrix4 *)contentsTransform;
- (void)setFloatValue:(id)value;
- (void)setImage:(id)image;
- (void)setIntensity:(CGFloat)intensity;
- (void)setLayer:(id)layer;
- (void)setMagnificationFilter:(SCNFilterMode)magnificationFilter;
- (void)setMappingChannel:(NSInteger)mappingChannel;
- (void)setMaxAnisotropy:(CGFloat)maxAnisotropy;
- (void)setMinificationFilter:(SCNFilterMode)minificationFilter;
- (void)setMipFilter:(SCNFilterMode)mipFilter;
- (void)setMtlTexture:(id)texture;
- (void)setPrecomputedLightingEnvironment:(id)environment;
- (void)setProceduralContents:(id)contents;
- (void)setSRGBTexture:(BOOL)texture;
- (void)setSkScene:(id)scene;
- (void)setSkTexture:(id)texture;
- (void)setSpeed:(double)speed forAnimationKey:(id)key;
- (void)setTextureComponents:(SCNColorMask)textureComponents;
- (void)setTextureProvider:(id)provider;
- (void)setUIView:(id)view;
- (void)setUIWindow:(id)window;
- (void)setWrapS:(SCNWrapMode)wrapS;
- (void)setWrapT:(SCNWrapMode)wrapT;
- (void)unbindAnimatablePath:(id)path;
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
  v4 = [[self alloc] initWithParent:0 propertyType:27];
  [(SCNMaterialProperty *)v4 setContents:contents];
  return v4;
}

- (SCNMaterialProperty)initWithParent:(id)parent propertyType:(char)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = SCNMaterialProperty;
  v6 = [(SCNMaterialProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (v6 == parent)
    {
      parentCopy = 0;
    }

    else
    {
      parentCopy = parent;
    }

    v6->_parent = parentCopy;
    v6->_propertyType = typeCopy;
    *(v6 + 8) = *(v6 + 8) & 0xFD | (2 * (typeCopy < 21));
    if (!parentCopy)
    {
      v6->_customSlot = C3DEffectSlotCreate(0, 27);
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMaterialProperty *)v7 _syncObjCModel];
    [(SCNMaterialProperty *)v7 _syncObjCAnimations];
  }

  return v7;
}

- (SCNMaterialProperty)initWithParent:(id)parent andCustomName:(id)name
{
  v10.receiver = self;
  v10.super_class = SCNMaterialProperty;
  v6 = [(SCNMaterialProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (v6 == parent)
    {
      parentCopy = 0;
    }

    else
    {
      parentCopy = parent;
    }

    v6->_parent = parentCopy;
    v6->_propertyType = 27;
    v6->_customSlotName = [name copy];
    *(v7 + 8) &= ~2u;
    v7->_animationsLock._os_unfair_lock_opaque = 0;
    [(SCNMaterialProperty *)v7 _syncObjCModel];
    [(SCNMaterialProperty *)v7 _syncObjCAnimations];
  }

  return v7;
}

- (id)initPresentationMaterialPropertyWithModelProperty:(id)property
{
  v9.receiver = self;
  v9.super_class = SCNMaterialProperty;
  v4 = [(SCNMaterialProperty *)&v9 init];
  if (v4)
  {
    if ([property parent] == v4)
    {
      parent = 0;
    }

    else
    {
      parent = [property parent];
    }

    v4->_parent = parent;
    propertyType = [property propertyType];
    v4->_propertyType = propertyType;
    if (propertyType >= 21)
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

- (void)linkCustomPropertyWithParent:(id)parent andCustomName:(id)name
{
  if (parent == self)
  {
    parentCopy = 0;
  }

  else
  {
    parentCopy = parent;
  }

  self->_parent = parentCopy;

  v8 = [name copy];
  self->_customSlotName = v8;
  self->_propertyType = 27;
  *(self + 8) &= ~2u;
  if (v8 && !self->_customSlot)
  {
    self->_customSlot = C3DEffectSlotCreate(0, 27);
  }

  if ([parent __CFObject] == self)
  {
    __CFObject = 0;
  }

  else
  {
    __CFObject = [parent __CFObject];
  }

  self->_customSlot[1].var0.var1 = __CFObject;
}

- (__C3DEffectSlot)effectSlotCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  propertyType = self->_propertyType;
  if (propertyType <= 0x18)
  {
    if (propertyType == 22)
    {
      result = [self->_parent lightRef];
      if (result)
      {

        return C3DLightGetGobo(result, neededCopy);
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

          return C3DEffectCommonProfileGetEffectSlot(result, v7, neededCopy);
        }

        return result;
      }

      result = [self->_parent sceneRef];
      if (result)
      {

        return C3DSceneGetBackgroundEffectSlot(result, neededCopy);
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

            return C3DSceneGetLightingEnvironmentEffectSlot(result, neededCopy);
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

              return C3DLightGetProbeEnvironment(result, neededCopy);
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

          return C3DCameraGetColorGradingEffectSlot(result, neededCopy);
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

- (id)_animationPathForKey:(id)key
{
  v4 = [-[SCNMaterialProperty slotName](self "slotName")];

  return [v4 stringByAppendingString:key];
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
      sceneRef = [(SCNMaterialProperty *)self sceneRef];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __37__SCNMaterialProperty__clearContents__block_invoke;
      v10[3] = &unk_2782FF8C0;
      v10[4] = v11;
      [SCNTransaction postCommandWithContext:sceneRef object:0 applyBlock:v10];
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

- (void)_setColor:(id)color
{
  if (self->_contents != color)
  {
    self->_contents = color;
    self->_contentType = 0;
  }
}

- (void)setColor:(id)color
{
  if (self->_contents != color)
  {
    v9[10] = v3;
    v9[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = color;
    self->_contentType = 0;
    if (color)
    {
      sceneRef = [(SCNMaterialProperty *)self sceneRef];
      v8 = [(SCNMaterialProperty *)self _animationPathForKey:@"color"];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__SCNMaterialProperty_setColor___block_invoke;
      v9[3] = &unk_2782FC950;
      v9[4] = self;
      v9[5] = color;
      [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v8 applyBlock:v9];
    }
  }
}

- (id)color
{
  if (*(self + 8))
  {
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    effectSlot = [(SCNMaterialProperty *)self effectSlot];
    if (effectSlot && (ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(effectSlot)) != 0)
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

- (void)setFloatValue:(id)value
{
  contents = self->_contents;
  if (contents != value && ([contents isEqual:?] & 1) == 0)
  {
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = value;
    self->_contentType = 9;
    if (value)
    {
      sceneRef = [(SCNMaterialProperty *)self sceneRef];
      v7 = [(SCNMaterialProperty *)self _animationPathForKey:@"color"];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__SCNMaterialProperty_setFloatValue___block_invoke;
      v8[3] = &unk_2782FC950;
      v8[4] = self;
      v8[5] = value;
      [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v8];
    }
  }
}

- (id)floatValue
{
  if (*(self + 8))
  {
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v6 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    effectSlot = [(SCNMaterialProperty *)self effectSlot];
    if (effectSlot)
    {
      v8 = effectSlot;
      ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(effectSlot);
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

- (void)_setC3DImageRef:(__C3DImage *)ref
{
  c3dImage = self->_c3dImage;
  if (c3dImage != ref)
  {
    if (c3dImage)
    {
      CFRelease(c3dImage);
      self->_c3dImage = 0;
    }

    if (ref)
    {
      v6 = CFRetain(ref);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      MinFilter = C3DTextureSamplerGetMinFilter(textureSampler);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      MagFilter = C3DTextureSamplerGetMagFilter(textureSampler);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      MipFilter = C3DTextureSamplerGetMipFilter(textureSampler);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__SCNMaterialProperty_setMinificationFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (void)setMagnificationFilter:(SCNFilterMode)magnificationFilter
{
  if (self->_magnificationFilter != magnificationFilter)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_magnificationFilter = magnificationFilter;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SCNMaterialProperty_setMagnificationFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (void)setMipFilter:(SCNFilterMode)mipFilter
{
  if (self->_mipFilter != mipFilter)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_mipFilter = mipFilter;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SCNMaterialProperty_setMipFilter___block_invoke;
    v7[3] = &unk_2782FB820;
    v7[4] = self;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
  }
}

- (int64_t)_presentationMappingChannel
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (!effectSlot)
  {
    return -1;
  }

  return C3DEffectSlotGetUVSet(effectSlot);
}

- (NSInteger)mappingChannel
{
  if ((*(self + 8) & 1) == 0)
  {
    return self->_mappingChannel;
  }

  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  if (sceneRef)
  {
    v5 = sceneRef;
    C3DSceneLock(sceneRef);
    _presentationMappingChannel = [(SCNMaterialProperty *)self _presentationMappingChannel];
    C3DSceneUnlock(v5);
    return _presentationMappingChannel;
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__SCNMaterialProperty_setMappingChannel___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = mappingChannel;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    effectSlot = [(SCNMaterialProperty *)self effectSlot];
    if (effectSlot)
    {
      TextureComponents = C3DEffectSlotGetTextureComponents(effectSlot);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__SCNMaterialProperty_setTextureComponents___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    v8[5] = textureComponents;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7 = [(SCNMaterialProperty *)self _animationPathForKey:@"intensity"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNMaterialProperty_setIntensity___block_invoke;
    v8[3] = &unk_2782FB7D0;
    v8[4] = self;
    *&v8[5] = intensity;
    [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v8];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    effectSlot = [(SCNMaterialProperty *)self effectSlot];
    if (effectSlot)
    {
      Intensity = C3DEffectSlotGetIntensity(effectSlot);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      v3 = [MEMORY[0x277D75348] scn_colorWithC3DColor:C3DTextureSamplerGetBorderColor(textureSampler)];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v9 = [(SCNMaterialProperty *)self _animationPathForKey:@"borderColor"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SCNMaterialProperty_setBorderColor___block_invoke;
    v10[3] = &unk_2782FC950;
    v10[4] = self;
    v10[5] = borderColor;
    [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v9 applyBlock:v10];
  }
}

- (SCNWrapMode)wrapS
{
  if (*(self + 8))
  {
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      WrapModeS = C3DTextureSamplerGetWrapModeS(textureSampler);
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
      sceneRef = [(SCNMaterialProperty *)self sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __32__SCNMaterialProperty_setWrapS___block_invoke;
      v6[3] = &unk_2782FB820;
      v6[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    textureSampler = [(SCNMaterialProperty *)self textureSampler];
    if (textureSampler)
    {
      WrapModeT = C3DTextureSamplerGetWrapModeT(textureSampler);
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
      sceneRef = [(SCNMaterialProperty *)self sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __32__SCNMaterialProperty_setWrapT___block_invoke;
      v6[3] = &unk_2782FB820;
      v6[4] = self;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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
    selfCopy = self;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
    }

    LOBYTE(selfCopy) = C3DEffectSlotGetSRGB([(SCNMaterialProperty *)selfCopy effectSlot]);
    if (v5)
    {
      C3DSceneUnlock(v5);
    }
  }

  else
  {
    LODWORD(selfCopy) = (v2 >> 2) & 1;
  }

  return selfCopy;
}

- (void)setSRGBTexture:(BOOL)texture
{
  v3 = *(self + 8);
  if (((((v3 & 4) == 0) ^ texture) & 1) == 0)
  {
    if (texture)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 8) = v3 & 0xFB | v6;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__SCNMaterialProperty_setSRGBTexture___block_invoke;
    v8[3] = &unk_2782FB7F8;
    v8[4] = self;
    textureCopy = texture;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setAttachment:(id)attachment
{
  contents = self->_contents;
  if (contents != attachment && ([contents isEqual:?] & 1) == 0)
  {
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = attachment;
    self->_contentType = 7;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__SCNMaterialProperty_setAttachment___block_invoke;
    v7[3] = &unk_2782FC950;
    v7[4] = self;
    v7[5] = attachment;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
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

- (void)_updateC3DImageWithContents:(id)contents
{
  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
    CFRelease(c3dImage);
    self->_c3dImage = 0;
  }

  v11 = 0;
  v6 = [SCNMaterialProperty copyC3DImageFromImage:contents textureOptions:[(SCNMaterialProperty *)self _textureOptions] wasCached:&v11];
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

  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__SCNMaterialProperty__updateC3DImageWithContents___block_invoke;
  v10[3] = &unk_2782FC950;
  v10[4] = self;
  v10[5] = v7;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v10];
}

- (void)setImage:(id)image
{
  if (self->_contents == image)
  {
    if (image)
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
    self->_contents = image;
    self->_contentType = 1;
    [(SCNMaterialProperty *)self _updateC3DImageWithContents:image];

    CFRelease(c3dImage);
    return;
  }

  [(SCNMaterialProperty *)self _clearContents];
  self->_contents = image;
  self->_contentType = 1;

  [(SCNMaterialProperty *)self _updateC3DImageWithContents:image];
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
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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

- (void)setSkScene:(id)scene
{
  if (self->_contents != scene)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = scene;
    self->_contentType = 3;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__SCNMaterialProperty_setSkScene___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = scene;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setSkTexture:(id)texture
{
  if (self->_contents != texture)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = texture;
    self->_contentType = 4;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SCNMaterialProperty_setSkTexture___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = texture;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setLayer:(id)layer
{
  if (self->_contents != layer)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = layer;
    self->_contentType = 2;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__SCNMaterialProperty_setLayer___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = layer;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setAvPlayer:(id)player
{
  if (self->_contents != player)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = player;
    self->_contentType = 10;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterialProperty_setAvPlayer___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = player;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setCaptureDevice:(id)device
{
  if (self->_contents != device)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = device;
    self->_contentType = 11;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SCNMaterialProperty_setCaptureDevice___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = device;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setCaptureDeviceOutputConsumerSource:(id)source
{
  if (self->_contents != source)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = source;
    self->_contentType = 12;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SCNMaterialProperty_setCaptureDeviceOutputConsumerSource___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = source;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setTextureProvider:(id)provider
{
  if (self->_contents != provider)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = provider;
    self->_contentType = 13;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__SCNMaterialProperty_setTextureProvider___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = provider;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setPrecomputedLightingEnvironment:(id)environment
{
  if (self->_contents != environment)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = environment;
    self->_contentType = 14;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SCNMaterialProperty_setPrecomputedLightingEnvironment___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = environment;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)_updateMaterialUIComponent:(id)component
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v6 = effectSlot;
    if (component)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __50__SCNMaterialProperty__updateMaterialUIComponent___block_invoke;
      v8[3] = &unk_2782FF8E8;
      v8[4] = component;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(component, v8);
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

- (void)setUIView:(id)view
{
  if (self->_contents != view)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = view;
    self->_contentType = 8;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__SCNMaterialProperty_setUIView___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = view;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setUIWindow:(id)window
{
  if (self->_contents != window)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = window;
    self->_contentType = 8;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SCNMaterialProperty_setUIWindow___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = window;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
    selfCopy2 = self;
    v7 = v5;
LABEL_31:

    [(SCNMaterialProperty *)selfCopy2 setAttachment:v7];
    return;
  }

  NSClassFromString(&cfstr_Glktextureinfo.isa);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SCNMaterialAttachment materialAttachmentWithGLKTextureInfo:v5];
    selfCopy2 = self;
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v7 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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

- (void)_setImagePath:(id)path withResolvedPath:(id)resolvedPath
{
  [(SCNMaterialProperty *)self _updateC3DImageWithContents:resolvedPath];
  [(SCNMaterialProperty *)self _clearContents];
  self->_contents = path;
  self->_contentType = 1;
  runtimeResolvedPath = self->_runtimeResolvedPath;
  if (runtimeResolvedPath != resolvedPath)
  {

    self->_runtimeResolvedPath = resolvedPath;
  }
}

- (CGFloat)maxAnisotropy
{
  if (*(self + 8))
  {
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v5 = sceneRef;
    if (sceneRef)
    {
      C3DSceneLock(sceneRef);
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SCNMaterialProperty_setMaxAnisotropy___block_invoke;
    v6[3] = &unk_2782FF898;
    v6[4] = self;
    v7 = v3;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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

- (void)setProceduralContents:(id)contents
{
  if (self->_contents != contents)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = contents;
    self->_contentType = 6;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__SCNMaterialProperty_setProceduralContents___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = contents;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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

- (void)setMtlTexture:(id)texture
{
  if (self->_contents != texture)
  {
    v8[10] = v3;
    v8[11] = v4;
    [(SCNMaterialProperty *)self _clearContents];
    self->_contents = texture;
    self->_contentType = 5;
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __37__SCNMaterialProperty_setMtlTexture___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = self;
    v8[5] = texture;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v8];
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
      selfCopy = self;
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
  selfCopy = self;
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

  sceneRef = [(SCNMatrix4 *)self sceneRef];
  v10 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  self = [(SCNMatrix4 *)selfCopy effectSlot];
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
  contents = [(SCNMaterialProperty *)self contents];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [MEMORY[0x277CCACA8] stringWithFormat:@"<data %p>", contents];
  }

  return [v4 stringWithFormat:@"<%@: %p | contents=%@>", v6, self, contents];
}

+ (__C3DImage)_createC3DImageFromImage:(id)image
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:image];
    if ([v4 scheme])
    {
      imageCopy = v4;
LABEL_6:

      return C3DImageCreateWithURL(imageCopy);
    }

    return C3DImageCreateWithName(image);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageCopy = image;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return C3DImageCreateWithData(image);
    }

    else
    {
      v7 = CFGetTypeID(image);
      if (v7 == CGImageGetTypeID())
      {

        return C3DImageCreateWithCGImage(image);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return C3DImageCreateWithClientImage(image);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return C3DImageCreateWithMDLTexture(image);
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

+ (__C3DImage)copyC3DImageFromImage:(id)image textureOptions:(int)options wasCached:(BOOL *)cached
{
  v32 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    return 0;
  }

  v6 = *&options;
  v8 = CFGetTypeID(image);
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
      if ([image count] != 6)
      {
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          +[SCNMaterialProperty copyC3DImageFromImage:textureOptions:wasCached:];
        }

        IfNeededForSource = 0;
        if (!cached)
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
        v14 = [self copyC3DImageFromImage:objc_msgSend(image textureOptions:"objectAtIndexedSubscript:" wasCached:{v13, v21), v6, 0}];
        if (!v14)
        {
          v15 = scn_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [image objectAtIndexedSubscript:v13];
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
      IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(image, v12 & 1, v24);
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
        if (!cached)
        {
LABEL_35:
          _Block_object_dispose(&v25, 8);
          return IfNeededForSource;
        }

        v20 = (v26[3] & 1) == 0;
LABEL_34:
        *cached = v20;
        goto LABEL_35;
      }
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __70__SCNMaterialProperty_copyC3DImageFromImage_textureOptions_wasCached___block_invoke_2;
      v23[3] = &unk_2782FF938;
      v23[4] = self;
      v23[5] = image;
      v23[6] = &v25;
      IfNeededForSource = C3DImageCopyCachedImageOrCreateIfNeededForSource(image, (isKindOfClass ^ 1) & 1, v23);
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

  if (cached)
  {
    *cached = 1;
  }

  return image;
}

uint64_t __70__SCNMaterialProperty_copyC3DImageFromImage_textureOptions_wasCached___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(*(v1 + 8) + 24) = 1;
  return C3DImageCreateVerticalStripCubemapWithFaceImages(v2);
}

+ (id)_copyImageFromC3DImage:(__C3DImage *)image
{
  v3 = C3DImageCopyCGImage(image);
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

+ (id)copyImageFromC3DImage:(__C3DImage *)image
{
  if (C3DImageHasTextureRawData(image))
  {
    return 0;
  }

  SharedInstance = C3DResourceCacheGetSharedInstance();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SCNMaterialProperty_copyImageFromC3DImage___block_invoke;
  v9[3] = &unk_2782FF960;
  v9[4] = self;
  v9[5] = image;
  v5 = C3DResourceCacheCopySourceForResource(SharedInstance, image, 1, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:{objc_msgSend(v5, "path")}];
    CFRelease(v5);
    return v7;
  }

  return v5;
}

- (void)parentWillDie:(id)die
{
  if (self->_parent != die)
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
    __CFObject = [(SCNMaterialProperty *)self __CFObject];
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNNode *)v9 __removeAnimation:v10 forKey:v11, v12, v13, v14, v15, v16];
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__SCNMaterialProperty_addAnimationPlayer_forKey___block_invoke;
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
    [(SCNMaterialProperty *)self addAnimationPlayer:v7 forKey:keyCopy];

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
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SCNMaterialProperty_removeAllAnimations__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

- (void)removeAllAnimationsWithBlendOutDuration:(double)duration
{
  os_unfair_lock_lock(&self->_animationsLock);
  [(SCNOrderedDictionary *)self->_animations removeAllObjects];
  os_unfair_lock_unlock(&self->_animationsLock);
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SCNMaterialProperty_removeAllAnimationsWithBlendOutDuration___block_invoke;
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__SCNMaterialProperty_removeAnimationForKey___block_invoke;
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
    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__SCNMaterialProperty_removeAnimationForKey_blendOutDuration___block_invoke;
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
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(SCNOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  __CFObject = [(SCNMaterialProperty *)self __CFObject];
  if (__CFObject)
  {
    v6 = __CFObject;
    if ((CFTypeIsC3DEntity(__CFObject) & 1) == 0)
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

- (id)animationForKey:(id)key
{
  v3 = [(SCNMaterialProperty *)self _scnAnimationForKey:key];
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
        [(SCNMaterialProperty *)self addAnimationPlayer:v11 forKey:v10];
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
  __CFObject = [(SCNMaterialProperty *)self __CFObject];
  if (__CFObject)
  {
    v10 = __CFObject;
    animationManager = [(SCNMaterialProperty *)self animationManager];
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
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNMaterialProperty_pauseAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)resumeAnimationForKey:(id)key
{
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCNMaterialProperty_resumeAnimationForKey___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = key;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
}

- (void)setSpeed:(double)speed forAnimationKey:(id)key
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"animations.%@.speed", key];
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SCNMaterialProperty_setSpeed_forAnimationKey___block_invoke;
  v9[3] = &unk_2782FB630;
  v9[4] = self;
  v9[5] = key;
  *&v9[6] = speed;
  [SCNTransaction postCommandWithContext:sceneRef object:self keyPath:v7 applyBlock:v9];
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

- (BOOL)isAnimationForKeyPaused:(id)paused
{
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v6 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
  }

  __CFObject = [(SCNMaterialProperty *)self __CFObject];
  if (__CFObject)
  {
    v8 = __CFObject;
    animationManager = [(SCNMaterialProperty *)self animationManager];
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

    sceneRef = [(SCNMaterialProperty *)self sceneRef];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__SCNMaterialProperty_bindAnimatablePath_toObject_withKeyPath_options___block_invoke;
    v16[3] = &unk_2782FC978;
    v16[4] = self;
    v16[5] = object;
    v16[6] = path;
    v16[7] = keyPath;
    v16[8] = options;
    [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v16];
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

- (void)unbindAnimatablePath:(id)path
{
  [(NSMutableDictionary *)self->_bindings removeObjectForKey:?];
  if (![(NSMutableDictionary *)self->_bindings count])
  {

    self->_bindings = 0;
  }

  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCNMaterialProperty_unbindAnimatablePath___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = path;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v6];
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
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SCNMaterialProperty_removeAllBindings__block_invoke;
  v4[3] = &unk_2782FB820;
  v4[4] = self;
  [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v4];
}

void __40__SCNMaterialProperty_removeAllBindings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) __CFObject];

  C3DEntityRemoveAllBindings(v1);
}

- (void)_syncObjCModel
{
  sceneRef = [(SCNMaterialProperty *)self sceneRef];
  v4 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef);
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

- (void)copyPropertiesFrom:(id)from
{
  if (*(from + 16) && ([from contents], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    -[SCNMaterialProperty _setImagePath:withResolvedPath:](self, "_setImagePath:withResolvedPath:", [from contents], *(from + 16));
  }

  else
  {
    -[SCNMaterialProperty setContents:](self, "setContents:", [from contents]);
  }

  -[SCNMaterialProperty setMinificationFilter:](self, "setMinificationFilter:", [from minificationFilter]);
  -[SCNMaterialProperty setMagnificationFilter:](self, "setMagnificationFilter:", [from magnificationFilter]);
  -[SCNMaterialProperty setMipFilter:](self, "setMipFilter:", [from mipFilter]);
  [from contentsTransform];
  v5[0] = v5[4];
  v5[1] = v5[5];
  v5[2] = v5[6];
  v5[3] = v5[7];
  [(SCNMaterialProperty *)self setContentsTransform:v5];
  -[SCNMaterialProperty setWrapS:](self, "setWrapS:", [from wrapS]);
  -[SCNMaterialProperty setWrapT:](self, "setWrapT:", [from wrapT]);
  [from intensity];
  [(SCNMaterialProperty *)self setIntensity:?];
  -[SCNMaterialProperty setSRGBTexture:](self, "setSRGBTexture:", [from sRGBTexture]);
  -[SCNMaterialProperty setBorderColor:](self, "setBorderColor:", [from borderColor]);
  -[SCNMaterialProperty setMappingChannel:](self, "setMappingChannel:", [from mappingChannel]);
  -[SCNMaterialProperty setTextureComponents:](self, "setTextureComponents:", [from textureComponents]);
  [(SCNMaterialProperty *)self _copyAnimationsFrom:from];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)_updateMaterialBorderColor:(id)color
{
  v4 = [(SCNMaterialProperty *)self effectSlotCreateIfNeeded:color != 0];
  if (v4)
  {
    TextureSampler = C3DEffectSlotGetTextureSampler(v4);
    if (TextureSampler)
    {
      v6 = TextureSampler;
      v8 = C3DColor4FromRGBCFColor(color, 0);

      C3DTextureSamplerSetBorderColor(v6, v8, v7);
    }
  }
}

- (void)_updateMaterialFilters
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v4 = effectSlot;
    TextureSampler = C3DEffectSlotGetTextureSampler(effectSlot);
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

    borderColor4 = [(SCNMaterialProperty *)self borderColor4];
    v14 = C3DTextureSamplerCreateEx(minificationFilter, magnificationFilter, mipFilter, wrapS, wrapT, WrapModeP, borderColor4, v13, self->_maxAnisotropy);
    C3DEffectSlotSetTextureSampler(v4, v14);

    CFRelease(v14);
  }
}

- (void)_updateMaterialPropertyTransform:(C3DMatrix4x4 *)transform
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {

    C3DEffectSlotSetImageTransform(effectSlot, transform);
  }
}

- (void)_updateMaterialAttachment:(id)attachment
{
  if (attachment)
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

    glID = [attachment glID];
    target = [attachment target];
    [attachment size];
    v17 = 0;
    if (glID && target && *&v15 > 0.0)
    {
      v23 = v15;
      v24 = v16;
      v17 = C3DTextureCreate();
      C3DTextureSetID(v17, glID, target);
      *&v18.f64[0] = v23;
      v18.f64[1] = v24;
      C3DTextureSetSize(v17, COERCE_DOUBLE(vcvt_f32_f64(v18)));
      [objc_msgSend(objc_msgSend(attachment "options")];
      LODWORD(v24) = v19;
      [objc_msgSend(objc_msgSend(attachment "options")];
      C3DTextureSetOffset(v17, COERCE_DOUBLE(__PAIR64__(v20, LODWORD(v24))));
      C3DTextureSetHasAlpha(v17, 1);
    }
  }

  else
  {
    v17 = 0;
  }

  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    if (v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    C3DEffectSlotSetTexture(effectSlot, v22);
  }
}

- (void)_layerDidChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  sceneRef = [(SCNMaterialProperty *)self sceneRef];

  [defaultCenter postNotificationName:@"kC3DSceneDidUpdateNotification" object:sceneRef];
}

- (void)_skSceneDidChange:(id)change
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  sceneRef = [(SCNMaterialProperty *)self sceneRef];

  [defaultCenter postNotificationName:@"kC3DSceneDidUpdateNotification" object:sceneRef];
}

- (void)_updateMaterialSKScene:(id)scene
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v6 = effectSlot;
    if (scene)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      v7 = [MEMORY[0x277CCAE60] valueWithPointer:scene];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__SCNMaterialProperty__updateMaterialSKScene___block_invoke;
      v10[3] = &unk_2782FF8E8;
      v10[4] = scene;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(v7, v10);
      C3DEffectSlotSetImageProxy(v6, IfNeededForSource);
    }

    else
    {
      C3DEffectSlotSetImageProxy(effectSlot, 0);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

      [defaultCenter removeObserver:self name:@"kC3DSceneDidUpdateNotification" object:0];
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

- (void)_updateMaterialMTLTexture:(id)texture
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    if (texture)
    {
      textureCopy = texture;
    }

    else
    {
      textureCopy = 0;
    }

    C3DEffectSlotSetMTLTexture(effectSlot, textureCopy);
  }
}

- (void)_updateMaterialSKTexture:(id)texture
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (!effectSlot)
  {
    return;
  }

  if (texture)
  {
    if (C3DMetalIsUsed())
    {
      metalTexture = [texture metalTexture];
      if (metalTexture)
      {
        v7 = metalTexture;
        effectSlot2 = [(SCNMaterialProperty *)self effectSlot];
        commonProfile = [(SCNMaterialProperty *)self commonProfile];
        if (commonProfile)
        {
          C3DEffectCommonProfileSetMTLTexture(commonProfile, self->_propertyType, v7);
        }

        else
        {
          C3DEffectSlotSetMTLTexture(effectSlot2, v7);
        }

        if ([texture hasAlpha])
        {
          v14 = 0;
        }

        else
        {
          v14 = 256;
        }

        *(effectSlot2 + 24) = *(effectSlot2 + 24) & 0xFEFF | v14;
      }

      goto LABEL_25;
    }

    [NSClassFromString(&cfstr_Skscnrenderer.isa) setPrefersOpenGL:1];
    glTextureId = [texture glTextureId];
    if (glTextureId)
    {
      v11 = glTextureId;
      v12 = C3DTextureCreate();
      C3DTextureSetID(v12, v11, 3553);
      if ([texture hasAlpha])
      {
        C3DTextureSetHasAlpha(v12, 1);
      }

      C3DTextureSetFormat(v12, [texture textureTarget]);
    }

    else
    {
      v12 = 0;
    }

    effectSlot3 = [(SCNMaterialProperty *)self effectSlot];
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
      C3DEffectSlotSetTexture(effectSlot3, v12);
      if (!v12)
      {
LABEL_25:
        [texture textureRect];
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
        if ([texture isRotated])
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
        -[SCNMaterialProperty setMinificationFilter:](self, "setMinificationFilter:", 2 * ([texture filteringMode] == 1));
        -[SCNMaterialProperty setMagnificationFilter:](self, "setMagnificationFilter:", 2 * ([texture filteringMode] == 1));
        if ([texture usesMipmaps])
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

  C3DEffectSlotSetTexture(effectSlot, 0);
}

- (void)_updateMaterialLayer:(id)layer
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v6 = effectSlot;
    if (layer)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__SCNMaterialProperty__updateMaterialLayer___block_invoke;
      v9[3] = &unk_2782FF8E8;
      v9[4] = layer;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(layer, v9);
      C3DEffectSlotSetImageProxy(v6, IfNeededForSource);
    }

    else
    {
      C3DEffectSlotSetImageProxy(effectSlot, 0);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

      [defaultCenter removeObserver:self name:@"SCNLayerTreeDidChange" object:0];
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

- (void)_updateMaterialAVPlayer:(id)player
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v5 = effectSlot;
    if (player)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__SCNMaterialProperty__updateMaterialAVPlayer___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = player;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(player, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(effectSlot, 0);
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

- (void)_updateMaterialCaptureDevice:(id)device
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v5 = effectSlot;
    if (device)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __52__SCNMaterialProperty__updateMaterialCaptureDevice___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = device;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(device, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(effectSlot, 0);
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

- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)source
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v5 = effectSlot;
    if (source)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __72__SCNMaterialProperty__updateMaterialCaptureDeviceOutputConsumerSource___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = source;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(source, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(effectSlot, 0);
    }
  }
}

uint64_t __72__SCNMaterialProperty__updateMaterialCaptureDeviceOutputConsumerSource___block_invoke(uint64_t a1)
{
  v2 = C3DImageProxyCreate(3);
  [*(a1 + 32) connectToProxy:v2];
  return v2;
}

- (void)_updateMaterialTextureProvider:(id)provider
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v5 = effectSlot;
    if (provider)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __54__SCNMaterialProperty__updateMaterialTextureProvider___block_invoke;
      v7[3] = &unk_2782FF8E8;
      v7[4] = provider;
      IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(provider, v7);
      C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
    }

    else
    {

      C3DEffectSlotSetImageProxy(effectSlot, 0);
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

- (void)_updatePrecomputedLightingEnvironment:(id)environment
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {

    C3DEffectSlotSetPrecomputedLightingEnvironment(effectSlot, environment);
  }
}

- (void)_updateMaterialProceduralContents:(id)contents
{
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  v5 = effectSlot;
  if (contents)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SCNMaterialProperty__updateMaterialProceduralContents___block_invoke;
    v7[3] = &unk_2782FF8E8;
    v7[4] = contents;
    IfNeededForSource = SCNGetCachedImageProxyOrCreateIfNeededForSource(contents, v7);
    C3DEffectSlotSetImageProxy(v5, IfNeededForSource);
  }

  else
  {

    C3DEffectSlotSetImageProxy(effectSlot, 0);
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

- (void)_updateMaterialImage:(id)image
{
  [(SCNMaterialProperty *)self _setC3DImageRef:?];
  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v6 = effectSlot;
    C3DEffectSlotSetImage(effectSlot, image);
    C3DEffectSlotSetImageProxy(v6, 0);
    C3DEffectSlotSetTexture(v6, 0);
    C3DEffectSlotSetMTLTexture(v6, 0);
    if (!image)
    {

      C3DEffectSlotSetHasNoContents(v6);
    }
  }
}

- (void)_updateMaterialNumber:(id)number
{
  if (number)
  {
    effectSlot = [(SCNMaterialProperty *)self effectSlot];
    if (!effectSlot)
    {
      return;
    }

    effectSlot2 = effectSlot;
    C3DEffectSlotSetImage(effectSlot, 0);
    C3DEffectSlotSetImageProxy(effectSlot2, 0);
    C3DEffectSlotSetTexture(effectSlot2, 0);
    goto LABEL_7;
  }

  v7 = scn_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __RemoveVRAMResourceFromDic_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  effectSlot2 = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot2)
  {
LABEL_7:
    [number floatValue];
    v22 = v15;
    if (C3DEffectSlotGetEffectProperty(effectSlot2) == 5)
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
    C3DEffectSlotSetColor(effectSlot2, v23.i32);
  }
}

- (void)_updateMaterialColor:(id)color
{
  if (!color)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _C3DCGColorGetComponentsInColorSpace_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  effectSlot = [(SCNMaterialProperty *)self effectSlot];
  if (effectSlot)
  {
    v14 = effectSlot;
    EffectProperty = C3DEffectSlotGetEffectProperty(effectSlot);
    IsRawFloatValue = C3DEffectPropertyGetSemanticForColorIsRawFloatValue(EffectProperty);
    v18[0] = C3DColor4FromRGBCFColor(color, IsRawFloatValue);
    v18[1] = v17;
    if (color)
    {
      C3DEffectSlotSetImage(v14, 0);
      C3DEffectSlotSetImageProxy(v14, 0);
      C3DEffectSlotSetTexture(v14, 0);
    }

    C3DEffectSlotSetColor(v14, v18);
  }
}

+ (id)captureDeviceOutputConsumerWithOptions:(id)options
{
  v3 = [[SCNCaptureDeviceOutputConsumerSource alloc] initWithOptions:options];

  return v3;
}

- (void)_customEncodingOfSCNMaterialProperty:(id)property
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
    SCNEncodeSCNMatrix4(property, @"contentsTransform", v25);
  }

  p_contents = &self->_contents;
  if (self->_contents)
  {
    if (self->_contentType == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SCNEncodeImageArrayForKey(property, *p_contents, @"imageArray");
        goto LABEL_15;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(objc_msgSend(property "options")] || (runtimeResolvedPath = self->_runtimeResolvedPath) == 0)
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
    propertyCopy4 = property;
LABEL_14:
    SCNEncodeImageContentsForKey(propertyCopy4, runtimeResolvedPath, @"image");
    goto LABEL_15;
  }

  c3dImage = self->_c3dImage;
  if (c3dImage)
  {
LABEL_26:
    SCNEncodeC3DImageForKey(property, c3dImage, @"image");
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
      SCNEncodeUnsafeObjectForKey(property, runtimeResolvedPath, v16);
      goto LABEL_15;
    }

    v17 = @"color";
    goto LABEL_37;
  }

  if (self->_contentType > 0xCu)
  {
    if (contentType == 13)
    {
      SCNEncodeImageFromMaterialPropertyTextureProviderForKey(property, runtimeResolvedPath, @"data");
      goto LABEL_15;
    }

    if (contentType == 14)
    {
      v17 = @"precomputedLightingEnvironment";
LABEL_37:
      propertyCopy6 = property;
      v19 = *p_contents;
LABEL_38:
      [propertyCopy6 encodeObject:v19 forKey:v17];
      goto LABEL_15;
    }
  }

  else
  {
    if (contentType == 5)
    {
      propertyCopy5 = property;
LABEL_40:
      SCNEncodeMTLTextureAsDataForKey(propertyCopy5, runtimeResolvedPath, 0, @"data");
      goto LABEL_15;
    }

    if (contentType == 9)
    {
      [*p_contents floatValue];
      [property encodeFloat:@"float" forKey:?];
      goto LABEL_15;
    }
  }

  v21 = [*p_contents replacementObjectForCoder:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    propertyCopy4 = property;
    runtimeResolvedPath = v21;
    goto LABEL_14;
  }

  if ([v21 conformsToProtocol:&unk_282E56760])
  {
    propertyCopy5 = property;
    runtimeResolvedPath = v21;
    goto LABEL_40;
  }

  if ([*p_contents conformsToProtocol:&unk_282E10C00])
  {
    classForCoder = [*p_contents classForCoder];
    if ([classForCoder isSubclassOfClass:objc_opt_class()])
    {
      v19 = *p_contents;
      v17 = @"image";
      propertyCopy6 = property;
      goto LABEL_38;
    }

    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SCNMaterialProperty *)classForCoder _customEncodingOfSCNMaterialProperty:v24];
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
  [property encodeInteger:self->_mappingChannel forKey:@"mappingChannel"];
  textureComponents = self->_textureComponents;
  if (textureComponents != 15)
  {
    [property encodeInteger:textureComponents forKey:@"textureComponents"];
  }

  *&v12 = self->_maxAnisotropy;
  [property encodeFloat:@"maxAnisotropy" forKey:v12];
  [property encodeInteger:self->_minificationFilter forKey:@"minificationFilter"];
  [property encodeInteger:self->_magnificationFilter forKey:@"magnificationFilter"];
  [property encodeInteger:self->_mipFilter forKey:@"mipFilter"];
  [property encodeInteger:self->_wrapS forKey:@"wrapS"];
  [property encodeInteger:self->_wrapT forKey:@"wrapT"];
}

- (void)_didDecodeSCNMaterialProperty:(id)property
{
  v49 = *MEMORY[0x277D85DE8];
  if (self->_customSlotName && !self->_customSlot)
  {
    self->_customSlot = C3DEffectSlotCreate(0, 27);
  }

  v5 = SCNDecodeImageContents(property, @"image");
  if (v5)
  {
    v6 = v5;
    v7 = SCNEnclosingURLForSceneDecoder(property);
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

    selfCopy2 = self;
    v10 = v6;
LABEL_11:
    [(SCNMaterialProperty *)selfCopy2 setContents:v10];
    goto LABEL_12;
  }

  v11 = [property decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v11)
  {
    v10 = v11;
    selfCopy2 = self;
    goto LABEL_11;
  }

  v16 = SCNDecodeImageArray(property, @"imageArray");
  if (v16)
  {
    v17 = v16;
    v18 = SCNEnclosingURLForSceneDecoder(property);
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
    v25 = [property decodeObjectOfClass:objc_opt_class() forKey:@"color"];
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
    v28 = SCNDecodeUnsafeObjectForKey(property, @"layer", v27);
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
    v30 = SCNDecodeUnsafeObjectForKey(property, @"attachment", v29);
    if (v30)
    {
      [(SCNMaterialProperty *)self setAttachment:v30];
      goto LABEL_12;
    }

    if ([property containsValueForKey:@"skscene"])
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
          block[4] = property;
          block[5] = &v39;
          dispatch_sync(MEMORY[0x277D85CD0], block);
          v31 = *(*(&v39 + 1) + 40);
        }

        else
        {
          v32 = [MEMORY[0x277CBEB98] setWithObject:NSClassFromString(&cfstr_Skscene.isa)];
          v31 = SCNDecodeUnsafeObjectForKey(property, @"skscene", v32);
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

    if ([property containsValueForKey:@"sktexture"])
    {
      if (NSClassFromString(&cfstr_Sktexture.isa))
      {
        v34 = [MEMORY[0x277CBEB98] setWithObject:NSClassFromString(&cfstr_Sktexture.isa)];
        v35 = SCNDecodeUnsafeObjectForKey(property, @"sktexture", v34);
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

    if ([property containsValueForKey:@"float"])
    {
      [property decodeFloatForKey:@"float"];
      -[SCNMaterialProperty setFloatValue:](self, "setFloatValue:", [MEMORY[0x277CCABB0] numberWithFloat:?]);
      goto LABEL_12;
    }

    if ([property containsValueForKey:@"precomputedLightingEnvironment"])
    {
      v37 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      [(SCNMaterialProperty *)self setPrecomputedLightingEnvironment:SCNDecodeUnsafeObjectForKey(property, @"precomputedLightingEnvironment", v37)];
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_13:
  v13 = [property decodeIntegerForKey:@"mappingChannel"];
  if (v13 != -1)
  {
    [(SCNMaterialProperty *)self setMappingChannel:v13];
  }

  if ([property containsValueForKey:@"textureComponents"])
  {
    -[SCNMaterialProperty setTextureComponents:](self, "setTextureComponents:", [property decodeIntegerForKey:@"textureComponents"]);
  }

  self->_minificationFilter = [property decodeIntegerForKey:@"minificationFilter"];
  self->_magnificationFilter = [property decodeIntegerForKey:@"magnificationFilter"];
  self->_mipFilter = [property decodeIntegerForKey:@"mipFilter"];
  self->_wrapS = [property decodeIntegerForKey:@"wrapS"];
  self->_wrapT = [property decodeIntegerForKey:@"wrapT"];
  [(SCNMaterialProperty *)self _updateMaterialFilters];
  self->_maxAnisotropy = 1.0;
  if ([property containsValueForKey:@"maxAnisotropy"])
  {
    [property decodeFloatForKey:@"maxAnisotropy"];
    if (v14 != 3.4028e38)
    {
      [(SCNMaterialProperty *)self setMaxAnisotropy:v14];
    }
  }

  if ([property containsValueForKey:@"contentsTransform"])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    SCNDecodeSCNMatrix4(property, @"contentsTransform", &v39);
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

- (void)encodeWithCoder:(id)coder
{
  if (*(self + 8))
  {
    [(SCNMaterialProperty *)self _syncObjCModel];
  }

  [(SCNMaterialProperty *)self _customEncodingOfSCNMaterialProperty:coder];
  [coder encodeInt:(*(self + 8) >> 1) & 1 forKey:@"isCommonProfileProperty"];
  parent = self->_parent;
  if (parent)
  {
    [coder encodeObject:parent forKey:@"parent"];
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

  [coder encodeInteger:v7 forKey:@"propertyType"];
  customSlotName = self->_customSlotName;
  if (customSlotName)
  {
    [coder encodeObject:customSlotName forKey:@"customSlotName"];
  }

  borderColor = self->_borderColor;
  if (borderColor)
  {
    SCNEncodeUnsafeObjectForKey(coder, borderColor, @"borderColor");
  }

  *&v9 = self->_intensity;
  [coder encodeFloat:@"intensity" forKey:v9];
  if ([(SCNMaterialProperty *)self effectSlotCreateIfNeeded:0])
  {
    [coder encodeBool:-[SCNMaterialProperty sRGBTexture](self forKey:{"sRGBTexture"), @"sRGB"}];
  }

  SCNEncodeAnimations(coder, self);
}

- (SCNMaterialProperty)initWithCoder:(id)coder
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
    v6 = [coder decodeIntegerForKey:@"propertyType"];
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
    v10 = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v16, 4)), @"parent"}];
    if (v10 == v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v4->_parent = v11;
    [(SCNMaterialProperty *)v4 _customDecodingOfSCNMaterialProperty:coder];
    *(v4 + 8) = (2 * ([coder decodeIntForKey:@"isCommonProfileProperty"] & 1)) | *(v4 + 8) & 0xFD;
    v4->_customSlotName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"customSlotName"];
    v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [(SCNMaterialProperty *)v4 setBorderColor:SCNDecodeUnsafeObjectForKey(coder, @"borderColor", v12)];
    [coder decodeFloatForKey:@"intensity"];
    [(SCNMaterialProperty *)v4 setIntensity:v13];
    if ([coder containsValueForKey:@"sRGB"])
    {
      -[SCNMaterialProperty setSRGBTexture:](v4, "setSRGBTexture:", [coder decodeBoolForKey:@"sRGB"]);
    }

    v4->_animationsLock._os_unfair_lock_opaque = 0;
    SCNDecodeAnimations(coder, v4);
    [(SCNMaterialProperty *)v4 _didDecodeSCNMaterialProperty:coder];
    *(v4 + 8) &= ~8u;
    [SCNTransaction setImmediateMode:v5];
  }

  return v4;
}

+ (id)precomputedLightingEnvironmentContentsWithURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:1 error:error];

  return [self precomputedLightingEnvironmentContentsWithData:v6 error:error];
}

+ (id)precomputedLightingEnvironmentContentsWithData:(id)data error:(id *)error
{
  if (!data)
  {
    return 0;
  }

  v6 = MEMORY[0x277CCAAC8];
  v7 = objc_opt_class();

  return [v6 unarchivedObjectOfClass:v7 fromData:data error:error];
}

+ (id)precomputedLightingEnvironmentDataForContents:(id)contents device:(id)device error:(id *)error
{
  +[SCNTransaction begin];
  [SCNTransaction setImmediateMode:1];
  v8 = objc_alloc_init(SCNScene);
  lightingEnvironment = [(SCNScene *)v8 lightingEnvironment];
  [(SCNMaterialProperty *)lightingEnvironment setContents:contents];
  effectSlot = [(SCNMaterialProperty *)lightingEnvironment effectSlot];
  if (!effectSlot)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SCNMaterialProperty(SCNMaterialPropertyPrivate_PrecomputedLightingEnvironment) precomputedLightingEnvironmentDataForContents:v11 device:? error:?];
    }
  }

  +[SCNTransaction commit];
  if (C3DEffectSlotHasImageOrTexture(effectSlot))
  {
    v12 = [+[SCNRenderer rendererWithDevice:options:](SCNRenderer _renderContextMetal:device];
    [(SCNMTLRenderContext *)v12 beginFrame:?];
    v13 = [SCNMTLRenderContext radianceTextureForEffectSlot:v12];
    v14 = [SCNMTLRenderContext irradianceTextureForEffectSlot:v12];
    v21 = 5;
    [(SCNMTLRenderContext *)v12 endFrameWaitingUntilCompleted:&v21 status:error error:?];
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
    if (!C3DEffectSlotHasPrecomputedLightingEnvironment(effectSlot))
    {

      return 0;
    }

    PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(effectSlot);
    v18 = PrecomputedLightingEnvironment;
  }

  if (!PrecomputedLightingEnvironment)
  {
    return 0;
  }

  v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:PrecomputedLightingEnvironment requiringSecureCoding:1 error:error];

  return v19;
}

- (void)propertyName
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [self propertyType];
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