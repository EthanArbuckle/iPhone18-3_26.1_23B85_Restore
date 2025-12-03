@interface CAWindowServerDisplay
- ($94F468A8D4C62B317260615823C2B210)whitepoint;
- ($BACEF72B376A330C60B67EB8E5FC279C)chromaticities;
- (BOOL)accessibilityFrameRateLimitEnabled;
- (BOOL)allowsDisplayCompositing;
- (BOOL)allowsExtendedDynamicRange;
- (BOOL)allowsVirtualModes;
- (BOOL)allowsWirelessColorFiltering;
- (BOOL)brightnessAvailable;
- (BOOL)canUpdateWithFlags:(unsigned int)flags;
- (BOOL)commitBrightness:(id *)brightness withBlock:(id)block;
- (BOOL)commitPreset;
- (BOOL)cursorEnabled;
- (BOOL)cursorHidden;
- (BOOL)disabled;
- (BOOL)disablesUpdates;
- (BOOL)enabled;
- (BOOL)finishExternalUpdate:(void *)update withFlags:(unsigned int)flags debugInfo:(unint64_t)info;
- (BOOL)forceCommitBrightness:(id *)brightness withBlock:(id)block;
- (BOOL)invertsColors;
- (BOOL)isBlanked;
- (BOOL)isDetaching;
- (BOOL)isFlipBookActive;
- (BOOL)isFlipBookEnabled;
- (BOOL)isFlipBookSuppressed;
- (BOOL)isGrayscale;
- (BOOL)isSecure;
- (BOOL)pulseWidthMaximization;
- (BOOL)scalePreservesAspect;
- (BOOL)secureIndicatorsEnabled;
- (BOOL)setDigitalModes:(id)modes;
- (BOOL)setDigitalModes:(id)modes withTimings:(id)timings;
- (BOOL)setWhitePoint:(id *)point rampDuration:(double)duration error:(id *)error;
- (BOOL)supportsColorSpaces;
- (BOOL)supportsCursor;
- (BOOL)supportsExtendedColors;
- (BOOL)tracksCarPlayRegions;
- (BOOL)tripleBuffered;
- (BOOL)usesPreferredModeRefreshRate;
- (BOOL)whitePointAvailable;
- (BOOL)whitePointD50XYZ;
- (CAPixelConstraints)averagePixelConstraints;
- (CATransform3D)transformFromLayerId:(SEL)id inContextId:(unint64_t)contextId;
- (CAWindowServerDisplay)cloneMaster;
- (CGColorSpace)blendColorSpace;
- (CGColorSpace)displayColorSpace;
- (CGColorTRC)blackpointAdaptation;
- (CGColorTRC)systemGamma;
- (CGPoint)convertPoint:(CGPoint)result fromContextId:(unsigned int)id;
- (CGPoint)convertPoint:(CGPoint)result toContextId:(unsigned int)id;
- (CGPoint)cursorPosition;
- (CGRect)bounds;
- (CGRect)detachingRect;
- (CGSize)maximumCursorSize;
- (CGSize)nativeSize;
- (CGSize)overscanAmounts;
- (CGSize)panelPhysicalSize;
- (CGSize)scales;
- (CGSize)touchScales;
- (NSDictionary)brightnessCapabilities;
- (NSDictionary)cursorDictionary;
- (NSDictionary)virtualDisplayMode;
- (NSSet)clones;
- (NSSet)systemIdentifiers;
- (NSString)TVMode;
- (NSString)TVSignalType;
- (NSString)colorMode;
- (NSString)deviceName;
- (NSString)name;
- (NSString)orientation;
- (NSString)overscanAdjustment;
- (NSString)uniqueId;
- (NSUUID)uuid;
- (__IOSurface)acquireFrozenSurface;
- (double)apertureOffset;
- (double)globalLightAngle;
- (double)maximumScale;
- (double)minimumScale;
- (double)nextWakeupTime;
- (double)overscanAmount;
- (double)scale;
- (float)contrast;
- (float)gamma;
- (float)idealRefreshRate;
- (float)maximumBrightness;
- (float)maximumLuminance;
- (float)maximumRefreshRate;
- (float)minimumRefreshRate;
- (float)nits;
- (id)_initWithCADisplayServer:(void *)server;
- (id)brightnessCallback;
- (id)frameInfoCallback;
- (id)hitTestAtPosition:(CGPoint)position options:(id)options;
- (id)hotPlugCallback;
- (id)needsGlobalLightCallback;
- (id)notificationQueue;
- (id)syncNotificationQueue;
- (id)updateRequestCallback;
- (int)processId;
- (int64_t)displayType;
- (int64_t)tag;
- (int64_t)transportType;
- (unint64_t)maxLayerBandwidth;
- (unint64_t)maximumSourceRectPixels;
- (unint64_t)maximumSourceRectWidth;
- (unint64_t)minimumSourceRectSize;
- (unint64_t)previousVBL;
- (unint64_t)productId;
- (unint64_t)vblDelta;
- (unint64_t)vendorId;
- (unsigned)clientPortAtPosition:(CGPoint)position;
- (unsigned)clientPortOfContextId:(unsigned int)id;
- (unsigned)contextIdAtPosition:(CGPoint)position excludingContextIds:(id)ids;
- (unsigned)displayId;
- (unsigned)framebufferFormat;
- (unsigned)rendererFlags;
- (unsigned)serviceObject;
- (unsigned)taskNamePortOfContextId:(unsigned int)id;
- (void)abortColorMatrixRamp:(float *)ramp scale:(float *)scale;
- (void)abortContrastEnhancerRamp:(float *)ramp;
- (void)addClone:(id)clone options:(id)options;
- (void)addFramePresentationTimestamp:(unint64_t)timestamp;
- (void)beginExternalUpdate:(void *)update usingSoftwareRenderer:(BOOL)renderer;
- (void)copyDisplayTimingsFromDisplay:(id)display;
- (void)dealloc;
- (void)detachingDisplay;
- (void)emitBrightnessError:(id *)error;
- (void)emitWhitePointError:(id *)error;
- (void)freeze;
- (void)invalidate;
- (void)postNotification:(id)notification payload:(id)payload;
- (void)postSyncNotification:(id)notification payload:(id)payload;
- (void)powerStateDidChange:(id)change;
- (void)registerForNotifications:(id)notifications withBlock:(id)block;
- (void)registerForSyncNotifications:(id)notifications withBlock:(id)block;
- (void)removeAllClones;
- (void)removeClone:(id)clone;
- (void)renderForTime:(double)time;
- (void)resetConfiguration;
- (void)setAccessibilityBounds:(CGRect)bounds;
- (void)setAccessibilityColorMatrix:(float *)matrix scale:(float)scale;
- (void)setAccessibilityFrameRateLimitEnabled:(BOOL)enabled;
- (void)setAllowsDisplayCompositing:(BOOL)compositing;
- (void)setAllowsExtendedDynamicRange:(BOOL)range;
- (void)setAllowsVirtualModes:(BOOL)modes;
- (void)setAllowsWirelessColorFiltering:(BOOL)filtering;
- (void)setAmbient:(float)ambient;
- (void)setApertureOffset:(double)offset;
- (void)setBlackpointAdaptation:(CGColorTRC *)adaptation;
- (void)setBlanked:(BOOL)blanked;
- (void)setBlendColorSpace:(CGColorSpace *)space;
- (void)setBrightnessCallback:(id)callback;
- (void)setBrightnessCapabilities:(id)capabilities;
- (void)setBrightnessControlDisabled:(BOOL)disabled;
- (void)setBrightnessLimit:(float)limit;
- (void)setColorMatrix:(const float *)matrix scale:(float)scale rampDuration:(double)duration;
- (void)setColorMode:(id)mode;
- (void)setContrast:(float)contrast;
- (void)setContrastEnhancer:(float)enhancer;
- (void)setContrastEnhancer:(float)enhancer rampDuration:(double)duration;
- (void)setContrastPreservation:(float)preservation;
- (void)setCursorDictionary:(id)dictionary;
- (void)setCursorEnabled:(BOOL)enabled;
- (void)setCursorHidden:(BOOL)hidden;
- (void)setCursorPosition:(CGPoint)position;
- (void)setDisablesUpdates:(BOOL)updates;
- (void)setDisplayColorSpace:(CGColorSpace *)space;
- (void)setEnabled:(BOOL)enabled;
- (void)setFilteredAmbient:(float)ambient;
- (void)setFlipBookEnabled:(BOOL)enabled;
- (void)setFlipBookSuppressed:(BOOL)suppressed;
- (void)setFrameInfoCallback:(id)callback;
- (void)setGammaAdjustment:(CGColorTRC)adjustment[3];
- (void)setGlobalLightAngle:(double)angle;
- (void)setGlobalLightParameters:(id)parameters;
- (void)setGrayscale:(BOOL)grayscale;
- (void)setHeadroom:(float)headroom;
- (void)setHighAmbientAdaptation:(float)adaptation;
- (void)setHotPlugCallback:(id)callback;
- (void)setIRDCFlushHint:(BOOL)hint;
- (void)setIdealRefreshRate:(float)rate;
- (void)setIndicatorBrightness:(float)brightness;
- (void)setIndicatorBrightnessLimit:(float)limit;
- (void)setInvertsColors:(BOOL)colors;
- (void)setIsReferencePreset:(BOOL)preset;
- (void)setLowAmbientAdaptation:(float)adaptation;
- (void)setMaximumBrightness:(float)brightness;
- (void)setMaximumRefreshRate:(float)rate;
- (void)setMinimumRefreshRate:(float)rate;
- (void)setNeedsGlobalLightCallback:(id)callback;
- (void)setNits:(float)nits;
- (void)setNotificationQueue:(id)queue;
- (void)setOrientation:(id)orientation;
- (void)setOverscanAdjustment:(id)adjustment;
- (void)setOverscanAmount:(double)amount;
- (void)setOverscanAmounts:(CGSize)amounts;
- (void)setPotentialHeadroom:(float)headroom;
- (void)setProcessId:(int)id;
- (void)setPulseWidthMaximization:(BOOL)maximization;
- (void)setSCLCursorFill:(float)fill g:(float)g b:(float)b a:(float)a;
- (void)setSCLCursorName:(__CFString *)name;
- (void)setSCLCursorOutline:(float)outline g:(float)g b:(float)b a:(float)a;
- (void)setSCLCursorResolution:(int)resolution;
- (void)setSCLCursorScale:(float)scale;
- (void)setSDRBrightness:(float)brightness;
- (void)setScale:(double)scale;
- (void)setScalePreservesAspect:(BOOL)aspect;
- (void)setScales:(CGSize)scales;
- (void)setSecure:(BOOL)secure;
- (void)setSecureIndicatorsEnabled:(BOOL)enabled;
- (void)setSyncNotificationQueue:(id)queue;
- (void)setSystemGamma:(CGColorTRC *)gamma;
- (void)setSystemIdentifiers:(id)identifiers;
- (void)setTVMode:(id)mode;
- (void)setTVSignalType:(id)type;
- (void)setTag:(int64_t)tag;
- (void)setTracksCarPlayRegions:(BOOL)regions;
- (void)setUpdateRequestCallback:(id)callback;
- (void)setUserAdjustment:(float *)adjustment scale:(float)scale;
- (void)setUsesPreferredModeRefreshRate:(BOOL)rate;
- (void)setWhitePointMatrix:(id *)matrix scale:(float)scale;
- (void)unregisterNotificationBlocks;
- (void)unregisterSyncNotificationBlocks;
- (void)update;
- (void)willUnblank;
@end

@implementation CAWindowServerDisplay

- (int64_t)displayType
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v3 = (*(*(impl->var1 + 12) + 672) >> 10) & 7;
  if ((v3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (BOOL)brightnessAvailable
{
  if (!self->_impl)
  {
    return 0;
  }

  if (CADeviceSupportsBrightnessTransactions::once != -1)
  {
    dispatch_once(&CADeviceSupportsBrightnessTransactions::once, &__block_literal_global_123);
  }

  return CADeviceSupportsBrightnessTransactions::supports_brightness_transaction == 1 && ![(CAWindowServerDisplay *)self displayType]|| [(CAWindowServerDisplay *)self displayType]== 3 || (*(*self->_impl->var1 + 336))(self->_impl->var1) != 0;
}

- (unsigned)displayId
{
  impl = self->_impl;
  if (impl)
  {
    return *(*(impl->var1 + 12) + 24);
  }

  else
  {
    return 0;
  }
}

- (id)notificationQueue
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  result = impl->var4;
  if (!result)
  {
    result = dispatch_queue_create("CABrightnessControl", 0);
    self->_impl->var4 = result;
  }

  return result;
}

- (BOOL)enabled
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = atomic_load((*(*(self->_impl->var1 + 12) + 768) + 1));
  v5 = v4 == 1;
  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (void)setSecureIndicatorsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_impl)
  {
    if (CADeviceSupportsMedina::once != -1)
    {
      dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
    }

    if (CADeviceSupportsMedina::medina == 1)
    {
      impl = self->_impl;
      pthread_mutex_lock(&impl->var0._m);
      var1 = self->_impl->var1;
      pthread_mutex_lock((var1 + 24));
      (*(**(var1 + 12) + 2208))();
      if (!enabled)
      {
        (*(**(var1 + 12) + 2176))(*(var1 + 12));
      }

      v7 = 0;
      v8 = vdupq_n_s64(0x40000000000uLL);
      (*(*var1 + 176))(var1, &v7, 0.0);
      pthread_mutex_unlock((var1 + 24));
      pthread_mutex_unlock(&impl->var0._m);
    }

    [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%s not supported on this platform", "-[CAWindowServerDisplay setSecureIndicatorsEnabled:]"}];
  }
}

- (BOOL)secureIndicatorsEnabled
{
  if (!self->_impl)
  {
    return 0;
  }

  if (CADeviceSupportsMedina::once != -1)
  {
    dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
  }

  if (CADeviceSupportsMedina::medina != 1)
  {
    [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%s not supported on this platform", "-[CAWindowServerDisplay secureIndicatorsEnabled]"}];
    return 0;
  }

  impl = self->_impl;
  pthread_mutex_lock(&impl->var0._m);
  v4 = *(self->_impl->var1 + 12);
  v5 = (*(*v4 + 2216))(v4);
  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (NSDictionary)virtualDisplayMode
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 696))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (CAPixelConstraints)averagePixelConstraints
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v3 = (*(**(impl->var1 + 12) + 1240))(*(impl->var1 + 12), a2);
  if (!v3)
  {
    return 0;
  }

  v4 = [[CADisplayPixelConstraints alloc] initWithConstraints:v3];

  return v4;
}

- (void)renderForTime:(double)time
{
  impl = self->_impl;
  if (impl)
  {
    CA::WindowServer::Server::render_for_time(impl->var1);
  }
}

- (id)needsGlobalLightCallback
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  var1 = impl->var1;
  os_unfair_lock_lock(var1 + 83);
  v4 = *(var1 + 35);
  os_unfair_lock_unlock(var1 + 83);
  return v4;
}

