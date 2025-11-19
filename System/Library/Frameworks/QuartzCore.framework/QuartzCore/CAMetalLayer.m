@interface CAMetalLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3;
+ (id)defaultValueForKey:(id)a3;
- (BOOL)allowsDisplayCompositingWithCopy;
- (BOOL)allowsNextDrawableTimeout;
- (BOOL)disableFIFO;
- (BOOL)displaySyncEnabled;
- (BOOL)fenceEnabled;
- (BOOL)isDrawableAvailable;
- (BOOL)lowLatency;
- (BOOL)lowWorkload;
- (BOOL)nonDefaultColorspace;
- (BOOL)presentsWithTransaction;
- (BOOL)serverSyncEnabled;
- (BOOL)shouldArchiveValueForKey:(id)a3;
- (CAMetalLayer)init;
- (CGSize)drawableSize;
- (NSDictionary)developerHUDProperties;
- (NSUInteger)maximumDrawableCount;
- (double)drawableTimeoutSeconds;
- (double)inputTime;
- (id)currentDisplay;
- (id)newDrawable;
- (id)nextDrawable;
- (unint64_t)displayCompositingInternalStatus;
- (void)_didCommitLayer:(void *)a3;
- (void)_display;
- (void)dealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)discardContents;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)removeBackBuffers;
- (void)setAllowsDisplayCompositingWithCopy:(BOOL)a3;
- (void)setAllowsNextDrawableTimeout:(BOOL)allowsNextDrawableTimeout;
- (void)setColorspace:(CGColorSpace *)a3 nonDefault:(BOOL)a4;
- (void)setContents:(id)a3;
- (void)setDeveloperHUDProperties:(NSDictionary *)developerHUDProperties;
- (void)setDevice:(id)device;
- (void)setDisableFIFO:(BOOL)a3;
- (void)setDisplaySyncEnabled:(BOOL)displaySyncEnabled;
- (void)setDrawableSize:(CGSize)drawableSize;
- (void)setDrawableTimeoutSeconds:(double)a3;
- (void)setEDRMetadata:(CAEDRMetadata *)EDRMetadata;
- (void)setFenceEnabled:(BOOL)a3;
- (void)setFramebufferOnly:(BOOL)framebufferOnly;
- (void)setInputTime:(double)a3;
- (void)setLowLatency:(BOOL)a3;
- (void)setLowWorkload:(BOOL)a3;
- (void)setMaximumDrawableCount:(NSUInteger)maximumDrawableCount;
- (void)setName:(id)a3;
- (void)setNonDefaultColorspace:(BOOL)a3;
- (void)setPixelFormat:(MTLPixelFormat)pixelFormat;
- (void)setPremultiplied:(BOOL)a3;
- (void)setPresentsWithTransaction:(BOOL)presentsWithTransaction;
- (void)setProtectionOptions:(unint64_t)a3;
- (void)setServerSyncEnabled:(BOOL)a3;
- (void)setTextureUsage:(unint64_t)a3;
- (void)setWantsIOSurfaceCompression:(BOOL)a3;
@end

@implementation CAMetalLayer

