@interface CADisplay
+ (id)TVOutDisplay;
+ (id)displays;
+ (id)mainDisplay;
- (BOOL)allowsVirtualModes;
- (BOOL)hasNativeFrameRateRequest;
- (BOOL)isCloned;
- (BOOL)isCloning;
- (BOOL)isCloningSupported;
- (BOOL)isExternal;
- (BOOL)isForceFixedRateLinksEnabled;
- (BOOL)isOverscanned;
- (BOOL)isReference;
- (BOOL)isReferenceLimited;
- (BOOL)isSupported;
- (BOOL)setDisplayProperties:(id)a3;
- (BOOL)supportsExtendedColors;
- (BOOL)supportsVariableFrameDuration;
- (CADisplayAttributes)externalDisplayAttributes;
- (CADisplayMode)currentMode;
- (CADisplayMode)preferredMode;
- (CADisplayPreferences)preferences;
- (CADisplayPreset)currentPreset;
- (CAFrameRateRange)preferredFrameRateRangeForMaximumVelocity:(float)a3;
- (CAFrameRateRange)preferredFrameRateRangeForVelocity:(float)a3;
- (CGRect)bounds;
- (CGRect)frame;
- (CGRect)safeBounds;
- (CGSize)logicalScale;
- (CGSize)nativeSize;
- (CGSize)overscanAmounts;
- (CGSize)physicalSize;
- (ModeSet)_availableModesInternal;
- (NSArray)availableModes;
- (NSString)colorMode;
- (NSString)containerId;
- (NSString)currentOrientation;
- (NSString)nativeOrientation;
- (NSString)overscanAdjustment;
- (NSString)productName;
- (NSString)transportType;
- (NSString)uniqueId;
- (__CFDictionary)_copyDebugProperties;
- (double)hardwareRefreshRate;
- (double)heartbeatRate;
- (double)latency;
- (double)maximumLogicalScale;
- (double)minimumLogicalScale;
- (double)overscanAmount;
- (double)refreshRate;
- (float)autoLuminanceBoost;
- (float)highestLocalPreferredFrameRateRequest;
- (id)_initWithDisplay:(void *)a3;
- (id)allowedHDRModes;
- (id)availablePresets;
- (id)flipBookWithOptions:(id)a3;
- (id)immutableCopy;
- (id)preferredHDRModes;
- (id)preferredModeWithCriteria:(id)a3;
- (id)stateControl;
- (id)supportedHDRModesWithCriteria:(id)a3;
- (int)processId;
- (int64_t)minimumFrameDuration;
- (int64_t)tag;
- (unint64_t)pointScale;
- (unsigned)connectionSeed;
- (unsigned)seed;
- (void)_finalize;
- (void)_invalidate;
- (void)_notifyDisallowedLayersChange:(BOOL)a3;
- (void)_postNotification:(int64_t)a3;
- (void)dealloc;
- (void)overrideDisplayTimings:(id)a3;
- (void)overrideMinimumFrameDuration:(int64_t)a3;
- (void)setAllowsVirtualModes:(BOOL)a3;
- (void)setColorMode:(id)a3;
- (void)setCurrentMode:(id)a3;
- (void)setCurrentPreset:(id)a3;
- (void)setDisallowedLayersCallback:(id)a3;
- (void)setForceFixedRateLinksEnabled:(BOOL)a3;
- (void)setLatency:(double)a3;
- (void)setOverscanAdjustment:(id)a3;
- (void)setPreferences:(id)a3;
@end

@implementation CADisplay

+ (id)mainDisplay
{
  if (BYTE10(xmmword_1ED4E98AC) == 1)
  {

    return +[CATestDisplay mainTestDisplay];
  }

  else
  {
    ensure_displays();
    return _mainDisplay;
  }
}

- (unsigned)connectionSeed
{
  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return impl[31];
}

- (id)immutableCopy
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x2000) != 0)
  {

    return self;
  }

  else
  {
    pthread_mutex_lock((impl + 8));
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v3 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x308uLL, 0xDEEC3011uLL);
    v4 = v3;
    if (v3)
    {
      *v3 = &unk_1EF1F3E28;
      v3[18] = 0;
      *(v3 + 11) = CFRetain(*(impl + 11));
      *(v4 + 12) = CFRetain(*(impl + 12));
      v4[26] = *(impl + 26);
      *(v4 + 14) = 0;
      *(v4 + 15) = *(impl + 15);
      v5 = *(impl + 16);
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *(v4 + 16) = v5;
      v6 = *(impl + 17);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      *(v4 + 17) = v6;
      v7 = *(impl + 18);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *(v4 + 18) = v7;
      CA::WindowServer::Display::ModeSet::ModeSet(v4 + 19, (impl + 152));
      *(v4 + 31) = *(impl + 31);
      *(v4 + 32) = *(impl + 32);
      *(v4 + 66) = *(impl + 264);
      *(v4 + 70) = *(impl + 280);
      *(v4 + 37) = *(impl + 37);
      *(v4 + 38) = *(impl + 38);
      *(v4 + 39) = *(impl + 39);
      *(v4 + 20) = 0u;
      *(v4 + 333) = 0;
      *(v4 + 86) = 0u;
      v4[90] = 0;
      *(v4 + 20) = *(impl + 20);
      v4[84] = *(impl + 84);
      *(v4 + 340) = impl[340];
      *(v4 + 86) = *(impl + 344);
      v4[90] = *(impl + 90);
      *(v4 + 184) = 0;
      *(v4 + 94) = 0u;
      *(v4 + 49) = 0x3FF0000000000000;
      *(v4 + 50) = 0;
      *(v4 + 51) = *(impl + 51);
      *(v4 + 26) = *(impl + 26);
      *(v4 + 54) = *(impl + 54);
      v4[110] = *(impl + 110);
      *(v4 + 56) = *(impl + 56);
      v4[114] = *(impl + 114);
      *(v4 + 58) = &unk_1EF1F3E08;
      v4[118] = *(impl + 118);
      v4[123] = 0;
      *(v4 + 119) = 0u;
      *(v4 + 31) = *(impl + 31);
      *(v4 + 64) = *(impl + 64);
      *(v4 + 65) = *(impl + 65);
      *(v4 + 66) = *(impl + 66);
      *(v4 + 134) = *(impl + 536);
      v4[138] = *(impl + 138);
      *(v4 + 78) = 0;
      *(v4 + 158) = 0u;
      *(v4 + 139) = 0u;
      *(v4 + 36) = 0u;
      *(v4 + 37) = 0u;
      *(v4 + 151) = 0u;
      *(v4 + 82) = 0;
      *(v4 + 166) = 0u;
      v8 = *(impl + 680);
      *(v4 + 87) = *(impl + 87);
      *(v4 + 170) = v8;
      *(v4 + 704) = 10;
      v9 = *(v4 + 705) & 0xFA | impl[705] & 1;
      *(v4 + 705) = v9;
      v10 = v9 & 0xF3 | impl[705] & 8;
      *(v4 + 705) = v10;
      *(v4 + 705) = v10 & 0xEF | impl[705] & 0x10;
      *(v4 + 89) = *(impl + 89);
      *(v4 + 90) = *(impl + 90);
      v4[182] = *(impl + 182);
      *(v4 + 47) = 0u;
      *(v4 + 183) = 0u;
      v11 = v4[192] & 0xFFFE | *(impl + 384) & 1;
      *(v4 + 384) = v4[192] & 0xFFFE | *(impl + 384) & 1;
      v12 = v11 & 0xFFFFFFFD | (2 * ((*(impl + 384) >> 1) & 1));
      *(v4 + 384) = v12;
      v13 = v12 & 0xFFFFFFFB | (4 * ((*(impl + 384) >> 2) & 1));
      *(v4 + 384) = v13;
      v14 = v13 & 0xFFFFFFF7 | (8 * ((*(impl + 384) >> 3) & 1));
      *(v4 + 384) = v14;
      v15 = v14 & 0xFFFFFFEF | (16 * ((*(impl + 384) >> 4) & 1));
      *(v4 + 384) = v15;
      v16 = v15 & 0xFFFFFFDF | (32 * ((*(impl + 384) >> 5) & 1));
      *(v4 + 384) = v16;
      v17 = v16 & 0xFFFFFFBF | (((*(impl + 384) >> 6) & 1) << 6);
      *(v4 + 384) = v17;
      v18 = v17 & 0xFFFFFF7F | (((*(impl + 384) >> 7) & 1) << 7);
      *(v4 + 384) = v18;
      *(v4 + 384) = *(impl + 384) & 0x100 | 0x2800 | v18 & 0xC6FF;
    }

    pthread_mutex_unlock((impl + 8));
    v19 = [CADisplay alloc];

    return [(CADisplay *)v19 _initWithDisplay:v4];
  }
}