- (void)setNeedsGlobalLightCallback:(id)callback
{
  impl = self->_impl;
  if (impl)
  {
    var1 = impl->var1;
    os_unfair_lock_lock(var1 + 83);
    v6 = *(var1 + 35);
    if (v6)
    {
      _Block_release(v6);
      *(var1 + 35) = 0;
    }

    if (callback)
    {
      *(var1 + 35) = _Block_copy(callback);
    }

    os_unfair_lock_unlock(var1 + 83);
  }
}

- (void)setGlobalLightParameters:(id)parameters
{
  if (self->_impl)
  {
    [objc_msgSend(parameters objectForKeyedSubscript:{@"globalLightAngle", "floatValue"}];
    v6 = v5;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"globalLightOpacity", "floatValue"}];
    v8 = v7;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"globalLightSpread", "floatValue"}];
    v10 = v9;
    [objc_msgSend(parameters objectForKeyedSubscript:{@"globalLightHeight", "floatValue"}];
    var1 = self->_impl->var1;

    CA::WindowServer::Server::set_global_light_params(var1, v6, v8, v10, v11);
  }
}

- (double)globalLightAngle
{
  impl = self->_impl;
  if (impl)
  {
    return *(*(impl->var1 + 12) + 872);
  }

  else
  {
    return 0.0;
  }
}

- (void)setGlobalLightAngle:(double)angle
{
  impl = self->_impl;
  if (impl)
  {
    angleCopy = angle;
    CA::WindowServer::Server::set_global_light_params(impl->var1, angleCopy, NAN, NAN, NAN);
  }
}

- (void)setAccessibilityFrameRateLimitEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    enabledCopy = enabled;
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    *(var1 + 835) = enabledCopy;
    atomic_store(1u, var1 + 490);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = enabledCopy;
      _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "AXFrameRateLimit=%i", v8, 8u);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)accessibilityFrameRateLimitEnabled
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 835);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)setGammaAdjustment:(CGColorTRC)adjustment[3]
{
  impl = self->_impl;
  if (impl)
  {
    (*(**(impl->var1 + 12) + 1944))(*(impl->var1 + 12), adjustment);
  }
}

- (void)setBlackpointAdaptation:(CGColorTRC *)adaptation
{
  impl = self->_impl;
  if (impl)
  {
    (*(**(impl->var1 + 12) + 1928))(*(impl->var1 + 12), adaptation);
  }
}

- (CGColorTRC)blackpointAdaptation
{
  retstr->var1.var0.var6 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var1.var1.var1 = 0u;
  var0 = self->var1.var1.var0;
  if (var0)
  {
    self = (*(**(*(var0 + 64) + 96) + 1920))(*(*(var0 + 64) + 96), a3);
    if (self)
    {
      v5 = *&self->var1.var1.var1;
      *&retstr->var0 = *&self->var0;
      *&retstr->var1.var1.var1 = v5;
      retstr->var1.var0.var6 = self->var1.var0.var6;
    }
  }

  return self;
}

- (void)setSystemGamma:(CGColorTRC *)gamma
{
  impl = self->_impl;
  if (impl)
  {
    (*(**(impl->var1 + 12) + 1912))(*(impl->var1 + 12), gamma);
  }
}

- (CGColorTRC)systemGamma
{
  retstr->var1.var0.var6 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var1.var1.var1 = 0u;
  var0 = self->var1.var1.var0;
  if (var0)
  {
    self = (*(**(*(var0 + 64) + 96) + 1904))(*(*(var0 + 64) + 96), a3);
    if (self)
    {
      v5 = *&self->var1.var1.var1;
      *&retstr->var0 = *&self->var0;
      *&retstr->var1.var1.var1 = v5;
      retstr->var1.var0.var6 = self->var1.var0.var6;
    }
  }

  return self;
}

- (void)setDisplayColorSpace:(CGColorSpace *)space
{
  v11 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    var1 = impl->var1;
    (*(**(var1 + 12) + 1880))(*(var1 + 12), space);
    v9 = 0;
    v10 = vdupq_n_s64(0x10uLL);
    (*(*var1 + 176))(var1, &v9, 0.0);
  }

  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    v6 = CGColorSpaceCopyICCData(space);
    if (v6)
    {
      v7 = v6;
      v8 = CA_CFDataWriteTempFile(v6, "display-colorspace-XXXXXX.icc", 4);
      CFRelease(v7);
      free(v8);
    }
  }
}

- (CGColorSpace)displayColorSpace
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 1872))();
  }

  else
  {
    return 0;
  }
}

- (void)setBlendColorSpace:(CGColorSpace *)space
{
  v11 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    var1 = impl->var1;
    (*(**(var1 + 12) + 1864))(*(var1 + 12), space);
    v9 = 0;
    v10 = vdupq_n_s64(0x10uLL);
    (*(*var1 + 176))(var1, &v9, 0.0);
  }

  if (BYTE13(xmmword_1ED4E982C) == 1)
  {
    v6 = CGColorSpaceCopyICCData(space);
    if (v6)
    {
      v7 = v6;
      v8 = CA_CFDataWriteTempFile(v6, "blend-colorspace-XXXXXX.icc", 4);
      CFRelease(v7);
      free(v8);
    }
  }
}

- (CGColorSpace)blendColorSpace
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 1856))();
  }

  else
  {
    return 0;
  }
}

- (BOOL)supportsColorSpaces
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 408))();
  }

  else
  {
    return 0;
  }
}

- (void)addFramePresentationTimestamp:(unint64_t)timestamp
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 400))(impl->var1, timestamp);
  }
}

- (void)copyDisplayTimingsFromDisplay:(id)display
{
  if (display)
  {
    impl = self->_impl;
    if (impl)
    {
      v4 = *(display + 1);
      if (v4)
      {
        (*(*impl->var1 + 384))(impl->var1, *(v4 + 64));
      }
    }
  }
}

- (BOOL)setDigitalModes:(id)modes
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 376))(impl->var1, modes);
  }

  else
  {
    return 0;
  }
}

- (BOOL)setDigitalModes:(id)modes withTimings:(id)timings
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 368))(impl->var1, modes, timings);
  }

  else
  {
    return 0;
  }
}

- (void)postSyncNotification:(id)notification payload:(id)payload
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_impl)
  {
    syncNotificationQueue = [(CAWindowServerDisplay *)self syncNotificationQueue];
    if (syncNotificationQueue)
    {
      v8 = syncNotificationQueue;
      v9 = [self->_impl->var7 objectForKeyedSubscript:notification];
      if (v9)
      {
        v10 = v9;
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v11 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          uTF8String = [notification UTF8String];
          _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_INFO, "SyncNotification callback '%s' called...", buf, 0xCu);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__CAWindowServerDisplay_postSyncNotification_payload___block_invoke;
        block[3] = &unk_1E6DFA620;
        block[5] = payload;
        block[6] = v10;
        block[4] = notification;
        dispatch_sync(v8, block);
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v12 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_183AA6000, v12, OS_LOG_TYPE_INFO, "SyncNotification completed", buf, 2u);
        }
      }
    }
  }
}

- (void)setSyncNotificationQueue:(id)queue
{
  impl = self->_impl;
  if (impl)
  {

    self->_impl->var5 = queue;
  }
}

- (id)syncNotificationQueue
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  result = impl->var5;
  if (!result)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    result = dispatch_queue_create("CABrightnessControl Sync Queue", v5);
    self->_impl->var5 = result;
  }

  return result;
}

- (void)unregisterSyncNotificationBlocks
{
  v14 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v3 = objc_autoreleasePoolPush();
    allValues = [impl->var7 allValues];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          _Block_release(*(*(&v10 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }

    impl->var7 = 0;
    objc_autoreleasePoolPop(v3);
  }
}

- (void)registerForSyncNotifications:(id)notifications withBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    if (!impl->var9)
    {
      var1 = impl->var1;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__CAWindowServerDisplay_registerForSyncNotifications_withBlock___block_invoke;
      v16[3] = &unk_1E6DF7E20;
      v16[4] = self;
      CA::WindowServer::Server::set_pre_post_power_callback(var1, v16);
      v9 = self->_impl->var1;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__CAWindowServerDisplay_registerForSyncNotifications_withBlock___block_invoke_2;
      v15[3] = &unk_1E6DF7E48;
      v15[4] = self;
      CA::WindowServer::Server::set_pre_post_flipbook_callback(v9, v15);
      impl = self->_impl;
      impl->var9 = 1;
    }

    if (!impl->var7)
    {
      self->_impl->var7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(notifications, "count")}];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [notifications countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(notifications);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          _Block_release([self->_impl->var7 objectForKeyedSubscript:v14]);
          [self->_impl->var7 setObject:_Block_copy(block) forKeyedSubscript:v14];
        }

        v11 = [notifications countByEnumeratingWithState:&v18 objects:v17 count:16];
      }

      while (v11);
    }
  }
}

uint64_t __64__CAWindowServerDisplay_registerForSyncNotifications_withBlock___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = @"syncNotificationWillChangePowerState";
  }

  else
  {
    v6 = @"syncNotificationDidChangePowerState";
  }

  v8[0] = @"syncNotificationEventState";
  v8[1] = @"syncNotificationHotplugState";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:a4];
  return [*(a1 + 32) postSyncNotification:v6 payload:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
}

uint64_t __64__CAWindowServerDisplay_registerForSyncNotifications_withBlock___block_invoke_2(uint64_t a1, int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = @"syncNotificationWillChangeFlipBookState";
  }

  else
  {
    v3 = @"syncNotificationDidChangeFlipBookState";
  }

  v5 = @"syncNotificationEventState";
  v6[0] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
  return [*(a1 + 32) postSyncNotification:v3 payload:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
}

- (void)postNotification:(id)notification payload:(id)payload
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return;
  }

  v8 = [impl->var6 objectForKeyedSubscript:?];
  notificationQueue = [(CAWindowServerDisplay *)self notificationQueue];
  v10 = notificationQueue;
  if (v8)
  {
    v11 = notificationQueue == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v14 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      notificationCopy = notification;
      v18 = 2112;
      payloadCopy = payload;
      _os_log_impl(&dword_183AA6000, v14, OS_LOG_TYPE_DEFAULT, "Posting %@, payload: %@", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__CAWindowServerDisplay_postNotification_payload___block_invoke;
    block[3] = &unk_1E6DFA620;
    block[5] = payload;
    block[6] = v8;
    block[4] = notification;
    dispatch_async(v10, block);
    return;
  }

  if (notificationQueue)
  {
    if (!v8)
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v12 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        notificationCopy = [notification UTF8String];
        v13 = "no block registered for '%s' notification";
LABEL_23:
        _os_log_error_impl(&dword_183AA6000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
      }
    }
  }

  else
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v12 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      notificationCopy = [notification UTF8String];
      v13 = "no queue available for '%s' notification";
      goto LABEL_23;
    }
  }
}

- (void)setNotificationQueue:(id)queue
{
  if (self->_impl)
  {
    queueCopy = queue;

    self->_impl->var4 = queue;
  }
}

- (void)unregisterNotificationBlocks
{
  v14 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v3 = objc_autoreleasePoolPush();
    allValues = [impl->var6 allValues];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          _Block_release(*(*(&v10 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v6);
    }

    impl->var6 = 0;
    objc_autoreleasePoolPop(v3);
  }
}

- (void)registerForNotifications:(id)notifications withBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    if (!impl->var8)
    {
      var1 = impl->var1;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke;
      v25[3] = &unk_1E6DF7DA8;
      v25[4] = self;
      CA::WindowServer::Server::set_brightness_callback(var1, v25);
      v9 = self->_impl->var1;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_2;
      aBlock[3] = &unk_1E6DF7DA8;
      aBlock[4] = self;
      v10 = *(v9 + 30);
      if (v10)
      {
        _Block_release(v10);
        *(v9 + 30) = 0;
      }

      *(v9 + 30) = _Block_copy(aBlock);
      v11 = self->_impl->var1;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_3;
      v23[3] = &unk_1E6DF7DA8;
      v23[4] = self;
      _Block_release(*(v11 + 32));
      *(v11 + 32) = _Block_copy(v23);
      v12 = self->_impl->var1;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_4;
      v22[3] = &unk_1E6DF7DD0;
      v22[4] = self;
      if (CADeviceSupportsMedina::once != -1)
      {
        dispatch_once(&CADeviceSupportsMedina::once, &__block_literal_global_368);
      }

      if (CADeviceSupportsMedina::medina == 1)
      {
        (*(**(v12 + 12) + 2152))(*(v12 + 12), v22);
      }

      v13 = self->_impl->var1;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_5;
      v21[3] = &unk_1E6DF7DF8;
      v21[4] = self;
      v14 = *(v13 + 31);
      if (v14)
      {
        _Block_release(v14);
        *(v13 + 31) = 0;
      }

      *(v13 + 31) = _Block_copy(v21);
      impl = self->_impl;
      impl->var8 = 1;
    }

    if (!impl->var6)
    {
      self->_impl->var6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(notifications, "count")}];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [notifications countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(notifications);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [self->_impl->var6 objectForKeyedSubscript:v19];
          if (v20)
          {
            _Block_release(v20);
          }

          [self->_impl->var6 setObject:_Block_copy(block) forKeyedSubscript:v19];
        }

        v16 = [notifications countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v16);
    }
  }
}

uint64_t __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"notificationAttached";
  }

  else
  {
    v2 = @"notificationDetached";
  }

  return [*(a1 + 32) postNotification:v2 payload:0];
}

uint64_t __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"notificationPowerOn";
  }

  else
  {
    v2 = @"notificationPowerOff";
  }

  return [*(a1 + 32) postNotification:v2 payload:0];
}

uint64_t __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"notificationFlipBookOn";
  }

  else
  {
    v2 = @"notificationFlipBookOff";
  }

  return [*(a1 + 32) postNotification:v2 payload:0];
}