- (CAMetalLayer)init
{
  v39[1] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CAMetalLayer;
  v2 = [(CALayer *)&v38 init];
  if (v2)
  {
    if (!collect_slot)
    {
      v39[0] = 0;
      pthread_key_create(v39, 0);
      collect_slot = v39[0];
    }

    v3 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A0040510CD9F2uLL);
    *v3 = 1;
    v4 = CAImageQueueCreate_(0, 6u);
    if (v4)
    {
      *(v4 + 32) = 0;
    }

    v3[2] = v4;
    if (byte_1ED4E9849)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    *(v3 + 33) = v5;
    *(v3 + 34) = 3;
    v3[18] = dispatch_semaphore_create(0);
    *(v3 + 38) = 0;
    v3[24] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3[27] = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3[2])
    {
      CA::Render::add_observer(0x30u, 0, layer_private_memory_warning, v3, 0);
      CA::Render::add_observer(9u, 0, drawable_purgeable_callback, v3, 0);
      if (*(v3 + 33) == 2)
      {
        v6 = 0x2441000000008001;
      }

      else
      {
        v6 = 0x2401000000008001;
      }

      if (*(v3 + 33) == 2)
      {
        v7 = 0x2441000000008000;
      }

      else
      {
        v7 = 0x2401000000008000;
      }

      if (wants_compositing_dependencies(void)::once != -1)
      {
        dispatch_once(&wants_compositing_dependencies(void)::once, &__block_literal_global_520);
      }

      if (wants_compositing_dependencies(void)::wants_compositing_dependencies)
      {
        v8 = v6 | 0x4000000000000;
      }

      else
      {
        v8 = v6;
      }

      if (wants_compositing_dependencies(void)::wants_compositing_dependencies)
      {
        v9 = v7 | 0x4000000000000;
      }

      else
      {
        v9 = v7;
      }

      CAImageQueueSetFlagsInternal(v3[2], v8, v9);
      v10 = v3[2];
      v11 = *(v10 + 48);
      if (v11)
      {
        *(*(v11 + 24) + 95) = 3;
      }

      CAImageQueueSetCollectableCallback(v10, 0, layer_collectable_signal, v3);
      v12 = v3[2];
      if (!*(v12 + 48))
      {
        goto LABEL_45;
      }

      pthread_mutex_lock(&composited_mutex);
      v13 = *(v12 + 144);
      if (v13 != layer_composited || *(v12 + 152) != v3)
      {
        if (*(v12 + 160) == 1)
        {
          do
          {
            pthread_cond_wait(&composited_cond, &composited_mutex);
          }

          while ((*(v12 + 160) & 1) != 0);
          v13 = *(v12 + 144);
        }

        if (!v13)
        {
          composited_list = x_list_prepend(composited_list, v12);
        }

        *(v12 + 144) = layer_composited;
        *(v12 + 152) = v3;
        *(*(*(v12 + 48) + 24) + 52) = *(v12 + 28);
      }

      pthread_mutex_unlock(&composited_mutex);
      v12 = v3[2];
      if (*(v12 + 48))
      {
        pthread_mutex_lock(&presented_mutex);
        v14 = *(v12 + 120);
        if (v14 != layer_presented || *(v12 + 128) != v3)
        {
          if (*(v12 + 136) == 1)
          {
            do
            {
              pthread_cond_wait(&presented_cond, &presented_mutex);
            }

            while ((*(v12 + 136) & 1) != 0);
            v14 = *(v12 + 120);
          }

          if (!v14)
          {
            presented_list = x_list_prepend(presented_list, v12);
          }

          *(v12 + 120) = layer_presented;
          *(v12 + 128) = v3;
          *(*(*(v12 + 48) + 24) + 48) = *(v12 + 28);
        }

        pthread_mutex_unlock(&presented_mutex);
        v12 = v3[2];
        v15 = *(v12 + 48) == 0;
      }

      else
      {
LABEL_45:
        v15 = 1;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __20__CAMetalLayer_init__block_invoke;
      aBlock[3] = &__block_descriptor_40_e24_v16__0___CAImageQueue__8l;
      aBlock[4] = v3;
      if (!v15)
      {
        pthread_mutex_lock(&display_change_mutex);
        v16 = *(v12 + 168);
        if (v16 != aBlock)
        {
          if (*(v12 + 176) == 1)
          {
            do
            {
              pthread_cond_wait(&display_change_cond, &display_change_mutex);
            }

            while ((*(v12 + 176) & 1) != 0);
            v16 = *(v12 + 168);
          }

          if (!v16)
          {
            display_change_list = x_list_prepend(display_change_list, v12);
            v16 = *(v12 + 168);
          }

          _Block_release(v16);
          *(v12 + 168) = _Block_copy(aBlock);
          *(*(*(v12 + 48) + 24) + 56) = *(v12 + 28);
        }

        pthread_mutex_unlock(&display_change_mutex);
        v12 = v3[2];
      }

      v3[3] = v2;
      v36.receiver = v2;
      v36.super_class = CAMetalLayer;
      [(CALayer *)&v36 setContents:v12];
      if ([(CALayer *)v2 isOpaque])
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFFFB | v17;
      if ([(CAMetalLayer *)v2 presentsWithTransaction])
      {
        v18 = 32;
      }

      else
      {
        v18 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFFDF | v18;
      if ([(CAMetalLayer *)v2 allowsNextDrawableTimeout])
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFEFF | v19;
      if ([(CAMetalLayer *)v2 fenceEnabled])
      {
        v20 = 512;
      }

      else
      {
        v20 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFDFF | v20;
      if ([(CAMetalLayer *)v2 fenceEnabled])
      {
        v21 = 1024;
      }

      else
      {
        v21 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFBFF | v21;
      if ([(CAMetalLayer *)v2 disableFIFO])
      {
        v22 = 0x2000;
      }

      else
      {
        v22 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFDFFF | v22;
      if ([(CAMetalLayer *)v2 serverSyncEnabled])
      {
        v23 = 2048;
      }

      else
      {
        v23 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFF7FF | v23;
      *(v3 + 74) = v3[37] & 0xFFFFFFFE | [(CAMetalLayer *)v2 lowLatency];
      if ([(CAMetalLayer *)v2 lowWorkload])
      {
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      *(v3 + 74) = v3[37] & 0xFFFFFFFD | v24;
      if ([(CAMetalLayer *)v2 allowsDisplayCompositingWithCopy])
      {
        v25 = 0x4000;
      }

      else
      {
        v25 = 0;
      }

      v26 = v3[37] & 0xFFFFBFFF | v25;
      *(v3 + 74) = v26;
      *(v3 + 74) = v26 & 0xFFFFFFE7 | (*(v2->super._attr.layer + 13) >> 25) & 8;
      v27 = MTLCreateSystemDefaultDevice();
      layer_private_set_device(v3, v27);
      v28 = v3[9];
      v3[10] = v28;
      v3[11] = [v28 registryID];
      v3[12] = 80;
      *(v3 + 16) = 1111970369;
      v29 = v3[37] & 0xFFFFFF7F;
      *(v3 + 32) = 0;
      *(v3 + 240) = -1;
      v30 = v29 | 0x20040;
      v3[31] = 0;
      v3[32] = 0;
      *(v3 + 74) = v30;
      v3[35] = 0;
      v3[36] = 0;
      v3[33] = 0;
      v3[34] = -1;
      v3[6] = 0x3FF0000000000000;
      v3[38] = 0;
      if (byte_1ED4E98A0)
      {
        v31 = 0x10000;
      }

      else
      {
        if (CADeviceAllowMetalFrameInterpolation::once != -1)
        {
          dispatch_once(&CADeviceAllowMetalFrameInterpolation::once, &__block_literal_global_153);
        }

        if (CADeviceAllowMetalFrameInterpolation::allowed)
        {
          v31 = 0x10000;
        }

        else
        {
          v31 = 0;
        }

        v30 = *(v3 + 74);
      }

      *(v3 + 74) = v30 & 0xFFFEFFFF | v31;
      v32 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v3[21] = dispatch_queue_create("com.apple.coreanimation.CAMetalLayerEventListenerQueue", v32);
      v3[20] = [objc_alloc(MEMORY[0x1E696CE08]) initWithDispatchQueue:v3[21]];
      v33 = mach_absolute_time();
      v3[29] = CAHostTimeWithTime(1.0) + v33;
      v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v3[22] = dispatch_queue_create("com.apple.coreanimation.CAMetalLayerTimeoutQueue", v34);
      v2->_priv = v3;
      if (MEMORY[0x1EEE88920])
      {
        FPCAMetalLayerAllocated();
      }
    }

    else
    {
      free(v3);

      return 0;
    }
  }

  return v2;
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

- (BOOL)allowsNextDrawableTimeout
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = allowsNextDrawableTimeout_atom;
  if (!allowsNextDrawableTimeout_atom)
  {
    v3 = CAInternAtomWithCString("allowsNextDrawableTimeout");
    allowsNextDrawableTimeout_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (BOOL)fenceEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = fenceEnabled_atom;
  if (!fenceEnabled_atom)
  {
    v3 = CAInternAtomWithCString("fenceEnabled");
    fenceEnabled_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (BOOL)disableFIFO
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = disableFIFO_atom;
  if (!disableFIFO_atom)
  {
    v3 = CAInternAtomWithCString("disableFIFO");
    disableFIFO_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (BOOL)serverSyncEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = serverSyncEnabled_atom;
  if (!serverSyncEnabled_atom)
  {
    v3 = CAInternAtomWithCString("serverSyncEnabled");
    serverSyncEnabled_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
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

- (BOOL)lowWorkload
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = lowWorkload_atom;
  if (!lowWorkload_atom)
  {
    v3 = CAInternAtomWithCString("lowWorkload");
    lowWorkload_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (BOOL)allowsDisplayCompositingWithCopy
{
  priv = self->_priv;
  if (priv)
  {
    return (priv[297] >> 6) & 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isDrawableAvailable
{
  v3 = mach_absolute_time();
  v4 = CATimeWithHostTime(v3);
  while (1)
  {
    priv = self->_priv;
    os_unfair_lock_lock(priv + 2);
    v6 = *(priv + 74);
    if ((v6 & 0x200) != 0)
    {
      v8 = *(priv + 4) == 0;
LABEL_7:
      if ((*(priv + 74) & 0x10) == 0 && v8)
      {
        v9 = 132;
      }

      else
      {
        v9 = 136;
      }

      v7 = *&priv[v9] > 2u;
      goto LABEL_11;
    }

    if ((v6 & 0x20) != 0 && !*(priv + 4))
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = 0;
LABEL_11:
    pthread_setspecific(collect_slot, priv);
    v10 = CAImageQueueCollect_(*(priv + 2), 0, v7);
    pthread_setspecific(collect_slot, 0);
    if (v10)
    {
      v11 = *(priv + 4) || (priv[296] & 0x10) != 0 ? *(priv + 34) : *(priv + 33);
      if (v11 < 6)
      {
        v12 = 6 - v11;
        v13 = v10;
        if (v12 < v10)
        {
          v13 = v12;
        }

        v10 -= v13;
      }
    }

    v14 = *(priv + 35);
    os_unfair_lock_unlock(priv + 2);
    v15 = mach_absolute_time();
    v16 = CATimeWithHostTime(v15);
    if (v10 > v14 || v16 - v4 > 0.001)
    {
      break;
    }

    usleep(0x64u);
  }

  if (v10 <= v14)
  {
    v17 = self->_priv;
    os_unfair_lock_lock(v17 + 2);
    CAImageQueuePing_(*(v17 + 2), 0, 0, 0.0, 0.0);
    os_unfair_lock_unlock(v17 + 2);
  }

  return v10 > v14;
}

- (id)nextDrawable
{
  v6[1] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  os_unfair_lock_lock(priv + 2);
  if (*(self->_priv + 4))
  {
    [MEMORY[0x1E695DF30] raise:@"CAMetalLayerInvalidOperation" format:@"-nextDrawable should not be called when using CAMetalDisplayLink."];
  }

  v6[0] = 0;
  CAMetalLayerPrivateNextDrawableLocked(self, v6, 0);
  [v6[0] estimateTargets];
  v4 = [(CAMetalLayer *)self shimDrawable:v6[0]];
  os_unfair_lock_unlock(priv + 2);
  return v4;
}

- (CGSize)drawableSize
{
  priv = self->_priv;
  LODWORD(v2) = priv[30];
  LODWORD(v3) = priv[31];
  v5 = v2;
  v6 = v3;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)currentDisplay
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(*(self->_priv + 2) + 48);
  if (v3)
  {
    v4 = *(*(v3 + 24) + 24);
  }

  else
  {
    v4 = 0;
  }

  if ([(CAMetalLayer *)self cachedDisplay]&& [(CADisplay *)[(CAMetalLayer *)self cachedDisplay] displayId]== v4)
  {

    return [(CAMetalLayer *)self cachedDisplay];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = +[CADisplay displays];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 displayId] == v4)
          {
            [(CAMetalLayer *)self setCachedDisplay:v11];
            return v11;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [(CAMetalLayer *)self setCachedDisplay:0];
    return 0;
  }
}

- (BOOL)nonDefaultColorspace
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = nonDefaultColorspace_atom;
  if (!nonDefaultColorspace_atom)
  {
    v3 = CAInternAtomWithCString("nonDefaultColorspace");
    nonDefaultColorspace_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
}

- (NSUInteger)maximumDrawableCount
{
  priv = self->_priv;
  if (priv)
  {
    return priv[33];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CAMetalLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, a3);
}

- (void)setDeveloperHUDProperties:(NSDictionary *)developerHUDProperties
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = developerHUDProperties_atom;
  if (!developerHUDProperties_atom)
  {
    v5 = CAInternAtomWithCString("developerHUDProperties");
    developerHUDProperties_atom = v5;
  }

  *&v6[0] = developerHUDProperties;
  CA::Layer::setter(self->super._attr.layer, v5, 3, v6);
}

- (NSDictionary)developerHUDProperties
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = developerHUDProperties_atom;
  if (!developerHUDProperties_atom)
  {
    v3 = CAInternAtomWithCString("developerHUDProperties");
    developerHUDProperties_atom = v3;
  }

  v5[0] = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 3, v5);
  return v5[0];
}

- (void)setAllowsNextDrawableTimeout:(BOOL)allowsNextDrawableTimeout
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = allowsNextDrawableTimeout_atom;
  if (!allowsNextDrawableTimeout_atom)
  {
    v5 = CAInternAtomWithCString("allowsNextDrawableTimeout");
    allowsNextDrawableTimeout_atom = v5;
  }

  v6 = allowsNextDrawableTimeout;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setDisplaySyncEnabled:(BOOL)displaySyncEnabled
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = displaySyncEnabled_atom;
  if (!displaySyncEnabled_atom)
  {
    v5 = CAInternAtomWithCString("displaySyncEnabled");
    displaySyncEnabled_atom = v5;
  }

  v6 = displaySyncEnabled;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (BOOL)displaySyncEnabled
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = displaySyncEnabled_atom;
  if (!displaySyncEnabled_atom)
  {
    v3 = CAInternAtomWithCString("displaySyncEnabled");
    displaySyncEnabled_atom = v3;
  }

  v5 = 0;
  CA::Layer::getter(self->super._attr.layer, v3, 7, &v5);
  return v5 != 0;
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

- (void)setMaximumDrawableCount:(NSUInteger)maximumDrawableCount
{
  priv = self->_priv;
  if (*(priv + 4))
  {
    [MEMORY[0x1E695DF30] raise:@"CAMetalLayerInvalidOperation" format:@"-setMaximumDrawableCount should not be called when using CAMetalDisplayLink."];
    priv = self->_priv;
    if (!priv)
    {
      return;
    }
  }

  v6 = *(priv + 74);
  if (maximumDrawableCount < 2)
  {
    goto LABEL_7;
  }

  v7 = 6;
  if ((v6 & 0x10000) == 0)
  {
    v7 = 3;
  }

  if (v7 < maximumDrawableCount)
  {
LABEL_7:
    v8 = 6;
    if ((v6 & 0x10000) == 0)
    {
      v8 = 3;
    }

    [MEMORY[0x1E695DF30] raise:@"CAMetalLayerInvalidMaximumDrawableCount" format:{@"failed trying to set maximumDrawableCount to %lu outside of the valid range of [2, %d]", maximumDrawableCount, v8}];
    return;
  }

  if (byte_1ED4E9849 == 1)
  {
    *(priv + 33) = 2;
    v9 = *(priv + 2);
  }

  else
  {
    *(priv + 33) = maximumDrawableCount;
    v9 = *(priv + 2);
    if (maximumDrawableCount != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  v10 = 0x40000000000000;
LABEL_15:

  CAImageQueueSetFlagsInternal(v9, 0x40000000000000, v10);
}

- (void)_didCommitLayer:(void *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    if ((*(priv + 1) & 2) != 0)
    {
      v6 = *(a3 + 5);
      if (v6)
      {
        v7 = *(priv + 2);
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

        atomic_fetch_and(priv + 1, 0xFFFFFFFD);
      }
    }
  }

  v12.receiver = self;
  v12.super_class = CAMetalLayer;
  [(CALayer *)&v12 _didCommitLayer:a3];
}

- (void)setContents:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(CALayer *)self contents]!= a3)
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = CAMetalLayer;
  [(CALayer *)&v6 setContents:a3];
}

- (void)_display
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = CAMetalLayer;
  [(CALayer *)&v2 setContents:[(CALayer *)self contents]];
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  priv = self->_priv;
  if (priv)
  {
    if (a3)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(priv + 74) = *(priv + 74) & 0xFFFFFFF7 | v4;
    if (a3)
    {
      CAImageQueueConsumeUnconsumed_(*(priv + 2), 0);
    }

    else
    {
      layer_private_cleanup_callbacks(priv);
    }
  }
}

- (id)newDrawable
{
  if ([CAMetalLayer newDrawable]::warn_once != -1)
  {
    dispatch_once(&[CAMetalLayer newDrawable]::warn_once, &__block_literal_global_365);
  }

  v3 = [(CAMetalLayer *)self nextDrawable];

  return v3;
}

void __27__CAMetalLayer_newDrawable__block_invoke()
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
    _os_log_error_impl(&dword_183AA6000, v0, OS_LOG_TYPE_ERROR, "[CAMetalLayer newDrawable] is deprecated. Please use [CAMetalLayer nextDrawable] instead.", v1, 2u);
  }
}

- (void)setEDRMetadata:(CAEDRMetadata *)EDRMetadata
{
  if (*(self->_priv + 33) != EDRMetadata)
  {
    v5 = EDRMetadata;

    *(self->_priv + 33) = EDRMetadata;
  }
}

- (void)setColorspace:(CGColorSpace *)a3 nonDefault:(BOOL)a4
{
  v4 = a4;
  priv = self->_priv;
  if (priv && priv[32] != a3)
  {
    CGColorSpaceRetain(a3);
    v8 = self->_priv;
    v9 = *(v8 + 32);
    if (v9)
    {
      CGColorSpaceRelease(v9);
      v8 = self->_priv;
    }

    *(v8 + 32) = a3;
  }

  [(CAMetalLayer *)self setNonDefaultColorspace:v4];
}

- (void)setFramebufferOnly:(BOOL)framebufferOnly
{
  priv = self->_priv;
  if (priv)
  {
    v4 = framebufferOnly;
    os_unfair_lock_lock(priv + 2);
    if (((((priv[74]._os_unfair_lock_opaque & 0x40) == 0) ^ v4) & 1) == 0)
    {
      if (v4)
      {
        v5 = 64;
      }

      else
      {
        v5 = 0;
      }

      priv[74]._os_unfair_lock_opaque = priv[74]._os_unfair_lock_opaque & 0xFFFFFFBF | v5;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
  }
}

- (void)setPixelFormat:(MTLPixelFormat)pixelFormat
{
  if (pixelFormat <= (MTLPixelFormatBGRA8Unorm_sRGB|0x8))
  {
    if (pixelFormat <= MTLPixelFormatRG16Sint)
    {
      if ((pixelFormat - 10) < 2)
      {
        v5 = 1093677112;
        goto LABEL_29;
      }

      if ((pixelFormat - 30) < 2)
      {
        v5 = 1279340600;
        goto LABEL_29;
      }

LABEL_28:
      [MEMORY[0x1E695DF30] raise:@"CAMetalLayerInvalid" format:{@"invalid pixel format %lu", pixelFormat}];
      v5 = 0;
      goto LABEL_29;
    }

    if ((pixelFormat - 70) >= 2)
    {
      if ((pixelFormat - 80) < 2)
      {
        v5 = 1111970369;
LABEL_29:
        v8 = 36;
        goto LABEL_30;
      }

      if (pixelFormat == MTLPixelFormatRG16Float)
      {
        v5 = 843264104;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v7 = 16961;
LABEL_21:
    v5 = v7 | 0x52470000u;
    goto LABEL_29;
  }

  if (pixelFormat <= 549)
  {
    if (pixelFormat == MTLPixelFormatRGB10A2Unorm)
    {
      v5 = 1378955371;
      goto LABEL_29;
    }

    if (pixelFormat == MTLPixelFormatBGR10A2Unorm)
    {
      v5 = 1815162994;
      goto LABEL_29;
    }

    if (pixelFormat != MTLPixelFormatRGBA16Float)
    {
      goto LABEL_28;
    }

    v7 = 26689;
    goto LABEL_21;
  }

  if ((pixelFormat - 550) > 5)
  {
    goto LABEL_28;
  }

  v6 = 1 << (pixelFormat - 38);
  if ((v6 & 3) != 0)
  {
    v5 = 1647534392;
  }

  else if ((v6 & 0xC) != 0)
  {
    v5 = 1999908961;
  }

  else
  {
    v5 = 1999843442;
  }

  v8 = 35;
LABEL_30:
  if (![(CAMetalLayer *)self colorspace]|| ![(CAMetalLayer *)self nonDefaultColorspace])
  {
    if (pixelFormat == MTLPixelFormatRGBA16Float)
    {
      v9 = 33;
    }

    else
    {
      v9 = v8;
    }

    [(CAMetalLayer *)self setColorspace:CAGetColorSpace(v9) nonDefault:0];
  }

  priv = self->_priv;
  if (priv)
  {
    layer_private_check_pixel_format(*(priv + 9), v5);
    os_unfair_lock_lock(priv + 2);
    if (*(priv + 12) != pixelFormat)
    {
      *(priv + 16) = v5;
      *(priv + 12) = pixelFormat;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
    if (MEMORY[0x1EEE88970])
    {
      FPMetalLayerMarkSetPixelFormat();
    }
  }
}

- (void)setDrawableSize:(CGSize)drawableSize
{
  v16 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    height = drawableSize.height;
    width = drawableSize.width;
    if (drawableSize.width > 16384.0 || drawableSize.width < 1.0 || drawableSize.height < 1.0 || drawableSize.height > 16384.0)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v9 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        v12 = 134218240;
        v13 = width;
        v14 = 2048;
        v15 = height;
        _os_log_error_impl(&dword_183AA6000, v9, OS_LOG_TYPE_ERROR, "CAMetalLayer ignoring invalid setDrawableSize width=%f height=%f", &v12, 0x16u);
      }
    }

    else
    {
      v10 = drawableSize.width;
      v11 = drawableSize.height;
      os_unfair_lock_lock(priv + 2);
      if (priv[30]._os_unfair_lock_opaque != v10 || priv[31]._os_unfair_lock_opaque != v11)
      {
        layer_private_set_drawable_size_internal(priv, width, height);
        layer_private_flush_async(priv);
      }

      os_unfair_lock_unlock(priv + 2);
    }
  }
}

- (void)setDevice:(id)device
{
  priv = self->_priv;
  if (priv)
  {
    layer_private_set_device(priv, device);
  }
}

- (void)setName:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAMetalLayer;
  [(CALayer *)&v3 setName:?];
  if (MEMORY[0x1EEE88968])
  {
    FPMetalLayerMarkSetName();
  }
}

uint64_t __20__CAMetalLayer_init__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 32))
  {
    return [CADisplayLink notifyDisplayChange:?];
  }

  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    +[CATransaction lock];
    *(priv + 3) = 0;
    +[CATransaction unlock];
    layer_private_release(priv, v4);
  }

  self->_priv = 0x3333333333333333;
  if (MEMORY[0x1EEE88960])
  {
    FPMetalLayerMarkDealloc();
  }

  v5.receiver = self;
  v5.super_class = CAMetalLayer;
  [(CALayer *)&v5 dealloc];
}

