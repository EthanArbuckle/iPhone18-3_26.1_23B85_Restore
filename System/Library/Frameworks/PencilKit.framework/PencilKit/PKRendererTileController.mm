@interface PKRendererTileController
+ (id)sharedController;
- (PKRendererTileController)init;
- (id)_framebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format tileFramebuffersDictionary:(void *)dictionary clearColor:(double)color clearFramebufferBlock:(double)block;
- (id)framebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format clearFramebufferBlock:;
- (id)multiplyFramebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format clearFramebufferBlock:;
- (void)didTeardownTile:(uint64_t)tile;
@end

@implementation PKRendererTileController

- (PKRendererTileController)init
{
  v12.receiver = self;
  v12.super_class = PKRendererTileController;
  v2 = [(PKRendererTileController *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("com.apple.pencilkit.tiles", v4);
    tileQueue = v2->_tileQueue;
    v2->_tileQueue = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tileFramebuffers = v2->_tileFramebuffers;
    v2->_tileFramebuffers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    tileMultiplyFramebuffers = v2->_tileMultiplyFramebuffers;
    v2->_tileMultiplyFramebuffers = dictionary2;
  }

  return v2;
}

+ (id)sharedController
{
  objc_opt_self();
  if (_MergedGlobals_119 != -1)
  {
    dispatch_once(&_MergedGlobals_119, &__block_literal_global_4);
  }

  v0 = qword_1ED6A4F68;

  return v0;
}

void __44__PKRendererTileController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PKRendererTileController);
  v1 = qword_1ED6A4F68;
  qword_1ED6A4F68 = v0;
}

- (id)_framebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format tileFramebuffersDictionary:(void *)dictionary clearColor:(double)color clearFramebufferBlock:(double)block
{
  v21 = a2;
  neededCopy = needed;
  formatCopy = format;
  dictionaryCopy = dictionary;
  if (self)
  {
    tileCopy = tile;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__2;
    v58 = __Block_byref_object_dispose__2;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    deviceCopy = device;
    v27 = neededCopy;
    if (v21)
    {
      v28 = *(v21 + 200);
      v29 = COERCE_DOUBLE(atomic_load(v21 + 1));
      v36 = vrndaq_f64(vmulq_n_f64(v28, v29));
      v30 = *(v21 + 15);
    }

    else
    {
      v30 = 0;
      v36 = 0u;
    }

    v31 = v30;
    v32 = *(self + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __142__PKRendererTileController__framebufferForTile_createIfNeeded_device_pixelFormat_tileFramebuffersDictionary_clearColor_clearFramebufferBlock___block_invoke;
    block[3] = &unk_1E82D6E20;
    v41 = &v54;
    v38 = formatCopy;
    v33 = v31;
    v39 = v33;
    v49 = tileCopy;
    v43 = v36;
    v44 = deviceCopy;
    neededCopy = v27;
    colorCopy = color;
    blockCopy = block;
    v47 = a10;
    v48 = a11;
    v40 = v27;
    v42 = &v50;
    dispatch_sync(v32, block);
    if (*(v51 + 24) == 1)
    {
      dictionaryCopy[2](dictionaryCopy, v55[5]);
    }

    v34 = v55[5];

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void __142__PKRendererTileController__framebufferForTile_createIfNeeded_device_pixelFormat_tileFramebuffersDictionary_clearColor_clearFramebufferBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 128) == 1)
  {
    v5 = [[PKMetalFramebuffer alloc] initWithSize:*(a1 + 48) pixelFormat:0 device:1 memoryless:1 backedByIOSurface:1 sampleCount:*(a1 + 72) purgeable:*(a1 + 80)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 56) + 8) + 40);
    if (v8)
    {
      v9 = *(a1 + 112);
      *(v8 + 88) = *(a1 + 96);
      *(v8 + 104) = v9;
      v10 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 32) setObject:v10 forKeyedSubscript:*(a1 + 40)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (id)framebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format clearFramebufferBlock:
{
  v11 = a2;
  neededCopy = needed;
  formatCopy = format;
  v14 = formatCopy;
  if (self)
  {
    if (v11 && v11[82] == 1 && v11[83] != 1)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = *(self + 16);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __103__PKRendererTileController_framebufferForTile_createIfNeeded_device_pixelFormat_clearFramebufferBlock___block_invoke;
    v19[3] = &unk_1E82D6E48;
    v21 = formatCopy;
    v20 = v11;
    v17 = [(PKRendererTileController *)self _framebufferForTile:v20 createIfNeeded:tile device:neededCopy pixelFormat:device tileFramebuffersDictionary:v16 clearColor:v19 clearFramebufferBlock:0.0, 0.0, 0.0, v15];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __103__PKRendererTileController_framebufferForTile_createIfNeeded_device_pixelFormat_clearFramebufferBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [(PKRendererTile *)*(a1 + 32) lockAndSetFramebufferThreadSafe:v5];
}

- (id)multiplyFramebufferForTile:(char)tile createIfNeeded:(void *)needed device:(uint64_t)device pixelFormat:(void *)format clearFramebufferBlock:
{
  v11 = a2;
  formatCopy = format;
  if (self)
  {
    neededCopy = needed;
    if (v11)
    {
      if (v11[83])
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }
    }

    else
    {
      v14 = 1.0;
    }

    v15 = *(self + 24);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __111__PKRendererTileController_multiplyFramebufferForTile_createIfNeeded_device_pixelFormat_clearFramebufferBlock___block_invoke;
    v18[3] = &unk_1E82D6E48;
    v20 = formatCopy;
    v19 = v11;
    v16 = [(PKRendererTileController *)self _framebufferForTile:v19 createIfNeeded:tile device:neededCopy pixelFormat:device tileFramebuffersDictionary:v15 clearColor:v18 clearFramebufferBlock:v14, v14, v14, v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __111__PKRendererTileController_multiplyFramebufferForTile_createIfNeeded_device_pixelFormat_clearFramebufferBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [(PKRendererTile *)*(a1 + 32) lockAndSetMultiplyFramebufferThreadSafe:v5];
}

- (void)didTeardownTile:(uint64_t)tile
{
  if (tile)
  {
    if (a2 && (v3 = *(a2 + 120)) != 0)
    {
      v4 = *(tile + 8);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __44__PKRendererTileController_didTeardownTile___block_invoke;
      v6[3] = &unk_1E82D6E70;
      v6[4] = tile;
      v5 = v3;
      v7 = v5;
      dispatch_sync(v4, v6);
    }

    else
    {
      v5 = 0;
    }
  }
}

uint64_t __44__PKRendererTileController_didTeardownTile___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObjectForKey:v2];
}

@end