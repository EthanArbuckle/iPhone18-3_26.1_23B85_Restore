@interface MTLIOAccelResource
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (MTLIOAccelResource)initWithDevice:(id)device options:(unint64_t)options args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size;
- (MTLIOAccelResource)initWithResource:(id)resource;
- (NSString)label;
- (__CFArray)copyAnnotations;
- (__CFDictionary)copyAnnotationDictionary:(unint64_t)dictionary obj_key_name:(__CFString *)obj_key_name obj_dict:(__CFDictionary *)obj_dict;
- (id)initMemoryless:(id)memoryless descriptor:(id)descriptor;
- (id)initStandinWithDevice:(id)device;
- (id)retainedLabel;
- (unint64_t)allocatedSize;
- (unint64_t)hazardTrackingMode;
- (unint64_t)heapOffset;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)annotateResource:(__CFDictionary *)resource;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelResource

- (void)setLabel:(id)label
{
  p_res = &self->_res;
  if (*&self->_anon_50[40] != label)
  {
    v5 = [label copy];
    os_unfair_lock_lock(p_res[5].vendor.reserved + 1);
    v6 = *&p_res[1].var0;
    *&p_res[1].var0 = v5;
    os_unfair_lock_unlock(p_res[5].vendor.reserved + 1);

    if (**MEMORY[0x1E69A8488])
    {
      [(__IOSurface *)p_res[1].info.iosurface deviceRef];
      v7 = p_res[2].vendor.reserved[0];
      v8 = p_res[2].vendor.reserved[1];
      [label cStringUsingEncoding:1];
      p_res[2].vendor.reserved[1] = IOAccelDeviceTraceObjectLabel();
    }
  }
}

- (id)retainedLabel
{
  p_res = &self->_res;
  os_unfair_lock_lock(&self->_anon_50[196]);
  v3 = *&p_res[1].var0;
  os_unfair_lock_unlock(p_res[5].vendor.reserved + 1);
  return v3;
}

- (NSString)label
{
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];

  return retainedLabel;
}

- (unint64_t)resourceOptions
{
  v2 = *&self->_anon_50[104];
  v3 = *&self->_anon_50[112];
  return v3 & 0xF | (16 * (v2 & 0xF)) | (([(MTLIOAccelResource *)self hazardTrackingMode]& 3) << 8);
}

- (unint64_t)hazardTrackingMode
{
  v4 = (*&self->_anon_50[96] >> 8) & 3;
  if (v4)
  {
    return v4;
  }

  v6 = [(MTLIOAccelResource *)self heap:v2];
  if (!v6)
  {
    return 2;
  }

  return [(MTLHeap *)v6 hazardTrackingMode];
}

- (id)initStandinWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelResource;
  v4 = [(_MTLResource *)&v6 init];
  if (v4)
  {
    *&v4->_anon_50[32] = device;
    v4->_anon_50[136] = 1;
    *&v4->_anon_50[104] = 0;
    *&v4->_anon_50[112] = 0;
    *&v4->_anon_50[96] = 0;
    *&v4->_anon_50[120] = getpid();
    *&v4->_anon_50[128] = 2;
    *v4->_anon_50 = 0;
    *&v4->_anon_50[48] = 0;
    *&v4->_anon_50[64] = 0;
    *&v4->_anon_50[72] = 0;
    *&v4->_anon_50[80] = 0;
    *&v4->_anon_50[88] = 0;
    *&v4->_res.var0 = *(&v4->_res.var1 + 3) << 56;
    *&v4->_anon_50[196] = 0;
    *&v4->_anon_50[16] = 0;
    *&v4->_anon_50[24] = 0;
    *&v4->_anon_50[8] = 0;
    *&v4->_anon_50[144] = 0;
    *&v4->_anon_50[152] = 0;
  }

  return v4;
}

