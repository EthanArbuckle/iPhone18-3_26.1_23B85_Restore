@interface AVNetworkPlaybackPerfHUDLayer
- (AVNetworkPlaybackPerfHUDLayer)init;
- (BOOL)valueLoadedForKey:(id)key onObject:(id)object;
- (float)getScaleFactorForDisplaySize:(CGSize)size;
- (id)displayStringGenerator;
- (void)_hudUpdateTrigger;
- (void)copyPropertiesFromStringGenerator:(id)generator;
- (void)currentItemChanged;
- (void)currentItemTracksChanged;
- (void)dealloc;
- (void)getHudSetting;
- (void)readHudSettingsAndCallCompletionHandler:(id)handler;
- (void)setBounds:(CGRect)bounds;
- (void)setColor:(int)color;
- (void)startDispatchTimer;
- (void)updateHudWithDisplayString:(id)string;
@end

@implementation AVNetworkPlaybackPerfHUDLayer

- (void)currentItemTracksChanged
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_showHud)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    currentItem = [objc_msgSend(objc_loadWeak(&self->_player) currentItem];
    v3 = [currentItem countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(currentItem);
          }

          [objc_msgSend(*(*(&v7 + 1) + 8 * v6++) "assetTrack")];
        }

        while (v4 != v6);
        v4 = [currentItem countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (AVNetworkPlaybackPerfHUDLayer)init
{
  v5.receiver = self;
  v5.super_class = AVNetworkPlaybackPerfHUDLayer;
  v2 = [(AVNetworkPlaybackPerfHUDLayer *)&v5 init];
  if (registerOnce != -1)
  {
    [AVNetworkPlaybackPerfHUDLayer init];
  }

  v3 = *&sMaxDisplayScale;
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setContentsScale:v3];
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setAnchorPoint:0.0, 0.0];
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setFont:@"Helvetica-Bold"];
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setTruncationMode:*MEMORY[0x1E697A068]];
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setWrapped:1];
  v2->_updateUISettings = 1;
  [(AVNetworkPlaybackPerfHUDLayer *)v2 setAlignmentMode:*MEMORY[0x1E6979570]];
  return v2;
}

