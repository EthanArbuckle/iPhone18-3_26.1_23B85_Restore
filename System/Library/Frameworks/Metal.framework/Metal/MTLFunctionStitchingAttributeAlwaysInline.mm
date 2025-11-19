@interface MTLFunctionStitchingAttributeAlwaysInline
- (id)formattedDescription:(unint64_t)a3;
@end

@implementation MTLFunctionStitchingAttributeAlwaysInline

- (id)formattedDescription:(unint64_t)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLFunctionStitchingAttributeAlwaysInline;
  v6 = [(MTLFunctionStitchingAttributeAlwaysInline *)&v9 description];
  v10[0] = v4;
  v10[1] = @"alwaysInline";
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end