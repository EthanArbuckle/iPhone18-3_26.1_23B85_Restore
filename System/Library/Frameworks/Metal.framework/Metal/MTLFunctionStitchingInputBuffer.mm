@interface MTLFunctionStitchingInputBuffer
- (BOOL)isEqual:(id)equal;
- (MTLFunctionStitchingInputBuffer)initWithBindIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLFunctionStitchingInputBuffer

- (MTLFunctionStitchingInputBuffer)initWithBindIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = MTLFunctionStitchingInputBuffer;
  result = [(MTLFunctionStitchingInputBuffer *)&v5 init];
  result->_bindIndex = index;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBindIndex:self->_bindIndex];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  bindIndex = [(MTLFunctionStitchingInputBuffer *)self bindIndex];
  return bindIndex == [equal bindIndex];
}

- (id)formattedDescription:(unint64_t)description
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLFunctionStitchingInputBuffer;
  v6 = [(MTLFunctionStitchingInputBuffer *)&v9 description];
  v10[0] = v4;
  v10[1] = @"BindIndex = ";
  v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bindIndex];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 3), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end