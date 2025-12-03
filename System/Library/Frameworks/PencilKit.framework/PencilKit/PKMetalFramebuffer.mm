@interface PKMetalFramebuffer
- (double)size;
- (id)initWithSize:(void *)size pixelFormat:(char)format device:(char)device memoryless:(void *)memoryless backedByIOSurface:(int)surface sampleCount:(double)count purgeable:(double)purgeable;
- (uint64_t)incrementNonPurgeableCount;
- (void)dealloc;
- (void)decrementNonPurgeableCount;
@end

@implementation PKMetalFramebuffer

- (id)initWithSize:(void *)size pixelFormat:(char)format device:(char)device memoryless:(void *)memoryless backedByIOSurface:(int)surface sampleCount:(double)count purgeable:(double)purgeable
{
  v63 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  if (self)
  {
    v54.receiver = self;
    v54.super_class = PKMetalFramebuffer;
    v19 = objc_msgSendSuper2(&v54, sel_init);
    self = v19;
    if (v19)
    {
      *(v19 + 9) = ceil(count);
      *(v19 + 10) = ceil(purgeable);
      objc_storeStrong(v19 + 4, size);
      *(self + 18) = format;
      *(self + 19) = device;
      self[5] = a2;
      self[6] = memoryless;
      if (self[3])
      {
        if (surface)
        {
LABEL_5:
          v20 = *(self + 18) ^ 1;
LABEL_37:
          *(self + 17) = v20 & 1;
          *(self + 11) = 0u;
          *(self + 13) = 0u;
          self[8] = 8;
          goto LABEL_38;
        }

LABEL_36:
        v20 = 0;
        goto LABEL_37;
      }

      v21 = [self[4] supportsFamily:1001];
      v22 = [PKMetalUtility deviceSupportsFramebufferFetch:self[4]];
      v23 = [PKMetalUtility deviceSupportsMemorylessFramebuffers:self[4]];
      v24 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:self[5] width:*(self + 9) height:*(self + 10) mipmapped:0];
      v25 = v24;
      if (self[6] >= 2)
      {
        v26 = 4;
      }

      else
      {
        v26 = 2;
      }

      [v24 setTextureType:v26];
      [v25 setSampleCount:self[6]];
      [v25 setUsage:4];
      if (!v21 || !v22)
      {
        [v25 setUsage:{objc_msgSend(v25, "usage") | 1}];
      }

      if ((*(self + 18) & 1) == 0)
      {
        [v25 setUsage:{objc_msgSend(v25, "usage") | 1}];
      }

      [v25 setStorageMode:2];
      if (v21 && (*(self + 18) & v23 & 1) != 0)
      {
        [v25 setStorageMode:3];
      }

      if (*(self + 19) == 1)
      {
        storageMode = [v25 storageMode];
        [v25 setStorageMode:0];
        v28 = floor(*(self + 9));
        v29 = floor(*(self + 10));
        v30 = self[5];
        v31 = 8;
        if (v30 == 115)
        {
          v32 = &unk_1F47C1580;
        }

        else
        {
          v32 = &unk_1F47C1598;
        }

        v50 = storageMode;
        if (v30 != 115 && v30 != 552)
        {
          if (v30 == 554)
          {
            v33 = &unk_1F47C15B0;
          }

          else
          {
            v33 = &unk_1F47C15C8;
          }

          v32 = v33;
          v31 = 4;
        }

        v34 = vcvtd_n_u64_f64(ceil(v28 * v31 * 0.0625), 4uLL);
        v52 = v34 * v29;
        v55[0] = *MEMORY[0x1E696D130];
        v35 = [MEMORY[0x1E696AD98] numberWithDouble:{v28, v50}];
        *buf = v35;
        v55[1] = *MEMORY[0x1E696CF58];
        v36 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
        v37 = *MEMORY[0x1E696CFC0];
        v57 = v36;
        v58 = v32;
        v53 = v32;
        v38 = *MEMORY[0x1E696CE50];
        v55[2] = v37;
        v55[3] = v38;
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
        v59 = v39;
        v55[4] = *MEMORY[0x1E696CE58];
        v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
        v60 = v40;
        v55[5] = *MEMORY[0x1E696CE30];
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v52];
        v55[6] = *MEMORY[0x1E696CE60];
        v61 = v41;
        v62 = &unk_1F47C15E0;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v55 count:7];

        v43 = IOSurfaceCreate(v42);
        if (self[5] == 115)
        {
          IOSurfaceSetValue(v43, *MEMORY[0x1E696CEF0], [MEMORY[0x1E696AD98] numberWithDouble:4.0]);
        }

        if (+[PKMetalResourceHandler colorSpaceForExtendedDynamicRange])
        {
          CGColorSpaceAttachToIOSurface();
        }

        self[7] = v43;
        if (!v43)
        {
          v47 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1C7CCA000, v47, OS_LOG_TYPE_FAULT, "Failed to allocate an IOSurface, falling back to a regular framebuffer to avoid crashing.", buf, 2u);
          }

          [v25 setStorageMode:v51];
          v48 = [self[4] newTextureWithDescriptor:v25];
          v49 = self[3];
          self[3] = v48;

          *(self + 19) = 0;
LABEL_35:

          if (surface)
          {
            goto LABEL_5;
          }

          goto LABEL_36;
        }

        v44 = [self[4] newTextureWithDescriptor:v25 iosurface:v43 plane:0];
      }

      else
      {
        v44 = [self[4] newTextureWithDescriptor:v25];
      }

      v45 = self[3];
      self[3] = v44;

      goto LABEL_35;
    }
  }

LABEL_38:

  return self;
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
    self->_ioSurface = 0;
  }

  v4.receiver = self;
  v4.super_class = PKMetalFramebuffer;
  [(PKMetalFramebuffer *)&v4 dealloc];
}

- (uint64_t)incrementNonPurgeableCount
{
  if (!self)
  {
    v3 = 0;
    return v3 & 1;
  }

  if (self[17] == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    ++*(selfCopy + 1);
    if (selfCopy[16] == 1)
    {
      v2 = *(selfCopy + 7);
      if (v2)
      {
        oldState = 0;
        IOSurfaceSetPurgeable(v2, 0, &oldState);
        if (oldState == 2)
        {
          IOSurfaceSetPurgeable(*(selfCopy + 7), 1u, 0);
          goto LABEL_10;
        }
      }

      else if ([*(selfCopy + 3) setPurgeableState:2] == 4)
      {
        goto LABEL_10;
      }

      selfCopy[16] = 0;
    }

LABEL_10:
    v3 = selfCopy[16] ^ 1;
    objc_sync_exit(selfCopy);

    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

- (void)decrementNonPurgeableCount
{
  if (self && self[17] == 1)
  {
    obj = self;
    objc_sync_enter(obj);
    v1 = *(obj + 1) - 1;
    *(obj + 1) = v1;
    if ((obj[16] & 1) == 0 && !v1)
    {
      obj[16] = 1;
      v2 = *(obj + 7);
      if (v2)
      {
        IOSurfaceSetPurgeable(v2, 1u, 0);
      }

      else
      {
        [*(obj + 3) setPurgeableState:3];
      }
    }

    objc_sync_exit(obj);
  }
}

- (double)size
{
  if (self)
  {
    return *(self + 72);
  }

  else
  {
    return 0.0;
  }
}

@end