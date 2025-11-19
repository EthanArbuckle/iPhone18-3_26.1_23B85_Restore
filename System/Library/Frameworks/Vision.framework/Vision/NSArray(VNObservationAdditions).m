@interface NSArray(VNObservationAdditions)
- (id)VNObservationsWithOriginatingRequestSpecifier:()VNObservationAdditions;
@end

@implementation NSArray(VNObservationAdditions)

- (id)VNObservationsWithOriginatingRequestSpecifier:()VNObservationAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 observationWithOriginatingRequestSpecifier:{v4, v14}];
          [v5 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v5 copy];

  return v12;
}

@end