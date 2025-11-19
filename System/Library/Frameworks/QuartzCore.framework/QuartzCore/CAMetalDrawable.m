@interface CAMetalDrawable
- (BOOL)hasPresentedHandlers;
- (CAMetalDrawable)initWithDrawablePrivate:(_CAMetalDrawablePrivate *)a3 layer:(id)a4 waitStart:(double)a5;
- (CATimingFramePacingLatency)preferredLatency;
- (CGRect)dirtyRect;
- (MTLTexture)texture;
- (id).cxx_construct;
- (id)newTextureWithResourceIndex:(unint64_t)a3;
- (void)addPresentScheduledHandler:(id)a3;
- (void)addPresentedHandler:(id)a3;
- (void)dealloc;
- (void)didPresentAtTime:(double)a3;
- (void)didScheduledPresent;
- (void)estimateTargets;
- (void)present;
- (void)presentAfterMinimumDuration:(double)a3;
- (void)presentAtTime:(double)a3;
- (void)presentWithOptions:(id)a3;
- (void)release;
- (void)releasePrivateReferences:(void *)a3;
- (void)signalOnCommandQueue:(id)a3;
- (void)waitOnCommandQueue:(id)a3;
@end

@implementation CAMetalDrawable

- (void)present
{
  v32[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    var9 = priv->var9;
    v5 = *(var9 + 74);
    if ((v5 & 1) == 0)
    {
      if ((v5 & 0x20) != 0)
      {
        if ((v5 & 0x3000) != 0 || *(var9 + 4) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((v5 & 0x3000) != 0)
      {
        goto LABEL_5;
      }

      v6 = byte_1ED4E9857 ^ 1;
LABEL_13:
      IOSurfaceGetID(priv->var10);
      kdebug_trace();
      if (CADeviceSupportsAPT::once != -1)
      {
        dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
      }

      if (CADeviceSupportsAPT::supports_apt)
      {
        v8 = 0.0085;
      }

      else
      {
        v8 = 0.017;
      }

      v9 = mach_absolute_time();
      v10 = CATimeWithHostTime(v9);
      self->_timePresentCalled = v10;
      var8 = priv->var8;
      v12 = v10 - var8;
      v31 = 0;
      v32[0] = 0;
      mach_get_times();
      v13 = CAHostTimeWithTime(var8);
      if (v12 >= v8)
      {
        if (x_log_get_metal_layer_stalls(void)::once != -1)
        {
          dispatch_once(&x_log_get_metal_layer_stalls(void)::once, &__block_literal_global_4_10897);
        }

        v14 = &x_log_get_metal_layer_stalls(void)::log;
      }

      else
      {
        if (x_log_get_metal_layer(void)::once != -1)
        {
          dispatch_once(&x_log_get_metal_layer(void)::once, &__block_literal_global_10898);
        }

        v14 = &x_log_get_metal_layer(void)::log;
      }

      v15 = *v14;
      v16 = *(var9 + 2);
      if (v16)
      {
        v17 = *(v16 + 48);
        if (v17)
        {
          v17 = *(v17 + 24);
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v13;
      if ((*(var9 + 296) & 8) != 0 && (v19 = *(v16 + 48)) != 0 && *(*(v19 + 24) + 32))
      {
        v20 = *(v17 + 88);
        if (!v20 || !os_signpost_enabled(v15))
        {
          goto LABEL_39;
        }

        ID = IOSurfaceGetID(priv->var10);
        LODWORD(v31) = 67240448;
        HIDWORD(v31) = ID;
        LOWORD(v32[0]) = 2050;
        *(v32 + 2) = v18;
        v22 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x visible=1 beginTime=%{public, signpost.description:begin_time}llu";
      }

      else
      {
        v20 = *(v17 + 88);
        if (!v20 || !os_signpost_enabled(v15))
        {
          goto LABEL_39;
        }

        v23 = IOSurfaceGetID(priv->var10);
        LODWORD(v31) = 67240448;
        HIDWORD(v31) = v23;
        LOWORD(v32[0]) = 2050;
        *(v32 + 2) = v18;
        v22 = "ID is queue ID. visible=0 surfaceID=%{public, name=surfaceID}#x beginTime=%{public, signpost.description:begin_time}llu";
      }

      _os_signpost_emit_with_name_impl(&dword_183AA6000, v15, OS_SIGNPOST_EVENT, v20, "ClientDrawable", v22, &v31, 0x12u);
LABEL_39:
      if (CADeviceIsAppleBundle::once != -1)
      {
        dispatch_once(&CADeviceIsAppleBundle::once, &__block_literal_global_404);
      }

      if ((CADeviceIsAppleBundle::apple_bundle & 1) != 0 || (*(var9 + 296) & 0x20) != 0)
      {
        goto LABEL_53;
      }

      if (CADeviceSupportsAPT::once != -1)
      {
        dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
      }

      if (CADeviceSupportsAPT::supports_apt == 1 && !CADeviceDisableMinimumFrameDuration())
      {
        goto LABEL_69;
      }

      if (CAHighFrameRateRestrictionEnabled(void)::once != -1)
      {
        dispatch_once(&CAHighFrameRateRestrictionEnabled(void)::once, &__block_literal_global_6_18959);
      }

      if (CAHighFrameRateRestrictionEnabled(void)::enabled != 1)
      {
        goto LABEL_53;
      }

      if (CADeviceDisableMinimumFrameDurationOnPhone::once != -1)
      {
        dispatch_once(&CADeviceDisableMinimumFrameDurationOnPhone::once, &__block_literal_global_165);
      }

      if (CADeviceDisableMinimumFrameDurationOnPhone::disabled)
      {
LABEL_53:
        v24 = *(var9 + 74) & 1 | (16 * ((*(var9 + 74) >> 1) & 1)) | (*(var9 + 74) >> 10) & 4;
        v25 = self->_priv;
        if (v25 && *(v25->var9 + 4) && self->_hasExplicitDeadlines)
        {
          v24 |= 0x20u;
        }

        if (v6)
        {
          v26 = v24 | 2;
        }

        else
        {
          v26 = v24;
        }

        v27 = 0.004;
        if ((v6 & 1) == 0)
        {
          v27 = 0.0;
        }

        timePresentCalled = self->_timePresentCalled;
        v29 = var9;
        v30 = self;
      }

      else
      {
LABEL_69:
        timePresentCalled = self->_timePresentCalled;
        v27 = 0.014;
        v29 = var9;
        v30 = self;
        v26 = 2;
      }

      layer_private_present(v29, v30, v27, timePresentCalled, v26);
      if (self->_priv && self->_timePresentCalled > self->_targetTimestamp + -0.001 && *(var9 + 4) && CAMetalLayerShouldDispatchLink(*(var9 + 3)))
      {
        [CADisplayLink dispatchDeferredDisplayLink:*(var9 + 4)];
      }

      return;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_13;
  }

  if (warn_multiple_present(void)::once != -1)
  {

    dispatch_once(&warn_multiple_present(void)::once, &__block_literal_global_514);
  }
}

- (CGRect)dirtyRect
{
  x = self->_dirtyRect.origin.x;
  y = self->_dirtyRect.origin.y;
  width = self->_dirtyRect.size.width;
  height = self->_dirtyRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CATimingFramePacingLatency)preferredLatency
{
  latency = self->_preferredLatency.latency;
  frame_duration = self->_preferredLatency.frame_duration;
  result.frame_duration = frame_duration;
  result.latency = latency;
  return result;
}

- (void)didScheduledPresent
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  presentScheduledHandlers = self->_presentScheduledHandlers;
  v4 = [(NSMutableArray *)presentScheduledHandlers countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(presentScheduledHandlers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        (v8)[2](v8, self);
        _Block_release(v8);
      }

      v5 = [(NSMutableArray *)presentScheduledHandlers countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_presentScheduledHandlers removeAllObjects];
}

- (void)release
{
  v4 = *MEMORY[0x1E69E9840];
  if ([(CAMetalDrawable *)self retainCount]== 1 && (atomic_exchange(&self->_callbacksErased.__a_.__a_value, 1u) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_handlersLock);
    if ([(NSMutableArray *)self->_presentedHandlers count])
    {
      [(CAMetalDrawable *)self setStatus:3];
      [(CAMetalDrawable *)self didPresentAtTime:0.0];
    }

    if ([(NSMutableArray *)self->_presentScheduledHandlers count])
    {
      [(CAMetalDrawable *)self didScheduledPresent];
    }

    os_unfair_lock_unlock(&self->_handlersLock);
  }

  v3.receiver = self;
  v3.super_class = CAMetalDrawable;
  [(CAMetalDrawable *)&v3 release];
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    atomic_fetch_add(priv->var9 + 35, 0xFFFFFFFF);
    v4 = self->_priv;
    var9 = v4->var9;
    os_unfair_lock_lock(var9 + 2);
    if (atomic_fetch_add(&v4->var0.var0.var0, 0xFFFFFFFF) == 1)
    {
      *(var9 + 7) = x_list_prepend(*(var9 + 7), v4);
      os_unfair_lock_unlock(var9 + 2);
      layer_collectable_signal(0, var9);
    }

    else
    {
      os_unfair_lock_unlock(var9 + 2);
    }

    layer_private_release(var9, v6);
  }

  v7 = [(CAMetalDrawable *)self didFinish];
  if (MEMORY[0x1EEE88950] && !v7)
  {
    [(CAMetalDrawable *)self layer];
    [(CAMetalDrawable *)self drawableID];
    v8 = mach_absolute_time();
    CATimeWithHostTime(v8);
    [(CAMetalDrawable *)self hasExplicitDeadlines];
    FPDrawableLifetimeMarkFinished();
  }

  self->_presentedHandlers = 0;
  self->_presentScheduledHandlers = 0;
  objc_storeWeak(&self->_layer, 0);

  self->_priv = 0x5555555555555555;
  self->_cachedTexture = 0;
  v9.receiver = self;
  v9.super_class = CAMetalDrawable;
  [(CAMetalDrawable *)&v9 dealloc];
}

- (id).cxx_construct
{
  *(self + 128) = 0;
  *(self + 33) = 0;
  return self;
}

- (void)estimateTargets
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_loadWeak(&self->_layer) currentDisplay];
  if (v3)
  {
    v4 = [v3 timingsControl];
    if (v4)
    {
      v5 = v4;
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
      CA::Display::DisplayTimingsControl::timing_reference(v12, v4, 0);
      if (*(v5 + 241))
      {
        LODWORD(v6) = 2;
      }

      else
      {
        LODWORD(v6) = 1;
      }

      if (v6 <= *(v5 + 56))
      {
        LODWORD(v6) = *(v5 + 56);
      }

      v7 = *(v5 + 88);
      if (v6 <= v7)
      {
        v6 = v7;
      }

      else
      {
        v6 = v6;
      }

      v8 = v13 * v6;
      v9 = mach_absolute_time();
      v14[0] = v8;
      phase = get_phase(v12, v9, v14);
      if (phase)
      {
        v9 = v9 - phase + v14[0];
      }

      v11 = v9 + CA::Display::DisplayTimingsControl::server_presentation_latency(v5);
      [(CAMetalDrawable *)self setTargetTimestamp:CATimeWithHostTime(v9)];
      [(CAMetalDrawable *)self setTargetPresentationTimestamp:CATimeWithHostTime(v11 + v8)];

      [(CAMetalDrawable *)self setHasExplicitDeadlines:0];
    }
  }
}

- (MTLTexture)texture
{
  if (!self->_priv && [CAMetalDrawable texture]::warn_once != -1)
  {
    dispatch_once(&[CAMetalDrawable texture]::warn_once, &__block_literal_global_19_10934);
  }

  return self->_cachedTexture;
}

- (id)newTextureWithResourceIndex:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    var9 = priv->var9;
    os_unfair_lock_lock(var9 + 2);
    v7 = self->_priv;
    drawable_texture = allocate_drawable_texture(v7->var12, v7->var10, v7->var1, v7->var2, v7->var4, a3, v7->var18, *(v7 + 129) & 1, @"CAMetalLayer Replay Drawable", v7->var7, *(v7->var9 + 28));
    os_unfair_lock_unlock(var9 + 2);
  }

  else
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v9 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "[CAMetalLayerDrawable newTextureWithResourceIndex:] should not be called after already presenting this drawable. Get a nextDrawable instead.", buf, 2u);
    }

    return 0;
  }

  return drawable_texture;
}