uint64_t __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = @"notificationSecureIndicatorOn";
  }

  else
  {
    v6 = @"notificationSecureIndicatorOff";
  }

  v8[0] = @"indicatorType";
  v8[1] = @"activeIndicatorCount";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v9[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  return [*(a1 + 32) postNotification:v6 payload:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
}

uint64_t __60__CAWindowServerDisplay_registerForNotifications_withBlock___block_invoke_5(uint64_t a1, int a2, char a3, double a4)
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *&a4;
  }

  else
  {
    v6 = 1.0;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v7 = *&dword_1ED4E9698;
  if ((a3 & 1) != 0 || *&dword_1ED4E9698 > 0.0)
  {
    v26[0] = @"requestEDR";
    *&a4 = v6;
    v26[1] = @"rampDuration";
    v27[0] = [MEMORY[0x1E696AD98] numberWithFloat:a4];
    *&v12 = v7;
    v27[1] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v8 = MEMORY[0x1E695DF20];
    v9 = v27;
    v10 = v26;
    v11 = 2;
  }

  else
  {
    v24 = @"requestEDR";
    *&a4 = v6;
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:a4];
    v8 = MEMORY[0x1E695DF20];
    v9 = &v25;
    v10 = &v24;
    v11 = 1;
  }

  v13 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:v11];
  if (x_log_get_brightness(void)::once != -1)
  {
    dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
  }

  v14 = x_log_get_brightness(void)::log;
  v15 = os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT);
  if (v7 > 0.0)
  {
    if (!v15)
    {
      return [*(a1 + 32) postNotification:@"notificationEDR" payload:{v13, v22, *v23, *&v23[16]}];
    }

    v21 = [*(a1 + 32) displayId];
    LODWORD(v22) = 67109632;
    HIDWORD(v22) = v21;
    *v23 = 2048;
    *&v23[2] = v6;
    *&v23[10] = 2048;
    *&v23[12] = v7;
    v17 = "Display %d requesting EDR headroom: %g with duration: %g";
    v18 = v14;
    v19 = 28;
    goto LABEL_15;
  }

  if (v15)
  {
    v16 = [*(a1 + 32) displayId];
    LODWORD(v22) = 67109376;
    HIDWORD(v22) = v16;
    *v23 = 2048;
    *&v23[2] = v6;
    v17 = "Display %d requesting EDR headroom: %g";
    v18 = v14;
    v19 = 18;
LABEL_15:
    _os_log_impl(&dword_183AA6000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
  }

  return [*(a1 + 32) postNotification:@"notificationEDR" payload:{v13, v22, *v23, *&v23[16]}];
}

- (unsigned)serviceObject
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 360))();
  }

  else
  {
    return 0;
  }
}

- (void)setBrightnessCapabilities:(id)capabilities
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 352))(impl->var1, capabilities);
  }
}

- (NSDictionary)brightnessCapabilities
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v3 = (*(*impl->var1 + 344))(impl->var1, a2);

  return v3;
}

- (BOOL)tripleBuffered
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 328))();
  }

  else
  {
    return 0;
  }
}

- (void)setCursorEnabled:(BOOL)enabled
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 296))(impl->var1, enabled);
  }
}

- (BOOL)cursorEnabled
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 288))();
  }

  else
  {
    return 0;
  }
}

- (void)setCursorHidden:(BOOL)hidden
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 280))(impl->var1, hidden);
  }
}

- (BOOL)cursorHidden
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 272))();
  }

  else
  {
    return 0;
  }
}

- (void)setCursorDictionary:(id)dictionary
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 264))(impl->var1, dictionary);
  }
}

- (NSDictionary)cursorDictionary
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 256))();
  }

  else
  {
    return 0;
  }
}

- (void)setCursorPosition:(CGPoint)position
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 248))(position, *&position.y);
  }
}

- (CGPoint)cursorPosition
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 240))(impl->var1, a2);
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)maximumCursorSize
{
  impl = self->_impl;
  if (impl)
  {
    (*(**(impl->var1 + 12) + 1712))(*(impl->var1 + 12), a2);
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSCLCursorResolution:(int)resolution
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 232))(impl->var1, *&resolution);
  }
}

- (void)setSCLCursorScale:(float)scale
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 224))(scale);
  }
}

- (void)setSCLCursorOutline:(float)outline g:(float)g b:(float)b a:(float)a
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 216))(outline, g, b, a);
  }
}

- (void)setSCLCursorFill:(float)fill g:(float)g b:(float)b a:(float)a
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 208))(fill, g, b, a);
  }
}

- (void)setSCLCursorName:(__CFString *)name
{
  impl = self->_impl;
  if (impl)
  {
    (*(*impl->var1 + 200))(impl->var1, name);
  }
}

- (BOOL)supportsCursor
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 192))();
  }

  else
  {
    return 0;
  }
}

- (CGRect)detachingRect
{
  v8[4] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v3 = v8;
    (*(**(impl->var1 + 12) + 640))(v8);
    v4 = *&v8[1];
    v5 = *&v8[2];
  }

  else
  {
    v3 = MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
  }

  v6 = v3[3];
  v7 = *v3;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (BOOL)isDetaching
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 632))();
  }

  else
  {
    return 0;
  }
}

- (void)detachingDisplay
{
  impl = self->_impl;
  if (impl)
  {
    return CA::WindowServer::Display::ogl_display(*(impl->var1 + 12));
  }

  else
  {
    return 0;
  }
}

- (id)frameInfoCallback
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  var3 = self->_impl->var3;
  pthread_mutex_unlock(&impl->var0._m);
  return var3;
}

- (void)setFrameInfoCallback:(id)callback
{
  v12[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v6 = self->_impl;
    var3 = v6->var3;
    if (var3)
    {
      _Block_release(var3);
      v6 = self->_impl;
      v6->var3 = 0;
    }

    if (callback)
    {
      v8 = _Block_copy(callback);
      v9 = self->_impl;
      v9->var3 = v8;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__CAWindowServerDisplay_setFrameInfoCallback___block_invoke;
      v12[3] = &unk_1E6DF7D80;
      v12[4] = self;
      var1 = v9->var1;
      v11 = v12;
    }

    else
    {
      var1 = v6->var1;
      v11 = 0;
    }

    CA::WindowServer::Server::set_frame_info_callback(var1, v11);
    pthread_mutex_unlock(&impl->var0._m);
  }
}

uint64_t __46__CAWindowServerDisplay_setFrameInfoCallback___block_invoke(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float a9, float a10, float a11, float a12, __int16 a13, unsigned __int8 a14, uint64_t a15, int a16, unsigned __int8 a17, uint64_t a18, uint64_t a19)
{
  v40 = *MEMORY[0x1E69E9840];
  v23[0] = a2;
  v23[1] = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a13;
  v30 = a14;
  v31 = a9;
  v32 = a10;
  v33 = LODWORD(a11);
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v39 = LODWORD(a12);
  v20 = *(*(a1 + 32) + 8);
  pthread_mutex_lock(v20);
  v21 = *(*(*(a1 + 32) + 8) + 168);
  if (v21)
  {
    (*(v21 + 16))(v21, v23);
  }

  return pthread_mutex_unlock(v20);
}

- (BOOL)finishExternalUpdate:(void *)update withFlags:(unsigned int)flags debugInfo:(unint64_t)info
{
  if (!update)
  {
    return 0;
  }

  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v7 = (*(*impl->var1 + 24))(impl->var1, update, *&flags, info);
  pthread_mutex_unlock(&self->_impl->var0._m);
  return v7;
}

- (void)beginExternalUpdate:(void *)update usingSoftwareRenderer:(BOOL)renderer
{
  if (update)
  {
    impl = self->_impl;
    if (impl)
    {
      rendererCopy = renderer;
      pthread_mutex_lock(&impl->var0._m);
      (*(*self->_impl->var1 + 88))(self->_impl->var1, rendererCopy);
      v7 = *(*self->_impl->var1 + 16);

      v7();
    }
  }
}

- (unint64_t)previousVBL
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(*self->_impl->var1 + 56))(self->_impl->var1);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (unint64_t)vblDelta
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(*self->_impl->var1 + 48))(self->_impl->var1);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (double)nextWakeupTime
{
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(*self->_impl->var1 + 40))(self->_impl->var1);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (BOOL)canUpdateWithFlags:(unsigned int)flags
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v4 = *&flags;
  pthread_mutex_lock(&self->_impl->var0._m);
  v6 = (*(*self->_impl->var1 + 8))(self->_impl->var1, v4);
  pthread_mutex_unlock(&impl->var0._m);
  return v6;
}

- (BOOL)setWhitePoint:(id *)point rampDuration:(double)duration error:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (point)
  {
    durationCopy = duration;
    LODWORD(duration) = 1.0;
    [(CAWindowServerDisplay *)self setColorMatrix:point scale:error rampDuration:duration, durationCopy];
  }

  else if (error && !*error)
  {
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"invalid nonnull argument";
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1, duration)}];
  }

  return point != 0;
}

- (BOOL)whitePointD50XYZ
{
  if ([(CAWindowServerDisplay *)self supportsColorSpaces])
  {
    if (CADeviceUseHarmonyXYZD50::once != -1)
    {
      dispatch_once(&CADeviceUseHarmonyXYZD50::once, &__block_literal_global_308);
    }

    v2 = CADeviceUseHarmonyXYZD50::use_d50_xyz;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)whitePointAvailable
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*impl->var1 + 152))();
  }

  else
  {
    return 0;
  }
}

- (BOOL)commitPreset
{
  v7[5] = *MEMORY[0x1E69E9840];
  var1 = self->_impl->var1;
  v3 = (*(*var1 + 424))(var1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E695E8D0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__CAWindowServerDisplay_commitPreset__block_invoke;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = var1;
    CFRunLoopPerformBlock(v3, v5, v7);
    CFRunLoopWakeUp(v4);
  }

  return v4 != 0;
}

uint64_t __37__CAWindowServerDisplay_commitPreset__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1[12] + 904) |= 0x2000u;
  v3 = 0;
  v4 = vdupq_n_s64(0x8000000000uLL);
  (*(*v1 + 176))(v1, &v3, 0.0);
  return (*(*v1[12] + 1208))();
}

- (void)setIsReferencePreset:(BOOL)preset
{
  if (preset)
  {
    v4 = 0x20000;
  }

  else
  {
    v4 = 0;
  }

  v3 = *(self->_impl->var1 + 12);
  *(v3 + 904) = *(v3 + 904) & 0xFFFDFFFF | v4;
}

- (BOOL)commitBrightness:(id *)brightness withBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    [(CAWindowServerDisplay *)self emitBrightnessError:brightness, block];
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v18 = x_log_get_windowserver(void)::log;
    v17 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR);
    if (!v17)
    {
      return v17;
    }

    *buf = 0;
    v19 = "brightness commit failed - server invalidated";
    goto LABEL_25;
  }

  var1 = impl->var1;
  if (![(CAWindowServerDisplay *)self brightnessAvailable])
  {
    [(CAWindowServerDisplay *)self emitBrightnessError:brightness];
    v20 = (*(*var1 + 336))(var1);
    v21 = CFCopyDescription(v20);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v22 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      displayId = [(CAWindowServerDisplay *)self displayId];
      if (v21)
      {
        CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
      }

      else
      {
        CStringPtr = "(null)";
      }

      *buf = 67109378;
      *&buf[4] = displayId;
      *&buf[8] = 2080;
      *&buf[10] = CStringPtr;
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "Display %d brightness commit failed - unavailable. Capabilities: %s", buf, 0x12u);
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    else if (!v21)
    {
LABEL_14:
      LOBYTE(v17) = 0;
      return v17;
    }

    CFRelease(v21);
    goto LABEL_14;
  }

  v9 = (*(*var1 + 424))(var1);
  if (v9)
  {
    v10 = v9;
    v11 = self->_impl;
    var2 = v11->var2.var2;
    var3 = v11->var2.var3;
    *&buf[16] = *&v11->var2.var8;
    v45 = *v11->var2.var12.var0;
    v46[0] = *&v11->var2.var12.var0[4];
    *(v46 + 12) = *&v11->var2.var12.var0[7];
    *buf = *&v11->var2.var4;
    var16 = v11->var2.var16;
    v11->var2.var15 = 0;
    v11->var2.var16 = 0;
    v26 = *&v11->var2.var0;
    [(CAWindowServerDisplay *)self displayId];
    kdebug_trace();
    v15 = _Block_copy(block);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__CAWindowServerDisplay_commitBrightness_withBlock___block_invoke;
    block[3] = &unk_1E6DF7D38;
    v35 = (var16 & 0x40) != 0;
    block[7] = v26;
    v28 = var2;
    v29 = var3;
    v31 = *&buf[16];
    v32 = v45;
    *v33 = v46[0];
    *&v33[12] = *(v46 + 12);
    v30 = *buf;
    v34 = var16;
    block[5] = v15;
    block[6] = var1;
    v36 = var16 & 1;
    v37 = (var16 & 4) >> 2;
    v38 = (var16 & 8) != 0;
    v39 = (var16 & 2) >> 1;
    v40 = (var16 & 0x10) != 0;
    v41 = (var16 & 0x20) != 0;
    v42 = (var16 & 0x80) != 0;
    block[4] = self;
    v16 = vdupq_n_s32(var16);
    v43 = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v16, xmmword_183E21510), vshlq_u32(v16, xmmword_183E21500))), 0x101010101010101);
    CFRunLoopPerformBlock(v10, *MEMORY[0x1E695E8D0], block);
    CFRunLoopWakeUp(v10);
    LOBYTE(v17) = 1;
    return v17;
  }

  [(CAWindowServerDisplay *)self emitBrightnessError:brightness];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v18 = x_log_get_windowserver(void)::log;
  v17 = os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR);
  if (v17)
  {
    *buf = 0;
    v19 = "brightness commit failed - no server runloop";
LABEL_25:
    _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_14;
  }

  return v17;
}

