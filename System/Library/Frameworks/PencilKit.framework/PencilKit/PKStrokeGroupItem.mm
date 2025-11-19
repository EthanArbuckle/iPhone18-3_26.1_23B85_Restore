@interface PKStrokeGroupItem
- (void)refreshStrokesInDrawing:(id *)a1;
@end

@implementation PKStrokeGroupItem

- (void)refreshStrokesInDrawing:(id *)a1
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = a1[2];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = a1[2];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) _strokeUUID];
          v12 = [v3 _visibleStrokeForIdentifier:v11];

          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [v6 count];
    if (v13 == [a1[2] count])
    {
      objc_setProperty_nonatomic_copy(a1, v14, v6, 16);
    }
  }
}

@end