- (void)presentWithOptions:(id)a3
{
  if (!a3)
  {
LABEL_5:

    [(CAMetalDrawable *)self present];
    return;
  }

  v5 = [objc_msgSend(a3 objectForKey:{@"presentationMode", "intValue"}];
  if (v5 == 2)
  {
    priv = self->_priv;
    if (priv && *(priv->var9 + 4) && self->_hasExplicitDeadlines)
    {
      [MEMORY[0x1E695DF30] raise:@"CAMetalDrawableInvalidOperation" format:@"-presentAfterMinimumDuration should not be called when using CAMetalDisplayLink."];
    }

    [objc_msgSend(a3 objectForKey:{@"presentTimeInterval", "doubleValue"}];

    [(CAMetalDrawable *)self presentAfterMinimumDuration:?];
  }

  else
  {
    if (v5 != 1)
    {
      if (v5)
      {
        return;
      }

      goto LABEL_5;
    }

    v6 = self->_priv;
    if (v6 && *(v6->var9 + 4) && self->_hasExplicitDeadlines)
    {
      [MEMORY[0x1E695DF30] raise:@"CAMetalDrawableInvalidOperation" format:@"-presentAtTime should not be called when using CAMetalDisplayLink."];
    }

    [objc_msgSend(a3 objectForKey:{@"presentTimeInterval", "doubleValue"}];

    [(CAMetalDrawable *)self presentAtTime:?];
  }
}

- (void)presentAtTime:(double)a3
{
  v34 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    var9 = priv->var9;
    if (*(var9 + 4) && self->_hasExplicitDeadlines)
    {
      [MEMORY[0x1E695DF30] raise:@"CAMetalDrawableInvalidOperation" format:@"-presentAtTime should not be called when using CAMetalDisplayLink."];
      priv = self->_priv;
      var9 = priv->var9;
    }

    [(CAMetalDrawable *)self targetPresentationTimestamp];
    v8 = v7 < a3;
    v9 = a3;
    if (!v8)
    {
      [(CAMetalDrawable *)self targetPresentationTimestamp];
    }

    [(CAMetalDrawable *)self setTargetPresentationTimestamp:v9];
    v10 = *(var9 + 74);
    if (v10)
    {
      goto LABEL_8;
    }

    if ((v10 & 0x20) != 0)
    {
      v11 = 0;
      if ((v10 & 0x2000) != 0 || !*(var9 + 4))
      {
LABEL_19:
        IOSurfaceGetID(priv->var10);
        kdebug_trace();
        if (CADeviceSupportsAPT::once != -1)
        {
          dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
        }

        if (CADeviceSupportsAPT::supports_apt)
        {
          v12 = 0.0085;
        }

        else
        {
          v12 = 0.017;
        }

        v13 = mach_absolute_time();
        v14 = CATimeWithHostTime(v13);
        self->_timePresentCalled = v14;
        var8 = priv->var8;
        v16 = v14 - var8;
        v28 = 0;
        *v29 = 0;
        mach_get_times();
        v17 = CAHostTimeWithTime(var8);
        if (v16 >= v12)
        {
          if (x_log_get_metal_layer_stalls(void)::once != -1)
          {
            dispatch_once(&x_log_get_metal_layer_stalls(void)::once, &__block_literal_global_4_10897);
          }

          v18 = &x_log_get_metal_layer_stalls(void)::log;
        }

        else
        {
          if (x_log_get_metal_layer(void)::once != -1)
          {
            dispatch_once(&x_log_get_metal_layer(void)::once, &__block_literal_global_10898);
          }

          v18 = &x_log_get_metal_layer(void)::log;
        }

        v19 = *v18;
        v20 = *(var9 + 2);
        if (v20)
        {
          v21 = *(v20 + 48);
          if (v21)
          {
            v21 = *(v21 + 24);
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v17;
        if ((*(var9 + 296) & 8) != 0 && (v23 = *(v20 + 48)) != 0 && *(*(v23 + 24) + 32))
        {
          v24 = *(v21 + 88);
          if (!v24 || !os_signpost_enabled(v19))
          {
            goto LABEL_45;
          }

          ID = IOSurfaceGetID(priv->var10);
          LODWORD(v28) = 67240960;
          HIDWORD(v28) = ID;
          *v29 = 2050;
          *&v29[2] = a3;
          v30 = 1026;
          v31 = v11;
          v32 = 2050;
          v33 = v22;
          v26 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x desiredTime=%{public, name=desiredTime}f flags=%{public, name=flags}#x visible=1 beginTime=%{public, signpost.description:begin_time}llu";
        }

        else
        {
          v24 = *(v21 + 88);
          if (!v24 || !os_signpost_enabled(v19))
          {
            goto LABEL_45;
          }

          v27 = IOSurfaceGetID(priv->var10);
          LODWORD(v28) = 67240960;
          HIDWORD(v28) = v27;
          *v29 = 2050;
          *&v29[2] = a3;
          v30 = 1026;
          v31 = v11;
          v32 = 2050;
          v33 = v22;
          v26 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x desiredTime=%{public, name=desiredTime}f flags=%{public, name=flags}#x visible=0 beginTime=%{public, signpost.description:begin_time}llu";
        }

        _os_signpost_emit_with_name_impl(&dword_183AA6000, v19, OS_SIGNPOST_EVENT, v24, "ClientDrawable", v26, &v28, 0x22u);
LABEL_45:
        layer_private_present(var9, self, a3, self->_timePresentCalled, v11 | 0x20);
        return;
      }
    }

    else if ((v10 & 0x2000) != 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_19;
    }

    if (byte_1ED4E9857)
    {
      v11 = 0;
    }

    else
    {
      v11 = 10;
    }

    goto LABEL_19;
  }

  if (warn_multiple_present(void)::once != -1)
  {

    dispatch_once(&warn_multiple_present(void)::once, &__block_literal_global_514);
  }
}

void __26__CAMetalDrawable_texture__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v0 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "[CAMetalLayerDrawable texture] should not be called after already presenting this drawable. Get a nextDrawable instead.", v1, 2u);
  }
}

- (void)releasePrivateReferences:(void *)a3
{
  self->_priv = 0;
  if (!a3)
  {
    __assert_rtn("[CAMetalDrawable releasePrivateReferences:]", "CAMetalLayer.mm", 2762, "priv");
  }

  os_unfair_lock_lock(a3 + 52);
  if (![(CAMetalDrawable *)self status]&& [(NSMutableArray *)self->_presentedHandlers count])
  {
    [(CAMetalDrawable *)self setStatus:3];
    [(CAMetalDrawable *)self didPresentAtTime:0.0];
  }

  os_unfair_lock_unlock(a3 + 52);
  atomic_fetch_add(a3 + 35, 0xFFFFFFFF);

  layer_private_release(a3, v5);
}

- (CAMetalDrawable)initWithDrawablePrivate:(_CAMetalDrawablePrivate *)a3 layer:(id)a4 waitStart:(double)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAMetalDrawable;
  v7 = [(CAMetalDrawable *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_layer, a4);

    v8->_priv = a3;
    v8->_cachedTexture = 0;
    var9 = a3->var9;
    atomic_fetch_add(var9, 1u);
    v8->_cachedTexture = a3->var11;
    atomic_fetch_add(var9 + 35, 1u);
    v10 = *(MEMORY[0x1E695F040] + 16);
    v8->_dirtyRect.origin = *MEMORY[0x1E695F040];
    v8->_dirtyRect.size = v10;
    v8->_drawableID = atomic_fetch_add(a3->var9 + 39, 1u);
    if (present_on_finish_enabled(*(*(var9 + 2) + 48)))
    {
      v8->_sharedEvent = objc_alloc_init(MEMORY[0x1E696CE00]);
    }

    v8->_status = 0;
    v8->_presentedHandlers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_updateSeed = 0;
    v8->_didComposite = 0;
    v8->_presentScheduledHandlers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_surfaceID = IOSurfaceGetID(a3->var10);
    v8->_timeAcquired = a3->var8;
    if (MEMORY[0x1EEE88958])
    {
      [(CAMetalDrawable *)v8 layer];
      [(CAMetalDrawable *)v8 surfaceID];
      [(CAMetalDrawable *)v8 drawableID];
      [(CAMetalDrawable *)v8 timeAcquired];
      FPDrawableLifetimeMarkStarted();
    }
  }

  return v8;
}

