@interface _MTLRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (MTLDevice)device;
- (_MTLRasterizationRateMap)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation _MTLRasterizationRateMap

- (_MTLRasterizationRateMap)initWithDevice:(id)a3 descriptor:(id)a4
{
  v11.receiver = self;
  v11.super_class = _MTLRasterizationRateMap;
  v6 = [(_MTLRasterizationRateMap *)&v11 init];
  if (v6)
  {
    *(v6 + 1) = a3;
    *(v6 + 2) = [a4 label];
    if (a4)
    {
      [a4 screenSize];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    *(v6 + 24) = v9;
    *(v6 + 5) = v10;
    *(v6 + 5) = [a4 layerCount];
    *(v6 + 6) = [a4 mutability];
    [a4 minFactor];
    *(v6 + 14) = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLRasterizationRateMap;
  [(_MTLRasterizationRateMap *)&v3 dealloc];
}

- (MTLDevice)device
{
  v2 = self->_device;

  return v2;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  *&retstr->var0 = *&self[1].var0;
  retstr->var2 = 0;
  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  *&retstr->var0 = vdupq_n_s64(0x20uLL);
  retstr->var2 = 0;
  return self;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  v2 = 0;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)a3
{
  if (self)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)self screenSize];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return self;
}

- (id)formattedDescription:(unint64_t)a3
{
  v18[24] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (self)
  {
    [(_MTLRasterizationRateMap *)self physicalGranularity];
  }

  v5 = [(_MTLRasterizationRateMap *)self parameterBufferSizeAndAlign];
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = _MTLRasterizationRateMap;
  v9 = [(_MTLRasterizationRateMap *)&v14 description];
  v18[0] = v4;
  v18[1] = @"label =";
  label = self->_label;
  width = self->_dim.width;
  if (!label)
  {
    label = @"<none>";
  }

  v18[2] = label;
  v18[3] = v4;
  v18[4] = @"screenSize.width =";
  v18[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:width];
  v18[6] = v4;
  v18[7] = @"screenSize.height =";
  v18[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dim.height];
  v18[9] = v4;
  v18[10] = @"layerCount =";
  v18[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dim.depth];
  v18[12] = v4;
  v18[13] = @"physicalGranularity.width =";
  v18[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  v18[15] = v4;
  v18[16] = @"physicalGranularity.height =";
  v18[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
  v18[18] = v4;
  v18[19] = @"parameterBuffer.size =";
  v18[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  v18[21] = v4;
  v18[22] = @"parameterBuffer.align =";
  v18[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  result = [v8 stringWithFormat:@"%@%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 24), "componentsJoinedByString:", @" "];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

@end