- (MTLIOAccelResource)initWithDevice:(id)device options:(unint64_t)options args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size
{
  v22.receiver = self;
  v22.super_class = MTLIOAccelResource;
  v9 = [(_MTLResource *)&v22 init];
  if (v9)
  {
    *(v9 + 14) = device;
    v9[216] = 1;
    *(v9 + 22) = options;
    *(v9 + 23) = options >> 4;
    *(v9 + 24) = options & 0xF;
    *(v9 + 50) = getpid();
    *(v9 + 26) = 2;
    *(v9 + 15) = 0u;
    *(v9 + 16) = 0u;
    v9[272] = 1;
    *(v9 + 69) = 0;
    if (*(v9 + 23) == 3)
    {
      *(v9 + 20) = 0;
      *(v9 + 16) = 0;
      *(v9 + 18) = 0;
      *(v9 + 19) = 0;
      *(v9 + 20) = 0;
      *(v9 + 21) = 0;
      *(v9 + 9) = v9[79] << 56;
      v9[216] = 0;
      *(v9 + 12) = 0;
      *(v9 + 13) = 0;
      *(v9 + 11) = 0;
      *(v9 + 28) = 0;
      *(v9 + 29) = 0;
    }

    else
    {
      if ((options & 0x300) == 0x100)
      {
        args->var0.var12 |= 0x1000u;
      }

      if ((options & 0x40000) != 0)
      {
        v10 = 66608;
      }

      else
      {
        v10 = 1072;
      }

      args->var0.var12 |= v10 | (*(v9 + 44) >> 6) & 0x2000;
      [*(v9 + 14) sharedRef];
      *(v9 + 18) = IOAccelResourceCreate();
      ClientShared = IOAccelResourceGetClientShared();
      *(v9 + 19) = ClientShared;
      if (!ClientShared)
      {

        return 0;
      }

      *(v9 + 20) = *(ClientShared + 256);
      v12 = *(v9 + 18);
      *(v9 + 16) = IOAccelResourceGetGlobalTraceObjectID();
      v13 = *(v9 + 18);
      *(v9 + 9) = IOAccelResourceGetResidentDataSize() & 0xFFFFFFFFFFFFFFLL | (v9[79] << 56);
      v14 = *(*(v9 + 19) + 260);
      if (v14 == 130)
      {
        var0 = 0;
      }

      else if ((v14 & 0x80) != 0)
      {
        var0 = args->var0.var16.var0.var0;
      }

      else
      {
        v16 = *(v9 + 18);
        var0 = IOAccelResourceGetDataBytes();
      }

      *(v9 + 21) = var0;
      v17 = *(v9 + 18);
      *(v9 + 13) = IOAccelResourceGetGPUVirtualAddress();
      v18 = *(v9 + 18);
      IOAccelResourceCreateAllocationIdentifierSet();
      [_memoryInfo addResourceToList:v9];
      [device _addResource:v9];
    }

    if (**MEMORY[0x1E69A8488])
    {
      v19 = *(v9 + 16);
      v20 = *(v9 + 9);
      [device registryID];
      [device currentAllocatedSize];
      IOAccelDeviceTraceEvent();
    }
  }

  return v9;
}

- (id)initMemoryless:(id)memoryless descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelResource;
  v6 = [(_MTLResource *)&v8 init];
  if (v6)
  {
    *&v6->_anon_50[32] = memoryless;
    *&v6->_anon_50[96] = xmmword_185DE2070;
    *&v6->_anon_50[112] = [descriptor cpuCacheMode];
    *&v6->_anon_50[120] = getpid();
    *&v6->_anon_50[128] = 1;
    *v6->_anon_50 = 0;
    *&v6->_anon_50[64] = 0;
    *&v6->_anon_50[72] = 0;
    *&v6->_anon_50[80] = 0;
    *&v6->_anon_50[88] = 0;
    *&v6->_res.var0 = *(&v6->_res.var1 + 3) << 56;
    *&v6->_anon_50[48] = 0;
    *&v6->_anon_50[196] = 0;
    *&v6->_anon_50[16] = 0;
    *&v6->_anon_50[24] = 0;
    *&v6->_anon_50[8] = 0;
    *&v6->_anon_50[144] = 0u;
    *&v6->_anon_50[160] = 0u;
    *&v6->_anon_50[176] = 0u;
    v6->_anon_50[192] = 0;
  }

  return v6;
}