- (void)addPresentScheduledHandler:(id)a3
{
  v10[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_handlersLock);
  v5 = atomic_load(&self->_callbacksErased);
  if ((v5 & 1) == 0 && (priv = self->_priv) != 0 && (var9 = priv->var9) != 0 && (*(var9 + 297) & 8) != 0)
  {
    os_unfair_lock_lock(var9 + 2);
    if (*(var9 + 9))
    {
      os_unfair_lock_lock(var9 + 46);
      [(NSMutableArray *)self->_presentScheduledHandlers addObject:_Block_copy(a3)];
      if (([*(var9 + 24) containsObject:self] & 1) == 0)
      {
        [*(var9 + 24) addObject:self];
        v8 = dispatch_time(0, 1100000000);
        atomic_fetch_add(var9, 1u);
        v9 = *(var9 + 22);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __46__CAMetalDrawable_addPresentScheduledHandler___block_invoke;
        v10[3] = &__block_descriptor_40_e5_v8__0l;
        v10[4] = var9;
        dispatch_after(v8, v9, v10);
      }

      os_unfair_lock_unlock(var9 + 46);
    }

    else
    {
      (*(a3 + 2))(a3, self);
    }

    os_unfair_lock_unlock(var9 + 2);
  }

  else
  {
    (*(a3 + 2))(a3, self);
  }

  os_unfair_lock_unlock(&self->_handlersLock);
}

