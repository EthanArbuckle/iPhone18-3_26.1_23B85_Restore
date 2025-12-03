@interface MTLBuiltInArgument
- (BOOL)isEqual:(id)equal;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLBuiltInArgument

- (id)formattedDescription:(unint64_t)description
{
  v11[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLBuiltInArgument;
  v7 = [(MTLBindingInternal *)&v10 formattedDescription:description];
  v11[0] = v5;
  v11[1] = @"BuiltInArgumentType =";
  v11[2] = MTLBuiltInArgumentTypeString(self->_builtInType);
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 3), "componentsJoinedByString:", @" "];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_builtInType != *(equal + 84) || self->_builtInDataType != *(equal + 85))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLBuiltInArgument;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end