- (int64_t)tag
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return *(impl + 105);
}

- (BOOL)isExternal
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return (*(impl + 56) - 1) < 2;
}

- (int)processId
{
  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return impl[106];
}

- (CADisplayMode)currentMode
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 31);
  os_unfair_lock_unlock(impl + 18);

  return create_mode(self, v4, 0);
}

- (NSString)nativeOrientation
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = *(impl + 107) - 1;
  if (v4 > 2)
  {
    return @"rot0";
  }

  else
  {
    return *(&off_1E6DEC060 + v4);
  }
}

- (CADisplayMode)preferredMode
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 32);
  os_unfair_lock_unlock(impl + 18);

  return create_mode(self, v4, 0);
}

- (NSArray)availableModes
{
  v12 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((impl[192]._os_unfair_lock_opaque & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  *__p = 0u;
  v9 = 0u;
  CA::Display::Display::available_modes(__p, impl);
  if (__p[1] == __p[0])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = __p[0];
    v6 = __p[1];
    while (v5 != v6)
    {
      [(NSArray *)v4 addObject:create_mode(self, *v5++, __p)];
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v11);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v4;
}

- (double)hardwareRefreshRate
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = 64;
  if ((*(impl + 705) & 8) == 0)
  {
    v4 = 40;
  }

  return 1.0 / round(1.0 / *(impl + v4 + 464));
}

- (BOOL)supportsExtendedColors
{
  impl = self->_impl;
  v4 = impl[384];
  if ((v4 & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    v4 = *(self->_impl + 384);
  }

  return (v4 >> 4) & 1;
}

- (CGRect)frame
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v12 = *(impl + 280);
  os_unfair_lock_unlock(impl + 18);
  v5 = v12;
  if (v12.i32[2] <= v12.i32[3])
  {
    v6 = v12.i32[3];
  }

  else
  {
    v6 = v12.i32[2];
  }

  v5.i32[0] = 1073741822;
  v4.i32[0] = v6;
  v7.i64[0] = v12.i32[0];
  v7.i64[1] = v12.i32[1];
  v8 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v4, v5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v7));
  if (v6 <= 1073741822)
  {
    v9 = v12.i32[2];
  }

  else
  {
    v9 = 1.79769313e308;
  }

  if (v6 <= 1073741822)
  {
    v10 = v12.i32[3];
  }

  else
  {
    v10 = 1.79769313e308;
  }

  v11 = *&v8.i64[1];
  result.origin.x = *v8.i64;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v11;
  return result;
}

- (CGRect)bounds
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v12 = *(impl + 264);
  os_unfair_lock_unlock(impl + 18);
  v5 = v12;
  if (v12.i32[2] <= v12.i32[3])
  {
    v6 = v12.i32[3];
  }

  else
  {
    v6 = v12.i32[2];
  }

  v5.i32[0] = 1073741822;
  v4.i32[0] = v6;
  v7.i64[0] = v12.i32[0];
  v7.i64[1] = v12.i32[1];
  v8 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v4, v5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v7));
  if (v6 <= 1073741822)
  {
    v9 = v12.i32[2];
  }

  else
  {
    v9 = 1.79769313e308;
  }

  if (v6 <= 1073741822)
  {
    v10 = v12.i32[3];
  }

  else
  {
    v10 = 1.79769313e308;
  }

  v11 = *&v8.i64[1];
  result.origin.x = *v8.i64;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v11;
  return result;
}

- (unsigned)seed
{
  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return impl[30];
}

- (BOOL)isCloningSupported
{
  impl = self->_impl;
  v4 = impl[384];
  if ((v4 & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    v4 = *(self->_impl + 384);
  }

  return (v4 >> 3) & 1;
}

- (NSString)uniqueId
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = CA::Display::Display::retain_uuid(impl);

  return v4;
}

- (BOOL)isOverscanned
{
  impl = self->_impl;
  v4 = *(impl + 384);
  if ((v4 & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    v4 = *(self->_impl + 384);
  }

  return v4 & 1;
}

- (NSString)overscanAdjustment
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = *(impl + 104) - 1;
  if (v4 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E6DEC048 + v4);
  }
}

