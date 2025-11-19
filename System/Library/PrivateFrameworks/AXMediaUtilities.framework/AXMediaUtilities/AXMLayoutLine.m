@interface AXMLayoutLine
+ (id)line:(id)a3;
- (CGRect)frame;
- (CGRect)normalizedFrame;
- (id)recognizedTextFeatures;
@end

@implementation AXMLayoutLine

+ (id)line:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMLayoutLine);
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v3];

  sequences = v4->_sequences;
  v4->_sequences = v5;

  return v4;
}

- (CGRect)frame
{
  v3 = objc_opt_class();
  sequences = self->_sequences;

  [v3 boundingFrameForItems:sequences];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)normalizedFrame
{
  v3 = objc_opt_class();
  sequences = self->_sequences;

  [v3 normalizedBoundingFrameForItems:sequences];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)recognizedTextFeatures
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sequences;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) feature];
        v10 = [v9 recognizedTextFeatures];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end