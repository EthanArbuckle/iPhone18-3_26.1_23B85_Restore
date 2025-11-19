@interface _MTLHeap
- (_MTLHeap)initWithType:(int64_t)a3 options:(unint64_t)a4;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hazardTrackingMode;
- (unint64_t)resourceOptions;
@end

@implementation _MTLHeap

- (_MTLHeap)initWithType:(int64_t)a3 options:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _MTLHeap;
  result = [(_MTLAllocation *)&v7 initWithAllocationType:2];
  if (result)
  {
    result->_heapType = a3;
    result->_heapResourceOptions = a4;
  }

  return result;
}

- (unint64_t)hazardTrackingMode
{
  heapResourceOptions = self->_heapResourceOptions;
  if (((heapResourceOptions >> 8) & 2) != 0)
  {
    return (heapResourceOptions >> 8) & 3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)resourceOptions
{
  v3 = [(_MTLHeap *)self storageMode];
  v4 = [(_MTLHeap *)self cpuCacheMode];
  return v4 & 0xF | (16 * (v3 & 0xF)) | (([(_MTLHeap *)self hazardTrackingMode]& 3) << 8);
}

- (id)formattedDescription:(unint64_t)a3
{
  v19[24] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [(_MTLObjectWithLabel *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = _MTLHeap;
  v7 = [(_MTLHeap *)&v18 description];
  v19[0] = v4;
  v19[1] = @"label =";
  v8 = @"<none>";
  if (v5)
  {
    v8 = v5;
  }

  v19[2] = v8;
  v19[3] = v4;
  v19[4] = @"type =";
  v9 = [(_MTLHeap *)self type];
  v10 = @"MTLHeapTypePlacement";
  if (v9 != 1)
  {
    v10 = @"Invalid";
  }

  if (!v9)
  {
    v10 = @"MTLHeapTypeAutomatic";
  }

  v19[5] = v10;
  v19[6] = v4;
  v19[7] = @"size =";
  v19[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MTLHeap size](self, "size")}];
  v19[9] = v4;
  v19[10] = @"usedSize =";
  v19[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MTLHeap usedSize](self, "usedSize")}];
  v19[12] = v4;
  v19[13] = @"cpuCacheMode =";
  v11 = [(_MTLHeap *)self cpuCacheMode];
  v12 = @"MTLCPUCacheModeDefaultCache";
  if (v11)
  {
    v12 = @"Invalid";
  }

  if (v11 == 1)
  {
    v12 = @"MTLCPUCacheModeWriteCombined";
  }

  v19[14] = v12;
  v19[15] = v4;
  v19[16] = @"storageMode =";
  v13 = [(_MTLHeap *)self storageMode];
  v14 = @"MTLStorageModePrivate";
  if (v13 != 2)
  {
    v14 = @"Invalid";
  }

  if (!v13)
  {
    v14 = @"MTLStorageModeShared";
  }

  v19[17] = v14;
  v19[18] = v4;
  v19[19] = @"hazardTrackingMode =";
  v19[20] = MTLHazardTrackingModeString([(_MTLHeap *)self hazardTrackingMode]);
  v19[21] = v4;
  v19[22] = @"resourceOptions =";
  v19[23] = MTLResourceOptionsString([(_MTLHeap *)self resourceOptions]);
  v15 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v19, 24), "componentsJoinedByString:", @" "];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

@end