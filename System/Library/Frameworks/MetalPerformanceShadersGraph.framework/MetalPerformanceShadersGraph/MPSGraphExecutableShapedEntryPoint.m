@interface MPSGraphExecutableShapedEntryPoint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (BOOL)isEqualToEntryPoint:(id)a3;
- (MPSGraphExecutableShapedEntryPoint)initWithEntryFunctionName:(id)a3 inputTypes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MPSGraphExecutableShapedEntryPoint

- (MPSGraphExecutableShapedEntryPoint)initWithEntryFunctionName:(id)a3 inputTypes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPSGraphExecutableShapedEntryPoint;
  v9 = [(MPSGraphExecutableShapedEntryPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryFunctionName, a3);
    objc_storeStrong(&v10->_shapedInputTypes, a4);
  }

  return v10;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MPSGraphExecutableShapedEntryPoint *)self isEqual:v4];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {

    return 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MPSGraphExecutableShapedEntryPoint *)self isEqualToEntryPoint:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToEntryPoint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(MPSGraphExecutableShapedEntryPoint *)self entryFunctionName];
    v6 = [(MPSGraphExecutableShapedEntryPoint *)v4 entryFunctionName];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [(MPSGraphExecutableShapedEntryPoint *)self shapedInputTypes];
      v9 = [(MPSGraphExecutableShapedEntryPoint *)v4 shapedInputTypes];
      v10 = [v8 isEqualToArray:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MPSGraphExecutableShapedEntryPoint alloc];
  v6 = [(NSString *)self->_entryFunctionName copyWithZone:a3];
  entryFunctionName = v5->_entryFunctionName;
  v5->_entryFunctionName = v6;

  v8 = [(NSArray *)self->_shapedInputTypes copyWithZone:a3];
  shapedInputTypes = v5->_shapedInputTypes;
  v5->_shapedInputTypes = v8;

  return v5;
}

- (id)description
{
  shapedInputTypes = self->_shapedInputTypes;
  if (shapedInputTypes)
  {
    v4 = @"None";
    if ([(NSArray *)shapedInputTypes count])
    {
      v5 = [&stru_1F5B58250 mutableCopy];
      v6 = self->_shapedInputTypes;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __49__MPSGraphExecutableShapedEntryPoint_description__block_invoke;
      v13 = &unk_1E86D4F10;
      v7 = v5;
      v14 = v7;
      v15 = self;
      [(NSArray *)v6 enumerateObjectsUsingBlock:&v10];
      v4 = v7;
    }
  }

  else
  {
    v4 = @"None";
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entry point for function %@ with input types: %@", self->_entryFunctionName, v4, v10, v11, v12, v13];

  return v8;
}

void __49__MPSGraphExecutableShapedEntryPoint_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AEC0];
  v13 = v5;
  [v5 dataType];
  v7 = [v6 stringWithFormat:@"%s", MPSGetDataTypeName()];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v13 shape];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [v9 stringWithFormat:@"(dims: %@ type: %@)", v11, v7];
  [v8 appendString:v12];

  if ([*(*(a1 + 40) + 16) count] - 1 != a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }
}

@end