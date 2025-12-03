@interface MTLIOAccelBuffer
- (MTLIOAccelBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length options:(unint64_t)options sysMemSize:(unint64_t)size vidMemSize:(unint64_t)memSize gpuAddress:(unint64_t)address args:(IOAccelNewResourceArgs *)self0 argsSize:(unsigned int)self1 deallocator:(id)aBlock;
- (MTLIOAccelBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length;
- (MTLIOAccelBuffer)initWithMasterBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size;
- (__CFArray)copyAnnotations;
- (id)formattedDescription:(unint64_t)description;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (unint64_t)allocatedSize;
- (void)dealloc;
@end

@implementation MTLIOAccelBuffer

- (id)formattedDescription:(unint64_t)description
{
  v13[21] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = MTLIOAccelBuffer;
  v7 = [(MTLIOAccelBuffer *)&v12 description];
  v13[0] = v4;
  v13[1] = @"label =";
  v8 = @"<none>";
  if (retainedLabel)
  {
    v8 = retainedLabel;
  }

  v13[2] = v8;
  v13[3] = v4;
  v13[4] = @"length =";
  v13[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
  v13[6] = v4;
  v13[7] = @"cpuCacheMode =";
  v13[8] = MTLCPUCacheModeString(*&self->super._anon_50[112]);
  v13[9] = v4;
  v13[10] = @"storageMode =";
  v13[11] = MTLStorageModeString(*&self->super._anon_50[104]);
  v13[12] = v4;
  v13[13] = @"hazardTrackingMode =";
  v13[14] = MTLHazardTrackingModeString([(MTLIOAccelResource *)self hazardTrackingMode]);
  v13[15] = v4;
  v13[16] = @"resourceOptions =";
  v13[17] = MTLResourceOptionsString([(MTLIOAccelResource *)self resourceOptions]);
  v13[18] = v4;
  v13[19] = @"purgeableState =";
  v13[20] = MTLPurgeableStateString(*&self->super._anon_50[128]);
  v9 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 21), "componentsJoinedByString:", @" "];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)allocatedSize
{
  if (self->_masterBuffer)
  {
    return self->_length;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MTLIOAccelBuffer;
  return [(MTLIOAccelResource *)&v5 allocatedSize];
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 7085;
  result = [(MTLIOAccelBuffer *)self newTextureWithDescriptor:descriptor offset:offset bytesPerRow:row, image];
  *(StatusReg + 288) = 0;
  return result;
}

- (MTLIOAccelBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length options:(unint64_t)options sysMemSize:(unint64_t)size vidMemSize:(unint64_t)memSize gpuAddress:(unint64_t)address args:(IOAccelNewResourceArgs *)self0 argsSize:(unsigned int)self1 deallocator:(id)aBlock
{
  *(&args->var0.var16.var3 + 4) = 0;
  *&args->var0.var16.var0.var0 = 0u;
  *&args->var0.var16.var3.var2[1] = 0u;
  *&args->var0.var8 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  if (pointer)
  {
    if ((options & 0xF0) == 0x20)
    {
      v27 = @"storageModePrivate incompatible with ...WithBytes variant of newBuffer";
      v28 = 121;
    }

    else
    {
      if ((options & 0xF0) != 0x30)
      {
        goto LABEL_4;
      }

      v27 = @"storageModeMemoryless incompatible with ...WithBytes variant of newBuffer";
      v28 = 123;
    }

    MTLReportFailure(0, "[MTLIOAccelBuffer initWithDevice:pointer:length:options:sysMemSize:vidMemSize:gpuAddress:args:argsSize:deallocator:]", v28, v27, length, options, size, memSize, v29);
  }

LABEL_4:
  if (size >= length)
  {
    v20 = options & 0xF;
    if (v20 >= 2)
    {
      [MTLIOAccelBuffer initWithDevice:a2 pointer:device length:pointer options:length sysMemSize:options vidMemSize:size gpuAddress:memSize args:? argsSize:? deallocator:?];
    }

    if (pointer)
    {
      v20 = 0;
    }

    if (((options >> 4) | 2) != 2)
    {
      MTLReportFailure(0, "[MTLIOAccelBuffer initWithDevice:pointer:length:options:sysMemSize:vidMemSize:gpuAddress:args:argsSize:deallocator:]", 157, @"Invalid storageMode %u", length, options, size, memSize, options >> 4);
    }

    if (options >> 4)
    {
      memSizeCopy = memSize;
    }

    else
    {
      memSizeCopy = 0;
    }

    v22 = (memSizeCopy != 0) << 6;
    if (memSizeCopy)
    {
      v23 = 192;
    }

    else
    {
      v23 = 128;
    }

    if (pointer)
    {
      v22 = v23;
    }

    args->var0.var0 = v22;
    args->var0.var1 = (v20 == 1) << 10;
    *&args->var0.var2 = 65537;
    args->var0.var4 = 1;
    args->var0.var6 = memSizeCopy;
    args->var0.var7 = size;
    *&args->var0.var8 = 16777473;
    if (address)
    {
      if (memSizeCopy)
      {
        sizeCopy = memSizeCopy;
      }

      else
      {
        sizeCopy = size;
      }

      args->var0.var14 = address;
      args->var0.var15 = sizeCopy;
    }

    args->var0.var16.var0.var0 = pointer;
    args->var0.var16.var0.var1 = pointer;
    args->var0.var16.var0.var2 = memSizeCopy;
    args->var0.var16.var0.var3 = size;
    if ((options & 0x10000) == 0)
    {
      args->var0.var12 = 64;
    }

    v19 = [(MTLIOAccelResource *)self initWithDevice:device options:options args:args argsSize:argsSize];
    if (v19)
    {
      v19->_length = length;
      if (aBlock)
      {
        v19->_pointer = pointer;
        v19->_deallocator = _Block_copy(aBlock);
      }

      if (**MEMORY[0x1E69A8488])
      {
        [device deviceRef];
        v25 = *&v19->super._anon_50[48];
        [device registryID];
        IOAccelDeviceTraceEvent();
      }
    }
  }

  else
  {

    return 0;
  }

  return v19;
}

- (MTLIOAccelBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length
{
  v10 = [(MTLIOAccelResource *)self initWithResource:resource];
  v11 = v10;
  if (v10)
  {
    v10->_length = length;
    *&v10->super._anon_50[160] = heap;
    *&v11->super._anon_50[168] = resource;
    *&v11->super._anon_50[176] = offset;
    *&v11->super._anon_50[184] = length;
    v11->super._anon_50[192] = 1;
    if ([heap type] == 1)
    {
      v11->super._anon_50[192] = 0;
    }

    *&v11->super._anon_50[88] += offset;
    *&v11->super._anon_50[24] += offset;
    if (**MEMORY[0x1E69A8488])
    {
      [*&v11->super._anon_50[32] deviceRef];
      v12 = *&v11->super._anon_50[48];
      v13 = vshlq_u64(*&v11->super._anon_50[104], xmmword_185DE1E20);
      [*&v11->super._anon_50[32] registryID];
      v14 = *(*(*&v11->super._anon_50[160] + 56) + 128);
      IOAccelDeviceTraceEvent();
    }
  }

  return v11;
}

- (MTLIOAccelBuffer)initWithMasterBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size
{
  self->_masterBuffer = buffer;
  self->_masterHeapIndex = index;
  self->_masterBufferIndex = bufferIndex;
  self->_masterBufferOffset = offset;
  self->_length = length;
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *(&args->var0.var16.var3 + 4) = 0;
  *&args->var0.var16.var0.var0 = 0u;
  *&args->var0.var16.var3.var2[1] = 0u;
  *&args->var0.var8 = 0u;
  *&args->var0.var14 = 0u;
  v9 = buffer + 32;
  v10 = *(*(buffer + 19) + 260);
  args->var0.var0 = v10 | 0x80;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
    v11 = *(buffer + 9) & 0xFFFFFFFFFFFFFFLL;
    args->var0.var6 = v11;
  }

  else
  {
    v11 = 0;
    args->var0.var6 = 0;
    v12 = *(buffer + 43);
  }

  args->var0.var7 = v12;
  *&args->var0.var8 = 16777473;
  args->var0.var16.var0.var0 = *(buffer + 21) + offset;
  args->var0.var16.var0.var1 = *(buffer + 21);
  args->var0.var16.var0.var2 = v11;
  args->var0.var16.var0.var3 = v12;
  args->var0.var16.var0.var4 = *(*(buffer + 19) + 256);
  args->var0.var12 = 2048;
  v13 = -[MTLIOAccelResource initWithDevice:options:args:argsSize:](self, "initWithDevice:options:args:argsSize:", [buffer device], *(buffer + 22), args, size);
  v14 = v13;
  if (v13)
  {
    p_res = &v13->super._res;
    v13->super._anon_50[136] = 0;
    if (**MEMORY[0x1E69A8488])
    {
      [*&v13->super._anon_50[32] deviceRef];
      v16 = p_res[2].vendor.reserved[0];
      v17 = vshlq_u64(*&p_res[3].vendor.reserved[1], xmmword_185DE1E20);
      [(__IOSurface *)p_res[1].info.iosurface registryID];
      v18 = *(v9 + 12);
      IOAccelDeviceTraceEvent();
    }
  }

  return v14;
}

- (void)dealloc
{
  p_res = &self->super._res;
  v4 = *&self->super._anon_50[160];
  if (v4)
  {
    [(MTLIOAccelResource *)self makeAliasable];
    [p_res[4].vendor.reserved[2] deallocHeapSubResource];
    v4 = p_res[4].vendor.reserved[2];
  }

  masterBuffer = self->_masterBuffer;
  if (masterBuffer)
  {
    [(__IOSurface *)p_res[1].info.iosurface deallocBufferSubData:masterBuffer heapIndex:self->_masterHeapIndex bufferIndex:self->_masterBufferIndex bufferOffset:self->_masterBufferOffset length:self->_length];
  }

  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, [(MTLIOAccelBuffer *)self length]);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  v8.receiver = self;
  v8.super_class = MTLIOAccelBuffer;
  [(MTLIOAccelResource *)&v8 dealloc];
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(MTLIOAccelResource *)self annotateResource:Mutable];
  CFDictionaryAddValue(Mutable, @"Type", @"Buffer");
  v4 = CFStringCreateMutable(0, 512);
  CFStringAppendFormat(v4, 0, @"%s", "MTLIOAccelBuffer");
  v5 = MTLResourceOptionsString(*&self->super._anon_50[96]);
  CFStringAppendFormat(v4, 0, @", %@", v5);
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];
  if (retainedLabel)
  {
    v7 = retainedLabel;
    CFStringAppendFormat(v4, 0, @", %s", [retainedLabel UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v4);
  CFRelease(v4);
  v8 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v9 = *&self->super._anon_50[8];
  v10 = *&self->super._anon_50[16];
  v11 = 1;
  do
  {
    v12 = v11;
    if (v9)
    {
      v13 = [(MTLIOAccelResource *)self copyAnnotationDictionary:v9 obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
      CFArrayAppendValue(v8, v13);
      CFRelease(v13);
    }

    v11 = 0;
    v9 = v10;
  }

  while ((v12 & 1) != 0);
  CFRelease(Mutable);
  return v8;
}

@end