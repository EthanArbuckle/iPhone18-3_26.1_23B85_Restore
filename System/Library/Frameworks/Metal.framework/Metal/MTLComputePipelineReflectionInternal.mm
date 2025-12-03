@interface MTLComputePipelineReflectionInternal
- (id)bindings;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers;
- (void)setPerformanceStatistics:(id)statistics;
@end

@implementation MTLComputePipelineReflectionInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLComputePipelineReflectionInternal;
  [(MTLComputePipelineReflectionInternal *)&v3 dealloc];
}

- (void)setPerformanceStatistics:(id)statistics
{
  statisticsCopy = statistics;

  self->_performanceStatistics = statistics;
}

- (void)setConstantSamplerUniqueIdentifiers:(id)identifiers
{
  constantSamplerDescriptors = self->_constantSamplerDescriptors;
  if (constantSamplerDescriptors != identifiers)
  {

    self->_constantSamplerDescriptors = identifiers;
  }
}

- (id)bindings
{
  if (self[1].super.super.isa)
  {
    return self[1].super.super.isa;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v27[0] = v5;
  v27[1] = @"Compute Bindings =";
  v27[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[objc_class count](self[1].super.super.isa, "count")}];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 3)}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  obj = self[1].super.super.isa;
  v8 = [(objc_class *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        isArgument = [v13 isArgument];
        v15 = @"Global";
        if (isArgument)
        {
          v15 = @"Argument";
        }

        v25[0] = v6;
        v25[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v15, v10];
        v25[2] = [v13 formattedDescription:description + 8];
        [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 3)}];
        v10 = (v10 + 1);
      }

      v9 = [(objc_class *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v20.receiver = selfCopy;
  v20.super_class = MTLComputePipelineReflectionInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLComputePipelineReflectionInternal description](&v20, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

@end