- (void)setBounds:(CGRect)bounds
{
  if (!self->_spatialDiagnostics)
  {
    v4 = bounds.size.width - self->_hudXoffset;
    v5 = bounds.size.height - self->_hudYoffset;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(AVNetworkPlaybackPerfHUDLayer *)self setPosition:self->_hudXoffset, self->_hudYoffset];
    v6.receiver = self;
    v6.super_class = AVNetworkPlaybackPerfHUDLayer;
    [(AVNetworkPlaybackPerfHUDLayer *)&v6 setBounds:0.0, 0.0, v4, v5];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setColor:(int)color
{
  v17 = *MEMORY[0x1E69E9840];
  if (color <= 5)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v6 = DeviceRGB;
    v15 = xmmword_196257520;
    v16 = unk_196257530;
    if (color <= 2)
    {
      if (color)
      {
        if (color == 1)
        {
          v15.i64[1] = 0x3FF0000000000000;
        }

        else
        {
          v15.i64[0] = 0x3FF0000000000000;
        }
      }

      else
      {
        __asm { FMOV            V0.2D, #1.0 }

        v15 = _Q0;
      }

      goto LABEL_14;
    }

    if (color != 3)
    {
      if (color != 4)
      {
        v12 = 0x3FE547AE20000000;
        v15 = vdupq_n_s64(0x3FE547AE20000000uLL);
        goto LABEL_13;
      }

      __asm { FMOV            V0.2D, #1.0 }

      v15 = _Q0;
    }

    v12 = 0x3FF0000000000000;
LABEL_13:
    *&v16 = v12;
LABEL_14:
    v14 = CGColorCreate(DeviceRGB, v15.i64);
    CGColorSpaceRelease(v6);
    [(AVNetworkPlaybackPerfHUDLayer *)self setForegroundColor:v14, *&v15, v16];
    CGColorRelease(v14);
  }
}

- (void)getHudSetting
{
  self->_showHud = CFPreferencesGetAppBooleanValue(@"enable", @"com.apple.avfoundation.videoperformancehud", 0) != 0;
  self->_spatialDiagnostics = CFPreferencesGetAppBooleanValue(@"spatial", @"com.apple.avfoundation.videoperformancehud", 0) != 0;
  self->_hudUpdateInterval = 1;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"interval", @"com.apple.avfoundation.videoperformancehud", 0);
  if (AppIntegerValue >= 1)
  {
    self->_hudUpdateInterval = AppIntegerValue;
  }

  self->_colorId = CFPreferencesGetAppIntegerValue(@"color", @"com.apple.avfoundation.videoperformancehud", 0);
  self->_opacity = 0.7;
  v4 = CFPreferencesCopyAppValue(@"opacity", @"com.apple.avfoundation.videoperformancehud");
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(v5))
      {
        valuePtr = 0.0;
        if (CFNumberGetValue(v5, kCFNumberFloat32Type, &valuePtr))
        {
          self->_opacity = valuePtr;
        }
      }
    }

    CFRelease(v5);
  }

  self->_fontSizeInt = 30;
  v7 = CFPreferencesGetAppIntegerValue(@"fontsize", @"com.apple.avfoundation.videoperformancehud", 0);
  if (v7 <= 7)
  {
    mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
    if (!mainDisplay)
    {
      goto LABEL_16;
    }

    [mainDisplay bounds];
    v10 = (v9 * 30.0 / 1280.0);
    self->_fontSizeInt = v10;
    if (v10 >= 8)
    {
      if (v10 < 0x29)
      {
        goto LABEL_16;
      }

      v7 = 40;
    }

    else
    {
      v7 = 8;
    }
  }

  self->_fontSizeInt = v7;
LABEL_16:
  self->_showCompleteURI = CFPreferencesGetAppBooleanValue(@"show_complete_uri", @"com.apple.avfoundation.videoperformancehud", 0) != 0;
  self->_hudXoffset = 0;
  self->_hudYoffset = 0;
  v11 = CFPreferencesGetAppIntegerValue(@"xoffset", @"com.apple.avfoundation.videoperformancehud", 0);
  if (v11 >= 1)
  {
    self->_hudXoffset = v11;
  }

  v12 = CFPreferencesGetAppIntegerValue(@"yoffset", @"com.apple.avfoundation.videoperformancehud", 0);
  if (v12 >= 1)
  {
    self->_hudYoffset = v12;
  }
}

- (void)readHudSettingsAndCallCompletionHandler:(id)handler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__AVNetworkPlaybackPerfHUDLayer_readHudSettingsAndCallCompletionHandler___block_invoke;
  v3[3] = &unk_1E74626C8;
  v3[4] = self;
  v3[5] = handler;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __73__AVNetworkPlaybackPerfHUDLayer_readHudSettingsAndCallCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) getHudSetting];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startDispatchTimer
{
  v3 = [[AVWeakReference alloc] initWithReferencedObject:self];
  hudUpdateInterval = self->_hudUpdateInterval;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__AVNetworkPlaybackPerfHUDLayer_startDispatchTimer__block_invoke;
  handler[3] = &unk_1E7460C00;
  handler[4] = v3;
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  if (v5)
  {
    v6 = v5;
    v7 = dispatch_time(0, 0);
    dispatch_source_set_timer(v6, v7, 1000000000 * hudUpdateInterval, 0x3B9ACA00uLL);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    self->_hudTimer = v6;
  }
}

void *__51__AVNetworkPlaybackPerfHUDLayer_startDispatchTimer__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {

    return [result _hudUpdateTrigger];
  }

  return result;
}

