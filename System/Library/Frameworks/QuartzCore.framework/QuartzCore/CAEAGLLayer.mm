@interface CAEAGLLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)isDrawableAvailable;
- (BOOL)isDrawableAvailableInternal;
- (BOOL)lowLatency;
- (BOOL)presentsWithTransaction;
- (BOOL)shouldArchiveValueForKey:(id)key;
- (NSDictionary)drawableProperties;
- (_EAGLNativeWindowObject)nativeWindow;
- (double)drawableTimeoutSeconds;
- (double)inputTime;
- (unint64_t)maximumDrawableCount;
- (void)_didCommitLayer:(void *)layer;
- (void)_display;
- (void)dealloc;
- (void)didChangeValueForKey:(id)key;
- (void)discardContents;
- (void)layerDidBecomeVisible:(BOOL)visible;
- (void)setDrawableProperties:(id)properties;
- (void)setDrawableTimeoutSeconds:(double)seconds;
- (void)setInputTime:(double)time;
- (void)setLowLatency:(BOOL)latency;
- (void)setMaximumDrawableCount:(unint64_t)count;
- (void)setPresentsWithTransaction:(BOOL)presentsWithTransaction;
@end

@implementation CAEAGLLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CAEAGLLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setDrawableProperties:(id)properties
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = properties;
  CA::Layer::setter(self->super._attr.layer, 0xD0, 3, v3);
}

- (NSDictionary)drawableProperties
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xD0u, 3, v3);
  return v3[0];
}