- (CGSize)overscanAmounts
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 74);
  v5 = *(impl + 75);
  os_unfair_lock_unlock(impl + 18);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (double)latency
{
  impl = self->_impl;
  if ((impl[96] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return impl[51];
}

- (BOOL)isReferenceLimited
{
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref == 1)
  {
    impl = self->_impl;
    if ((impl[192]._os_unfair_lock_opaque & 0x1000) != 0)
    {
      CA::Display::Display::update(impl);
    }

    os_unfair_lock_lock(impl + 18);
    v4 = BYTE1(impl[92]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(impl + 18);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)isReference
{
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref == 1)
  {
    impl = self->_impl;
    if ((impl[192]._os_unfair_lock_opaque & 0x1000) != 0)
    {
      CA::Display::Display::update(impl);
    }

    os_unfair_lock_lock(impl + 18);
    os_unfair_lock_opaque = impl[92]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(impl + 18);
  }

  else
  {
    os_unfair_lock_opaque = 0;
  }

  return os_unfair_lock_opaque & 1;
}

- (id)availablePresets
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref != 1)
  {
    return 0;
  }

  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  if (*(impl + 56))
  {
    return 0;
  }

  os_unfair_lock_lock(impl + 18);
  v5 = *(impl + 47);
  v6 = *(impl + 48);
  v7 = *(impl + 49);
  v8 = *(impl + 50);
  os_unfair_lock_unlock(impl + 18);
  v9 = [[CAUserAdjustment alloc] initWithXDelta:v5 yDelta:v6 luminanceScale:v7 timestamp:v8];
  v12[0] = [[CADisplayPreset alloc] initWithIsReference:0 userAdjustment:0];
  v10 = [CADisplayPreset alloc];
  *&v11 = CA::Display::Display::auto_luminance_boost(impl[26]);
  v12[1] = [(CADisplayPreset *)v10 initWithIsReference:1 userAdjustment:v9 autoLuminanceBoost:v11];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CADisplay;
  [(CADisplay *)&v4 dealloc];
}

+ (id)displays
{
  if (BYTE10(xmmword_1ED4E98AC) == 1)
  {

    return +[CATestDisplay testDisplays];
  }

  else
  {
    ensure_displays();
    pthread_mutex_lock(&_displays_mutex);
    v2 = _displays;
    pthread_mutex_unlock(&_displays_mutex);
    return v2;
  }
}

- (double)heartbeatRate
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = 64;
  if ((*(impl + 705) & 8) == 0)
  {
    v4 = 48;
  }

  return 1.0 / round(1.0 / *(impl + v4 + 464));
}

- (int64_t)minimumFrameDuration
{
  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  if (*(impl + 705))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4 <= impl[130])
  {
    v4 = impl[130];
  }

  v5 = impl[138];
  if (v4 <= v5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (double)refreshRate
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = 64;
  if ((*(impl + 705) & 8) == 0)
  {
    v4 = 32;
  }

  return 1.0 / round(1.0 / *(impl + v4 + 464));
}