- (void)dealloc
{
  hudTimer = self->_hudTimer;
  if (hudTimer)
  {
    dispatch_source_cancel(hudTimer);
    dispatch_release(self->_hudTimer);
  }

  v4.receiver = self;
  v4.super_class = AVNetworkPlaybackPerfHUDLayer;
  [(AVNetworkPlaybackPerfHUDLayer *)&v4 dealloc];
}

- (float)getScaleFactorForDisplaySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AVNetworkPlaybackPerfHUDLayer *)self bounds];
  v7 = fmax(v5, v6);
  v8 = fmax(width, height);
  v9 = v7 == 0.0 || v8 == 0.0;
  result = v8 / v7;
  if (v9)
  {
    return 1.0;
  }

  return result;
}

- (void)currentItemChanged
{
  if (self->_showHud)
  {
    [objc_msgSend(objc_msgSend(objc_loadWeak(&self->_player) "currentItem")];
    self->_prevVariantIdx = -1;
    self->_totalStallCount = 0;
  }
}

- (BOOL)valueLoadedForKey:(id)key onObject:(id)object
{
  v7 = [(NSMutableDictionary *)self->_loadingStatusCache objectForKey:?];
  v8 = [MEMORY[0x1E696B098] valueWithNonretainedObject:object];
  if (!v7 || (v9 = [v7 objectForKey:v8]) == 0 || (v10 = objc_msgSend(v9, "unsignedLongValue")) == 0)
  {
    v10 = [object statusOfValueForKey:key error:0];
    if (v10 >= 2)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v10];
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(NSMutableDictionary *)self->_loadingStatusCache setObject:v7 forKey:key];
      }

      [v7 setObject:v11 forKey:v8];
    }
  }

  return v10 == 2;
}

- (void)updateHudWithDisplayString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_updateUISettings)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(AVNetworkPlaybackPerfHUDLayer *)self setColor:self->_colorId];
    opacity = self->_opacity;
    *&opacity = opacity;
    [(AVNetworkPlaybackPerfHUDLayer *)self setOpacity:opacity];
    [(AVNetworkPlaybackPerfHUDLayer *)self setFontSize:self->_fontSizeInt];
    [MEMORY[0x1E6979518] commit];
    self->_updateUISettings = 0;
  }

  if (!self->_spatialDiagnostics)
  {
    goto LABEL_9;
  }

  if (runningAnInternalBuild_onceToken != -1)
  {
    [AVHUDStringGenerator updateFromPlayer];
  }

  if (runningAnInternalBuild_internalBuild == 1)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v21[0] = xmmword_196257520;
    v21[1] = unk_196257530;
    v7 = CGColorCreate(DeviceRGB, v21);
    audioSpatializationMode = self->_audioSpatializationMode;
    if (audioSpatializationMode)
    {
      integerValue = [(NSNumber *)audioSpatializationMode integerValue];
    }

    else
    {
      integerValue = -1;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    LODWORD(v17) = 1.0;
    [(AVNetworkPlaybackPerfHUDLayer *)self setOpacity:v17];
    [(AVNetworkPlaybackPerfHUDLayer *)self setBackgroundColor:v7];
    [(AVNetworkPlaybackPerfHUDLayer *)self setWrapped:0];
    if (integerValue <= 3)
    {
      [(AVNetworkPlaybackPerfHUDLayer *)self setColor:dword_196257540[integerValue]];
    }

    [(AVNetworkPlaybackPerfHUDLayer *)self setString:string];
    [(AVNetworkPlaybackPerfHUDLayer *)self preferredFrameSize];
    if (v18 > 0.0)
    {
      [(AVNetworkPlaybackPerfHUDLayer *)self frame];
      v20 = v19;
      [(AVNetworkPlaybackPerfHUDLayer *)self frame];
      [(AVNetworkPlaybackPerfHUDLayer *)self setFrame:v20];
    }

    [MEMORY[0x1E6979518] commit];
    if (v7)
    {
      CFRelease(v7);
    }

    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
    }
  }

  else
  {
LABEL_9:
    fontSizeInt = self->_fontSizeInt;
    if (self->_displayResolutionHeight)
    {
      displayResolutionWidth = self->_displayResolutionWidth;
      if (displayResolutionWidth)
      {
        [(NSNumber *)displayResolutionWidth floatValue];
        v13 = v12;
        [(NSNumber *)self->_displayResolutionHeight floatValue];
        [(AVNetworkPlaybackPerfHUDLayer *)self getScaleFactorForDisplaySize:v13, v14];
        fontSizeInt = (fontSizeInt / v15);
      }
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(AVNetworkPlaybackPerfHUDLayer *)self setFontSize:fontSizeInt];
    [(AVNetworkPlaybackPerfHUDLayer *)self setString:string];
    v16 = MEMORY[0x1E6979518];

    [v16 commit];
  }
}

