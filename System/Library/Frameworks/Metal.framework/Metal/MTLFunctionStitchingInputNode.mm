@interface MTLFunctionStitchingInputNode
- (BOOL)isEqual:(id)a3;
- (MTLFunctionStitchingInputNode)initWithArgumentIndex:(NSUInteger)argument;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
@end

@implementation MTLFunctionStitchingInputNode

- (MTLFunctionStitchingInputNode)initWithArgumentIndex:(NSUInteger)argument
{
  v5.receiver = self;
  v5.super_class = MTLFunctionStitchingInputNode;
  result = [(MTLFunctionStitchingInputNode *)&v5 init];
  result->_argumentIndex = argument;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setArgumentIndex:{-[MTLFunctionStitchingInputNode argumentIndex](self, "argumentIndex")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  v7 = [(MTLFunctionStitchingInputNode *)self argumentIndex];
  return v7 == [a3 argumentIndex];
}

- (id)formattedDescription:(unint64_t)a3
{
  v10[3] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLFunctionStitchingInputNode;
  v6 = [(MTLFunctionStitchingInputNode *)&v9 description];
  v10[0] = v4;
  v10[1] = @"argumentIndex =";
  v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_argumentIndex];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 3), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end