- (BOOL)isCloned
{
  impl = self->_impl;
  v4 = impl[384];
  if ((v4 & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    v4 = *(self->_impl + 384);
  }

  return (v4 >> 1) & 1;
}

- (BOOL)supportsVariableFrameDuration
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  if (_mainDisplay == self)
  {
    if (CAPrefers60HzAPT(void)::once != -1)
    {
      dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
    }

    v4 = CAPrefers60HzAPT(void)::enabled;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (float)highestLocalPreferredFrameRateRequest
{
  impl = self->_impl;
  v3 = 0.0;
  if ((impl[176]._os_unfair_lock_opaque & 0x200) != 0)
  {
    os_unfair_lock_lock(impl + 139);
    if (*&impl[144]._os_unfair_lock_opaque != *&impl[146]._os_unfair_lock_opaque)
    {
      v4 = 12;
      if ((impl[176]._os_unfair_lock_opaque & 0x800) != 0)
      {
        v4 = 16;
      }

      os_unfair_lock_opaque = impl[142]._os_unfair_lock_opaque;
      if (os_unfair_lock_opaque)
      {
        v6 = *&impl[v4 + 116]._os_unfair_lock_opaque;
        if (v6 != 0.0)
        {
          v3 = 1.0 / (v6 * os_unfair_lock_opaque);
        }
      }
    }

    os_unfair_lock_unlock(impl + 139);
  }

  return v3;
}

- (BOOL)isForceFixedRateLinksEnabled
{
  impl = self->_impl;
  v3 = impl[384];
  if ((v3 & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    v3 = impl[384];
  }

  return (v3 >> 10) & 1;
}

- (BOOL)hasNativeFrameRateRequest
{
  impl = self->_impl;
  if ((*(impl + 705) & 2) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock(impl + 139);
  v3 = *(impl + 72) != *(impl + 73) && *(impl + 140) == 2;
  os_unfair_lock_unlock(impl + 139);
  return v3;
}

- (unint64_t)pointScale
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return *(impl + 182);
}

- (void)_invalidate
{
  impl = self->_impl;
  if ((impl[384] & 0x2000) == 0)
  {
    impl[384] |= 0x1000u;
  }
}

- (NSString)currentOrientation
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = *(impl + 108) - 1;
  if (v4 > 2)
  {
    return @"rot0";
  }

  else
  {
    return *(&off_1E6DEC060 + v4);
  }
}

- (CAFrameRateRange)preferredFrameRateRangeForMaximumVelocity:(float)a3
{
  impl = self->_impl;
  if ((impl[384] & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((*(impl + 705) & 2) != 0)
  {
    v5 = CAFrameRateRangeForVelocity(a3, 0);
  }

  result.preferred = v7;
  result.maximum = v6;
  result.minimum = v5;
  return result;
}

- (CAFrameRateRange)preferredFrameRateRangeForVelocity:(float)a3
{
  impl = self->_impl;
  if ((impl[384] & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((*(impl + 705) & 2) != 0)
  {
    v5 = CAFrameRateRangeForVelocity(a3, 1);
  }

  result.preferred = v7;
  result.maximum = v6;
  result.minimum = v5;
  return result;
}

- (void)overrideDisplayTimings:(id)a3
{
  v15[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((impl[384] & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  if (*(impl + 56) == 2)
  {
    if (!a3)
    {
      *(impl + 705) &= 0xE7u;
      return;
    }

    v5 = [a3 objectForKey:@"offset"];
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [v5 unsignedLongLongValue];
    v7 = *(impl + 705);
    *(impl + 705) = v7 | 0x10;
    v8 = *(impl + 68);
    if (v8 - 1 < v6)
    {
      v9 = (v7 & 8) == 0;
      v10 = 32;
      if (v9)
      {
        v10 = 16;
      }

      v11 = CAHostTimeWithTime(*&impl[v10 + 232]);
      if (!v11)
      {
        goto LABEL_14;
      }

      *(impl + 67) += vcvtad_u64_f64((v6 - v8) / v11);
    }

    else
    {
      *(impl + 67) = 0;
    }

    *(impl + 68) = v6;
LABEL_14:
    v12 = [a3 objectForKey:@"refreshRate"];
    if (v12)
    {
      [v12 doubleValue];
      if (v13 != 0.0)
      {
        v14 = *(impl + 705);
        if ((v14 & 8) == 0 || fabs(*(impl + 66) / v13 + -1.0) >= 0.0001)
        {
          *(impl + 66) = v13;
          *(impl + 705) = v14 | 8;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = ___ZN2CA7Display11DisplayLink28display_refresh_rate_changedEPNS0_7DisplayE_block_invoke;
          v15[3] = &__block_descriptor_40_e9_v16__0_v8l;
          v15[4] = impl;
          CA::Display::DisplayLink::foreach_display_link(v15);
        }
      }
    }
  }
}

- (id)flipBookWithOptions:(id)a3
{
  impl = self->_impl;
  v6 = impl[384];
  if ((v6 & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    v6 = impl[384];
  }

  if ((v6 & 0x20) == 0)
  {
    return 0;
  }

  v8 = [[CAFlipBook alloc] _initWithDisplayId:[(CADisplay *)self displayId] options:a3];

  return v8;
}

- (void)setForceFixedRateLinksEnabled:(BOOL)a3
{
  v3 = a3;
  impl = self->_impl;
  if ((impl[384] & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change fixed rate link settings on an immutable CADisplay"];
  }

  if (v3 && *(impl + 56))
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot enable fixed rate links on non-internal panel"];
  }

  v6 = objc_opt_new();
  [v6 setForceFixedRateLinks:v3];
  [(CADisplay *)self setDisplayProperties:v6];
}

- (float)autoLuminanceBoost
{
  impl = self->_impl;
  if ((impl[384] & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  v3 = *(impl + 26);

  return CA::Display::Display::auto_luminance_boost(v3);
}

- (void)setCurrentPreset:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref == 1)
  {
    [a3 isReference];
    kdebug_trace();
    impl = self->_impl;
    if ((impl[192]._os_unfair_lock_opaque & 0x1000) != 0)
    {
      CA::Display::Display::update(impl);
    }

    os_unfair_lock_lock(impl + 18);
    v6 = *&impl[94]._os_unfair_lock_opaque;
    v7 = *&impl[96]._os_unfair_lock_opaque;
    v8 = *&impl[98]._os_unfair_lock_opaque;
    v9 = *&impl[100]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(impl + 18);
    if ([a3 userAdjustment])
    {
      [objc_msgSend(a3 "userAdjustment")];
      v6 = v10;
    }

    if ([a3 userAdjustment])
    {
      [objc_msgSend(a3 "userAdjustment")];
      v7 = v11;
    }

    if ([a3 userAdjustment])
    {
      [objc_msgSend(a3 "userAdjustment")];
      v8 = v12;
    }

    if ([a3 userAdjustment])
    {
      [objc_msgSend(a3 "userAdjustment")];
      v9 = v13;
    }

    v14 = [a3 isReference];
    os_unfair_lock_opaque = impl[26]._os_unfair_lock_opaque;
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v17 = ServerPort;
      v18 = MEMORY[0x1E69E9A60];
      if (os_unfair_lock_opaque)
      {
        name = 0;
        if (!mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
        {
          *&msg[0].msgh_id = 0u;
          msg[1].msgh_size = name;
          msg[1].msgh_local_port = 1310720;
          *&msg[0].msgh_size = 0u;
          *&msg[1].msgh_voucher_port = *MEMORY[0x1E69E99E0];
          LODWORD(v23) = os_unfair_lock_opaque;
          BYTE4(v23) = v14;
          *(&v23 + 5) = 0;
          BYTE7(v23) = 0;
          *(&v23 + 1) = v6;
          *&v24 = v7;
          *(&v24 + 1) = v8;
          *&v25 = v9;
          msg[0].msgh_bits = -2147483629;
          msg[0].msgh_remote_port = v17;
          *&msg[0].msgh_id = 0x100009D2ELL;
          if (MEMORY[0x1EEE9AC50])
          {
            voucher_mach_msg_set(msg);
          }

          v19 = mach_msg(msg, 1, 0x58u, 0, 0, 0, 0);
          v20 = v19;
          CAVerifyServerReturn(v19);
          if (!v20)
          {
            v24 = 0u;
            v25 = 0u;
            v23 = 0u;
            memset(msg, 0, sizeof(msg));
            mach_msg(msg, 258, 0, 0x60u, name, 0x3E8u, 0);
            mach_port_mod_refs(*v18, name, 1u, -1);
            if ((impl[192]._os_unfair_lock_opaque & 0x2000) == 0)
            {
              LOWORD(impl[192]._os_unfair_lock_opaque) |= 0x1000u;
              CA::Display::Display::update(impl);
            }
          }
        }
      }

      mach_port_deallocate(*v18, v17);
    }

    [a3 isReference];

    kdebug_trace();
  }
}

- (CADisplayPreset)currentPreset
{
  if (CADeviceSupportsReferenceMode::once != -1)
  {
    dispatch_once(&CADeviceSupportsReferenceMode::once, &__block_literal_global_263);
  }

  if (CADeviceSupportsReferenceMode::supports_ref != 1)
  {
    return 0;
  }

  impl = self->_impl;
  if ((impl[192] & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 368);
  v5 = *(impl + 47);
  v6 = *(impl + 48);
  v7 = *(impl + 49);
  v8 = *(impl + 50);
  os_unfair_lock_unlock(impl + 18);
  if (v4)
  {
    v9 = [[CAUserAdjustment alloc] initWithXDelta:v5 yDelta:v6 luminanceScale:v7 timestamp:v8];
  }

  else
  {
    v9 = 0;
  }

  v11 = [CADisplayPreset alloc];
  *&v12 = CA::Display::Display::auto_luminance_boost(impl[26]);
  v13 = [(CADisplayPreset *)v11 initWithIsReference:v4 & 1 userAdjustment:v9 autoLuminanceBoost:v12];

  return v13;
}

- (id)allowedHDRModes
{
  v8[1] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v4 = [(CADisplay *)self preferences];
  if (v4 && [(CADisplayPreferences *)v4 matchContent])
  {

    return [(CADisplay *)self supportedHDRModes];
  }

  else
  {
    os_unfair_lock_lock(impl + 18);
    v6 = *(impl + 31);
    os_unfair_lock_unlock(impl + 18);
    if (v6)
    {
      v7 = (v6 & 0x10000000) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8[0] = *(&off_1E6DEC100 + CA::WindowServer::Display::Mode::hdr_type(v6) - 1);
      return [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    }

    else
    {
      return 0;
    }
  }
}

- (id)preferredHDRModes
{
  v9[6] = *MEMORY[0x1E69E9840];
  result = [-[CADisplay supportedHDRModes](self "supportedHDRModes")];
  if (result)
  {
    v4 = result;
    impl = self->_impl;
    os_unfair_lock_lock(impl + 18);
    v7 = *&impl[80]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(impl + 18);
    CA::Display::Display::available_modes(__p, impl);
    v6 = CA::WindowServer::Display::ModeSet::supports_4k60_dovi(__p, v7);
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v9);
    std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(__p[4]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if ((v6 & 1) == 0)
    {
      [v4 removeObject:@"Dolby"];
    }

    return v4;
  }

  return result;
}

- (id)supportedHDRModesWithCriteria:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
  }

  os_unfair_lock_lock(impl + 18);
  v5 = *(impl + 31);
  os_unfair_lock_unlock(impl + 18);
  if (!v5)
  {
    return 0;
  }

  os_unfair_lock_lock(impl + 18);
  v6 = *(impl + 31);
  os_unfair_lock_unlock(impl + 18);
  if ((v6 & 0x10000000) != 0)
  {
    return 0;
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::once != -1)
  {
    dispatch_once(&CADeviceSupportsExternalHighRefreshRateAndVRR::once, &__block_literal_global_474);
  }

  if (CADeviceSupportsExternalHighRefreshRateAndVRR::b & 1) == 0 && (([a3 isHighRefreshRate] & 1) != 0 || (objc_msgSend(a3, "isVariableRefreshRate")))
  {
    return 0;
  }

  CA::Display::Display::available_modes(__p, impl);
  os_unfair_lock_lock(impl + 18);
  v12 = *(impl + 20);
  LODWORD(v13) = *(impl + 84);
  BYTE4(v13) = impl[340];
  v14 = *(impl + 344);
  LODWORD(v15) = *(impl + 90);
  os_unfair_lock_unlock(impl + 18);
  v7 = [a3 isHighRefreshRate];
  v8 = [a3 isVariableRefreshRate];
  v21[0] = @"Dolby";
  v21[1] = @"HDR10";
  v21[2] = @"SDR";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___Z37CADisplaySupportedHDRModeWithCriteriaRKN2CA12WindowServer7Display7ModeSetERKNS1_14EDIDAttributesEbb_block_invoke;
  v16[3] = &__block_descriptor_50_e21_B24__0__NSString_8_16l;
  v17 = v7;
  v18 = v8;
  v16[4] = __p;
  v16[5] = &v12;
  v10 = [v9 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v16)}];
  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v20);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(__p[4]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10;
}

- (id)preferredModeWithCriteria:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  v6 = [(CADisplay *)self preferences];
  v7 = [a3 hdrMode];
  if ([v7 isEqualToString:@"Dolby"])
  {
    v8 = 5;
  }

  else if ([v7 isEqualToString:@"HDR10"])
  {
    v8 = 3;
  }

  else
  {
    v8 = [v7 isEqualToString:@"SDR"];
  }

  v9 = [(CADisplayPreferences *)v6 preferredHdrMode];
  if ([(NSString *)v9 isEqualToString:@"Dolby"])
  {
    v10 = 5;
  }

  else if ([(NSString *)v9 isEqualToString:@"HDR10"])
  {
    v10 = 3;
  }

  else
  {
    v10 = [(NSString *)v9 isEqualToString:@"SDR"];
  }

  v31 = 0;
  v11 = self->_impl;
  os_unfair_lock_lock(v11 + 18);
  v29 = *(v11 + 20);
  v30 = *(v11 + 84);
  LOBYTE(v31) = v11[340];
  v32 = *(v11 + 344);
  v33 = *(v11 + 90);
  os_unfair_lock_unlock(v11 + 18);
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  *__p = 0u;
  v35 = 0u;
  CA::Display::Display::available_modes(__p, self->_impl);
  [a3 resolution];
  [a3 refreshRate];
  *&v14 = v14;
  v19 = LODWORD(v14);
  v20 = v8;
  v21 = [a3 isHighRefreshRate];
  v22 = [a3 isVariableRefreshRate];
  v23 = [(CADisplayPreferences *)v6 matchContent];
  v24 = v10;
  v25 = [(CADisplayPreferences *)v6 prefersHighRefreshRate];
  v26 = [(CADisplayPreferences *)v6 prefersVariableRefreshRate];
  v27 = [a3 disableFrameDoubling] ^ 1;
  v28 = &v29;
  v15 = CA::WindowServer::Display::ModeSet::preferred_mode_with_criteria(__p, &v18);
  if (v15)
  {
    mode = create_mode(self, v15, __p);
  }

  else
  {
    mode = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v37);
  std::__tree<std::tuple<unsigned short,unsigned short>>::destroy(v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return mode;
}

- (void)setPreferences:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((impl[384] & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change preferences on an immutable CADisplay"];
    impl = self->_impl;
  }

  v6 = [a3 matchContent];
  v7 = [a3 _preferredHdrType];
  v8 = [a3 prefersHighRefreshRate];
  v9 = [a3 prefersVariableRefreshRate];
  v10 = v9;
  v11 = impl[384];
  if ((v11 & 0x1000) != 0 || v6 != (v11 & 0x40) >> 6 || *(impl + 109) != v7 || v8 != (v11 & 0x80) >> 7 || v9 != (v11 & 0x100) >> 8)
  {
    v12 = *(impl + 26);
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v14 = ServerPort;
      if (v12)
      {
        v21 = *MEMORY[0x1E69E99E0];
        v22 = v12;
        v23 = v6;
        v24 = 0;
        v25 = 0;
        v26 = v7;
        v27 = v8;
        v28 = 0;
        v29 = 0;
        v30 = v10;
        v31 = 0;
        v32 = 0;
        reply_port = mig_get_reply_port();
        *&v20.msgh_bits = 5395;
        v20.msgh_remote_port = v14;
        v20.msgh_local_port = reply_port;
        *&v20.msgh_voucher_port = 0x9D2F00000000;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(&v20);
          msgh_local_port = v20.msgh_local_port;
        }

        else
        {
          msgh_local_port = reply_port;
        }

        v17 = mach_msg(&v20, 3, 0x34u, 0x2Cu, msgh_local_port, 0, 0);
        v18 = v17;
        if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
        {
          mig_put_reply_port(v20.msgh_local_port);
        }

        else if (v17)
        {
          mig_dealloc_reply_port(v20.msgh_local_port);
        }

        else
        {
          if (v20.msgh_id == 71)
          {
            v18 = 4294966988;
          }

          else if (v20.msgh_id == 40339)
          {
            v18 = 4294966996;
            if ((v20.msgh_bits & 0x80000000) == 0 && *&v20.msgh_size == 36)
            {
              v18 = v22;
              if (!v22)
              {
                CAVerifyServerReturn(0);
                if ((impl[384] & 0x2000) == 0)
                {
                  impl[384] |= 0x1000u;
                  CA::Display::Display::update(impl);
                }

                goto LABEL_30;
              }
            }
          }

          else
          {
            v18 = 4294966995;
          }

          mach_msg_destroy(&v20);
        }

        CAVerifyServerReturn(v18);
      }

LABEL_30:
      v19 = *MEMORY[0x1E69E9A60];

      mach_port_deallocate(v19, v14);
    }
  }
}

- (CADisplayPreferences)preferences
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  v4 = [[CADisplayPreferences alloc] initWithMatchContent:(*(self->_impl + 384) >> 6) & 1 preferredHdrType:*(self->_impl + 109) prefersHighRefreshRate:(*(self->_impl + 384) >> 7) & 1 prefersVRR:HIBYTE(*(self->_impl + 384)) & 1];

  return v4;
}

- (void)setLatency:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 384) & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change properties on an immutable CADisplay"];
  }

  if (*(impl + 51) != a3)
  {
    v5 = CA::Display::Display::retain_uuid(impl);
    if (v5)
    {
      v6 = v5;
      os_unfair_lock_lock(impl + 18);
      v7 = *(impl + 31);
      os_unfair_lock_unlock(impl + 18);
      v8 = *(impl + 26);
      ServerPort = CARenderServerGetServerPort(0);
      memset(v18, 0, sizeof(v18));
      CFStringGetCString(v6, v18, 64, 0x8000100u);
      if (!ServerPort)
      {
LABEL_35:
        CFRelease(v6);
        return;
      }

      if (!v8)
      {
LABEL_34:
        mach_port_deallocate(*MEMORY[0x1E69E9A60], ServerPort);
        goto LABEL_35;
      }

      memset(v21, 0, 92);
      *buf = 0u;
      v20 = 0u;
      *(&v20 + 1) = *MEMORY[0x1E69E99E0];
      LODWORD(v21[0]) = v8;
      if (MEMORY[0x1EEE9AC40])
      {
        v10 = mig_strncpy_zerofill(v21 + 12, v18, 64);
      }

      else
      {
        v10 = mig_strncpy(v21 + 12, v18, 64);
      }

      DWORD1(v21[0]) = 0;
      DWORD2(v21[0]) = v10;
      v12 = (v10 + 3) & 0xFFFFFFFC;
      v13 = &buf[v12];
      *(v13 + 44) = v7;
      *(v13 + 52) = a3;
      reply_port = mig_get_reply_port();
      *&buf[8] = ServerPort;
      *&buf[12] = reply_port;
      *buf = 5395;
      *&v20 = 0x9D3000000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(buf);
        v15 = *&buf[12];
      }

      else
      {
        v15 = reply_port;
      }

      v16 = mach_msg(buf, 3, v12 + 60, 0x2Cu, v15, 0, 0);
      v17 = v16;
      if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&buf[12]);
      }

      else if (v16)
      {
        mig_dealloc_reply_port(*&buf[12]);
      }

      else
      {
        if (DWORD1(v20) == 71)
        {
          v17 = 4294966988;
        }

        else if (DWORD1(v20) == 40340)
        {
          v17 = 4294966996;
          if ((*buf & 0x80000000) == 0 && *&buf[4] == 36 && !*&buf[8])
          {
            v17 = LODWORD(v21[0]);
            if (!LODWORD(v21[0]))
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v17 = 4294966995;
        }

        mach_msg_destroy(buf);
      }

LABEL_32:
      CAVerifyServerReturn(v17);
      if ((*(impl + 384) & 0x2000) == 0)
      {
        *(impl + 384) |= 0x1000u;
      }

      goto LABEL_34;
    }

    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v11 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v11, OS_LOG_TYPE_ERROR, "Failed to set display latency - missing UUID", buf, 2u);
    }
  }
}

