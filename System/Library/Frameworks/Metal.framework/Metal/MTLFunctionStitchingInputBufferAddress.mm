@interface MTLFunctionStitchingInputBufferAddress
- (BOOL)isEqual:(id)equal;
- (MTLFunctionStitchingInputBufferAddress)initWithBindIndex:(unint64_t)index;
- (MTLFunctionStitchingInputBufferAddress)initWithBindIndex:(unint64_t)index byteOffset:(unint64_t)offset dereference:(BOOL)dereference;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
@end

@implementation MTLFunctionStitchingInputBufferAddress

- (MTLFunctionStitchingInputBufferAddress)initWithBindIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = MTLFunctionStitchingInputBufferAddress;
  result = [(MTLFunctionStitchingInputBufferAddress *)&v5 init];
  result->_bindIndex = index;
  result->_byteOffset = 0;
  result->_dereference = 0;
  return result;
}

- (MTLFunctionStitchingInputBufferAddress)initWithBindIndex:(unint64_t)index byteOffset:(unint64_t)offset dereference:(BOOL)dereference
{
  self->_bindIndex = index;
  self->_byteOffset = offset;
  self->_dereference = dereference;
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBindIndex:self->_bindIndex];
  [v4 setByteOffset:self->_byteOffset];
  [v4 setDereference:self->_dereference];
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

  bindIndex = [(MTLFunctionStitchingInputBufferAddress *)self bindIndex];
  if (bindIndex != [equal bindIndex])
  {
    return 0;
  }

  byteOffset = [(MTLFunctionStitchingInputBufferAddress *)self byteOffset];
  if (byteOffset != [equal byteOffset])
  {
    return 0;
  }

  dereference = [(MTLFunctionStitchingInputBufferAddress *)self dereference];
  return dereference ^ [equal dereference] ^ 1;
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLFunctionStitchingInputBufferAddress *)self bindIndex];
  v4[1] = [(MTLFunctionStitchingInputBufferAddress *)self byteOffset];
  v4[2] = [(MTLFunctionStitchingInputBufferAddress *)self dereference];
  return _MTLHashState(v4, 0x18uLL);
}

- (id)formattedDescription:(unint64_t)description
{
  v10[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLFunctionStitchingInputBufferAddress;
  v6 = [(MTLFunctionStitchingInputBufferAddress *)&v9 description];
  v10[0] = v4;
  v10[1] = @"bind index = ";
  v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bindIndex];
  v10[3] = v4;
  v10[4] = @"byte offset = ";
  v10[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_byteOffset];
  v10[6] = v4;
  v10[7] = @"dereference = ";
  v10[8] = [MEMORY[0x1E696AD98] numberWithBool:self->_dereference];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 9), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end