void __52__CAWindowServerDisplay_commitBrightness_withBlock___block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*(a1 + 32) + 8) + 64) + 96);
  v3 = (*(*v2 + 1032))(v2);
  if (*(a1 + 152))
  {
    if ((*(a1 + 144) & v3 & 1) == 0)
    {
LABEL_3:
      *(*(*(a1 + 48) + 96) + 25496) &= ~1u;
      v81 = 0uLL;
      v82 = 0;
      (*(**(*(a1 + 48) + 96) + 1216))(&v81);
      v4 = *(a1 + 48);
      if (*(a1 + 153) == 1)
      {
        v5 = *(a1 + 56) * 0.318309886;
        *(&v81 + 3) = v5;
        v6 = vabds_f32(v5, *(*(v4 + 96) + 25504)) / *(*(v4 + 96) + 25504);
        v7 = 0.02;
        if (byte_1ED4E989D)
        {
          v7 = 0.0;
        }

        if (v6 >= v7)
        {
          *(*(v4 + 96) + 25496) |= 1u;
          v4 = *(a1 + 48);
        }
      }

      v8 = CA::WindowServer::Display::edr_headroom(*(v4 + 96));
      if (*(a1 + 154) == 1)
      {
        v9 = *(a1 + 68);
      }

      else
      {
        v9 = v8;
      }

      if (*(a1 + 155) == 1)
      {
        v11 = *(a1 + 72);
        v12 = *(*(*(*(a1 + 32) + 8) + 64) + 96);
        CA::WindowServer::Display::initialize_edr_state(v12);
        v13 = *(v12 + 704);
        if (v13)
        {
          atomic_store(v11, (v13 + 4));
        }
      }

      (*(**(*(a1 + 48) + 96) + 952))(*(*(a1 + 48) + 96));
      v15 = *(a1 + 48);
      if (*(a1 + 156) == 1)
      {
        v16 = *(a1 + 64);
        CA::WindowServer::Server::set_sdr_nits(v15, v16);
        v15 = *(a1 + 48);
        v17 = vabds_f32(v16, *(*(v15 + 12) + 25500)) / *(*(v15 + 12) + 25500);
        v18 = 0.02;
        if (byte_1ED4E989D)
        {
          v18 = 0.0;
        }

        if (v17 >= v18)
        {
          *(*(v15 + 12) + 25496) |= 1u;
          v15 = *(a1 + 48);
        }
      }

      else
      {
        v16 = v14;
      }

      (*(**(v15 + 12) + 968))(*(v15 + 12));
      if (*(a1 + 157) == 1)
      {
        v20 = *(a1 + 76);
        v21 = *(a1 + 48);
        pthread_mutex_lock((v21 + 24));
        if ((*(**(v21 + 96) + 976))(v20))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v75 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v75, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_brightness_limit", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v21 + 176))(v21, buf, 0.0);
          (*(**(v21 + 96) + 1000))();
          if (MEMORY[0x1EEE86518] && v20 < 1000.0 && (*(*(v21 + 96) + 904) & 0x20000) != 0)
          {
            analytics_send_event_lazy();
          }
        }

        pthread_mutex_unlock((v21 + 24));
        v23 = *(*(*(a1 + 48) + 96) + 25512);
        v24 = vabds_f32(v20, v23) / v23;
        v25 = 0.02;
        if (byte_1ED4E989D)
        {
          v25 = 0.0;
        }

        if (v24 >= v25)
        {
          v22 = *(*(a1 + 48) + 96) + 24576;
          *(v22 + 920) |= 1u;
        }
      }

      else
      {
        v20 = v19;
      }

      if ((*(a1 + 148) & 7) != 0)
      {
        *(&v81 + 2) = v16 * v9;
        v26 = *(*(*(a1 + 32) + 8) + 64);
        (*(*v26 + 144))(v26, v9 != 1.0, v9);
        v27 = *(*(*(a1 + 32) + 8) + 64);
        *buf = v81;
        *&buf[16] = v82;
        (*(**(v27 + 96) + 1224))();
      }

      if (*(a1 + 158) == 1)
      {
        *(*(*(a1 + 48) + 96) + 25496) |= 1u;
        (*(**(*(a1 + 48) + 96) + 1256))(*(*(a1 + 48) + 96), *(a1 + 60));
      }

      if (*(a1 + 152) == 1)
      {
        *(*(*(a1 + 48) + 96) + 25496) |= 1u;
        (*(**(*(a1 + 48) + 96) + 1040))(*(*(a1 + 48) + 96), *(a1 + 144));
      }

      if (*(a1 + 159) == 1)
      {
        v28 = *(a1 + 80);
        if (v28 != (*(**(*(a1 + 48) + 96) + 1272))(*(*(a1 + 48) + 96)))
        {
          *(*(*(a1 + 48) + 96) + 25496) |= 1u;
        }

        v29 = *(a1 + 48);
        v30 = *(a1 + 80);
        pthread_mutex_lock((v29 + 24));
        if ((*(**(v29 + 96) + 1280))(v30))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v76 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v76, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_low_ambient_adaptation_strength", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v29 + 176))(v29, buf, 0.0);
          (*(**(v29 + 96) + 1000))();
        }

        pthread_mutex_unlock((v29 + 24));
      }

      if (*(a1 + 160) == 1)
      {
        v31 = *(a1 + 84);
        if (v31 != (*(**(*(a1 + 48) + 96) + 1288))(*(*(a1 + 48) + 96)))
        {
          *(*(*(a1 + 48) + 96) + 25496) |= 1u;
        }

        v32 = *(a1 + 48);
        v33 = *(a1 + 84);
        pthread_mutex_lock((v32 + 24));
        if ((*(**(v32 + 96) + 1296))(v33))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v77 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v77, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_high_ambient_adaptation_strength", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v32 + 176))(v32, buf, 0.0);
          (*(**(v32 + 96) + 1000))();
        }

        pthread_mutex_unlock((v32 + 24));
      }

      if (*(a1 + 161) == 1)
      {
        v34 = *(a1 + 48);
        v35 = *(a1 + 88);
        pthread_mutex_lock((v34 + 24));
        if ((*(**(v34 + 96) + 1312))(v35))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v78 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v78, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_contrast_preservation", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v34 + 176))(v34, buf, 0.0);
          (*(**(v34 + 96) + 1000))();
        }

        pthread_mutex_unlock((v34 + 24));
        v37 = *(*(*(a1 + 48) + 96) + 25524);
        v38 = vabds_f32(*(a1 + 88), v37) / v37;
        v39 = 0.02;
        if (byte_1ED4E989D)
        {
          v39 = 0.0;
        }

        if (v38 >= v39)
        {
          v36 = *(*(a1 + 48) + 96) + 24576;
          *(v36 + 920) |= 1u;
        }
      }

      if (*(a1 + 162) == 1)
      {
        v40 = *(a1 + 48);
        v41 = *(a1 + 92);
        pthread_mutex_lock((v40 + 24));
        if ((*(**(v40 + 96) + 1328))(v41))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v79 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v79, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_ib", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v40 + 176))(v40, buf, 0.0);
          (*(**(v40 + 96) + 1000))();
        }

        pthread_mutex_unlock((v40 + 24));
        v43 = *(*(*(a1 + 48) + 96) + 25516);
        v44 = *(a1 + 92);
        v45 = vabds_f32(v44, v43) / v43;
        v46 = 0.02;
        if (byte_1ED4E989D)
        {
          v46 = 0.0;
        }

        if (v45 >= v46 || (LODWORD(v43) & 0x7FFFFFFFu) < 0x7F800000 != (LODWORD(v44) & 0x7FFFFFFFu) < 0x7F800000)
        {
          v42 = *(*(a1 + 48) + 96) + 24576;
          *(v42 + 920) |= 1u;
        }
      }

      if (*(a1 + 163) == 1)
      {
        v47 = *(*(*(a1 + 32) + 8) + 64);
        v48 = *(a1 + 96);
        pthread_mutex_lock((v47 + 24));
        if ((*(**(v47 + 96) + 1336))(v48))
        {
          if (xmmword_1ED4E988C == 1)
          {
            if (x_log_get_CADebug(void)::once != -1)
            {
              dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
            }

            v80 = x_log_get_CADebug(void)::log;
            if (os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_183AA6000, v80, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness set_ib_limit", buf, 2u);
            }
          }

          *buf = 0;
          *&buf[8] = vdupq_n_s64(8uLL);
          (*(*v47 + 176))(v47, buf, 0.0);
          (*(**(v47 + 96) + 1000))();
        }

        pthread_mutex_unlock((v47 + 24));
      }

      if (*(a1 + 164) == 1 && *(a1 + 145) == 1)
      {
        CA::WindowServer::Server::set_irdc_hint(*(*(*(a1 + 32) + 8) + 64));
      }

      if (*(a1 + 165) == 1)
      {
        CA::WindowServer::Server::set_color_matrix(*(*(*(a1 + 32) + 8) + 64), (a1 + 104), *(a1 + 100), 0.0);
      }

      if (*(a1 + 166) == 1)
      {
        v49 = *(a1 + 48);
        v50 = *(a1 + 140);
        pthread_mutex_lock((v49 + 24));
        if ((*(**(v49 + 96) + 1352))(v50))
        {
          *buf = 0;
          *&buf[8] = vdupq_n_s64(0x100000uLL);
          (*(*v49 + 176))(v49, buf, 0.0);
          (*(**(v49 + 96) + 1000))();
        }

        pthread_mutex_unlock((v49 + 24));
        v52 = *(*(*(a1 + 48) + 96) + 25520);
        v53 = vabds_f32(*(a1 + 140), v52) / v52;
        v54 = 0.02;
        if (byte_1ED4E989D)
        {
          v54 = 0.0;
        }

        if (v53 >= v54)
        {
          v51 = *(*(a1 + 48) + 96) + 24576;
          *(v51 + 920) |= 1u;
        }
      }

      if (*(a1 + 40))
      {
        v55 = *(*(*(*(a1 + 32) + 8) + 64) + 96);
        if ((*(*v55 + 1968))(v55))
        {
          v56 = *(*(*(*(a1 + 32) + 8) + 64) + 96);
          (*(*v56 + 1976))(v56, *(a1 + 40));
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        _Block_release(*(a1 + 40));
      }

      v57 = *(a1 + 48);
      if (*(a1 + 167) == 1)
      {
        *(*(v57 + 96) + 25496) |= 1u;
        (*(**(*(a1 + 48) + 96) + 1048))(*(*(a1 + 48) + 96));
        v57 = *(a1 + 48);
      }

      v58 = *(v57 + 96) + 24576;
      if (*(v58 + 920))
      {
        if (x_log_get_brightness(void)::once != -1)
        {
          dispatch_once(&x_log_get_brightness(void)::once, &__block_literal_global_13_17485);
        }

        v59 = x_log_get_brightness(void)::log;
        if (os_log_type_enabled(x_log_get_brightness(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [*(a1 + 32) displayId];
          v61 = -1.0;
          if (*(a1 + 156))
          {
            v62 = v16;
          }

          else
          {
            v62 = -1.0;
          }

          if (*(a1 + 154))
          {
            v63 = v9;
          }

          else
          {
            v63 = -1.0;
          }

          v64 = -1.0;
          v65 = -1.0;
          if (*(a1 + 155) == 1)
          {
            v65 = *(a1 + 72);
          }

          if (*(a1 + 153))
          {
            v61 = *(&v81 + 3) * 3.14159265;
          }

          if (*(a1 + 158) == 1)
          {
            v64 = *(a1 + 60);
          }

          v66 = -1.0;
          if (*(a1 + 157))
          {
            v66 = v20;
          }

          v67 = -1.0;
          v68 = -1.0;
          if (*(a1 + 162) == 1)
          {
            v68 = *(a1 + 92);
          }

          if (*(a1 + 159) == 1)
          {
            v67 = *(a1 + 80);
          }

          v69 = -1.0;
          v70 = -1.0;
          if (*(a1 + 160) == 1)
          {
            v70 = *(a1 + 84);
          }

          if (*(a1 + 161) == 1)
          {
            v69 = *(a1 + 88);
          }

          v71 = -1.0;
          if (*(a1 + 166) == 1)
          {
            v71 = *(a1 + 140);
          }

          if (*(a1 + 152) == 1)
          {
            v72 = *(a1 + 144);
          }

          else
          {
            v72 = -1;
          }

          v73 = *(*(*(a1 + 48) + 96) + 25528);
          *buf = 67112448;
          *&buf[4] = v60;
          *&buf[8] = 2048;
          *&buf[10] = v62;
          *&buf[18] = 2048;
          *&buf[20] = v63;
          v84 = 2048;
          v85 = v65;
          v86 = 2048;
          v87 = v61;
          v88 = 2048;
          v89 = v64;
          v90 = 2048;
          v91 = v66;
          v92 = 2048;
          v93 = v68;
          v94 = 2048;
          v95 = v67;
          v96 = 2048;
          v97 = v70;
          v98 = 2048;
          v99 = v69;
          v100 = 2048;
          v101 = v71;
          v102 = 1024;
          v103 = v72;
          v104 = 1024;
          v105 = v73;
          _os_log_impl(&dword_183AA6000, v59, OS_LOG_TYPE_DEFAULT, "Display %d commitBrightness sdr: %g, headroom: %g, potential headroom: %g, ambient lux: %g, filtered ambient: %g, brightness limit: %g, indicator brightness: %g low ambient strength: %g, high ambient strength: %g, contrast preservation: %g, contrast enhancer: %g brightness ctl disabled %d, unlogged brightness transactions:%u\n", buf, 0x82u);
        }

        v74 = *(*(a1 + 48) + 96) + 24576;
        *(v74 + 924) = v16;
        *(v74 + 928) = HIDWORD(v81);
        *(v74 + 936) = v20;
        *(v74 + 940) = *(a1 + 92);
        *(v74 + 944) = *(a1 + 140);
        *(v74 + 948) = *(a1 + 88);
        *(v74 + 952) = 0;
      }

      else
      {
        ++*(v58 + 952);
      }

      return;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v10 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "brightness commit failed - brightness control is disabled", buf, 2u);
  }
}

- (BOOL)forceCommitBrightness:(id *)brightness withBlock:(id)block
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var16 |= 0x400u;
  }

  return [(CAWindowServerDisplay *)self commitBrightness:brightness withBlock:block];
}

- (void)setWhitePointMatrix:(id *)matrix scale:(float)scale
{
  impl = self->_impl;
  if (impl)
  {
    v5 = *matrix->var0;
    v6 = *&matrix->var0[4];
    impl->var2.var12.var0[8] = matrix->var0[8];
    *&impl->var2.var12.var0[4] = v6;
    *impl->var2.var12.var0 = v5;
    impl->var2.var11 = scale;
    impl->var2.var16 |= 0x100u;
  }
}

- (void)setIRDCFlushHint:(BOOL)hint
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var15 = hint;
    impl->var2.var16 |= 0x4000u;
  }
}

- (void)setIndicatorBrightnessLimit:(float)limit
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var10 = limit;
    impl->var2.var16 |= 0x2000u;
  }
}

- (void)setIndicatorBrightness:(float)brightness
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var9 = brightness;
    impl->var2.var16 |= 0x1000u;
  }
}

- (void)setContrastPreservation:(float)preservation
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var8 = preservation;
    impl->var2.var16 |= 0x8000u;
  }
}

- (void)setHighAmbientAdaptation:(float)adaptation
{
  impl = self->_impl;
  if (impl)
  {
    if (adaptation > 1.0)
    {
      adaptation = 1.0;
    }

    if (adaptation < 0.0)
    {
      adaptation = 0.0;
    }

    impl->var2.var7 = adaptation;
    impl->var2.var16 |= 0x800u;
  }
}

- (void)setLowAmbientAdaptation:(float)adaptation
{
  impl = self->_impl;
  if (impl)
  {
    if (adaptation > 1.0)
    {
      adaptation = 1.0;
    }

    if (adaptation < 0.0)
    {
      adaptation = 0.0;
    }

    impl->var2.var6 = adaptation;
    impl->var2.var16 |= 0x80u;
  }
}

- (void)setBrightnessControlDisabled:(BOOL)disabled
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var14 = disabled;
    impl->var2.var16 |= 0x40u;
  }
}

- (void)setBrightnessLimit:(float)limit
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var5 = limit;
    impl->var2.var16 |= 0x10u;
  }
}

- (void)setSDRBrightness:(float)brightness
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var2 = brightness;
    impl->var2.var16 |= 2u;
  }
}

- (void)setPotentialHeadroom:(float)headroom
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var4 = headroom;
    impl->var2.var16 |= 8u;
  }
}

- (void)setHeadroom:(float)headroom
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var3 = headroom;
    impl->var2.var16 |= 4u;
  }
}

- (void)setContrastEnhancer:(float)enhancer
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var13 = enhancer;
    impl->var2.var16 |= 0x200u;
  }
}