- (CADisplayAttributes)externalDisplayAttributes
{
  v12 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  if ((*(impl + 56) - 1) > 1)
  {
    return 0;
  }

  v4 = [CADisplayAttributes alloc];
  v5 = self->_impl;
  os_unfair_lock_lock(v5 + 18);
  v7 = *(v5 + 20);
  v8 = *(v5 + 84);
  v9 = v5[340];
  v10 = *(v5 + 344);
  v11 = *(v5 + 90);
  os_unfair_lock_unlock(v5 + 18);
  return [(CADisplayAttributes *)v4 _initWithAttributes:&v7];
}

- (BOOL)isCloning
{
  impl = self->_impl;
  v4 = impl[384];
  if ((v4 & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    v4 = *(self->_impl + 384);
  }

  return (v4 >> 2) & 1;
}

- (double)maximumLogicalScale
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return *(impl + 181);
}

- (double)minimumLogicalScale
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  return *(impl + 180);
}

- (CGSize)logicalScale
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = *(impl + 178);
  v5 = *(impl + 179);
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setOverscanAdjustment:(id)a3
{
  v5 = objc_alloc_init(CADisplayProperties);
  [(CADisplayProperties *)v5 setOverscanAdjustment:a3];
  [(CADisplay *)self setDisplayProperties:v5];
}

