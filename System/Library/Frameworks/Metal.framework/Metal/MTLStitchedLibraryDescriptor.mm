@interface MTLStitchedLibraryDescriptor
- (MTLStitchedLibraryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLStitchedLibraryDescriptor

- (MTLStitchedLibraryDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTLStitchedLibraryDescriptor;
  v2 = [(MTLStitchedLibraryDescriptor *)&v4 init];
  [(MTLStitchedLibraryDescriptor *)v2 setBinaryArchives:MEMORY[0x1E695E0F0]];
  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setFunctionGraphs:self->_functionGraphs];
  [v4 setFunctions:self->_functions];
  [v4 setBinaryArchives:self->_binaryArchives];
  [v4 setOptions:self->_options];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLStitchedLibraryDescriptor;
  [(MTLStitchedLibraryDescriptor *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  functionGraphs = self->_functionGraphs;
  v7 = [(NSArray *)functionGraphs countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(functionGraphs);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (v9)
        {
          [v9 appendString:v5];
        }

        else
        {
          v9 = objc_opt_new();
        }

        [v9 appendString:{objc_msgSend(v12, "formattedDescription:", description + 4)}];
      }

      v8 = [(NSArray *)functionGraphs countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = MEMORY[0x1E696AEC0];
  v19.receiver = self;
  v19.super_class = MTLStitchedLibraryDescriptor;
  v14 = [(MTLStitchedLibraryDescriptor *)&v19 description];
  v24[0] = v5;
  v24[1] = @"functionGraphs =";
  v15 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v15 = v9;
  }

  v24[2] = v15;
  v24[3] = v5;
  v24[4] = @"functions =";
  functions = self->_functions;
  if (!functions)
  {
    functions = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = functions;
  result = [v13 stringWithFormat:@"%@%@", v14, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 6), "componentsJoinedByString:", @" "];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

@end