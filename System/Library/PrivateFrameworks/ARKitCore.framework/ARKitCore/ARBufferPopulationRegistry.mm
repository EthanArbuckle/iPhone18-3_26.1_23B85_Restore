@interface ARBufferPopulationRegistry
- (ARBufferPopulationRegistry)init;
- (double)timestampForSurfaceID:(id)d;
- (id)description;
- (int)signpostTypeForLabel:(id)label;
- (unint64_t)countWithLabel:(id)label;
- (void)registerBufferWithSurfaceID:(id)d label:(id)label signpostType:(id)type timestamp:(double)timestamp;
- (void)unregisterBufferWithSurfaceID:(id)d;
@end

@implementation ARBufferPopulationRegistry

- (ARBufferPopulationRegistry)init
{
  v12.receiver = self;
  v12.super_class = ARBufferPopulationRegistry;
  v2 = [(ARBufferPopulationRegistry *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bufferToLabelLUT = v2->_bufferToLabelLUT;
    v2->_bufferToLabelLUT = v3;

    v5 = objc_opt_new();
    labelToBuffersLUT = v2->_labelToBuffersLUT;
    v2->_labelToBuffersLUT = v5;

    v7 = objc_opt_new();
    labelToSignpostTypeLUT = v2->_labelToSignpostTypeLUT;
    v2->_labelToSignpostTypeLUT = v7;

    v9 = objc_opt_new();
    bufferToTimestampLUT = v2->_bufferToTimestampLUT;
    v2->_bufferToTimestampLUT = v9;
  }

  return v2;
}

- (unint64_t)countWithLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_labelToBuffersLUT objectForKey:label];
  v4 = [v3 count];

  return v4;
}

- (id)description
{
  v3 = objc_opt_new();
  labelToBuffersLUT = self->_labelToBuffersLUT;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__ARBufferPopulationRegistry_description__block_invoke;
  v8[3] = &unk_1E817E030;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(NSMutableDictionary *)labelToBuffersLUT enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __41__ARBufferPopulationRegistry_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v30 = a1;
  v7 = *(a1 + 32);
  v8 = [v6 count];
  v9 = [v6 count];
  v10 = @"]";
  if (v9)
  {
    v10 = &stru_1F4208A80;
  }

  v28 = v5;
  [v7 appendFormat:@"%@ (%ld): [%@\n", v5, v8, v10];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v31 = *v34;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 unsignedIntValue];
        v14 = IOSurfaceLookup(v13);
        if (v14)
        {
          v15 = v14;
          [*(v30 + 40) timestampForSurfaceID:v12];
          v17 = v16;
          IOSurfaceLock(v15, 1u, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v15);
          UseCount = IOSurfaceGetUseCount(v15);
          Width = IOSurfaceGetWidth(v15);
          Height = IOSurfaceGetHeight(v15);
          PixelFormat = IOSurfaceGetPixelFormat(v15);
          v23 = AROSTypeToString(PixelFormat);
          IOSurfaceGetAllocSize(v15);
          v24 = NSLocalizedFileSizeDescription();
          IOSurfaceUnlock(v15, 1u, 0);
          CFRelease(v15);
          [*(v30 + 32) appendFormat:@"\tIOSurface [%p] - id: %d (0x%x), rc: %ld, dims: %ldx%ld, format: %@, size: %@, timestamp: %f\n", BaseAddress, v13, v13, UseCount, Width, Height, v23, v24, v17];
        }
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v32);
  }

  v25 = *(v30 + 32);
  v26 = [obj count];
  v27 = @"]\n";
  if (!v26)
  {
    v27 = &stru_1F4208A80;
  }

  [v25 appendFormat:@"%@", v27];
}

- (void)registerBufferWithSurfaceID:(id)d label:(id)label signpostType:(id)type timestamp:(double)timestamp
{
  dCopy = d;
  labelCopy = label;
  bufferToLabelLUT = self->_bufferToLabelLUT;
  typeCopy = type;
  [(NSMutableDictionary *)bufferToLabelLUT setObject:labelCopy forKey:dCopy];
  [(NSMutableDictionary *)self->_labelToSignpostTypeLUT setObject:typeCopy forKey:labelCopy];

  bufferToTimestampLUT = self->_bufferToTimestampLUT;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:timestamp];
  [(NSMutableDictionary *)bufferToTimestampLUT setObject:v14 forKey:dCopy];

  v15 = [(NSMutableDictionary *)self->_labelToBuffersLUT objectForKey:labelCopy];
  if (!v15)
  {
    v15 = objc_opt_new();
    [(NSMutableDictionary *)self->_labelToBuffersLUT setObject:v15 forKey:labelCopy];
  }

  [v15 addObject:dCopy];
}

- (int)signpostTypeForLabel:(id)label
{
  v3 = [(NSMutableDictionary *)self->_labelToSignpostTypeLUT objectForKey:label];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (double)timestampForSurfaceID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_bufferToTimestampLUT objectForKey:d];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)unregisterBufferWithSurfaceID:(id)d
{
  bufferToLabelLUT = self->_bufferToLabelLUT;
  dCopy = d;
  v7 = [(NSMutableDictionary *)bufferToLabelLUT objectForKey:dCopy];
  [(NSMutableDictionary *)self->_bufferToLabelLUT removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_bufferToTimestampLUT removeObjectForKey:dCopy];
  v6 = [(NSMutableDictionary *)self->_labelToBuffersLUT objectForKey:v7];
  [v6 removeObject:dCopy];
}

@end