- (double)overscanAmount
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 74);
  v5 = *(impl + 75);
  os_unfair_lock_unlock(impl + 18);
  if (v4 >= v5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (void)overrideMinimumFrameDuration:(int64_t)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((impl[384] & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change properties on an immutable CADisplay"];
  }

  v5 = a3 & ~(a3 >> 63);
  if (*(impl + 138) != v5)
  {
    *(impl + 138) = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN2CA7Display11DisplayLink28display_refresh_rate_changedEPNS0_7DisplayE_block_invoke;
    v6[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v6[4] = impl;
    CA::Display::DisplayLink::foreach_display_link(v6);
  }
}

- (BOOL)isSupported
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
  }

  return 1;
}

- (CGRect)safeBounds
{
  impl = self->_impl;
  v3 = *(impl + 384);
  if ((v3 & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
    v3 = *(impl + 384);
  }

  if ((v3 & 1) != 0 && *(impl + 104) == 1)
  {
    os_unfair_lock_lock(impl + 18);
    v29 = *(impl + 264);
    os_unfair_lock_unlock(impl + 18);
    os_unfair_lock_lock(impl + 18);
    v28 = *(impl + 74);
    os_unfair_lock_unlock(impl + 18);
    os_unfair_lock_lock(impl + 18);
    v27 = *(impl + 75);
    os_unfair_lock_unlock(impl + 18);
    v7 = v29;
    v8 = v29.i32[2];
    if (v29.i32[2] <= v29.i32[3])
    {
      v9 = v29.i32[3];
    }

    else
    {
      v9 = v29.i32[2];
    }

    if (v29.i32[2] >= v29.i32[3])
    {
      v8 = v29.i32[3];
    }

    if (v9 <= 1073741822 && v8 >= 1)
    {
      __asm
      {
        FMOV            V0.2S, #1.0
        FMOV            V1.2D, #0.5
      }

      v17.i64[0] = v29.i32[2];
      v17.i64[1] = v29.i32[3];
      v6 = vmlaq_f64(_Q1, vcvtq_f64_s64(v17), vmulq_f64(vcvtq_f64_f32(vsub_f32(_D0, __PAIR64__(v27, v28))), _Q1));
      v18 = vmovn_s64(vcvtq_s64_f64(v6));
      *v6.i8 = vadd_s32(*v29.i8, v18);
      v19.i64[0] = v6.i64[0];
      v19.u64[1] = vsub_s32(*&vextq_s8(v29, v29, 8uLL), vadd_s32(v18, v18));
      v20 = vclez_s32(v19.u64[1]);
      v5 = vmovl_s16(vdup_lane_s16(vorr_s8(v20, vdup_lane_s32(v20, 1)), 0));
      v7 = vbslq_s8(v5, v6, v19);
    }
  }

  else
  {
    os_unfair_lock_lock(impl + 18);
    v30 = *(impl + 264);
    os_unfair_lock_unlock(impl + 18);
    v7 = v30;
  }

  if (v7.i32[2] <= v7.i32[3])
  {
    v21 = v7.i32[3];
  }

  else
  {
    v21 = v7.i32[2];
  }

  v5.i32[0] = 1073741822;
  v6.i32[0] = v21;
  v22.i64[0] = v7.i32[0];
  v22.i64[1] = v7.i32[1];
  v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v6, v5), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v22));
  if (v21 <= 1073741822)
  {
    v24 = v7.i32[2];
  }

  else
  {
    v24 = 1.79769313e308;
  }

  if (v21 <= 1073741822)
  {
    v25 = v7.i32[3];
  }

  else
  {
    v25 = 1.79769313e308;
  }

  v26 = *&v23.i64[1];
  result.origin.x = *v23.i64;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v26;
  return result;
}