- (void)didChangeValueForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_priv)
  {
    if ([a3 isEqualToString:@"opaque"])
    {
      v5 = [(CALayer *)self isOpaque];
      priv = self->_priv;
      if (v5)
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      v8 = priv[74] & 0xFFFFFFFB;
      goto LABEL_17;
    }

    if ([a3 isEqualToString:@"presentsWithTransaction"])
    {
      v9 = [(CAMetalLayer *)self presentsWithTransaction];
      priv = self->_priv;
      if (v9)
      {
        v7 = 32;
      }

      else
      {
        v7 = 0;
      }

      v8 = priv[74] & 0xFFFFFFDF;
      goto LABEL_17;
    }

    if ([a3 isEqualToString:@"allowsNextDrawableTimeout"])
    {
      v10 = [(CAMetalLayer *)self allowsNextDrawableTimeout];
      priv = self->_priv;
      if (v10)
      {
        v7 = 256;
      }

      else
      {
        v7 = 0;
      }

      v8 = priv[74] & 0xFFFFFEFF;
      goto LABEL_17;
    }

    if (![a3 isEqualToString:@"fenceEnabled"])
    {
      if ([a3 isEqualToString:@"disableFIFO"])
      {
        v14 = [(CAMetalLayer *)self disableFIFO];
        priv = self->_priv;
        if (v14)
        {
          v7 = 0x2000;
        }

        else
        {
          v7 = 0;
        }

        v8 = priv[74] & 0xFFFFDFFF;
      }

      else if ([a3 isEqualToString:@"serverSyncEnabled"])
      {
        v15 = [(CAMetalLayer *)self serverSyncEnabled];
        priv = self->_priv;
        if (v15)
        {
          v7 = 2048;
        }

        else
        {
          v7 = 0;
        }

        v8 = priv[74] & 0xFFFFF7FF;
      }

      else
      {
        if ([a3 isEqualToString:@"lowLatency"])
        {
          v16 = [(CAMetalLayer *)self lowLatency];
          priv = self->_priv;
          v11 = priv[74] & 0xFFFFFFFE | v16;
          goto LABEL_18;
        }

        if ([a3 isEqualToString:@"lowWorkload"])
        {
          v17 = [(CAMetalLayer *)self lowWorkload];
          priv = self->_priv;
          if (v17)
          {
            v7 = 2;
          }

          else
          {
            v7 = 0;
          }

          v8 = priv[74] & 0xFFFFFFFD;
        }

        else
        {
          if (![a3 isEqualToString:@"allowsDisplayCompositingWithCopy"])
          {
            goto LABEL_19;
          }

          v18 = [(CAMetalLayer *)self allowsDisplayCompositingWithCopy];
          priv = self->_priv;
          if (v18)
          {
            v7 = 0x4000;
          }

          else
          {
            v7 = 0;
          }

          v8 = priv[74] & 0xFFFFBFFF;
        }
      }

LABEL_17:
      v11 = v8 | v7;
LABEL_18:
      priv[74] = v11;
      goto LABEL_19;
    }

    if ([(CAMetalLayer *)self fenceEnabled])
    {
      v12 = 512;
    }

    else
    {
      v12 = 0;
    }

    *(self->_priv + 74) = *(self->_priv + 74) & 0xFFFFFDFF | v12;
    if ([(CAMetalLayer *)self fenceEnabled])
    {
      v13 = 1024;
    }

    else
    {
      v13 = 0;
    }

    *(self->_priv + 74) = *(self->_priv + 74) & 0xFFFFFBFF | v13;
    CAImageQueueSetFlagsInternal(*(self->_priv + 2), 0x4000000000000000, (*(self->_priv + 74) & 0x200) << 53);
  }