- (void)setFilteredAmbient:(float)ambient
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var1 = ambient;
    impl->var2.var16 |= 0x20u;
  }
}

- (void)setAmbient:(float)ambient
{
  impl = self->_impl;
  if (impl)
  {
    impl->var2.var0 = ambient;
    impl->var2.var16 |= 1u;
  }
}

- (void)emitWhitePointError:(id *)error
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (!*error)
    {
      v3 = *MEMORY[0x1E696A578];
      v4[0] = @"white point control not supported on this display";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
    }
  }
}

- (void)emitBrightnessError:(id *)error
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    if (!*error)
    {
      v3 = *MEMORY[0x1E696A578];
      v4[0] = @"brightness control not supported on this display";
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v4, &v3, 1)}];
    }
  }
}

- (int64_t)transportType
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  LODWORD(result) = (*(**(impl->var1 + 12) + 1408))(*(impl->var1 + 12), a2);
  if ((result - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

- (float)gamma
{
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  (*(**(impl->var1 + 12) + 1376))();
  return result;
}

- ($BACEF72B376A330C60B67EB8E5FC279C)chromaticities
{
  v9 = *MEMORY[0x1E69E9840];
  *&retstr->var0.var0 = 0u;
  *&retstr->var2.var0 = 0u;
  var1 = self->var1;
  if (var1)
  {
    v8 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    self = (*(**(*(*&var1 + 64) + 96) + 1368))(&v6);
    if (v8 == 1)
    {
      v5 = v7;
      *&retstr->var0.var0 = v6;
      *&retstr->var2.var0 = v5;
    }
  }

  return self;
}

- ($94F468A8D4C62B317260615823C2B210)whitepoint
{
  v8 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    (*(**(impl->var1 + 12) + 1368))(&v5);
    v4 = *(&v6 + 3);
    v3 = *(&v6 + 2);
    if (!v7)
    {
      v4 = 0.0;
      v3 = 0.0;
    }
  }

  else
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (unsigned)framebufferFormat
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(self->_impl->var1 + 12);
  v5 = (*(*v4 + 208))(v4);
  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  if (x_log_get_display_state(void)::once != -1)
  {
    dispatch_once(&x_log_get_display_state(void)::once, &__block_literal_global_5_5120);
  }

  v5 = x_log_get_display_state(void)::log;
  if (os_log_type_enabled(x_log_get_display_state(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = [(CAWindowServerDisplay *)self displayId];
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "Display %u setEnabled:%i", v9, 0xEu);
  }

  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    CA::WindowServer::Server::set_display_state(var1, enabledCopy, 0, 0);
    v8 = atomic_load((*(*(var1 + 12) + 768) + 2));
    (*(*var1 + 184))(var1, enabledCopy, v8);
    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)disabled
{
  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::once != -1)
  {
    dispatch_once(&CADeviceNeedsDisplayStateControlDependencyWorkaround::once, &__block_literal_global_484);
  }

  if (CADeviceNeedsDisplayStateControlDependencyWorkaround::b)
  {
    return 0;
  }

  return [(CAWindowServerDisplay *)self disablesUpdates];
}

- (BOOL)disablesUpdates
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = (*(*(self->_impl->var1 + 12) + 904) >> 11) & 1;
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setDisablesUpdates:(BOOL)updates
{
  v13 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    updatesCopy = updates;
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(var1 + 12) + 24);
      v10[0] = 67109376;
      v10[1] = v8;
      v11 = 1024;
      v12 = updatesCopy;
      _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Display %u disables updates %i", v10, 0xEu);
    }

    pthread_mutex_lock((var1 + 24));
    if (updatesCopy)
    {
      v9 = 2048;
    }

    else
    {
      v9 = 0;
    }

    *(*(var1 + 12) + 904) = *(*(var1 + 12) + 904) & 0xFFFFF7FF | v9;
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (__IOSurface)acquireFrozenSurface
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  var1 = self->_impl->var1;
  pthread_mutex_lock((var1 + 24));
  v5 = (*(**(var1 + 12) + 1624))();
  pthread_mutex_unlock((var1 + 24));
  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (void)freeze
{
  v11 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v5 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(var1 + 12) + 24);
      LODWORD(v9) = 67109120;
      HIDWORD(v9) = v6;
      _os_log_impl(&dword_183AA6000, v5, OS_LOG_TYPE_DEFAULT, "Display %u freeze", &v9, 8u);
    }

    *(var1 + 11) = dispatch_semaphore_create(0);
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 1632))();
    CA::WindowServer::Server::invalidate(var1, *(*(var1 + 12) + 216));
    v9 = 0;
    v10 = vdupq_n_s64(0x8000000uLL);
    (*(*var1 + 176))(var1, &v9, 0.0);
    pthread_mutex_unlock((var1 + 24));
    v7 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(*(var1 + 11), v7))
    {
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v8 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_183AA6000, v8, OS_LOG_TYPE_DEFAULT, "timed out freeze semaphore\n", &v9, 2u);
      }
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)tracksCarPlayRegions
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 836);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)setTracksCarPlayRegions:(BOOL)regions
{
  v15 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    regionsCopy = regions;
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    if (*(var1 + 836) != regionsCopy)
    {
      if (regionsCopy)
      {
        if (CACarPlayMarshalCreate(void)::once != -1)
        {
          dispatch_once(&CACarPlayMarshalCreate(void)::once, &__block_literal_global_19542);
        }

        *(var1 + 62) = objc_opt_new();
      }

      else
      {
        v7 = *(var1 + 62);
        [v7 invalidate];

        *(var1 + 62) = 0;
      }

      *(var1 + 836) = regionsCopy;
      v13 = 0;
      __asm { FMOV            V0.2D, #2.0 }

      v14 = _Q0;
      (*(*var1 + 176))(var1, &v13, 0.0);
    }

    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)allowsDisplayCompositing
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 826);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)setAllowsDisplayCompositing:(BOOL)compositing
{
  impl = self->_impl;
  if (impl)
  {
    compositingCopy = compositing;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_allows_display_compositing(self->_impl->var1, compositingCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)isSecure
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 825);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)setSecure:(BOOL)secure
{
  impl = self->_impl;
  if (impl)
  {
    secureCopy = secure;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_secure(self->_impl->var1, secureCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (id)updateRequestCallback
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 1840))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (id)brightnessCallback
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(self->_impl->var1 + 29);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (id)hotPlugCallback
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(self->_impl->var1 + 28);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setUpdateRequestCallback:(id)callback
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    (*(**(self->_impl->var1 + 12) + 1832))();

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setBrightnessCallback:(id)callback
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_brightness_callback(self->_impl->var1, callback);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setHotPlugCallback:(id)callback
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    v7 = *(var1 + 28);
    if (v7)
    {
      _Block_release(v7);
      *(var1 + 28) = 0;
    }

    if (callback)
    {
      *(var1 + 28) = _Block_copy(callback);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (NSString)TVSignalType
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = @"digital";
  if (*(*(self->_impl->var1 + 12) + 652) != 2)
  {
    v4 = 0;
  }

  if (*(*(self->_impl->var1 + 12) + 652))
  {
    v5 = v4;
  }

  else
  {
    v5 = @"none";
  }

  pthread_mutex_unlock(&impl->var0._m);
  return &v5->isa;
}

- (void)setTVSignalType:(id)type
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "%@: Ignoring call to setTVSignalType:", &v5, 0xCu);
  }
}

- (NSString)TVMode
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "%@: TVMode is deprecated!", &v5, 0xCu);
  }

  return 0;
}

- (void)setTVMode:(id)mode
{
  v7 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_183AA6000, v4, OS_LOG_TYPE_ERROR, "%@: setTVMode: is deprecated!", &v5, 0xCu);
  }
}

- (int)processId
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(*(self->_impl->var1 + 12) + 648);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setProcessId:(int)id
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v6 = *(self->_impl->var1 + 12);
    if (*(v6 + 648) != id)
    {
      *(v6 + 648) = id;
      CA::WindowServer::Display::post_display_changed(v6);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (int64_t)tag
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(*(self->_impl->var1 + 12) + 644);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setTag:(int64_t)tag
{
  impl = self->_impl;
  if (impl)
  {
    tagCopy = tag;
    pthread_mutex_lock(&self->_impl->var0._m);
    v6 = *(self->_impl->var1 + 12);
    if (*(v6 + 644) != tagCopy)
    {
      *(v6 + 644) = tagCopy;
      CA::WindowServer::Display::post_display_changed(v6);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)supportsExtendedColors
{
  impl = self->_impl;
  if (impl)
  {
    return (*(*(impl->var1 + 12) + 640) >> 3) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setAllowsVirtualModes:(BOOL)modes
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setAllowsVirtualModes:] is deprecated!", v4, 2u);
  }
}

- (BOOL)allowsVirtualModes
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay allowsVirtualModes] is deprecated!", v4, 2u);
  }

  return 1;
}

- (void)setColorMode:(id)mode
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setColorMode:] is deprecated!", v4, 2u);
  }
}

- (NSString)colorMode
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setColorMode:] is deprecated!", v4, 2u);
  }

  return @"auto";
}

- (BOOL)usesPreferredModeRefreshRate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay usesPreferredModeRefreshRate] is deprecated!", v4, 2u);
  }

  return 1;
}

- (void)setUsesPreferredModeRefreshRate:(BOOL)rate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setUsesPreferredModeRefreshRate:] is deprecated!", v4, 2u);
  }
}

- (float)idealRefreshRate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay idealRefreshRate] is deprecated!", v4, 2u);
  }

  return 60.0;
}

- (void)setIdealRefreshRate:(float)rate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setIdealRefreshRate:] is deprecated!", v4, 2u);
  }
}

- (float)maximumRefreshRate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay maximumRefreshRate] is deprecated!", v4, 2u);
  }

  return 3.4028e38;
}

- (void)setMaximumRefreshRate:(float)rate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setMaximumRefreshRate:] is deprecated!", v4, 2u);
  }
}

- (float)minimumRefreshRate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v2 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay minimumRefreshRate] is deprecated!", v4, 2u);
  }

  return 0.0;
}

- (void)setMinimumRefreshRate:(float)rate
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setMinimumRefreshRate:] is deprecated!", v4, 2u);
  }
}

- (float)maximumLuminance
{
  v6[3] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  (*(**(self->_impl->var1 + 12) + 1216))(v6);
  v4 = *(v6 + 1);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (float)maximumBrightness
{
  impl = self->_impl;
  if (!impl)
  {
    return 1.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 1016))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setMaximumBrightness:(float)brightness
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 1024))(brightness);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (float)contrast
{
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 936))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setContrast:(float)contrast
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 944))(contrast);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)allowsWirelessColorFiltering
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 1504))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setAllowsWirelessColorFiltering:(BOOL)filtering
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    (*(**(self->_impl->var1 + 12) + 1512))();

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setAccessibilityBounds:(CGRect)bounds
{
  v30 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    y = bounds.origin.y;
    height = bounds.size.height;
    x = bounds.origin.x;
    size = bounds.size;
    pthread_mutex_lock(&self->_impl->var0._m);
    *v5.i64 = x;
    *&v5.i64[1] = y;
    v6.f64[0] = 0.0;
    v7.i64[0] = *&size.width;
    *&v7.i64[1] = height;
    v8 = vdupq_lane_s64(vcgtq_f64(v6, size).i64[0], 0);
    var1 = self->_impl->var1;
    *&v10.i64[1] = height;
    *v10.i64 = -size.width;
    v11 = vbslq_s8(v8, v10, v7);
    *&v10.i64[1] = y;
    *v10.i64 = size.width + x;
    v12 = vbslq_s8(v8, v10, v5);
    if (height < 0.0)
    {
      v12.f64[1] = height + y;
      v11.f64[1] = -height;
    }

    v13 = vceqzq_f64(v11);
    v14 = 0uLL;
    if ((vorrq_s8(vdupq_laneq_s64(v13, 1), v13).u64[0] & 0x8000000000000000) == 0)
    {
      v15 = vceqq_f64(v11, v11);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v15), 1), v15).u64[0] & 0x8000000000000000) == 0)
      {
        v16 = vminnmq_f64(vaddq_f64(v12, v11), vdupq_n_s64(0x41C0000000000000uLL));
        v17 = vcvtmq_s64_f64(vmaxnmq_f64(v12, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v14 = vuzp1q_s32(v17, vsubq_s64(vcvtpq_s64_f64(v16), v17));
      }
    }

    v28 = v14;
    pthread_mutex_lock((var1 + 24));
    v18 = *(var1 + 12);
    *v29 = v28;
    (*(*v18 + 1528))(v18, v29);
    *v29 = 0;
    __asm { FMOV            V0.2D, #2.0 }

    *&v29[8] = _Q0;
    (*(*var1 + 176))(var1, v29, 0.0);
    pthread_mutex_unlock((var1 + 24));
    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setAccessibilityColorMatrix:(float *)matrix scale:(float)scale
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_accessibility_color_matrix(self->_impl->var1, matrix, scale);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setNits:(float)nits
{
  v6[1] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v6[0] = *(*(self->_impl->var1 + 12) + 656);
    if (!CA::WindowServer::Display::Mode::is_hdr(v6))
    {
      nits = nits / CA::WindowServer::Display::edr_headroom(*(self->_impl->var1 + 12));
    }

    CA::WindowServer::Server::set_sdr_nits(self->_impl->var1, nits);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (float)nits
{
  v6[1] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 952))();
  v6[0] = *(*(self->_impl->var1 + 12) + 656);
  if (!CA::WindowServer::Display::Mode::is_hdr(v6))
  {
    v4 = CA::WindowServer::Display::edr_headroom(*(self->_impl->var1 + 12)) * v4;
  }

  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)abortContrastEnhancerRamp:(float *)ramp
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    if (((*(**(self->_impl->var1 + 12) + 1032))() & 1) == 0)
    {
      var1 = self->_impl->var1;
      pthread_mutex_lock((var1 + 24));
      (*(**(var1 + 12) + 1472))();
      pthread_mutex_unlock((var1 + 24));
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setContrastEnhancer:(float)enhancer rampDuration:(double)duration
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    if (((*(**(self->_impl->var1 + 12) + 1032))() & 1) == 0)
    {
      var1 = self->_impl->var1;
      pthread_mutex_lock((var1 + 24));
      (*(**(var1 + 12) + 1464))(enhancer, duration);
      pthread_mutex_unlock((var1 + 24));
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setUserAdjustment:(float *)adjustment scale:(float)scale
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 1456))(scale);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)abortColorMatrixRamp:(float *)ramp scale:(float *)scale
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 1448))();
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)setColorMatrix:(const float *)matrix scale:(float)scale rampDuration:(double)duration
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_color_matrix(self->_impl->var1, matrix, scale, duration);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)isGrayscale
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 920))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setGrayscale:(BOOL)grayscale
{
  v8 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 928))();
    CA::WindowServer::Server::invalidate(var1, *(*(var1 + 12) + 216));
    v6 = 0;
    v7 = vdupq_n_s64(0x10000uLL);
    (*(*var1 + 176))(var1, &v6, 0.0);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)allowsExtendedDynamicRange
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(*self->_impl->var1 + 128))(self->_impl->var1);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setAllowsExtendedDynamicRange:(BOOL)range
{
  impl = self->_impl;
  if (impl)
  {
    rangeCopy = range;
    pthread_mutex_lock(&self->_impl->var0._m);
    (*(*self->_impl->var1 + 136))(self->_impl->var1, rangeCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)pulseWidthMaximization
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 888))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setPulseWidthMaximization:(BOOL)maximization
{
  v8 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 896))();
    CA::WindowServer::Server::invalidate(var1, *(*(var1 + 12) + 216));
    v6 = 0;
    v7 = vdupq_n_s64(0x10000uLL);
    (*(*var1 + 176))(var1, &v6, 0.0);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)invertsColors
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 864))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setInvertsColors:(BOOL)colors
{
  v8 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    (*(**(var1 + 12) + 872))();
    CA::WindowServer::Server::invalidate(var1, *(*(var1 + 12) + 216));
    v6 = 0;
    v7 = vdupq_n_s64(0x10000uLL);
    (*(*var1 + 176))(var1, &v6, 0.0);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (double)apertureOffset
{
  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(*(self->_impl->var1 + 12) + 68);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setApertureOffset:(double)offset
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (CGSize)overscanAmounts
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 12);
    v5 = *(v4 + 60);
    v6 = *(v4 + 64);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setOverscanAmounts:(CGSize)amounts
{
  impl = self->_impl;
  if (impl)
  {
    height = amounts.height;
    width = amounts.width;
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    v8 = *(var1 + 12);
    *&width = width;
    *(v8 + 60) = LODWORD(width);
    *&height = height;
    *(v8 + 64) = LODWORD(height);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (double)overscanAmount
{
  v14 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay overscanAmount] is deprecated. Please use -overscanAmounts!", buf, 2u);
  }

  impl = self->_impl;
  if (!impl)
  {
    return 0.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v5 = *(self->_impl->var1 + 12);
  v6 = *(v5 + 60);
  v7 = *(v5 + 64);
  if (v6 != v7)
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v8 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_183AA6000, v8, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay overscanAmount] - horizontal and vertical overscan amounts are not equal!", v12, 2u);
    }
  }

  if (v6 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  pthread_mutex_unlock(&impl->var0._m);
  return v10;
}