- (id)displayStringGenerator
{
  v3 = objc_alloc_init(AVHUDStringGenerator);
  [(AVHUDStringGenerator *)v3 setCaptureCompleteURI:self->_showCompleteURI];
  [(AVHUDStringGenerator *)v3 setSpatialDiagnostics:self->_spatialDiagnostics];
  [(AVHUDStringGenerator *)v3 setPrevStallCount:self->_prevStallCount];
  [(AVHUDStringGenerator *)v3 setTotalStallCount:self->_totalStallCount];
  [(AVHUDStringGenerator *)v3 setPlayer:objc_loadWeak(&self->_player)];

  return v3;
}

- (void)copyPropertiesFromStringGenerator:(id)generator
{
  self->_prevStallCount = [generator prevStallCount];
  self->_totalStallCount = [generator totalStallCount];
  self->_prevVariantIdx = [generator prevVariantIdx];
  self->_displayResolutionHeight = [objc_msgSend(generator "displayResolutionHeight")];
  self->_displayResolutionWidth = [objc_msgSend(generator "displayResolutionWidth")];
  self->_audioSpatializationMode = [objc_msgSend(generator "audioSpatializationMode")];
}

- (void)_hudUpdateTrigger
{
  if ([(AVNetworkPlaybackPerfHUDLayer *)self hudEnabled])
  {
    if (objc_loadWeak(&self->_player) && objc_loadWeak(&self->_playerLayer) && [objc_loadWeak(&self->_player) status] == 1)
    {
      if ([(AVNetworkPlaybackPerfHUDLayer *)self isHidden])
      {
        [(AVNetworkPlaybackPerfHUDLayer *)self setHidden:0];
      }

      if (![(AVNetworkPlaybackPerfHUDLayer *)self superlayer])
      {
        [objc_msgSend(objc_loadWeak(&self->_playerLayer) "_maskLayer")];
      }

      if ([objc_loadWeak(&self->_player) currentItem])
      {
        if (!self->_requestInFlight)
        {
          self->_requestInFlight = 1;
          global_queue = dispatch_get_global_queue(-32768, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __50__AVNetworkPlaybackPerfHUDLayer__hudUpdateTrigger__block_invoke;
          block[3] = &unk_1E7460C00;
          block[4] = self;
          dispatch_async(global_queue, block);
        }
      }
    }
  }

  else if (([(AVNetworkPlaybackPerfHUDLayer *)self isHidden]& 1) == 0)
  {

    [(AVNetworkPlaybackPerfHUDLayer *)self setHidden:1];
  }
}

void __50__AVNetworkPlaybackPerfHUDLayer__hudUpdateTrigger__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) displayStringGenerator];
  [v3 update];
  v4 = [v3 formattedDisplayString];
  [*(a1 + 32) copyPropertiesFromStringGenerator:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVNetworkPlaybackPerfHUDLayer__hudUpdateTrigger__block_invoke_2;
  v5[3] = &unk_1E7460DF0;
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_autoreleasePoolPop(v2);
}

uint64_t __50__AVNetworkPlaybackPerfHUDLayer__hudUpdateTrigger__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) updateHudWithDisplayString:*(a1 + 40)];
  *(*(a1 + 32) + 176) = 0;
  return result;
}

@end