LABEL_19:
  v19.receiver = self;
  v19.super_class = CAMetalLayer;
  [(CAMetalLayer *)&v19 didChangeValueForKey:a3];
}

- (BOOL)shouldArchiveValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"device"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"pixelFormat") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"framebufferOnly") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"drawableSize") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"maximumDrawableCount") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"presentsWithTransaction") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"colorspace") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"EDRMetadata") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"protectionOptions") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"textureUsage") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"premultiplied") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"wantsIOSurfaceCompression"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CAMetalLayer;
  return [(CALayer *)&v6 shouldArchiveValueForKey:a3];
}

+ (id)defaultValueForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"opaque"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"allowsDisplayCompositing"))
  {
    return MEMORY[0x1E695E118];
  }

  if ([a3 isEqualToString:@"presentsWithTransaction"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"fenceEnabled") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"disableFIFO") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"serverSyncEnabled"))
  {
    return MEMORY[0x1E695E110];
  }

  if ([a3 isEqualToString:@"displaySyncEnabled"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"allowsNextDrawableTimeout"))
  {
    return MEMORY[0x1E695E118];
  }

  if ([a3 isEqualToString:@"lowLatency"])
  {
    return MEMORY[0x1E695E110];
  }

  if ([a3 isEqualToString:@"allowsDisplayCompositingWithCopy"])
  {
    return MEMORY[0x1E695E118];
  }

  if (([a3 isEqualToString:@"lowWorkload"] & 1) == 0)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___CAMetalLayer;
    return objc_msgSendSuper2(&v6, sel_defaultValueForKey_, a3);
  }

  return MEMORY[0x1E695E110];
}