- (void)setPresentsWithTransaction:(BOOL)presentsWithTransaction
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = presentsWithTransaction_atom;
  if (!presentsWithTransaction_atom)
  {
    v5 = CAInternAtomWithCString("presentsWithTransaction");
    presentsWithTransaction_atom = v5;
  }

  v6 = presentsWithTransaction;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (BOOL)presentsWithTransaction
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = presentsWithTransaction_atom;
  if (!presentsWithTransaction_atom)
  {
    v3 = CAInternAtomWithCString("presentsWithTransaction");
    presentsWithTransaction_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (void)_didCommitLayer:(void *)layer
{
  v14 = *MEMORY[0x1E69E9840];
  win = self->_win;
  if (win)
  {
    if ((*(win + 33) & 4) != 0)
    {
      v6 = *(layer + 5);
      if (v6)
      {
        v7 = *(win + 18);
        if (v7)
        {
          os_unfair_lock_lock(v7 + 4);
          v8 = v7[6]._os_unfair_lock_opaque + 1;
          v7[6]._os_unfair_lock_opaque = v8;
          os_unfair_lock_unlock(v7 + 4);
          os_unfair_lock_lock(v7 + 4);
          os_unfair_lock_opaque = v7[7]._os_unfair_lock_opaque;
          os_unfair_lock_unlock(v7 + 4);
          valuePtr = v8;
          v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CA::Context::commit_command(0xE, os_unfair_lock_opaque, v10, *(v6 + 224), v11);
          CFRelease(v10);
        }

        atomic_fetch_and(win + 33, 0xFFFFFFFB);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = CAEAGLLayer;
  [(CALayer *)&v12 _didCommitLayer:layer];
}

- (void)_display
{
  contents = [(CALayer *)self contents];

  [(CALayer *)self setContents:contents];
}

- (void)layerDidBecomeVisible:(BOOL)visible
{
  win = self->_win;
  if (win)
  {
    if (visible)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *(win + 256) = *(win + 256) & 0xFD | v4;
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  win = self->_win;
  if (win)
  {
    +[CATransaction lock];
    *(win + 19) = 0;
    +[CATransaction unlock];
    native_window_release(win, v4);
  }

  v5.receiver = self;
  v5.super_class = CAEAGLLayer;
  [(CALayer *)&v5 dealloc];
}

- (_EAGLNativeWindowObject)nativeWindow
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    p_win = &self->_win;
    win = self->_win;
    if (win)
    {
      return win;
    }

    goto LABEL_7;
  }

  v5 = dyld_program_sdk_at_least();
  p_win = &self->_win;
  win = self->_win;
  if (win)
  {
    return win;
  }

  if (!v5)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  +[CATransaction begin];
  v6 = 1;
LABEL_8:
  +[CATransaction lock];
  win = *p_win;
  if (!*p_win)
  {
    if (byte_1ED4E9849)
    {
      maximumDrawableCount = 2;
    }

    else
    {
      maximumDrawableCount = [(CAEAGLLayer *)self maximumDrawableCount];
    }

    if ((native_window_new(unsigned long)::initialized & 1) == 0)
    {
      native_window_new(unsigned long)::initialized = 1;
      v8 = objc_opt_class();
      if (class_getInstanceMethod(v8, sel_presentRenderbuffer_atTime_))
      {
        native_window_new(unsigned long)::has_present_at_time_method = 1;
      }
    }

    if (!collect_slot)
    {
      v19[0] = 0;
      pthread_key_create(v19, 0);
      collect_slot = v19[0];
    }

    v9 = malloc_type_calloc(1uLL, 0x108uLL, 0x10A0040BE3B53CFuLL);
    win = v9;
    *(v9 + 1) = native_window_attach;
    *(v9 + 2) = native_window_detach;
    if (native_window_new(unsigned long)::has_present_at_time_method)
    {
      v10 = native_window_swap;
    }

    else
    {
      v10 = native_window_swap_zero_time;
    }

    *v9 = 5;
    *(v9 + 3) = native_window_begin_iosurface;
    *(v9 + 4) = v10;
    *(v9 + 5) = native_window_collect;
    *(v9 + 6) = native_window_begin_properties;
    *(v9 + 7) = native_window_estimated_size;
    CA::Render::add_observer(0x31u, 0, will_suspend_callback, v9, 0);
    *(win + 32) = 1;
    *(win + 29) = dispatch_semaphore_create(0);
    *(win + 60) = 0;
    v11 = CAImageQueueCreate_(0, maximumDrawableCount);
    if (v11)
    {
      *(v11 + 32) = 0;
      *(win + 18) = v11;
      *(win + 31) = maximumDrawableCount;
      *(win + 21) = 0x3FF0000000000000;
      if (CADeviceSupportsAPT::once != -1)
      {
        dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
      }

      if (CADeviceSupportsAPT::supports_apt)
      {
        v12 = 0x401000000008000;
      }

      else
      {
        v12 = 0x401000000000000;
      }

      if (CADeviceSupportsAPT::supports_apt)
      {
        v13 = 0x401000000008001;
      }

      else
      {
        v13 = 0x401000000000001;
      }

      CAImageQueueSetFlagsInternal(*(win + 18), v13, v12);
      CAImageQueueSetCollectableCallback(*(win + 18), 0, layer_collectable_signal, win);
      *(win + 19) = self;
      [(CALayer *)self setContents:*(win + 18)];
      *(win + 256) = *(win + 256) & 0xFE | [(CALayer *)self isOpaque];
      if ([(CAEAGLLayer *)self presentsWithTransaction])
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      *(win + 256) = *(win + 256) & 0xFB | v14;
      if ([(CAEAGLLayer *)self lowLatency])
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(win + 256) & 0xF7 | v15;
      *(win + 256) = v16;
      *(win + 256) = v16 & 0xFD | (*(self->super._attr.layer + 13) >> 27) & 2;
      *p_win = win;
    }

    else
    {
      free(win);
      win = 0;
    }
  }

  +[CATransaction unlock];
  if (v6)
  {
    +[CATransaction commit];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    if (dyld_program_sdk_at_least() && +[CATransaction currentState]== 1)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v17 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19[0]) = 0;
        _os_log_error_impl(&dword_183AA6000, v17, OS_LOG_TYPE_ERROR, "[EAGLContext renderbufferStorage:fromDrawable:] was called from a non-main thread in an implicit transaction! Note that this may be unsafe without an explicit CATransaction or a call to [CATransaction flush].", v19, 2u);
      }
    }

    else
    {
      +[CATransaction flush];
    }
  }

  return win;
}

- (void)didChangeValueForKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_win)
  {
    if ([key isEqualToString:@"opaque"])
    {
      isOpaque = [(CALayer *)self isOpaque];
      win = self->_win;
      v7 = *(win + 256) & 0xFE | isOpaque;
LABEL_15:
      *(win + 256) = v7;
      goto LABEL_16;
    }

    if ([key isEqualToString:@"presentsWithTransaction"])
    {
      presentsWithTransaction = [(CAEAGLLayer *)self presentsWithTransaction];
      win = self->_win;
      if (presentsWithTransaction)
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(win + 256) & 0xFB;
LABEL_14:
      v7 = v10 | v9;
      goto LABEL_15;
    }

    if ([key isEqualToString:@"lowLatency"])
    {
      lowLatency = [(CAEAGLLayer *)self lowLatency];
      win = self->_win;
      if (lowLatency)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(win + 256) & 0xF7;
      goto LABEL_14;
    }
  }

LABEL_16:
  v12.receiver = self;
  v12.super_class = CAEAGLLayer;
  [(CAEAGLLayer *)&v12 didChangeValueForKey:key];
}