- (void)setOverscanAmount:(double)amount
{
  v11 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v5 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "[CAWindowServerDisplay setOverscanAmount:] is deprecated. Please use -setOverscanAmounts:!", v10, 2u);
  }

  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    amountCopy = amount;
    pthread_mutex_lock((var1 + 24));
    v9 = *(var1 + 12);
    *(v9 + 60) = amountCopy;
    *(v9 + 64) = amountCopy;
    pthread_mutex_unlock((var1 + 24));
    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (NSString)overscanAdjustment
{
  impl = self->_impl;
  if (!impl)
  {
    return @"none";
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(*(self->_impl->var1 + 12) + 673) & 3;
  pthread_mutex_unlock(&impl->var0._m);
  return qword_1E6DF7EE8[v4];
}

- (void)setOverscanAdjustment:(id)adjustment
{
  if (self->_impl)
  {
    if ([adjustment isEqualToString:@"none"])
    {
      v5 = 1;
    }

    else if ([adjustment isEqualToString:@"scaleContent"])
    {
      v5 = 2;
    }

    else
    {
      if (![adjustment isEqualToString:@"insetBounds"])
      {
        return;
      }

      v5 = 3;
    }

    impl = self->_impl;
    pthread_mutex_lock(&impl->var0._m);
    CA::WindowServer::Server::set_overscan_adjustment(self->_impl->var1, v5);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (NSString)orientation
{
  impl = self->_impl;
  if (!impl)
  {
    return @"portrait";
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 848))();
  pthread_mutex_unlock(&impl->var0._m);
  if (v4 > 3)
  {
    return 0;
  }

  else
  {
    return &off_1E6DF7EC8[v4]->isa;
  }
}

- (void)setOrientation:(id)orientation
{
  if ([orientation isEqualToString:@"portrait"])
  {
    v5 = 0;
  }

  else if ([orientation isEqualToString:@"landscapeLeft"])
  {
    v5 = 1;
  }

  else if ([orientation isEqualToString:@"portraitUpsideDown"])
  {
    v5 = 2;
  }

  else if ([orientation isEqualToString:@"landscapeRight"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v7 = *(self->_impl->var1 + 12);
    v8 = (*(*v7 + 840))(v7, v5);
    v9 = v7[336];
    if (v8 != v9)
    {
      v7[336] = v9 & 0xFF00 | v8;
      CA::WindowServer::Display::post_display_changed(v7);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)isFlipBookActive
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(self->_impl->var1 + 12);
  v5 = atomic_load(*(v4 + 768));
  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v7 = atomic_load(*(v4 + 768));
    v6 = v7 == 3;
  }

  pthread_mutex_unlock(&impl->var0._m);
  return v6;
}

- (BOOL)isFlipBookSuppressed
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 304))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setFlipBookSuppressed:(BOOL)suppressed
{
  impl = self->_impl;
  if (impl)
  {
    suppressedCopy = suppressed;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_flipbook_suppressed(self->_impl->var1, suppressedCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)isFlipBookEnabled
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = (*(**(self->_impl->var1 + 12) + 288))();
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (void)setFlipBookEnabled:(BOOL)enabled
{
  impl = self->_impl;
  if (impl)
  {
    enabledCopy = enabled;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_flipbook_enabled(self->_impl->var1, enabledCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)resetConfiguration
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    v5 = *(var1 + 12);
    if (*(v5 + 672))
    {
      *(v5 + 672) &= 0xFF00u;
      CA::WindowServer::Display::post_display_changed(v5);
    }

    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)willUnblank
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    v5 = atomic_load((*(*(var1 + 12) + 768) + 1));
    if (v5 != 1 && (*(*(var1 + 12) + 905) & 8) == 0)
    {
      pthread_mutex_lock((var1 + 24));
      if (BYTE11(xmmword_1ED4E980C) == 1)
      {
        kdebug_trace();
      }

      (*(**(var1 + 12) + 232))(*(var1 + 12));
      pthread_mutex_unlock((var1 + 24));
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)isBlanked
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = atomic_load((*(*(self->_impl->var1 + 12) + 768) + 1));
  v5 = v4 != 1;
  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (void)setBlanked:(BOOL)blanked
{
  impl = self->_impl;
  if (impl)
  {
    blankedCopy = blanked;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_blanked(self->_impl->var1, blankedCopy);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)powerStateDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_impl)
  {
    processInfo = [objc_msgSend(MEMORY[0x1E696AE30] processInfo];
    impl = self->_impl;
    pthread_mutex_lock(&impl->var0._m);
    var1 = self->_impl->var1;
    *(var1 + 829) = processInfo;
    atomic_store(1u, var1 + 489);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v7 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(var1 + 12) + 24);
      v9[0] = 67109376;
      v9[1] = v8;
      v10 = 1024;
      v11 = processInfo;
      _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_DEFAULT, "Display %i LowPowerMode=%i", v9, 0xEu);
    }

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (CAWindowServerDisplay)cloneMaster
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(self->_impl->var1 + 12);
  if (*(v4 + 48))
  {
    v5 = display_for_server(*(v4 + 48));
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(&impl->var0._m);
  return v5;
}

- (void)removeAllClones
{
  v12 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl || (_force_cloning & 1) != 0)
  {
    return;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  CA::WindowServer::Server::clones(&v9, self->_impl->var1);
  v4 = v9;
  v5 = v10 - v9;
  if (v10 != v9)
  {
    [(CAWindowServerDisplay *)self willChangeValueForKey:@"clones"];
    if ((v5 >> 3) <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 >> 3;
    }

    v7 = v4;
    do
    {
      v8 = display_for_server(*v7);
      [v8 willChangeValueForKey:@"cloneMaster"];
      CA::WindowServer::Server::remove_clone(self->_impl->var1, *v7);
      [v8 didChangeValueForKey:@"cloneMaster"];
      ++v7;
      --v6;
    }

    while (v6);
    [(CAWindowServerDisplay *)self didChangeValueForKey:@"clones"];
    goto LABEL_12;
  }

  if (v9)
  {
LABEL_12:
    operator delete(v4);
  }

  pthread_mutex_unlock(&impl->var0._m);
}

- (void)removeClone:(id)clone
{
  if (!clone)
  {
    [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%@: can't remove a nil clone display", self}];
  }

  impl = self->_impl;
  if (impl && *(clone + 1) && (_force_cloning & 1) == 0)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    if (*(*(*(*(clone + 1) + 64) + 96) + 48) != self->_impl->var1)
    {
      [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%@: %@ is not our clone", self, clone}];
    }

    [(CAWindowServerDisplay *)self willChangeValueForKey:@"clones"];
    [clone willChangeValueForKey:@"cloneMaster"];
    CA::WindowServer::Server::remove_clone(self->_impl->var1, *(*(clone + 1) + 64));
    [clone didChangeValueForKey:@"cloneMaster"];
    [(CAWindowServerDisplay *)self didChangeValueForKey:@"clones"];

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)addClone:(id)clone options:(id)options
{
  v30 = *MEMORY[0x1E69E9840];
  if (!clone)
  {
    [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%@: can't clone a display to nil", self}];
  }

  impl = self->_impl;
  if (impl && *(clone + 1) && (_force_cloning & 1) == 0)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    if (clone == self)
    {
      v8 = @"%@: can't clone a display to itself";
    }

    else
    {
      if (!*(*(self->_impl->var1 + 12) + 48))
      {
        if (*(*(*(*(clone + 1) + 64) + 96) + 48))
        {
          [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{@"%@: %@ is already a clone", self, clone}];
        }

        goto LABEL_11;
      }

      v8 = @"%@: can't clone a display that's a clone";
    }

    [MEMORY[0x1E695DF30] raise:@"CAWindowServerDisplay" format:{v8, self}];
LABEL_11:
    cloneCopy = clone;
    selfCopy = self;
    if (options)
    {
      v9 = [options objectForKey:@"replayContexts"];
      optionsCopy = options;
      if (v9)
      {
        memset(v27, 0, sizeof(v27));
        if ([v9 countByEnumeratingWithState:v27 objects:v26 count:16])
        {
          [**(&v27[0] + 1) unsignedIntValue];
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
        }
      }

      if ([objc_msgSend(options objectForKey:{@"disableScaling", "BOOLValue"}])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      if ([objc_msgSend(optionsCopy objectForKey:{@"disableRotation", "BOOLValue"}])
      {
        v10 |= 4u;
      }

      if ([objc_msgSend(optionsCopy objectForKey:{@"disableOverscan", "BOOLValue"}])
      {
        v10 |= 8u;
      }

      if ([objc_msgSend(optionsCopy objectForKey:{@"disableYUV", "BOOLValue"}])
      {
        v10 |= 0x10u;
      }

      v11 = [objc_msgSend(optionsCopy objectForKey:{@"noReplayScaling", "BOOLValue"}];
      v12 = v10 | 0x40;
      if (!v11)
      {
        v12 = v10;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [(CAWindowServerDisplay *)self willChangeValueForKey:@"clones"];
    [clone willChangeValueForKey:@"cloneMaster"];
    var1 = self->_impl->var1;
    v15 = *(*(clone + 1) + 64);
    pthread_mutex_lock((var1 + 24));
    v16 = *(var1 + 12);
    if (*(v16 + 48) || *(*(v15 + 12) + 48))
    {
      pthread_mutex_unlock((var1 + 24));
      v17 = selfCopy;
    }

    else
    {
      *(v16 + 40) = x_list_prepend(*(v16 + 40), v15);
      pthread_mutex_unlock((var1 + 24));
      CA::WindowServer::Server::set_clone_master(v15, var1, v13);
      *(*(var1 + 12) + 904) |= 0x2000u;
      *buf = 0;
      v29 = vdupq_n_s64(0x80000uLL);
      (*(*var1 + 176))(var1, buf, 0.0);
      if (x_log_get_windowserver(void)::once != -1)
      {
        dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
      }

      v17 = selfCopy;
      v20 = x_log_get_windowserver(void)::log;
      if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*(var1 + 12) + 24);
        v22 = *(*(v15 + 12) + 24);
        *buf = 67109632;
        *&buf[4] = v21;
        v29.i16[0] = 1024;
        *(v29.i32 + 2) = v22;
        v29.i16[3] = 1024;
        v29.i32[2] = (v13 >> 5) & 1;
        _os_log_impl(&dword_183AA6000, v20, OS_LOG_TYPE_DEFAULT, "Display %u add clone %u replay %i", buf, 0x14u);
      }
    }

    v18 = cloneCopy;
    if ((v13 & 0x20) != 0)
    {
      v19 = *(*(cloneCopy + 1) + 64);
      pthread_mutex_lock((v19 + 24));
      if (*(v19 + 136))
      {
        CA::WindowServer::Server::clear_replay_contexts(v19);
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      *(v19 + 136) = malloc_type_zone_calloc(malloc_zone, 1uLL, 0, 0x10200403A5D3213uLL);
      *(v19 + 144) = 0;
      *(v19 + 827) = 1;
      pthread_mutex_unlock((v19 + 24));
      v18 = cloneCopy;
      v17 = selfCopy;
    }

    [v18 didChangeValueForKey:@"cloneMaster"];
    [(CAWindowServerDisplay *)v17 didChangeValueForKey:@"clones"];
    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (NSSet)clones
{
  v15 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    CA::WindowServer::Server::clones(&v12, self->_impl->var1);
    v4 = v12;
    v5 = v13 - v12;
    if (v13 == v12)
    {
      v6 = [MEMORY[0x1E695DFD8] set];
      if (!v4)
      {
LABEL_16:
        pthread_mutex_unlock(&impl->var0._m);
        return v6;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      if ((v5 >> 3) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 >> 3;
      }

      v8 = v4;
      do
      {
        v9 = display_for_server(*v8);
        if (v9)
        {
          [(NSSet *)v6 addObject:v9];
        }

        ++v8;
        --v7;
      }

      while (v7);
    }

    operator delete(v4);
    goto LABEL_16;
  }

  v10 = MEMORY[0x1E695DFD8];

  return [v10 set];
}

- (CATransform3D)transformFromLayerId:(SEL)id inContextId:(unint64_t)contextId
{
  MEMORY[0x1EEE9AC00](self);
  v9 = v8;
  v63[1024] = *MEMORY[0x1E69E9840];
  v10 = *(*&result->m12 + 64);
  if (!v10)
  {
    *v8 = CATransform3DIdentity;
    return result;
  }

  v47 = v6;
  v48[0] = v7;
  v48[1] = CA::Render::Context::context_by_id(v7);
  *v49 = 0u;
  v50 = 0u;
  v46 = &unk_1EF200868;
  v51 = v10;
  if (v48[1])
  {
    os_unfair_lock_lock((v10 + 16));
    v11 = *(v10 + 288);
    os_unfair_lock_unlock((v10 + 16));
    CA::Render::Context::will_commit(v48[1]);
    if (v47)
    {
      v12 = CA::Render::Context::lookup_handle(v48[1], v47, 0, 0, 0);
      if (!v12)
      {
        goto LABEL_40;
      }

      v13 = v12;
      do
      {
        v14 = v13;
        if (!atomic_fetch_add(v13 + 2, 1u))
        {
          v14 = 0;
          atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
        }

        v63[0] = v14;
        std::vector<X::Ref<CA::Render::Handle>>::push_back[abi:nn200100](&v49[1], v63);
        v15 = v63[0];
        if (v63[0] && atomic_fetch_add(v63[0] + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v15 + 2))(v15);
        }

        v16 = *(v13 + 4);
        if (!v16)
        {
          break;
        }

        v13 = CA::Render::Context::lookup_handle(v48[1], v16, 0, 0, 0);
      }

      while (v13);
    }

    else
    {
      v17 = CA::Render::Context::root_layer_handle(v48[1]);
      if (v17)
      {
        v18 = v17 + 2;
        if (!atomic_fetch_add(v17 + 2, 1u))
        {
          v17 = 0;
          atomic_fetch_add(v18, 0xFFFFFFFF);
        }
      }

      v63[0] = v17;
      std::vector<X::Ref<CA::Render::Handle>>::push_back[abi:nn200100](&v49[1], v63);
      v19 = v63[0];
      if (v63[0] && atomic_fetch_add(v63[0] + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v19 + 2))(v19);
      }
    }

    v20 = v48[1];
    if (*(v48[1] + 56))
    {
      v21 = v48[1] == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v22 = *(v20 + 58);
      if (!v22)
      {
        break;
      }

      v23 = *(v20 + 56);
      v20 = *(v20 + 58);
      if (v23)
      {
        v24 = *(v23 + 40);
        v20 = v22;
        if (v24)
        {
          do
          {
            v25 = v24;
            if (!atomic_fetch_add(v24 + 2, 1u))
            {
              v25 = 0;
              atomic_fetch_add(v24 + 2, 0xFFFFFFFF);
            }

            v63[0] = v25;
            std::vector<X::Ref<CA::Render::Handle>>::push_back[abi:nn200100](&v49[1], v63);
            v26 = v63[0];
            if (v63[0] && atomic_fetch_add(v63[0] + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v26 + 2))(v26);
            }

            v27 = *(v24 + 4);
            if (!v27)
            {
              break;
            }

            v24 = CA::Render::Context::lookup_handle(v22, v27, 0, 0, 0);
          }

          while (v24);
          v20 = v22;
        }
      }
    }

    pthread_mutex_lock((v20 + 72));
    if (atomic_fetch_add(v20 + 2, 1u))
    {
      CA::Render::Context::did_commit(v48[1], 0, 0, 1, 0, 0);
LABEL_42:
      *v9 = CATransform3DIdentity;
      if (v49[1] != v50)
      {
        bzero(v61, 0x570uLL);
        v53 = 0uLL;
        CA::Render::Update::Update(v61, v63, 0x2000uLL, v11, 0, 0, 0, 0, &v53, *(v51 + 184));
        if (v61[0])
        {
          v29 = 3;
          if (*(v51 + 825))
          {
            v29 = 35;
          }

          v62 = v29 | v62 & 0xFFFFFFFFFFFFFFDCLL;
          v61[47] = &v46;
          CA::Render::Update::add_context(v61, v20);
          CA::Render::Update::added_all_contexts(v61, v30, v31);
          v28 = v49[0];
          if (v49[0])
          {
            v53 = xmmword_183E20E00;
            v54 = 0u;
            v55 = xmmword_183E20E60;
            v56 = 0u;
            v57 = 0u;
            v58 = xmmword_183E20E00;
            v59 = 0u;
            v60 = xmmword_183E20E60;
            v52[0] = &unk_1EF204020;
            v52[1] = &v53;
            CA::Render::LayerNode::MapGeometry::map(v52, v49[0], 0);
            v32 = v54;
            v33 = v55;
            *&v9->m11 = v53;
            *&v9->m13 = v32;
            v34 = v56;
            v35 = v57;
            *&v9->m21 = v33;
            *&v9->m23 = v34;
            v36 = v58;
            v37 = v59;
            v38 = v60;
            *&v9->m31 = v35;
            *&v9->m33 = v36;
            *&v9->m41 = v37;
            *&v9->m43 = v38;
            v39 = v49[0];
            v49[0] = 0;
            if (v39)
            {
              if (atomic_fetch_add(v39 + 4, 0xFFFFFFFF) == 1)
              {
                CA::Render::LayerNode::delete_node(v39, v28);
              }
            }
          }
        }

        CA::Render::Update::~Update(v61, v28);
      }

      pthread_mutex_unlock((v20 + 72));
      v40 = v49[1];
      for (i = v50; i != v40; i = (i - 8))
      {
        v43 = *(i - 1);
        v42 = v43;
        if (v43 && atomic_fetch_add(v42 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v42 + 16))(v42);
        }
      }

      *&v50 = v40;
      if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v20 + 16))(v20);
      }

      goto LABEL_58;
    }

    atomic_fetch_add(v20 + 2, 0xFFFFFFFF);
LABEL_40:
    v20 = v48[1];
LABEL_41:
    CA::Render::Context::did_commit(v20, 0, 0, 1, 0, 0);
    v20 = v48[1];
    atomic_fetch_add(v48[1] + 2, 1u);
    pthread_mutex_lock((v48[1] + 72));
    goto LABEL_42;
  }

  *v9 = CATransform3DIdentity;
LABEL_58:
  v46 = &unk_1EF2008B0;
  v63[0] = &v49[1];
  std::vector<X::Ref<CA::Render::Handle>>::__destroy_vector::operator()[abi:nn200100](v63);
  v45 = v49[0];
  if (v49[0] && atomic_fetch_add(v49[0] + 4, 0xFFFFFFFF) == 1)
  {
    CA::Render::LayerNode::delete_node(v45, v44);
  }

  result = v48[1];
  if (v48[1] && atomic_fetch_add(v48[1] + 2, 0xFFFFFFFF) == 1)
  {
    return (*(*&result->m11 + 16))(result);
  }

  return result;
}

- (CGPoint)convertPoint:(CGPoint)result fromContextId:(unsigned int)id
{
  v17 = *MEMORY[0x1E69E9840];
  var1 = self->_impl->var1;
  if (var1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    x = result.x;
    y = result.y;
    CA::WindowServer::Server::context_transform(&v9, var1, *&id);
    v5 = *(&v16 + 1) + *(&v10 + 1) * x + *(&v12 + 1) * y;
    if (fabs(v5 + -1.0) >= 0.000001)
    {
      if (v5 <= 0.0)
      {
        v5 = INFINITY;
      }

      else
      {
        v5 = 1.0 / v5;
      }
    }

    result = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v15, v9, x), v11, y), v5);
    result.y = v6;
  }

  return result;
}

- (CGPoint)convertPoint:(CGPoint)result toContextId:(unsigned int)id
{
  v18 = *MEMORY[0x1E69E9840];
  var1 = self->_impl->var1;
  if (var1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    x = result.x;
    y = result.y;
    CA::WindowServer::Server::context_transform(&v10, var1, *&id);
    CA::Mat4Impl::mat4_invert(&v10, &v10, v5);
    v6 = *(&v17 + 1) + *(&v11 + 1) * x + *(&v13 + 1) * y;
    if (fabs(v6 + -1.0) >= 0.000001)
    {
      if (v6 <= 0.0)
      {
        v6 = INFINITY;
      }

      else
      {
        v6 = 1.0 / v6;
      }
    }

    result = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v16, v10, x), v12, y), v6);
    result.y = v7;
  }

  return result;
}