- (void)setWantsIOSurfaceCompression:(BOOL)a3
{
  priv = self->_priv;
  if (priv)
  {
    v4 = a3;
    os_unfair_lock_lock(priv + 2);
    if (((((priv[74]._os_unfair_lock_opaque & 0x80) == 0) ^ v4) & 1) == 0)
    {
      if (v4)
      {
        v5 = 128;
      }

      else
      {
        v5 = 0;
      }

      priv[74]._os_unfair_lock_opaque = priv[74]._os_unfair_lock_opaque & 0xFFFFFF7F | v5;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
  }
}

- (void)setAllowsDisplayCompositingWithCopy:(BOOL)a3
{
  priv = self->_priv;
  if (priv)
  {
    if (a3)
    {
      v4 = 0x4000;
    }

    else
    {
      v4 = 0;
    }

    priv[74] = priv[74] & 0xFFFFBFFF | v4;
  }
}

- (void)setPremultiplied:(BOOL)a3
{
  priv = self->_priv;
  if (priv)
  {
    v4 = a3;
    os_unfair_lock_lock(priv + 2);
    os_unfair_lock_opaque = priv[74]._os_unfair_lock_opaque;
    if (((((os_unfair_lock_opaque & 0x20000) == 0) ^ v4) & 1) == 0)
    {
      if (v4)
      {
        v6 = 0x20000;
      }

      else
      {
        v6 = 0;
      }

      priv[74]._os_unfair_lock_opaque = os_unfair_lock_opaque & 0xFFFDFFFF | v6;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
  }
}

- (void)setTextureUsage:(unint64_t)a3
{
  priv = self->_priv;
  if (priv)
  {
    os_unfair_lock_lock(priv + 2);
    if (*&priv[72]._os_unfair_lock_opaque != a3)
    {
      *&priv[72]._os_unfair_lock_opaque = a3;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
  }
}

- (void)setProtectionOptions:(unint64_t)a3
{
  priv = self->_priv;
  if (priv)
  {
    os_unfair_lock_lock(priv + 2);
    if (*&priv[70]._os_unfair_lock_opaque != a3)
    {
      *&priv[70]._os_unfair_lock_opaque = a3;
      layer_private_flush_async(priv);
    }

    os_unfair_lock_unlock(priv + 2);
  }
}

- (double)drawableTimeoutSeconds
{
  priv = self->_priv;
  if (priv)
  {
    return priv[6];
  }

  else
  {
    return 0.0;
  }
}

- (void)setDrawableTimeoutSeconds:(double)a3
{
  priv = self->_priv;
  if (priv)
  {
    priv[6] = a3;
  }
}

- (double)inputTime
{
  priv = self->_priv;
  if (priv)
  {
    return priv[5];
  }

  else
  {
    return 0.0;
  }
}

- (void)setInputTime:(double)a3
{
  v7 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    if (priv[5] != 0.0)
    {
      if (x_log_get_api::once[0] != -1)
      {
        dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
      }

      v5 = x_log_get_api::log;
      if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "[CAMetalLayer setInputTime:] - non-zero time already exists!", v6, 2u);
      }
    }

    priv[5] = a3;
  }
}

