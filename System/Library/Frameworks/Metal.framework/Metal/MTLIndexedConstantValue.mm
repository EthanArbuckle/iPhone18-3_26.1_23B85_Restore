@interface MTLIndexedConstantValue
- (MTLIndexedConstantValue)initWithValue:(const void *)value type:(unint64_t)type index:(unint64_t)index;
- (id)describe;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLIndexedConstantValue

- (MTLIndexedConstantValue)initWithValue:(const void *)value type:(unint64_t)type index:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = MTLIndexedConstantValue;
  v7 = [(MTLIndexedConstantValue *)&v9 init];
  if (v7)
  {
    v7->_index = index;
    v7->_dataType = type;
    _MTLConstantDataSize(type);
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    MEMORY[0x1865FF1F0](data, 0x1000C8077774924);
  }

  self->_data = 0;
  v4.receiver = self;
  v4.super_class = MTLIndexedConstantValue;
  [(MTLIndexedConstantValue *)&v4 dealloc];
}

- (id)describe
{
  v3 = newStringFromConstantValue(self->_data, self->_dataType);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index: %@; type: %@; value: %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", self->_index), MTLDataTypeString(self->_dataType), v3];

  return v4;
}

- (id)formattedDescription:(unint64_t)description
{
  v12[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = newStringFromConstantValue(self->_data, self->_dataType);
  v6 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLIndexedConstantValue;
  v7 = [(MTLIndexedConstantValue *)&v11 description];
  v12[0] = v4;
  v12[1] = @"Index =";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_index];
  v12[3] = v4;
  v12[4] = @"Type =";
  v12[5] = MTLDataTypeString(self->_dataType);
  v12[6] = v4;
  v12[7] = @"Value =";
  v12[8] = v5;
  v8 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 9), "componentsJoinedByString:", @" "];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end