- (unsigned)taskNamePortOfContextId:(unsigned int)id
{
  v10 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    v4 = CA::WindowServer::Server::retain_context(impl->var1, id);
    if (v4)
    {
      v5 = v4;
      tn = *(v4 + 256);
      if (!tn)
      {
        v6 = *MEMORY[0x1E69E9A60];
        v7 = getpid();
        task_name_for_pid(v6, v7, &tn);
      }

      if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 16))(v5);
      }

      LODWORD(v4) = tn;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (unsigned)clientPortOfContextId:(unsigned int)id
{
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v4 = CA::WindowServer::Server::retain_context(impl->var1, id);
  if (!v4)
  {
    return 0;
  }

  v5 = v4[66];
  if (!v5)
  {
    v5 = v4[65];
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  return v5;
}

- (unsigned)clientPortAtPosition:(CGPoint)position
{
  v38 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  var1 = impl->var1;
  positionCopy = position;
  CA::WindowServer::Server::hit_test(v9, var1, &positionCopy.x, 0, 0, 0, 0);
  if (!LODWORD(v9[0]))
  {
    return 0;
  }

  v5 = CA::Render::Context::context_by_id(LODWORD(v9[0]));
  if (!v5)
  {
    return 0;
  }

  v6 = v5[66];
  if (!v6)
  {
    v6 = v5[65];
  }

  if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v5 + 16))(v5);
  }

  return v6;
}