- (void)setAllowsVirtualModes:(BOOL)a3
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
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CADisplay setAllowsVirtualModes] is deprecated!", v4, 2u);
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
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CADisplay allowsVirtualModes] is deprecated!", v4, 2u);
  }

  return 0;
}

- (void)setColorMode:(id)a3
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
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "[CADisplay setColorMode:] is deprecated!", v4, 2u);
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
    _os_log_error_impl(&dword_183AA6000, v2, OS_LOG_TYPE_ERROR, "[CADisplay colorMode] is deprecated!", v4, 2u);
  }

  return @"auto";
}

- (void)setCurrentMode:(id)a3
{
  if ([a3 _display] == self && objc_msgSend(a3, "_mode"))
  {
    v5 = objc_alloc_init(CADisplayProperties);
    [(CADisplayProperties *)v5 setCurrentMode:a3];
    [(CADisplay *)self setDisplayProperties:v5];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:@"CAInvalidDisplayMode" format:{@"mode %@ is not valid for display %@", a3, self}];
  }
}

- (NSString)transportType
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(impl);
    impl = self->_impl;
  }

  v4 = *(impl + 114) - 1;
  if (v4 > 4)
  {
    return @"other";
  }

  else
  {
    return *(&off_1E6DEC020 + v4);
  }
}

- (CGSize)nativeSize
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 79);
  v5 = *(impl + 78);
  os_unfair_lock_unlock(impl + 18);
  v6 = v5;
  v7 = v4;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)physicalSize
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 76);
  v5 = *(impl + 77);
  os_unfair_lock_unlock(impl + 18);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (NSString)productName
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 18);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(impl + 18);

  return v5;
}

- (NSString)containerId
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  os_unfair_lock_lock(impl + 18);
  v4 = *(impl + 17);
  if (v4)
  {
    v5 = CFRetain(v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(impl + 18);

  return v5;
}

- (void)setDisallowedLayersCallback:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((*(impl + 384) & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change properties on an immutable CADisplay"];
  }

  os_unfair_lock_lock(impl + 183);
  v5 = *(impl + 92);
  v7 = v5 == a3;
  v6 = a3 | v5;
  v7 = v7 || v6 == 0;
  if (!v7)
  {
    v8 = *(impl + 26);
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v10 = ServerPort;
      if (v8)
      {
        v11 = *(impl + 92);
        if (v11)
        {
          _Block_release(v11);
          *(impl + 92) = 0;
        }

        if (a3)
        {
          *(impl + 92) = _Block_copy(a3);
          if (!*(impl + 186))
          {
            v21 = 0u;
            memset(__str, 0, sizeof(__str));
            snprintf(__str, 0x40uLL, "CADisplay.%i.disallowedLayersNotification", *(impl + 26));
            v12 = CA::MachPortUtil::ClientIPC::create((impl + 744), __str);
            CA_CLIENT_MACH_PORT_ALLOCATE_FAILED(v12, *(impl + 186));
            v13 = *(impl + 95);
            if (v13)
            {
              dispatch_activate(v13);
            }

            v14 = *(impl + 186);
            memset(&msg[4], 0, 32);
            *&msg[28] = v14;
            v17 = 1245184;
            v18 = *MEMORY[0x1E69E99E0];
            v19 = v8;
            *msg = -2147483629;
            *&msg[8] = v10;
            *&msg[20] = 0x100009D31;
            if (MEMORY[0x1EEE9AC50])
            {
              voucher_mach_msg_set(msg);
            }

            mach_msg(msg, 1, 0x34u, 0, 0, 0, 0);
          }
        }

        else
        {
          v15 = *(impl + 186);
          *&__str[0].msgh_id = 0u;
          *&__str[0].msgh_size = 0u;
          __str[1].msgh_size = v15;
          __str[1].msgh_local_port = 1245184;
          *&__str[1].msgh_voucher_port = *MEMORY[0x1E69E99E0];
          LODWORD(v21) = v8;
          __str[0].msgh_bits = -2147483629;
          __str[0].msgh_remote_port = v10;
          *&__str[0].msgh_id = 0x100009D32;
          if (MEMORY[0x1EEE9AC50])
          {
            voucher_mach_msg_set(__str);
          }

          mach_msg(__str, 1, 0x34u, 0, 0, 0, 0);
          CA::MachPortUtil::ClientIPC::destroy((impl + 744));
        }
      }

      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10);
    }
  }

  os_unfair_lock_unlock(impl + 183);
}

