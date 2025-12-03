@interface MTLHeapDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (BOOL)validateWithDevice:(id)device;
- (MTLHeapDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setAddressRanges:(id)ranges;
- (void)setCpuCacheMode:(unint64_t)mode;
- (void)setResourceOptions:(unint64_t)options;
- (void)setStorageMode:(unint64_t)mode;
@end

@implementation MTLHeapDescriptorInternal

- (MTLHeapDescriptorInternal)init
{
  v5.receiver = self;
  v5.super_class = MTLHeapDescriptorInternal;
  v2 = [(MTLHeapDescriptorInternal *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x100004095B72424uLL);
    v2->_private = v3;
    if (v3)
    {
      *v3 = xmmword_185DD2CA0;
      *(v3 + 1) = xmmword_185DE2370;
      v3[32] = 1;
      *(v3 + 40) = xmmword_185DE2380;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  free(self->_private);

  self->_addressRanges = 0;
  v3.receiver = self;
  v3.super_class = MTLHeapDescriptorInternal;
  [(MTLHeapDescriptorInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(equal) || ([(MTLHeapDescriptorInternal *)self addressRanges]== 0) == (*(equal + 4) != 0))
    {
      LOBYTE(v6) = 0;
    }

    else if (!-[MTLHeapDescriptorInternal addressRanges](self, "addressRanges") || (v6 = [-[MTLHeapDescriptorInternal addressRanges](self "addressRanges")]) != 0)
    {
      LOBYTE(v6) = memcmp(self->_private, *(equal + 3), 0x58uLL) == 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 24);
    v7 = self->_private;
    v8 = *&v7->var2;
    *v6 = *&v7->var0;
    *(v6 + 16) = v8;
    v10 = *&v7->var6;
    v9 = *&v7->var8;
    v11 = *&v7->var4;
    *(v6 + 80) = v7->var10;
    *(v6 + 48) = v10;
    *(v6 + 64) = v9;
    *(v6 + 32) = v11;
    *(v4 + 32) = [(MTLResourceAddressRangeArray *)self->_addressRanges copy];
  }

  return v5;
}

- (void)setCpuCacheMode:(unint64_t)mode
{
  v3 = self->_private;
  v3->var2 = mode;
  v3->var6 = v3->var6 & 0xFFFFFFFFFFFFFFF0 | mode;
}

- (void)setStorageMode:(unint64_t)mode
{
  v3 = self->_private;
  v3->var1 = mode;
  v3->var6 = v3->var6 & 0xFFFFFFFFFFFFFF0FLL | (16 * mode);
}

- (id)formattedDescription:(unint64_t)description
{
  v23[24] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  var6 = self->_private->var6;
  v7 = @"MTLStorageModePrivate";
  if (var6 >> 4 != 2)
  {
    v7 = @"Invalid";
  }

  v8 = MEMORY[0x1E696AEC0];
  v22.receiver = self;
  v22.super_class = MTLHeapDescriptorInternal;
  if (var6 >> 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"MTLStorageModeShared";
  }

  v10 = [(MTLHeapDescriptorInternal *)&v22 description];
  v23[0] = v5;
  v23[1] = @"size =";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private->var0];
  v12 = @"MTLCPUCacheModeDefaultCache";
  v23[2] = v11;
  v23[3] = v5;
  if ((var6 & 0xF) != 0)
  {
    v12 = @"Invalid";
  }

  if ((var6 & 0xF) == 1)
  {
    v12 = @"MTLCPUCacheModeWriteCombined";
  }

  v23[4] = @"cpuCacheMode =";
  v23[5] = v12;
  v23[6] = v5;
  v23[7] = @"storageMode =";
  v23[8] = v9;
  v23[9] = v5;
  v23[10] = @"hazardTrackingMode =";
  v23[11] = MTLHazardTrackingModeString((var6 >> 8) & 3);
  v23[12] = v5;
  v23[13] = @"resourceOptions =";
  v23[14] = MTLResourceOptionsString(var6);
  v23[15] = v5;
  v23[16] = @"type =";
  v13 = self->_private;
  var5 = v13->var5;
  v15 = @"MTLHeapTypePlacement";
  if (var5 != 1)
  {
    v15 = @"Invalid";
  }

  if (var5)
  {
    v16 = v15;
  }

  else
  {
    v16 = @"MTLHeapTypeAutomatic";
  }

  v23[17] = v16;
  v23[18] = v5;
  v23[19] = @"addressRanges =";
  addressRanges = self->_addressRanges;
  if (addressRanges)
  {
    v18 = [(MTLResourceAddressRangeArray *)addressRanges formattedDescription:description + 4];
    v13 = self->_private;
  }

  else
  {
    v18 = @"nil";
  }

  v23[20] = v18;
  v23[21] = v5;
  v23[22] = @"maxCompatiblePlacementSparsePageSize = ";
  v23[23] = MTLSparsePageSizeString(v13->var10);
  v19 = [objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:{24), "componentsJoinedByString:", @" "}];
  result = [v8 stringWithFormat:@"%@%@", v10, v19, v22.receiver, v22.super_class];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setResourceOptions:(unint64_t)options
{
  v3 = self->_private;
  v3->var6 = options;
  v3->var1 = options >> 4;
  v3->var2 = options & 0xF;
}

- (BOOL)validateWithDevice:(id)device
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  _MTLMessageContextBegin_(v24, "[MTLHeapDescriptorInternal validateWithDevice:]", 381, device, 2, "Heap Descriptor Validation");
  supportsSharedStorageHeapResources = [device supportsSharedStorageHeapResources];
  var5 = self->_private->var5;
  v12 = 1;
  if (!var5)
  {
    goto LABEL_7;
  }

  if (var5 == 2)
  {
    v12 = 0;
    if (([device supportsSparseHeaps] & 1) == 0)
    {
      v13 = @"Sparse heaps are not supported.";
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (var5 != 1)
  {
    v13 = @"Unknown heap type.";
    goto LABEL_10;
  }

  if ([device isPlacementHeapSupported])
  {
LABEL_7:
    v14 = 1;
    goto LABEL_11;
  }

  v13 = @"Placement heap type is not supported.";
LABEL_10:
  _MTLMessageContextPush_(v24, 4, v13, v5, v6, v7, v8, v9, v23);
  v14 = 0;
LABEL_11:
  v15 = self->_private;
  var2 = v15->var2;
  if (var2 >= 2)
  {
    _MTLMessageContextPush_(v24, 4, @"Invalid cpuCacheMode (%@)", v5, v6, v7, v8, v9, @"Invalid");
    v15 = self->_private;
  }

  var1 = v15->var1;
  if (var1 == 2)
  {
    goto LABEL_16;
  }

  if (var1)
  {
    _MTLMessageContextPush_(v24, 4, @"Invalid storageMode (%@)", v5, v6, v7, v8, v9, @"Invalid");
  }

  else
  {
    if (supportsSharedStorageHeapResources & v12)
    {
LABEL_16:
      v18 = 1;
      goto LABEL_23;
    }

    if (v12)
    {
      v19 = @"Shared storage mode disallowed";
    }

    else
    {
      v19 = @"Sparse heap cannot have shared storage mode";
    }

    _MTLMessageContextPush_(v24, 4, v19, v5, v6, v7, v8, v9, v23);
  }

  v18 = 0;
LABEL_23:
  v20 = v14 & v18;
  if (*&v24[0])
  {
    v20 = 0;
  }

  if (var2 < 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  _MTLMessageContextEnd(v24);
  return v21;
}

- (void)setAddressRanges:(id)ranges
{
  addressRanges = self->_addressRanges;
  if (addressRanges != ranges)
  {

    self->_addressRanges = ranges;
  }
}

@end