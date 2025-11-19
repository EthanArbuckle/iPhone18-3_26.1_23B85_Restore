@interface MTLResourceAddressRangeArray
- (BOOL)isEqual:(id)a3;
- (MTLResourceAddressRangeArray)initWithCount:(unint64_t)a3;
- (MTLResourceAddressRangeArray)initWithRanges:(MTLAddressRange *)a3 count:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLResourceAddressRangeArray

- (MTLResourceAddressRangeArray)initWithCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = MTLResourceAddressRangeArray;
  v4 = [(MTLResourceAddressRangeArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = a3;
    v6 = malloc_type_calloc(0x10uLL, a3, 0xF9C74735uLL);
    v5->_ranges = v6;
    if (!v6)
    {

      return 0;
    }
  }

  return v5;
}

- (MTLResourceAddressRangeArray)initWithRanges:(MTLAddressRange *)a3 count:(unint64_t)a4
{
  v6 = [(MTLResourceAddressRangeArray *)self initWithCount:a4];
  v7 = v6;
  if (v6)
  {
    memcpy(v6->_ranges, a3, 16 * a4);
  }

  return v7;
}

- (void)dealloc
{
  free(self->_ranges);
  self->_ranges = 0;
  v3.receiver = self;
  v3.super_class = MTLResourceAddressRangeArray;
  [(MTLResourceAddressRangeArray *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (a3)
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      count = self->_count;
      if (count == [a3 count])
      {
        return memcmp(self->_ranges, [a3 ranges], 16 * self->_count) == 0;
      }
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTLResourceAddressRangeArray allocWithZone:a3];
  count = self->_count;
  ranges = self->_ranges;

  return [(MTLResourceAddressRangeArray *)v4 initWithRanges:ranges count:count];
}

- (id)formattedDescription:(unint64_t)a3
{
  v16[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_count];
  if (self->_count)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"{ address = %p, length: %llu }", self->_ranges[v8].var0, self->_ranges[v8].var1)}];
      ++v9;
      ++v8;
    }

    while (v9 < self->_count);
  }

  v10 = [v7 componentsJoinedByString:v6];
  v11 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = MTLResourceAddressRangeArray;
  v12 = [(MTLResourceAddressRangeArray *)&v15 description];
  v16[0] = v5;
  v16[1] = @"count =";
  v16[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  v16[3] = v5;
  v16[4] = @"ranges = {";
  v16[5] = v6;
  v16[6] = v10;
  v16[7] = v5;
  v16[8] = @"}";
  result = [v11 stringWithFormat:@"%@%@", v12, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 9), "componentsJoinedByString:", @" "];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end