- (BOOL)setDisplayProperties:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if ((impl[192] & 0x2000) != 0)
  {
    [MEMORY[0x1E695DF30] raise:@"CADisplay" format:@"cannot change properties on an immutable CADisplay"];
  }

  else
  {
    if ([a3 needsUpdateForField:1] && objc_msgSend(a3, "currentMode"))
    {
      v5 = [objc_msgSend(a3 "currentMode")];
    }

    else
    {
      v5 = 0;
    }

    if ([a3 needsUpdateForField:2] && (v6 = objc_msgSend(a3, "overscanAdjustment")) != 0)
    {
      v7 = v6;
      if ([v6 isEqualToString:@"none"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"scaleContent"])
      {
        v8 = 2;
      }

      else if ([v7 isEqualToString:@"insetBounds"])
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    if ([a3 needsUpdateForField:4])
    {
      v9 = [a3 dmrrEnabled];
    }

    else
    {
      v9 = 0;
    }

    if ([a3 needsUpdateForField:128])
    {
      v10 = [a3 forceFixedRateLinks];
    }

    else
    {
      v10 = 0;
    }

    if ([a3 needsUpdateForField:8])
    {
      v11 = [a3 connectionSeed];
    }

    else
    {
      v11 = 0;
    }

    v12 = 1.0;
    v13 = 1.0;
    if ([a3 needsUpdateForField:16])
    {
      [a3 logicalScale];
      v12 = v14;
      v13 = v15;
    }

    if ([a3 needsUpdateForField:32])
    {
      v16 = [a3 pointScale];
    }

    else
    {
      v16 = 1;
    }

    v17 = [a3 updateMask];
    v18 = impl[26];
    ServerPort = CARenderServerGetServerPort(0);
    if (ServerPort)
    {
      v20 = ServerPort;
      v21 = MEMORY[0x1E69E9A60];
      if (v18)
      {
        name = 0;
        if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name))
        {
          goto LABEL_32;
        }

        *&v22 = v12;
        *&v23 = v13;
        *&msg[0].msgh_id = 0u;
        *&msg[0].msgh_size = 0u;
        msg[1].msgh_size = name;
        msg[1].msgh_local_port = 1310720;
        *&msg[1].msgh_voucher_port = *MEMORY[0x1E69E99E0];
        *&v31 = v18;
        *(&v31 + 1) = v5;
        LODWORD(v32) = v8;
        BYTE4(v32) = v9;
        *(&v32 + 5) = 0;
        BYTE7(v32) = 0;
        *(&v32 + 1) = __PAIR64__(v22, v11);
        *&v33 = __PAIR64__(v16, v23);
        DWORD2(v33) = 1;
        BYTE12(v33) = v10;
        HIBYTE(v33) = 0;
        *(&v33 + 13) = 0;
        v34 = v17;
        msg[0].msgh_bits = -2147483629;
        msg[0].msgh_remote_port = v20;
        *&msg[0].msgh_id = 0x100009D2DLL;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(msg);
        }

        v24 = mach_msg(msg, 1, 0x64u, 0, 0, 0, 0);
        v25 = v24;
        CAVerifyServerReturn(v24);
        if (v25)
        {
LABEL_32:
          v26 = 0;
          v21 = MEMORY[0x1E69E9A60];
LABEL_45:
          mach_port_deallocate(*v21, v20);
          return v26;
        }

        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        memset(msg, 0, sizeof(msg));
        v27 = mach_msg(msg, 258, 0, 0x60u, name, 0x3E8u, 0);
        mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
        if ((impl[192] & 0x2000) == 0)
        {
          *(impl + 384) |= 0x1000u;
          CA::Display::Display::update(impl);
        }

        v21 = MEMORY[0x1E69E9A60];
        if (!v27 && msg[0].msgh_id)
        {
          v26 = 1;
          goto LABEL_45;
        }
      }

      v26 = 0;
      goto LABEL_45;
    }
  }

  return 0;
}

- (id)stateControl
{
  v2 = [[CADisplayStateControl alloc] _initWithDisplayId:[(CADisplay *)self displayId]];

  return v2;
}

- (void)_notifyDisallowedLayersChange:(BOOL)a3
{
  v3 = a3;
  impl = self->_impl;
  os_unfair_lock_lock(impl + 183);
  v5 = *&impl[184]._os_unfair_lock_opaque;
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  os_unfair_lock_unlock(impl + 183);
}

- (void)_finalize
{
  impl = self->_impl;
  if ((*(impl + 384) & 0x2000) == 0)
  {
    *(impl + 384) |= 0x1000u;
    pthread_mutex_lock((impl + 8));
    v3 = impl + 464;
    v4 = 64;
    v5 = 32;
    if ((impl[705] & 8) != 0)
    {
      v5 = 64;
    }

    v6 = *&v3[v5];
    if ((impl[705] & 8) == 0)
    {
      v4 = 48;
    }

    v7 = *&v3[v4];
    if ((*(impl + 384) & 0x800) != 0)
    {
      if (v6 != 0.0)
      {
        [*(impl + 10) willChangeValueForKey:@"refreshRate"];
      }

      if (v7 != 0.0)
      {
        [*(impl + 10) willChangeValueForKey:@"heartbeatRate"];
      }

      [*(impl + 10) willChangeValueForKey:@"minimumFrameDuration"];
    }

    *(impl + 31) = 0u;
    *(impl + 32) = 0u;
    CA::Display::DisplayTimingsControl::set_timings_shmem(impl + 116, 0);
    if ((*(impl + 384) & 0x800) != 0)
    {
      if (v6 != 0.0)
      {
        [*(impl + 10) didChangeValueForKey:@"refreshRate"];
      }

      if (v7 != 0.0)
      {
        [*(impl + 10) didChangeValueForKey:@"heartbeatRate"];
      }

      [*(impl + 10) didChangeValueForKey:@"minimumFrameDuration"];
    }

    pthread_mutex_unlock((impl + 8));
  }
}

- (void)_postNotification:(int64_t)a3
{
  if (*(self->_impl + 14))
  {
    if (a3 == 1)
    {
      CA::Display::DisplayLink::foreach_display_link(&__block_literal_global_336);
    }

    else if (!a3)
    {
      [(CADisplay *)self update];
    }
  }
}

- (id)_initWithDisplay:(void *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CADisplay;
  v4 = [(CADisplay *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = a3;
    *(a3 + 10) = v4;
    if ((*(a3 + 384) & 0x1000) != 0)
    {
      CA::Display::Display::update(a3);
    }
  }

  else if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  return v5;
}

+ (id)TVOutDisplay
{
  if (BYTE10(xmmword_1ED4E98AC) == 1)
  {

    return +[CATestDisplay tvTestDisplay];
  }

  else
  {
    ensure_displays();
    return _tvoutDisplay;
  }
}

- (ModeSet)_availableModesInternal
{
  impl = self->_impl;
  if ((impl[192]._os_unfair_lock_opaque & 0x1000) != 0)
  {
    CA::Display::Display::update(self->_impl);
    impl = self->_impl;
  }

  CA::Display::Display::available_modes(retstr, impl);
  return result;
}

- (__CFDictionary)_copyDebugProperties
{
  v18 = *MEMORY[0x1E69E9840];
  ServerPort = CARenderServerGetServerPort(0);
  if (!ServerPort)
  {
    return 0;
  }

  v4 = ServerPort;
  v5 = [(CADisplay *)self displayId];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = v5;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = v4;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x9D5F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x24u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else if (v8)
  {
    mig_dealloc_reply_port(*&msg_4[8]);
  }

  else
  {
    if (*&msg_4[16] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg_4[16] == 40387)
    {
      if (msg < 0)
      {
        v9 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v10 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v9 = 0;
            v11 = *&msg_4[24];
            goto LABEL_29;
          }
        }
      }

      else if (*msg_4 == 36)
      {
        v9 = 4294966996;
        if (*&msg_4[28])
        {
          if (*&msg_4[4])
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg_4[28];
          }
        }
      }

      else
      {
        v9 = 4294966996;
      }
    }

    else
    {
      v9 = 4294966995;
    }

    mach_msg_destroy(&msg);
  }

  v11 = 0;
  v10 = 0;
LABEL_29:
  CAVerifyServerReturn(v9);
  v12 = *MEMORY[0x1E695E490];
  v13 = CFDataCreate(*MEMORY[0x1E695E490], v11, v10);
  mach_vm_deallocate(*MEMORY[0x1E69E9A60], v11, v10);
  if (!v13)
  {
    return 0;
  }

  v14 = CFPropertyListCreateWithData(v12, v13, 0, 0, 0);
  CFRelease(v13);
  return v14;
}

@end