void __46__CAMetalDrawable_addPresentScheduledHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = CAHostTimeWithTime(0.2) + v2;
  if (mach_absolute_time() > v3)
  {
    layer_private_cleanup_callbacks(*(a1 + 32));
  }

  v5 = *(a1 + 32);

  layer_private_release(v5, v4);
}

- (BOOL)hasPresentedHandlers
{
  v2 = self;
  var9 = self->_priv->var9;
  os_unfair_lock_lock(var9 + 52);
  LOBYTE(v2) = [(NSMutableArray *)v2->_presentedHandlers count]!= 0;
  os_unfair_lock_unlock(var9 + 52);
  return v2;
}

- (void)addPresentedHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_handlersLock);
  v5 = atomic_load(&self->_callbacksErased);
  if (v5)
  {
    (*(a3 + 2))(a3, self);
  }

  else
  {
    priv = self->_priv;
    if (priv && (var9 = priv->var9) != 0)
    {
      v8 = _Block_copy(a3);
      os_unfair_lock_lock(var9 + 52);
      [(NSMutableArray *)self->_presentedHandlers addObject:v8];
      os_unfair_lock_unlock(var9 + 52);
    }

    else
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v9 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "addPresentedHandler cannot be called after drawable has been presented", v10, 2u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_handlersLock);
}