- (id)hitTestAtPosition:(CGPoint)position options:(id)options
{
  y = position.y;
  x = position.x;
  v105[9] = *MEMORY[0x1E69E9840];
  v8 = [options objectForKey:@"hitTestOptionExcludedIds"];
  v9 = [objc_msgSend(options objectForKey:{@"hitTestIgnoreBlankingContext", "BOOLValue"}];
  if ([objc_msgSend(options objectForKey:{@"hitTestCumulativeOpacity", "BOOLValue"}])
  {
    v9 |= 2u;
  }

  if ([objc_msgSend(options objectForKey:{@"hitTestCumulativeTransform", "BOOLValue"}])
  {
    v9 |= 4u;
  }

  if ([objc_msgSend(options objectForKey:{@"hitTestWantsLayerBackgroundStatistics", "BOOLValue"}])
  {
    v9 |= 8u;
  }

  if ([objc_msgSend(options objectForKey:{@"hitTestInsecureFiltered", "BOOLValue"}])
  {
    v9 |= 0x10u;
  }

  if ([objc_msgSend(options objectForKey:{@"hitTestWantsContextSecurityAnalysis", "BOOLValue"}])
  {
    v10 = v9 | 0x20;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 count];
  v12 = v11;
  v13 = 4 * v11 + 4;
  if (v11)
  {
    if (v13 > 0x1000)
    {
      v14 = malloc_type_malloc(4 * v11 + 4, 0xAD29F1FCuLL);
      if (!v14)
      {
        v15 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v14, v13);
    }

    v16 = 0;
    do
    {
      *&v14[4 * v16] = [objc_msgSend(v8 objectAtIndexedSubscript:{v16), "unsignedIntValue"}];
      ++v16;
    }

    while (v12 != v16);
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

LABEL_20:
  v104[0] = [objc_msgSend(options objectForKey:{@"hitTestBackgroundTopEdgeInset", "unsignedIntegerValue"}];
  v104[1] = [objc_msgSend(options objectForKey:{@"hitTestBackgroundLeftEdgeInset", "unsignedIntegerValue"}];
  v104[2] = [objc_msgSend(options objectForKey:{@"hitTestBackgroundBottomEdgeInset", "unsignedIntegerValue"}];
  v17 = [objc_msgSend(options objectForKey:{@"hitTestBackgroundRightEdgeInset", "unsignedIntegerValue"}];
  v18 = 0;
  v104[3] = v17;
  memset(v103, 0, sizeof(v103));
  var1 = self->_impl->var1;
  v20 = *(*(var1 + 12) + 672);
  do
  {
    v103[0].i64[v18++] = v104[v20++ & 3];
  }

  while (v18 != 4);
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  v91 = 0u;
  v92 = 0u;
  *&v95 = x;
  *(&v95 + 1) = y;
  CA::WindowServer::Server::hit_test(&v91, var1, &v95, v14, v12, v10, v103);
  if (v13 > 0x1000)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    free(v14);
  }

  if (!v91)
  {
    return 0;
  }

  v22 = CA::Render::Context::context_by_id(v91);
  if (!v22)
  {
    return 0;
  }

  v23 = *(v22 + 264);
  if (!v23)
  {
    v23 = *(v22 + 260);
  }

  if (atomic_fetch_add((v22 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v22 + 16))(v22);
  }

  v24 = MEMORY[0x1E695DF90];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v91];
  v90 = DWORD1(v91);
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
  v28 = DWORD2(v92) - 1;
  v29 = [MEMORY[0x1E696AD98] numberWithBool:DWORD2(v92) != 0];
  if (v28 > 3)
  {
    v30 = @"occlusionNone";
  }

  else
  {
    v30 = off_1E6DF7EA8[v28];
  }

  v31 = [v24 dictionaryWithObjectsAndKeys:{v25, @"hitTestContextId", v26, @"hitTestSlotId", v27, @"hitTestClientPort", v29, @"hitTestDetectedOcclusion", v30, @"hitTestOcclusionType", 0}];
  if ((v10 & 2) != 0)
  {
    LODWORD(v32) = v93[0];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v32), @"hitTestCumulativeOpacity"}];
  }

  v33 = v90;
  if ((v10 & 4) != 0 && v90)
  {
    v99 = *&v93[9];
    v100 = *&v93[11];
    v101 = *&v93[13];
    v102 = *&v93[15];
    v95 = *&v93[1];
    v96 = *&v93[3];
    v97 = *&v93[5];
    v98 = *&v93[7];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithCATransform3D:", &v95), @"hitTestCumulativeLayerTransform"}];
    v99 = *&v93[25];
    v100 = *&v93[27];
    v101 = *&v93[29];
    v102 = *&v93[31];
    v95 = *&v93[17];
    v96 = *&v93[19];
    v97 = *&v93[21];
    v98 = *&v93[23];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithCATransform3D:", &v95), @"hitTestCumulativeContentsTransform"}];
  }

  if ((v10 & 0x10) != 0)
  {
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", BYTE12(v92)), @"hitTestInsecureFiltered"}];
  }

  if ((v10 & 0x20) != 0 && v94 == 1)
  {
    LODWORD(v32) = HIDWORD(v93[34]);
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v32), @"hitTestSecurityAnalysisCumulativeOpacity"}];
    v99 = *&v93[43];
    v100 = *&v93[45];
    v101 = *&v93[47];
    v102 = *&v93[49];
    v95 = *&v93[35];
    v96 = *&v93[37];
    v97 = *&v93[39];
    v98 = *&v93[41];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696B098] forKey:{"valueWithCATransform3D:", &v95), @"hitTestSecurityAnalysisCumulativeLayerTransform"}];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", LOBYTE(v93[51])), @"hitTestSecurityAnalysisIsInsecureFiltered"}];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", BYTE1(v93[51])), @"hitTestSecurityAnalysisParentsHaveInsecureLayerProperties"}];
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedChar:", BYTE2(v93[51])), @"hitTestSecurityAnalysisOcclusionType"}];
    LODWORD(v34) = HIDWORD(v93[51]);
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v34), @"hitTestSecurityAnalysisOcclusionPercent"}];
  }

  if ((v10 & 8) != 0 && v33)
  {
    v35 = self->_impl->var1;
    [objc_msgSend(options objectForKey:{@"hitTestBackgroundForeground", "floatValue"}];
    v37 = v36;
    [objc_msgSend(options objectForKey:{@"hitTestBackgroundPassingContrast", "floatValue"}];
    v39 = v38;
    [objc_msgSend(options objectForKey:{@"hitTestBackgroundFailingContrast", "floatValue"}];
    v41 = v40;
    v42 = DWORD2(v91);
    v43 = HIDWORD(v91);
    v44 = v92;
    v45 = DWORD1(v92);
    if (v92 <= SDWORD1(v92))
    {
      v46 = DWORD1(v92);
    }

    else
    {
      v46 = v92;
    }

    if (v92 < SDWORD1(v92))
    {
      v45 = v92;
    }

    if (v46 <= 1073741822 && v45 >= 1)
    {
      v47 = vmovn_s64(*(v103 + 8));
      v42 = DWORD2(v91) + v47.i32[0];
      v48 = vsub_s32(*&v92, vadd_s32(__PAIR64__(v103[0].u32[0], v103[1].u32[2]), v47));
      v49 = vclez_s32(v48);
      v43 = HIDWORD(v91) + v103[0].i32[0];
      v44 = vand_s8(v48, vdup_lane_s32(vmvn_s8(vorr_s8(v49, vdup_lane_s32(v49, 1))), 0));
    }

    v50 = v44.i32[0];
    if (v44.i32[0] >= 1000)
    {
      v50 = 1000;
    }

    if (v50 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v50;
    }

    if (v44.i32[1] >= 1000)
    {
      v52 = 1000;
    }

    else
    {
      v52 = v44.i32[1];
    }

    if (v52 <= 1)
    {
      v53 = 1;
    }

    else
    {
      v53 = v52;
    }

    v54 = (*MEMORY[0x1E69E9AB8] + ((4 * v51 + 63) & 0x1FC0) * v53) & ~*MEMORY[0x1E69E9AB8];
    *&v95 = 64;
    *(&v95 + 1) = (4 * v51 + 63) & 0x1FC0;
    *&v96 = 1;
    *(&v96 + 1) = v54;
    *&v97 = 0;
    v55 = CA::SurfaceUtil::CAIOSurfaceCreate(v51, v53, 1111970369, 1024, 0, 0, 0, &v95, @"Hit Test Snapshot");
    if (v55)
    {
      v57 = v55;
      v58 = v42;
      v59 = objc_autoreleasePoolPush();
      v60 = *(v35 + 13);
      v105[0] = @"mode";
      v105[1] = @"destination";
      *&v95 = @"stopBeforeSlot";
      *(&v95 + 1) = v57;
      *&v96 = v60;
      v105[2] = @"displayName";
      v105[3] = @"slotId";
      *(&v96 + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v90];
      v105[4] = @"originX";
      *&v97 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v58];
      v105[5] = @"originY";
      *(&v97 + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v43];
      *&v98 = MEMORY[0x1E695E118];
      v105[6] = @"enforceSecureMode";
      v105[7] = @"ignoreDisableUpdateMasks";
      v105[8] = @"selfGenerated";
      *(&v98 + 1) = MEMORY[0x1E695E110];
      *&v99 = MEMORY[0x1E695E118];
      CARenderServerSnapshot_(0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:v105 count:9]);
      objc_autoreleasePoolPop(v59);
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      if (*&dword_1ED4E9664)
      {
        v61 = CAIOSurfaceWriteToFileWithSuffix(v57, "hit-test-slot");
        if (v61)
        {
          if (*&dword_1ED4E9664 > 0.0)
          {
            *&dword_1ED4E9664 = *&dword_1ED4E9664 + -1.0;
          }

          free(v61);
        }
      }

      v62 = 1;
      IOSurfaceLock(v57, 1u, 0);
      BaseAddress = IOSurfaceGetBaseAddress(v57);
      BytesPerRow = IOSurfaceGetBytesPerRow(v57);
      v67 = 0;
      v68 = v37 + 0.05;
      v69 = (v68 / v39) + -0.05;
      v71 = 1.0 / ((v68 / v41) - (v68 / v39));
      v72 = 1.0 / -((v41 * v68) - (v39 * v68));
      v73 = 0.0;
      v74 = 0.0;
      v75 = 0.0;
      do
      {
        v76 = &BaseAddress[v67 * BytesPerRow];
        v77 = v62;
        v78 = v51;
        do
        {
          LOBYTE(v65) = *v76;
          LOBYTE(v66) = v76[1];
          *&v79 = LODWORD(v66);
          v80 = (LODWORD(v65) * 0.0722) + (*&v79 * 0.7152);
          LOBYTE(v79) = v76[2];
          *&v81 = v79;
          v82 = v80 + (*&v81 * 0.2126);
          LOBYTE(v81) = v76[3];
          v83 = (v82 * v81) * 0.0000152590219;
          v70 = (v41 * v68) + -0.05;
          v73 = ((fminf(fmaxf(fmaxf(((v69 - v83) * v71) + 1.0, (v83 - v70) * v72), 0.0), 1.0) - v73) / v77) + v73;
          v84 = v83 - v75;
          v66 = (v83 - v75) / v77;
          v75 = v66 + v75;
          v65 = v83 - v75;
          v74 = v74 + (v65 * v84);
          v76 += 4;
          ++v77;
          --v78;
        }

        while (v78);
        ++v67;
        v62 += v51;
      }

      while (v67 != v53);
      v85 = sqrtf(v74 / (v53 * v51));
      IOSurfaceUnlock(v57, 1u, 0);
      CFRelease(v57);
    }

    else
    {
      v85 = *(&v93[33] + 1);
      v75 = *&v93[33];
      v73 = *&v93[34];
    }

    *&v56 = v75;
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v56), @"hitTestBackgroundAverage"}];
    *&v86 = v85;
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v86), @"hitTestBackgroundStandardDeviation"}];
    *&v87 = v73;
    [v31 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v87), @"hitTestBackgroundAverageContrastThreshold"}];
  }

  return v31;
}

- (unsigned)contextIdAtPosition:(CGPoint)position excludingContextIds:(id)ids
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_impl)
  {
    return 0;
  }

  y = position.y;
  x = position.x;
  v8 = [ids count];
  v9 = v8;
  v10 = 4 * v8 + 4;
  if (v8)
  {
    if (v10 > 0x1000)
    {
      v11 = malloc_type_malloc(4 * v8 + 4, 0x99ACBE26uLL);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v8);
      v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v11, v10);
    }

    v13 = 0;
    do
    {
      *&v11[4 * v13] = [objc_msgSend(ids objectAtIndexedSubscript:{v13), "unsignedIntValue"}];
      ++v13;
    }

    while (v9 != v13);
  }

  else
  {
    v11 = 0;
  }

LABEL_10:
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  var1 = self->_impl->var1;
  v15[0] = x;
  v15[1] = y;
  CA::WindowServer::Server::hit_test(v16, var1, v15, v11, v9, 0, 0);
  if (v10 > 0x1000)
  {
    free(v11);
  }

  return v16[0];
}

- (unsigned)rendererFlags
{
  impl = self->_impl;
  if (impl)
  {
    return *(impl->var1 + 46);
  }

  else
  {
    return 0;
  }
}

- (NSUUID)uuid
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{-[CAWindowServerDisplay uniqueId](self, "uniqueId")}];

  return v2;
}

- (unint64_t)vendorId
{
  v6 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  (*(**(impl->var1 + 12) + 1384))(v4);
  return v5;
}

- (unint64_t)productId
{
  v6 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  (*(**(impl->var1 + 12) + 1384))(v4);
  return v5;
}

- (void)setSystemIdentifiers:(id)identifiers
{
  impl = self->_impl;
  if (impl)
  {
    v5 = *(impl->var1 + 12);
    v6 = *(v5 + 16);
    if (v6 != identifiers)
    {
      if (v6)
      {
        CFRelease(v6);
      }

      Copy = 0;
      if (identifiers)
      {
        Copy = CFSetCreateCopy(0, identifiers);
      }

      *(v5 + 16) = Copy;
    }
  }
}

- (NSSet)systemIdentifiers
{
  impl = self->_impl;
  if (impl)
  {
    return *(*(impl->var1 + 12) + 16);
  }

  else
  {
    return 0;
  }
}

- (NSString)uniqueId
{
  v11 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl)
  {
    return 0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  memset(v10, 0, sizeof(v10));
  v4 = *(self->_impl->var1 + 12);
  if ((*(*v4 + 816))(v4, 0, v10, 64, 0, v5, v6, v7))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  }

  else
  {
    v8 = 0;
  }

  pthread_mutex_unlock(&impl->var0._m);
  return v8;
}

- (NSString)deviceName
{
  impl = self->_impl;
  if (impl)
  {
    return *(*(impl->var1 + 12) + 8);
  }

  else
  {
    return 0;
  }
}

- (NSString)name
{
  impl = self->_impl;
  if (impl)
  {
    return *(impl->var1 + 13);
  }

  else
  {
    return 0;
  }
}

- (CGSize)panelPhysicalSize
{
  impl = self->_impl;
  if (impl)
  {
    (*(**(impl->var1 + 12) + 16))(*(impl->var1 + 12), a2);
  }

  else
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (unint64_t)maximumSourceRectPixels
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 72))();
  }

  else
  {
    return 2304000;
  }
}

- (unint64_t)maximumSourceRectWidth
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 64))();
  }

  else
  {
    return 1920;
  }
}

- (unint64_t)minimumSourceRectSize
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 56))();
  }

  else
  {
    return 32;
  }
}

- (unint64_t)maxLayerBandwidth
{
  impl = self->_impl;
  if (impl)
  {
    return (*(**(impl->var1 + 12) + 40))(*(impl->var1 + 12), a2);
  }

  else
  {
    return 0;
  }
}

- (double)maximumScale
{
  impl = self->_impl;
  if (!impl)
  {
    return 1.0;
  }

  (*(**(impl->var1 + 12) + 32))();
  return result;
}

- (double)minimumScale
{
  impl = self->_impl;
  if (!impl)
  {
    return 1.0;
  }

  (*(**(impl->var1 + 12) + 24))();
  return result;
}

- (void)setScalePreservesAspect:(BOOL)aspect
{
  impl = self->_impl;
  if (impl)
  {
    aspectCopy = aspect;
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    v15 = *(var1 + 12);
    if (*(v15 + 144) != aspectCopy)
    {
      *(v15 + 144) = aspectCopy;
      CA::WindowServer::Display::update_geometry(v15, v7, v8, v9, v10, v11, v12, v13, v14);
    }

    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (BOOL)scalePreservesAspect
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(*(self->_impl->var1 + 12) + 144);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)setScales:(CGSize)scales
{
  impl = self->_impl;
  if (impl)
  {
    height = scales.height;
    width = scales.width;
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_scale(self->_impl->var1, width, height);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (CGSize)scales
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v4 = *(self->_impl->var1 + 12);
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    pthread_mutex_unlock(&impl->var0._m);
  }

  else
  {
    v5 = 1.0;
    v6 = 1.0;
  }

  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setScale:(double)scale
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    CA::WindowServer::Server::set_scale(self->_impl->var1, scale, scale);

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (double)scale
{
  impl = self->_impl;
  if (!impl)
  {
    return 1.0;
  }

  pthread_mutex_lock(&self->_impl->var0._m);
  v4 = *(*(self->_impl->var1 + 12) + 128);
  pthread_mutex_unlock(&impl->var0._m);
  return v4;
}

- (CGSize)touchScales
{
  impl = self->_impl;
  if (impl)
  {
    v3 = *(impl->var1 + 12);
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
  }

  else
  {
    v4 = 1.0;
    v5 = 1.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)nativeSize
{
  impl = self->_impl;
  if (impl)
  {
    v3 = *(impl->var1 + 12);
    if (((*(v3 + 672) >> 10) & 3 | 4) == 4)
    {
      v4 = (v3 + 88);
    }

    else
    {
      v4 = (v3 + 80);
      if (!*(v3 + 80) || !*(v3 + 84))
      {
        v4 = (v3 + 72);
      }
    }

    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGRect)bounds
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    v6 = *(self->_impl->var1 + 12);
    v7 = *(v6 + 176);
    v8 = *(v6 + 180);
    if (v7 <= v8)
    {
      v9 = *(v6 + 180);
    }

    else
    {
      v9 = *(v6 + 176);
    }

    v4.i32[0] = 1073741822;
    v5.i32[0] = v9;
    v10 = vdupq_lane_s32(*&vcgtq_s32(v5, v4), 0);
    v11 = *(v6 + 168);
    v12.i64[0] = v11;
    v12.i64[1] = SHIDWORD(v11);
    v19 = vbslq_s8(v10, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v12));
    if (v9 <= 1073741822)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1.79769313e308;
    }

    if (v9 <= 1073741822)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1.79769313e308;
    }

    pthread_mutex_unlock(&impl->var0._m);
    v15 = v19;
  }

  else
  {
    v15 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = *&v15.i64[1];
  v17 = v13;
  v18 = v14;
  result.origin.x = *v15.i64;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  return result;
}

- (void)update
{
  impl = self->_impl;
  if (impl)
  {
    pthread_mutex_lock(&self->_impl->var0._m);
    var1 = self->_impl->var1;
    pthread_mutex_lock((var1 + 24));
    CA::WindowServer::Server::update_display_modes_locked(var1);
    pthread_mutex_unlock((var1 + 24));

    pthread_mutex_unlock(&impl->var0._m);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  impl = self->_impl;
  if (impl)
  {
    destroy_impl(impl);
    self->_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = CAWindowServerDisplay;
  [(CAWindowServerDisplay *)&v4 dealloc];
}

- (void)invalidate
{
  impl = self->_impl;
  if (impl)
  {
    destroy_impl(impl);
    self->_impl = 0;
  }
}

- (id)_initWithCADisplayServer:(void *)server
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAWindowServerDisplay;
  v4 = [(CAWindowServerDisplay *)&v8 init];
  if (v4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD8uLL, 0x10A004031CDD180uLL);
    v4->_impl = v5;
    x_thread_init_mutex(v5, 1);
    v4->_impl->var1 = server;
    if (CA::WindowServer::Server::supports_throttle(server))
    {
      [(CAWindowServerDisplay *)v4 powerStateDidChange:0];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel_powerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];
    }
  }

  return v4;
}

@end