@interface MTLStitchedLibraryDescriptorSPI
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLStitchedLibraryDescriptorSPI

- (id)formattedDescription:(unint64_t)description
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  functionGraphs = [(MTLStitchedLibraryDescriptor *)self functionGraphs];
  v7 = [(NSArray *)functionGraphs countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(functionGraphs);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
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

      v8 = [(NSArray *)functionGraphs countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  binaryArchives = [(MTLStitchedLibraryDescriptor *)self binaryArchives];
  v14 = [(NSArray *)binaryArchives countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(binaryArchives);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        if (v16)
        {
          [v16 appendString:v5];
        }

        else
        {
          v16 = objc_opt_new();
        }

        [v16 appendString:{objc_msgSend(v19, "formattedDescription:", description + 4)}];
      }

      v15 = [(NSArray *)binaryArchives countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v20 = MEMORY[0x1E696AEC0];
  v29.receiver = selfCopy;
  v29.super_class = MTLStitchedLibraryDescriptorSPI;
  v21 = [(MTLStitchedLibraryDescriptor *)&v29 description];
  v38[0] = v5;
  v38[1] = @"functionGraphs =";
  v22 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  v38[2] = v23;
  v38[3] = v5;
  v38[4] = @"functions =";
  functions = [(MTLStitchedLibraryDescriptor *)selfCopy functions];
  if (!functions)
  {
    functions = [MEMORY[0x1E695DFB0] null];
  }

  v38[5] = functions;
  v38[6] = v5;
  if (v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v22;
  }

  v38[7] = @"binaryArchives =";
  v38[8] = v25;
  result = [v20 stringWithFormat:@"%@%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v38, 9), "componentsJoinedByString:", @" "];
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

@end