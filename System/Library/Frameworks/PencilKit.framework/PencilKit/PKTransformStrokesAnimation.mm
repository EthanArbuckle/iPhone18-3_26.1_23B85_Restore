@interface PKTransformStrokesAnimation
- (id)initWithStrokes:(double)a3 startTime:(double)a4 duration:(double)a5 destinationFrame:(double)a6 fadeOutDuration:(double)a7;
- (void)newStrokesAtTime:(uint64_t)a1;
@end

@implementation PKTransformStrokesAnimation

- (id)initWithStrokes:(double)a3 startTime:(double)a4 duration:(double)a5 destinationFrame:(double)a6 fadeOutDuration:(double)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (a1)
  {
    v38.receiver = a1;
    v38.super_class = PKTransformStrokesAnimation;
    v19 = objc_msgSendSuper2(&v38, sel_init);
    a1 = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 1, a2);
      *(a1 + 2) = a3;
      *(a1 + 3) = a4;
      *(a1 + 9) = a5;
      *(a1 + 10) = a6;
      *(a1 + 11) = a7;
      *(a1 + 12) = a8;
      *(a1 + 4) = a9;
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v24 = v18;
      v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v35;
        do
        {
          v28 = 0;
          do
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v34 + 1) + 8 * v28) renderBounds];
            v44.origin.x = v29;
            v44.origin.y = v30;
            v44.size.width = v31;
            v44.size.height = v32;
            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            v42 = CGRectUnion(v41, v44);
            x = v42.origin.x;
            y = v42.origin.y;
            width = v42.size.width;
            height = v42.size.height;
            ++v28;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v26);
      }

      *(a1 + 5) = x;
      *(a1 + 6) = y;
      *(a1 + 7) = width;
      *(a1 + 8) = height;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      *(a1 + 13) = CGRectUnion(v43, *(a1 + 9));
    }
  }

  return a1;
}

- (void)newStrokesAtTime:(uint64_t)a1
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = a2 - *(a1 + 16);
  v5 = v4 / v3;
  if (v4 / v3 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v5 * v5 * (v5 * -2.0 + 3.0);
  v33 = 0u;
  v34 = 0u;
  v7 = *(a1 + 40);
  if (*(a1 + 32) >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v32 = 0uLL;
  [PKMetalUtility transformConvertingRect:v7 toRect:*(a1 + 48) percent:*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *&v6];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 8), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 8);
  v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = fmax(1.0 - v4 / v8, 0.0);
    v12 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 ink];
        v16 = [v15 color];

        [v16 alphaComponent];
        v18 = [v16 colorWithAlphaComponent:v11 * v17];
        v19 = [v14 mutableCopy];
        v27[0] = v32;
        v27[1] = v33;
        v27[2] = v34;
        [v19 _applyTransform:v27];
        v20 = [v14 ink];
        v21 = [v20 identifier];
        v22 = [v14 ink];
        [v22 weight];
        v23 = [PKInk inkWithIdentifier:v21 color:v18 weight:?];
        [v19 setInk:v23];

        [v26 addObject:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  return v26;
}

@end