- (void)presentAfterMinimumDuration:(double)a3
{
  v31 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    var9 = priv->var9;
    if (*(var9 + 4) && self->_hasExplicitDeadlines)
    {
      [MEMORY[0x1E695DF30] raise:@"CAMetalDrawableInvalidOperation" format:@"-presentAfterMinimumDuration should not be called when using CAMetalDisplayLink."];
      priv = self->_priv;
      var9 = priv->var9;
    }

    v7 = *(var9 + 74);
    if (v7)
    {
      goto LABEL_6;
    }

    if ((v7 & 0x20) != 0)
    {
      v8 = 0;
      if ((v7 & 0x2000) != 0 || !*(var9 + 4))
      {
LABEL_15:
        if (a3 > 0.0 || (v8 & 1) != 0)
        {
          if (v8)
          {
            a3 = fmax(a3, 0.004);
          }

          v9 = 2;
        }

        else
        {
          v9 = *(var9 + 74) & 1;
          a3 = 0.0;
        }

        IOSurfaceGetID(priv->var10);
        kdebug_trace();
        if (CADeviceSupportsAPT::once != -1)
        {
          dispatch_once(&CADeviceSupportsAPT::once, &__block_literal_global_46);
        }

        if (CADeviceSupportsAPT::supports_apt)
        {
          v10 = 0.0085;
        }

        else
        {
          v10 = 0.017;
        }

        v11 = mach_absolute_time();
        v12 = CATimeWithHostTime(v11);
        self->_timePresentCalled = v12;
        v13 = v12 - priv->var8;
        [(CAMetalDrawable *)self setMinimumPresentationDuration:a3];
        v25 = 0;
        *v26 = 0;
        mach_get_times();
        v14 = CAHostTimeWithTime(priv->var8);
        if (v13 >= v10)
        {
          if (x_log_get_metal_layer_stalls(void)::once != -1)
          {
            dispatch_once(&x_log_get_metal_layer_stalls(void)::once, &__block_literal_global_4_10897);
          }

          v15 = &x_log_get_metal_layer_stalls(void)::log;
        }

        else
        {
          if (x_log_get_metal_layer(void)::once != -1)
          {
            dispatch_once(&x_log_get_metal_layer(void)::once, &__block_literal_global_10898);
          }

          v15 = &x_log_get_metal_layer(void)::log;
        }

        v16 = *v15;
        v17 = *(var9 + 2);
        if (v17)
        {
          v18 = *(v17 + 48);
          if (v18)
          {
            v18 = *(v18 + 24);
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v14;
        if ((*(var9 + 296) & 8) != 0 && (v20 = *(v17 + 48)) != 0 && *(*(v20 + 24) + 32))
        {
          v21 = *(v18 + 88);
          if (!v21 || !os_signpost_enabled(v16))
          {
            goto LABEL_47;
          }

          ID = IOSurfaceGetID(priv->var10);
          LODWORD(v25) = 67240960;
          HIDWORD(v25) = ID;
          *v26 = 2050;
          *&v26[2] = a3;
          v27 = 1026;
          v28 = v9;
          v29 = 2050;
          v30 = v19;
          v23 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x delay=%{public, name=delay}f flags=%{public, name=flags}#x visible=1 beginTime=%{public, signpost.description:begin_time}llu";
        }

        else
        {
          v21 = *(v18 + 88);
          if (!v21 || !os_signpost_enabled(v16))
          {
            goto LABEL_47;
          }

          v24 = IOSurfaceGetID(priv->var10);
          LODWORD(v25) = 67240960;
          HIDWORD(v25) = v24;
          *v26 = 2050;
          *&v26[2] = a3;
          v27 = 1026;
          v28 = v9;
          v29 = 2050;
          v30 = v19;
          v23 = "ID is queue ID. surfaceID=%{public, name=surfaceID}#x delay=%{public, name=delay}f  flags=%{public, name=flags}#x visible=0 beginTime=%{public, signpost.description:begin_time}llu";
        }

        _os_signpost_emit_with_name_impl(&dword_183AA6000, v16, OS_SIGNPOST_EVENT, v21, "ClientDrawable", v23, &v25, 0x22u);
LABEL_47:
        layer_private_present(var9, self, a3, self->_timePresentCalled, v9 | 0x20);
        return;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_15;
    }

    v8 = byte_1ED4E9857 ^ 1;
    goto LABEL_15;
  }

  if (warn_multiple_present(void)::once != -1)
  {

    dispatch_once(&warn_multiple_present(void)::once, &__block_literal_global_514);
  }
}

- (void)didPresentAtTime:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  presentedHandlers = self->_presentedHandlers;
  v5 = [(NSMutableArray *)presentedHandlers countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(presentedHandlers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        (v9)[2](v9, self);
        _Block_release(v9);
      }

      v6 = [(NSMutableArray *)presentedHandlers countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_presentedHandlers removeAllObjects];
}

- (void)signalOnCommandQueue:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  var13 = priv->var13;
  if (!var13)
  {
    var13 = [objc_msgSend(a3 "device")];
    priv = self->_priv;
    priv->var13 = var13;
  }

  ++priv->var14;
  [a3 signalEvent:var13 value:?];
  memset(v12, 0, sizeof(v12));
  v7 = self->_priv;
  var14 = v7->var14;
  var10 = v7->var10;
  v10[0] = v7->var13;
  v10[1] = 0;
  v10[2] = var14;
  v11 = 1;
  CA::SurfaceUtil::CASurfaceAppendSharedEvent(var10, v10);
}

- (void)waitOnCommandQueue:(id)a3
{
  priv = self->_priv;
  if (priv->var13)
  {
    update_shared_event_value_wait(priv);
    v6 = self->_priv;
    var13 = v6->var13;
    var14 = v6->var14;

    [a3 waitForEvent:var13 value:var14];
  }
}

@end