- (void)setLowWorkload:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = lowWorkload_atom;
  if (!lowWorkload_atom)
  {
    v5 = CAInternAtomWithCString("lowWorkload");
    lowWorkload_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setLowLatency:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = lowLatency_atom;
  if (!lowLatency_atom)
  {
    v5 = CAInternAtomWithCString("lowLatency");
    lowLatency_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setServerSyncEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = serverSyncEnabled_atom;
  if (!serverSyncEnabled_atom)
  {
    v5 = CAInternAtomWithCString("serverSyncEnabled");
    serverSyncEnabled_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setDisableFIFO:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = disableFIFO_atom;
  if (!disableFIFO_atom)
  {
    v5 = CAInternAtomWithCString("disableFIFO");
    disableFIFO_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setFenceEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = fenceEnabled_atom;
  if (!fenceEnabled_atom)
  {
    v5 = CAInternAtomWithCString("fenceEnabled");
    fenceEnabled_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)setNonDefaultColorspace:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = nonDefaultColorspace_atom;
  if (!nonDefaultColorspace_atom)
  {
    v5 = CAInternAtomWithCString("nonDefaultColorspace");
    nonDefaultColorspace_atom = v5;
  }

  v6 = a3;
  CA::Layer::setter(self->super._attr.layer, v5, 7, &v6);
}

- (void)removeBackBuffers
{
  priv = self->_priv;
  if (priv)
  {
    layer_private_flush_backbuffers(priv);
  }
}

- (void)discardContents
{
  priv = self->_priv;
  if (priv)
  {
    os_unfair_lock_lock(priv + 2);
    pthread_setspecific(collect_slot, priv);
    CAImageQueueConsumeUnconsumed_(*(priv + 2), 1);
    CAImageQueueFlush(*(priv + 2));
    pthread_setspecific(collect_slot, 0);

    os_unfair_lock_unlock(priv + 2);
  }
}

- (unint64_t)displayCompositingInternalStatus
{
  priv = self->_priv;
  if (priv)
  {
    return priv[34];
  }

  else
  {
    return -1;
  }
}

@end