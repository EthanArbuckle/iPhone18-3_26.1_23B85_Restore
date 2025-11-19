@interface MTLRasterizationRateLayerDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLRasterizationRateLayerDescriptorInternal)init;
- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)a3;
- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)a3 horizontal:(const float *)a4 vertical:(const float *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setSampleCount:(id *)a3;
@end

@implementation MTLRasterizationRateLayerDescriptorInternal

- (MTLRasterizationRateLayerDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLRasterizationRateLayerDescriptorInternal;

  return 0;
}

- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)a3
{
  v11 = *a3;
  v10.receiver = self;
  v10.super_class = MTLRasterizationRateLayerDescriptorInternal;
  v4 = [(MTLRasterizationRateLayerDescriptor *)&v10 initWithSampleCount:&v11];
  if (v4)
  {
    if (!a3->var0)
    {
      goto LABEL_7;
    }

    var1 = a3->var1;
    if (!var1)
    {
      goto LABEL_7;
    }

    v6 = malloc_type_calloc(var1 + a3->var0, 4uLL, 0x100004052888210uLL);
    *(v4 + 1) = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *&a3->var0;
    *(v4 + 1) = *&a3->var0;
    *(v4 + 4) = 0;
    *(v4 + 7) = 0;
    *(v4 + 40) = v7;
    *(v4 + 8) = -[MTLRasterizationRateSampleArrayInternal initWithData:numElements:]([MTLRasterizationRateSampleArrayInternal alloc], "initWithData:numElements:", [v4 horizontalSampleStorage], *(v4 + 2));
    v8 = -[MTLRasterizationRateSampleArrayInternal initWithData:numElements:]([MTLRasterizationRateSampleArrayInternal alloc], "initWithData:numElements:", [v4 verticalSampleStorage], *(v4 + 3));
    *(v4 + 9) = v8;
    if (!*(v4 + 8) || !v8)
    {
LABEL_7:
      [v4 dealloc];
      return 0;
    }
  }

  return v4;
}

- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)a3 horizontal:(const float *)a4 vertical:(const float *)a5
{
  v10 = *a3;
  v7 = [(MTLRasterizationRateLayerDescriptorInternal *)self initWithSampleCount:&v10];
  v8 = v7;
  if (v7)
  {
    memcpy([(MTLRasterizationRateLayerDescriptorInternal *)v7 horizontalSampleStorage], a4, 4 * v7->_size.width);
    memcpy([(MTLRasterizationRateLayerDescriptorInternal *)v8 verticalSampleStorage], a5, 4 * v8->_size.height);
  }

  return v8;
}

- (void)dealloc
{
  free(self->_data);

  v3.receiver = self;
  v3.super_class = MTLRasterizationRateLayerDescriptorInternal;
  [(MTLRasterizationRateLayerDescriptorInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTLRasterizationRateLayerDescriptorInternal allocWithZone:a3];
  size = self->_size;
  v5 = [(MTLRasterizationRateLayerDescriptorInternal *)v4 initWithSampleCount:&size];
  v6 = v5;
  if (v5)
  {
    memcpy(*(v5 + 8), self->_data, 4 * (self->_size.height + self->_size.width));
    size = self->_currentSampleCount;
    [v6 setSampleCount:&size];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (width = self->_size.width, width == *(a3 + 2)) && (height = self->_size.height, height == *(a3 + 3)) && self->_currentSampleCount.width == *(a3 + 5) && self->_currentSampleCount.height == *(a3 + 6) && memcmp(self->_data, *(a3 + 1), 4 * (height + width)) == 0;
  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v20[18] = *MEMORY[0x1E69E9840];
  p_size = &self->_size;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_size.width];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_size.height];
  data = self->_data;
  if (p_size->width)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      *&v8 = data[v11];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v8), v11++}];
      v10 += 4;
    }

    while (v11 < p_size->width);
    data = (data + v10);
  }

  if (self->_size.height)
  {
    v12 = 0;
    do
    {
      *&v8 = data[v12];
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v8), v12++}];
    }

    while (v12 < self->_size.height);
  }

  v13 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v14 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = MTLRasterizationRateLayerDescriptorInternal;
  v15 = [(MTLRasterizationRateLayerDescriptorInternal *)&v19 description];
  v20[0] = v13;
  v20[1] = @"sampleCount.width =";
  p_currentSampleCount = &self->_currentSampleCount;
  v20[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_currentSampleCount->width];
  v20[3] = v13;
  v20[4] = @"sampleCount.height =";
  v20[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_currentSampleCount->height];
  v20[6] = v13;
  v20[7] = @"maxSampleCount.width =";
  v20[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_size->width];
  v20[9] = v13;
  v20[10] = @"maxSampleCount.height =";
  v20[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_size->height];
  v20[12] = v13;
  v20[13] = @"horizontal =";
  v20[14] = [v6 componentsJoinedByString:{@", "}];
  v20[15] = v13;
  v20[16] = @"vertical =";
  v20[17] = [v7 componentsJoinedByString:{@", "}];
  result = [v14 stringWithFormat:@"%@%@", v15, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 18), "componentsJoinedByString:", @" "];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSampleCount:(id *)a3
{
  var2 = a3->var2;
  *&self->_currentSampleCount.width = *&a3->var0;
  self->_currentSampleCount.depth = var2;
}

@end