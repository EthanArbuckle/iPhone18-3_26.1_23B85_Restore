@interface MTLFunctionConstantInternal
- (MTLFunctionConstantInternal)initWithName:(id)name type:(unint64_t)type index:(unint64_t)index required:(BOOL)required;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLFunctionConstantInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionConstantInternal;
  [(MTLFunctionConstantInternal *)&v3 dealloc];
}

- (MTLFunctionConstantInternal)initWithName:(id)name type:(unint64_t)type index:(unint64_t)index required:(BOOL)required
{
  v12.receiver = self;
  v12.super_class = MTLFunctionConstantInternal;
  v10 = [(MTLFunctionConstantInternal *)&v12 init];
  v10->_name = [name copy];
  v10->_type = type;
  v10->_index = index;
  v10->_required = required;
  return v10;
}

- (id)formattedDescription:(unint64_t)description
{
  v12[12] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = MTLFunctionConstantInternal;
  v6 = [(MTLFunctionConstantInternal *)&v11 description];
  name = self->_name;
  v12[0] = v4;
  v12[1] = @"name =";
  if (name)
  {
    v8 = name;
  }

  else
  {
    v8 = @"<none>";
  }

  v12[2] = v8;
  v12[3] = v4;
  v12[4] = @"type =";
  v12[5] = MTLDataTypeString(self->_type);
  v12[6] = v4;
  v12[7] = @"index =";
  v12[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_index];
  v12[9] = v4;
  v12[10] = @"required =";
  v12[11] = [MEMORY[0x1E696AD98] numberWithBool:self->_required];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 12), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end