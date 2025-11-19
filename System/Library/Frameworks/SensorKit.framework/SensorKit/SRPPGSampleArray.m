@interface SRPPGSampleArray
- (SRPPGSampleArray)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
@end

@implementation SRPPGSampleArray

- (SRPPGSampleArray)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [objc_alloc(MEMORY[0x1E69A2B60]) initWithBinaryRepresentation:a3];
    if (v8)
    {
      v9 = v8;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v8 frameEnumerator];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [[SRPhotoplethysmogramSample alloc] initWithHAPPGFrame:*(*(&v19 + 1) + 8 * v14)];
            [v7 addObject:v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    v16 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
  }

  else
  {

    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

@end