- (BOOL)shouldArchiveValueForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"contents"])
  {
    v5 = CAEncodeIOSurfacesAsCGImages;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAEAGLLayer;
    v5 = [(CALayer *)&v7 shouldArchiveValueForKey:key];
  }

  return v5 & 1;
}

+ (id)defaultValueForKey:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  if (([key isEqualToString:@"opaque"] & 1) != 0 || objc_msgSend(key, "isEqualToString:", @"allowsDisplayCompositing"))
  {
    v5 = MEMORY[0x1E695E4D0];
    return *v5;
  }

  if ([key isEqualToString:@"presentsWithTransaction"] || objc_msgSend(key, "isEqualToString:", @"lowLatency"))
  {
    v5 = MEMORY[0x1E695E4C0];
    return *v5;
  }

  if ([key isEqualToString:@"maximumDrawableCount"])
  {
    result = +[CAEAGLLayer defaultValueForKey:]::max_buffers;
    if (!+[CAEAGLLayer defaultValueForKey:]::max_buffers)
    {
      if (byte_1ED4E9849)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      result = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v7];
      +[CAEAGLLayer defaultValueForKey:]::max_buffers = result;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___CAEAGLLayer;
    return objc_msgSendSuper2(&v8, sel_defaultValueForKey_, key);
  }

  return result;
}

- (double)drawableTimeoutSeconds
{
  win = self->_win;
  if (win)
  {
    return *(win + 21);
  }

  else
  {
    return 1.0;
  }
}

- (void)setDrawableTimeoutSeconds:(double)seconds
{
  win = self->_win;
  if (win)
  {
    *(win + 21) = seconds;
  }
}

- (double)inputTime
{
  win = self->_win;
  if (win)
  {
    return *(win + 20);
  }

  else
  {
    return 0.0;
  }
}

- (void)setInputTime:(double)time
{
  v7 = *MEMORY[0x1E69E9840];
  win = self->_win;
  if (win)
  {
    if (*(win + 20) != 0.0)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v5 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "[CAEAGLLayer setInputTime:] - non-zero time already exists!", v6, 2u);
      }
    }

    *(win + 20) = time;
  }
}

- (void)setLowLatency:(BOOL)latency
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = lowLatency_atom;
  if (!lowLatency_atom)
  {
    v5 = CAInternAtomWithCString("lowLatency");
    lowLatency_atom = v5;
  }

  latencyCopy = latency;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &latencyCopy);
}

- (BOOL)lowLatency
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = lowLatency_atom;
  if (!lowLatency_atom)
  {
    v3 = CAInternAtomWithCString("lowLatency");
    lowLatency_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (void)setMaximumDrawableCount:(unint64_t)count
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = maximumDrawableCount_atom;
  if (!maximumDrawableCount_atom)
  {
    v5 = CAInternAtomWithCString("maximumDrawableCount");
    maximumDrawableCount_atom = v5;
  }

  *&v6[0] = count;
  CA::Layer::setter(self->super._attr.layer, v5, 0xE, v6);
}

- (unint64_t)maximumDrawableCount
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = maximumDrawableCount_atom;
  if (!maximumDrawableCount_atom)
  {
    v3 = CAInternAtomWithCString("maximumDrawableCount");
    maximumDrawableCount_atom = v3;
  }

  v5[0] = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 0xE, v5);
  return v5[0];
}

- (void)discardContents
{
  win = self->_win;
  if (win)
  {
    pthread_setspecific(collect_slot, win);
    CAImageQueueConsumeUnconsumed_(win[18], 1);
    CAImageQueueFlush(win[18]);
    v3 = collect_slot;

    pthread_setspecific(v3, 0);
  }
}

- (BOOL)isDrawableAvailableInternal
{
  win = self->_win;
  if (!win)
  {
    return 0;
  }

  pthread_setspecific(collect_slot, win);
  v3 = CAImageQueueCollect_(win[18], 0, 0);
  pthread_setspecific(collect_slot, 0);
  return v3 != 0;
}

- (BOOL)isDrawableAvailable
{
  v3 = mach_absolute_time();
  v4 = CATimeWithHostTime(v3);
  while (1)
  {
    isDrawableAvailableInternal = [(CAEAGLLayer *)self isDrawableAvailableInternal];
    v6 = mach_absolute_time();
    v7 = CATimeWithHostTime(v6);
    if (isDrawableAvailableInternal || v7 - v4 > 0.001)
    {
      break;
    }

    usleep(0x64u);
  }

  return isDrawableAvailableInternal;
}

@end