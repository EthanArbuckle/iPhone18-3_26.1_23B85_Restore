@interface MTLFunctionStitchingAttributeKernel
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLFunctionStitchingAttributeKernel

- (id)formattedDescription:(unint64_t)description
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLFunctionStitchingAttributeKernel;
  v6 = [(MTLFunctionStitchingAttributeKernel *)&v9 description];
  v10[0] = v4;
  v10[1] = @"kernel";
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end