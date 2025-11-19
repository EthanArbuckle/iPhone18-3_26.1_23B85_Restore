@interface MTLIOAccelBuffer
- (MTLIOAccelBuffer)initWithDevice:(id)a3 pointer:(void *)a4 length:(unint64_t)a5 options:(unint64_t)a6 sysMemSize:(unint64_t)a7 vidMemSize:(unint64_t)a8 gpuAddress:(unint64_t)a9 args:(IOAccelNewResourceArgs *)a10 argsSize:(unsigned int)a11 deallocator:(id)aBlock;
- (MTLIOAccelBuffer)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6;
- (MTLIOAccelBuffer)initWithMasterBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 args:(IOAccelNewResourceArgs *)a8 argsSize:(unsigned int)a9;
- (__CFArray)copyAnnotations;
- (id)formattedDescription:(unint64_t)a3;
- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6;
- (unint64_t)allocatedSize;
- (void)dealloc;
@end

@implementation MTLIOAccelBuffer

- (id)formattedDescription:(unint64_t)a3
{
  v13[21] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [(MTLIOAccelResource *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = MTLIOAccelBuffer;
  v7 = [(MTLIOAccelBuffer *)&v12 description];
  v13[0] = v4;
  v13[1] = @"label =";
  v8 = @"<none>";
  if (v5)
  {
    v8 = v5;
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

- (id)newLinearTextureWithDescriptor:(id)a3 offset:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 7085;
  result = [(MTLIOAccelBuffer *)self newTextureWithDescriptor:a3 offset:a4 bytesPerRow:a5, a6];
  *(StatusReg + 288) = 0;
  return result;
}

- (MTLIOAccelBuffer)initWithDevice:(id)a3 pointer:(void *)a4 length:(unint64_t)a5 options:(unint64_t)a6 sysMemSize:(unint64_t)a7 vidMemSize:(unint64_t)a8 gpuAddress:(unint64_t)a9 args:(IOAccelNewResourceArgs *)a10 argsSize:(unsigned int)a11 deallocator:(id)aBlock
{
  *(&a10->var0.var16.var3 + 4) = 0;
  *&a10->var0.var16.var0.var0 = 0u;
  *&a10->var0.var16.var3.var2[1] = 0u;
  *&a10->var0.var8 = 0u;
  *&a10->var0.var14 = 0u;
  *&a10->var0.var0 = 0u;
  *&a10->var0.var6 = 0u;
  if (a4)
  {
    if ((a6 & 0xF0) == 0x20)
    {
      v27 = @"storageModePrivate incompatible with ...WithBytes variant of newBuffer";
      v28 = 121;
    }

    else
    {
      if ((a6 & 0xF0) != 0x30)
      {
        goto LABEL_4;
      }

      v27 = @"storageModeMemoryless incompatible with ...WithBytes variant of newBuffer";
      v28 = 123;
    }

    MTLReportFailure(0, "[MTLIOAccelBuffer initWithDevice:pointer:length:options:sysMemSize:vidMemSize:gpuAddress:args:argsSize:deallocator:]", v28, v27, a5, a6, a7, a8, v29);
  }

LABEL_4:
  if (a7 >= a5)
  {
    v20 = a6 & 0xF;
    if (v20 >= 2)
    {
      [MTLIOAccelBuffer initWithDevice:a2 pointer:a3 length:a4 options:a5 sysMemSize:a6 vidMemSize:a7 gpuAddress:a8 args:? argsSize:? deallocator:?];
    }

    if (a4)
    {
      v20 = 0;
    }

    if (((a6 >> 4) | 2) != 2)
    {
      MTLReportFailure(0, "[MTLIOAccelBuffer initWithDevice:pointer:length:options:sysMemSize:vidMemSize:gpuAddress:args:argsSize:deallocator:]", 157, @"Invalid storageMode %u", a5, a6, a7, a8, a6 >> 4);
    }

    if (a6 >> 4)
    {
      v21 = a8;
    }

    else
    {
      v21 = 0;
    }

    v22 = (v21 != 0) << 6;
    if (v21)
    {
      v23 = 192;
    }

    else
    {
      v23 = 128;
    }

    if (a4)
    {
      v22 = v23;
    }

    a10->var0.var0 = v22;
    a10->var0.var1 = (v20 == 1) << 10;
    *&a10->var0.var2 = 65537;
    a10->var0.var4 = 1;
    a10->var0.var6 = v21;
    a10->var0.var7 = a7;
    *&a10->var0.var8 = 16777473;
    if (a9)
    {
      if (v21)
      {
        v24 = v21;
      }

      else
      {
        v24 = a7;
      }

      a10->var0.var14 = a9;
      a10->var0.var15 = v24;
    }

    a10->var0.var16.var0.var0 = a4;
    a10->var0.var16.var0.var1 = a4;
    a10->var0.var16.var0.var2 = v21;
    a10->var0.var16.var0.var3 = a7;
    if ((a6 & 0x10000) == 0)
    {
      a10->var0.var12 = 64;
    }

    v19 = [(MTLIOAccelResource *)self initWithDevice:a3 options:a6 args:a10 argsSize:a11];
    if (v19)
    {
      v19->_length = a5;
      if (aBlock)
      {
        v19->_pointer = a4;
        v19->_deallocator = _Block_copy(aBlock);
      }

      if (**MEMORY[0x1E69A8488])
      {
        [a3 deviceRef];
        v25 = *&v19->super._anon_50[48];
        [a3 registryID];
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

- (MTLIOAccelBuffer)initWithHeap:(id)a3 resource:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6
{
  v10 = [(MTLIOAccelResource *)self initWithResource:a4];
  v11 = v10;
  if (v10)
  {
    v10->_length = a6;
    *&v10->super._anon_50[160] = a3;
    *&v11->super._anon_50[168] = a4;
    *&v11->super._anon_50[176] = a5;
    *&v11->super._anon_50[184] = a6;
    v11->super._anon_50[192] = 1;
    if ([a3 type] == 1)
    {
      v11->super._anon_50[192] = 0;
    }

    *&v11->super._anon_50[88] += a5;
    *&v11->super._anon_50[24] += a5;
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

- (MTLIOAccelBuffer)initWithMasterBuffer:(id)a3 heapIndex:(signed __int16)a4 bufferIndex:(signed __int16)a5 bufferOffset:(unint64_t)a6 length:(unint64_t)a7 args:(IOAccelNewResourceArgs *)a8 argsSize:(unsigned int)a9
{
  self->_masterBuffer = a3;
  self->_masterHeapIndex = a4;
  self->_masterBufferIndex = a5;
  self->_masterBufferOffset = a6;
  self->_length = a7;
  *&a8->var0.var0 = 0u;
  *&a8->var0.var6 = 0u;
  *(&a8->var0.var16.var3 + 4) = 0;
  *&a8->var0.var16.var0.var0 = 0u;
  *&a8->var0.var16.var3.var2[1] = 0u;
  *&a8->var0.var8 = 0u;
  *&a8->var0.var14 = 0u;
  v9 = a3 + 32;
  v10 = *(*(a3 + 19) + 260);
  a8->var0.var0 = v10 | 0x80;
  *&a8->var0.var2 = 65537;
  a8->var0.var4 = 1;
  if ((v10 & 0x40) != 0)
  {
    v12 = 0;
    v11 = *(a3 + 9) & 0xFFFFFFFFFFFFFFLL;
    a8->var0.var6 = v11;
  }

  else
  {
    v11 = 0;
    a8->var0.var6 = 0;
    v12 = *(a3 + 43);
  }

  a8->var0.var7 = v12;
  *&a8->var0.var8 = 16777473;
  a8->var0.var16.var0.var0 = *(a3 + 21) + a6;
  a8->var0.var16.var0.var1 = *(a3 + 21);
  a8->var0.var16.var0.var2 = v11;
  a8->var0.var16.var0.var3 = v12;
  a8->var0.var16.var0.var4 = *(*(a3 + 19) + 256);
  a8->var0.var12 = 2048;
  v13 = -[MTLIOAccelResource initWithDevice:options:args:argsSize:](self, "initWithDevice:options:args:argsSize:", [a3 device], *(a3 + 22), a8, a9);
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
  v6 = [(MTLIOAccelResource *)self retainedLabel];
  if (v6)
  {
    v7 = v6;
    CFStringAppendFormat(v4, 0, @", %s", [v6 UTF8String]);
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