- (MTLIOAccelResource)initWithResource:(id)resource
{
  v9.receiver = self;
  v9.super_class = MTLIOAccelResource;
  v4 = [(_MTLResource *)&v9 init];
  if (v4)
  {
    *(v4 + 14) = [resource device];
    v4[216] = 0;
    v5 = resource + 32;
    CFRetain(*(v5 + 14));
    *(v4 + 18) = *(v5 + 14);
    *(v4 + 19) = IOAccelResourceGetClientShared();
    v6 = *(v5 + 2);
    *(v4 + 10) = *(v5 + 6);
    *(v4 + 4) = v6;
    *(v4 + 21) = *(v5 + 17);
    v7 = *(v4 + 18);
    *(v4 + 13) = IOAccelResourceGetGPUVirtualAddress();
    *(v4 + 24) = *(v5 + 20);
    *(v4 + 11) = *(v5 + 9);
    *(v4 + 50) = getpid();
    *(v4 + 26) = *(v5 + 22);
    *(v4 + 16) = *(v5 + 12);
    *(v4 + 88) = *(v5 + 56);
    [_memoryInfo addResourceToList:v4];
    [*(v4 + 14) _addResource:v4];
  }

  return v4;
}

- (void)dealloc
{
  if (**MEMORY[0x1E69A8488])
  {
    v3 = *&self->_anon_50[48];
    v4 = *&self->_res.var0;
    [*&self->_anon_50[32] registryID];
    [*&self->_anon_50[32] currentAllocatedSize];
    IOAccelDeviceTraceEvent();
  }

  if (*&self->_anon_50[64])
  {
    [_memoryInfo removeResourceFromList:self];
    [*&self->_anon_50[32] _removeResource:self];
    v5 = *&self->_anon_50[64];
    IOAccelResourceRelease();
    *&self->_anon_50[64] = 0;
  }

  *&self->_anon_50[32] = 0;
  *&self->_anon_50[40] = 0;
  v6.receiver = self;
  v6.super_class = MTLIOAccelResource;
  [(_MTLObjectWithLabel *)&v6 dealloc];
}

- (unint64_t)protectionOptions
{
  result = *&self->_anon_50[64];
  if (result)
  {
    return MEMORY[0x1EEE11898](result, a2);
  }

  return result;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  p_res = &self->_res;
  if (self->_anon_50[136] != 1)
  {
    return 2;
  }

  if (state != 1)
  {
    if (state == 256)
    {
      return *&self->_anon_50[128];
    }

    *&self->_anon_50[128] = state;
  }

  v11 = v3;
  v12 = v4;
  iosurface = self->_res.info.iosurface;
  if (iosurface)
  {
    v10 = 0;
    if (state - 2 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = state - 2;
    }

    IOSurfaceSetPurgeable(iosurface, v8, &v10);
    if (v10 > 3)
    {
      return 4;
    }

    else
    {
      return qword_185DE2080[v10];
    }
  }

  else
  {
    v9 = p_res[2].vendor.reserved[2];
    IOAccelResourceSetPurgeable();
    return 1;
  }
}

- (__CFDictionary)copyAnnotationDictionary:(unint64_t)dictionary obj_key_name:(__CFString *)obj_key_name obj_dict:(__CFDictionary *)obj_dict
{
  dictionaryCopy = dictionary;
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"Processes", v10);
  CFRelease(v10);
  v11 = CFDictionaryCreateMutable(0, 0, v7, v8);
  CFArrayAppendValue(v10, v11);
  CFRelease(v11);
  valuePtr = getpid();
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v11, @"PID", v12);
  CFRelease(v12);
  if (obj_key_name && obj_dict)
  {
    v13 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFDictionaryAddValue(v11, obj_key_name, v13);
    CFRelease(v13);
    CFArrayAppendValue(v13, obj_dict);
  }

  values = CFNumberCreate(0, kCFNumberSInt64Type, &dictionaryCopy);
  v14 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
  CFDictionaryAddValue(Mutable, @"AllocationIdentifiers", v14);
  CFRelease(v14);
  CFRelease(values);
  return Mutable;
}

