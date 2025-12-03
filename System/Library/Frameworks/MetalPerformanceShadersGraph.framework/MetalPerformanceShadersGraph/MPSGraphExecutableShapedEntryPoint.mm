@interface MPSGraphExecutableShapedEntryPoint
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualTo:(id)to;
- (BOOL)isEqualToEntryPoint:(id)point;
- (MPSGraphExecutableShapedEntryPoint)initWithEntryFunctionName:(id)name inputTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MPSGraphExecutableShapedEntryPoint

- (MPSGraphExecutableShapedEntryPoint)initWithEntryFunctionName:(id)name inputTypes:(id)types
{
  nameCopy = name;
  typesCopy = types;
  v12.receiver = self;
  v12.super_class = MPSGraphExecutableShapedEntryPoint;
  v9 = [(MPSGraphExecutableShapedEntryPoint *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryFunctionName, name);
    objc_storeStrong(&v10->_shapedInputTypes, types);
  }

  return v10;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v5 = [(MPSGraphExecutableShapedEntryPoint *)self isEqual:toCopy];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MPSGraphExecutableShapedEntryPoint *)self isEqualToEntryPoint:v5];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (BOOL)isEqualToEntryPoint:(id)point
{
  pointCopy = point;
  if (self == pointCopy)
  {
    v10 = 1;
  }

  else
  {
    entryFunctionName = [(MPSGraphExecutableShapedEntryPoint *)self entryFunctionName];
    entryFunctionName2 = [(MPSGraphExecutableShapedEntryPoint *)pointCopy entryFunctionName];
    v7 = [entryFunctionName isEqualToString:entryFunctionName2];

    if (v7)
    {
      shapedInputTypes = [(MPSGraphExecutableShapedEntryPoint *)self shapedInputTypes];
      shapedInputTypes2 = [(MPSGraphExecutableShapedEntryPoint *)pointCopy shapedInputTypes];
      v10 = [shapedInputTypes isEqualToArray:shapedInputTypes2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [MPSGraphExecutableShapedEntryPoint alloc];
  v6 = [(NSString *)self->_entryFunctionName copyWithZone:zone];
  entryFunctionName = v5->_entryFunctionName;
  v5->_entryFunctionName = v6;

  v8 = [(NSArray *)self->_shapedInputTypes copyWithZone:zone];
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
      selfCopy = self;
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