- (void)annotateResource:(__CFDictionary *)resource
{
  p_res = &self->_res;
  valuePtr = *(*&self->_anon_50[72] + 256);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(resource, @"Name", v5);
  CFRelease(v5);
  v7 = p_res[3].vendor.reserved[3];
  v6 = &p_res[3].vendor.reserved[3];
  if (v7 != getpid())
  {
    v8 = CFNumberCreate(0, kCFNumberIntType, v6);
    CFDictionaryAddValue(resource, @"ResponsiblePID", v8);
    CFRelease(v8);
  }
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(MTLIOAccelResource *)self annotateResource:Mutable];
  CFDictionaryAddValue(Mutable, @"Type", @"Buffer");
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];
  if (retainedLabel)
  {
    v5 = retainedLabel;
    v6 = CFStringCreateWithCString(0, [retainedLabel UTF8String], 0x600u);
  }

  else
  {
    v6 = CFStringCreateWithCString(0, "MTLIOAccelResource", 0x600u);
  }

  CFDictionaryAddValue(Mutable, @"Description", v6);
  CFRelease(v6);
  v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v8 = *&self->_anon_50[8];
  v9 = *&self->_anon_50[16];
  v10 = 1;
  do
  {
    v11 = v10;
    if (v8)
    {
      v12 = [(MTLIOAccelResource *)self copyAnnotationDictionary:v8 obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
      CFArrayAppendValue(v7, v12);
      CFRelease(v12);
    }

    v10 = 0;
    v8 = v9;
  }

  while ((v11 & 1) != 0);
  CFRelease(Mutable);
  return v7;
}

- (unint64_t)heapOffset
{
  p_res = &self->_res;
  result = *&self->_anon_50[160];
  if (result)
  {
    if ([result type] == 1)
    {
      return p_res[4].info.iosurface;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)makeAliasable
{
  p_res = &self->_res;
  v3 = *&self->_anon_50[160];
  if (v3)
  {
    if (LOBYTE(p_res[5].vendor.reserved[0]) == 1)
    {
      [v3 unpinMemoryAtOffset:p_res[4].info.iosurface withLength:*&p_res[4].var0];
      LOBYTE(p_res[5].vendor.reserved[0]) = 0;
    }
  }
}

- (BOOL)doesAliasResource:(id)resource
{
  p_res = &self->_res;
  v4 = *&self->_anon_50[160];
  if (!v4)
  {
    return 0;
  }

  if (v4 != [resource heap])
  {
    return 0;
  }

  v7 = *&p_res[4].var0;
  if (!v7)
  {
    return 0;
  }

  v8 = *(resource + 33);
  if (!v8)
  {
    return 0;
  }

  iosurface = p_res[4].info.iosurface;
  v10 = *(resource + 32);
  v11 = v10 + v8;
  return iosurface + v7 > v10 && v11 > iosurface;
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    v4 = *&self->_anon_50[160];
    v5 = *resources + 32;
    if (v4 == *(*resources + 30))
    {
      v6 = 0;
      v8 = *&self->_anon_50[184];
      v9 = 1;
      do
      {
        if (!v8)
        {
          break;
        }

        v10 = *(v5 + 29);
        if (!v10)
        {
          break;
        }

        v11 = *&self->_anon_50[176];
        v12 = *(v5 + 28);
        v13 = v12 + v10;
        if (v11 + v8 <= v12 || v13 <= v11)
        {
          break;
        }

        v6 = v9 >= count;
        if (count == v9)
        {
          break;
        }

        v5 = resources[v9] + 32;
        v15 = *(resources[v9++] + 30);
      }

      while (v4 == v15);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  if (count)
  {
    p_res = &self->_res;
    v7 = 1;
    countCopy = count;
    v9 = 1;
    do
    {
      v10 = p_res[4].vendor.reserved[2];
      if (v10 == [*resources heap])
      {
        v11 = *&p_res[4].var0;
        if (v11)
        {
          v12 = *(*resources + 33);
          if (v12)
          {
            iosurface = p_res[4].info.iosurface;
            v14 = *(*resources + 32);
            v15 = v14 + v12;
            if (iosurface + v11 > v14 && v15 > iosurface)
            {
              break;
            }
          }
        }
      }

      v9 = v7++ < count;
      ++resources;
      --countCopy;
    }

    while (countCopy);
  }

  else
  {
    return 0;
  }

  return v9;
}

- (unint64_t)allocatedSize
{
  if (*&self->_anon_50[160])
  {
    return *&self->_anon_50[184];
  }

  else
  {
    return [(MTLIOAccelResource *)self resourceSize];
  }
}

@end