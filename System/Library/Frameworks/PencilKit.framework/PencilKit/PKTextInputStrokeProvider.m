@interface PKTextInputStrokeProvider
- (BOOL)containsStrokeWithUUID:(id)a3;
- (BOOL)slicesWithIdentifiers:(id)a3 significantlyOverlapRect:(CGRect)a4;
- (CGPoint)centroidForSlicesWithIdentifiers:(id)a3;
- (CGPoint)startingPointForSlicesWithIdentifiers:(id)a3;
- (CGRect)boundsForSliceIdentifiers:(id)a3;
- (PKTextInputStrokeProvider)initWithDrawing:(id)a3;
- (id)strokesForSliceIdentifiers:(id)a3;
@end

@implementation PKTextInputStrokeProvider

- (PKTextInputStrokeProvider)initWithDrawing:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKTextInputStrokeProvider;
  v5 = [(PKStrokeProvider *)&v9 initWithDrawing:v4];
  if (v5)
  {
    ++strokeProviderVersionCounter;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    versionNumber = v5->_versionNumber;
    v5->_versionNumber = v6;
  }

  return v5;
}

- (CGRect)boundsForSliceIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(PKStrokeProvider *)self sliceForIdentifier:*(*(&v23 + 1) + 8 * v12), v23];
        v14 = v13;
        if (v13)
        {
          [v13 bounds];
          v32.origin.x = v15;
          v32.origin.y = v16;
          v32.size.width = v17;
          v32.size.height = v18;
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v30 = CGRectUnion(v29, v32);
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)centroidForSlicesWithIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(PKStrokeProvider *)self sliceForIdentifier:*(*(&v23 + 1) + 8 * i), v23];
        v13 = v12;
        if (v12)
        {
          [v12 bounds];
          x = v30.origin.x;
          y = v30.origin.y;
          width = v30.size.width;
          height = v30.size.height;
          MidX = CGRectGetMidX(v30);
          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          v10 = v10 + MidX;
          v9 = v9 + CGRectGetMidY(v31);
        }

        else
        {
          --v5;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  if (v5 < 1)
  {
    v19 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v19 = v10 / v5;
    v20 = v9 / v5;
  }

  v21 = v19;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)startingPointForSlicesWithIdentifiers:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4012000000;
  v25 = __Block_byref_object_copy__22;
  v26 = __Block_byref_object_dispose__22;
  v27 = "";
  v28 = *MEMORY[0x1E695EFF8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (!v7)
  {
    v12 = v5;
    goto LABEL_15;
  }

  v8 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      if (v6)
      {
        if ([(PKStrokeProvider *)self compareOrderOfStrokeWithIdentifier:v6 toStrokeWithIdentifier:*(*(&v18 + 1) + 8 * i)]== 1)
        {
          v11 = v10;

          v6 = v11;
        }
      }

      else
      {
        v6 = v10;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v29 count:16];
  }

  while (v7);

  if (v6)
  {
    v12 = [(PKStrokeProvider *)self sliceForIdentifier:v6];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__PKTextInputStrokeProvider_startingPointForSlicesWithIdentifiers___block_invoke;
    v17[3] = &unk_1E82D6A10;
    v17[4] = &v22;
    [v12 enumeratePointsWithDistanceStep:v17 usingBlock:1.0];
LABEL_15:
  }

  v13 = v23[6];
  v14 = v23[7];

  _Block_object_dispose(&v22, 8);
  v15 = v13;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

uint64_t __67__PKTextInputStrokeProvider_startingPointForSlicesWithIdentifiers___block_invoke(uint64_t result, _BYTE *a2, double a3, double a4)
{
  v4 = *(*(result + 32) + 8);
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  *a2 = 1;
  return result;
}

- (BOOL)slicesWithIdentifiers:(id)a3 significantlyOverlapRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v36 = *MEMORY[0x1E69E9840];
  v30 = a3;
  [(PKTextInputStrokeProvider *)self boundsForSliceIdentifiers:?];
  *r2 = x;
  v44.origin.x = x;
  v9 = y;
  v44.origin.y = y;
  v10 = width;
  v44.size.width = width;
  v11 = height;
  v44.size.height = height;
  if (CGRectIntersectsRect(v37, v44))
  {
    v12 = [v30 count];
    v33 = 0u;
    v34 = 0u;
    memset(&r2[1], 0, 32);
    v13 = v30;
    v14 = [v13 countByEnumeratingWithState:&r2[1] objects:v35 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = llround(v12 * 0.7);
      v31 = v12 - v17;
      v18 = *r2[3];
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*r2[3] != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = [(PKStrokeProvider *)self sliceForIdentifier:*(r2[2] + 8 * i)];
          [v20 bounds];
          v21 = v38.origin.x;
          v22 = v38.origin.y;
          v23 = v38.size.width;
          v24 = v38.size.height;
          if (CGRectGetHeight(v38) > 0.0)
          {
            v39.origin.x = v21;
            v39.origin.y = v22;
            v39.size.width = v23;
            v39.size.height = v24;
            if (CGRectGetWidth(v39) > 0.0)
            {
              v40.origin.x = v21;
              v40.origin.y = v22;
              v40.size.width = v23;
              v40.size.height = v24;
              *&v45.origin.x = r2[0];
              v45.origin.y = v9;
              v45.size.width = v10;
              v45.size.height = v11;
              v41 = CGRectIntersection(v40, v45);
              v25 = CGRectGetHeight(v41);
              v42.origin.x = v21;
              v42.origin.y = v22;
              v42.size.width = v23;
              v42.size.height = v24;
              v26 = CGRectGetHeight(v42);
              *&v43.origin.x = r2[0];
              v43.origin.y = v9;
              v43.size.width = v10;
              v43.size.height = v11;
              v27 = fmax(v25 / v26, v25 / CGRectGetHeight(v43));
              v28 = v27 >= 0.6;
              if (v27 < 0.6)
              {
                if (v15 >= v31)
                {
LABEL_18:

                  goto LABEL_19;
                }

                ++v15;
              }

              else if (++v16 >= v17)
              {
                goto LABEL_18;
              }
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&r2[1] objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0;
LABEL_19:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)containsStrokeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PKStrokeProvider *)self drawing];
  v6 = [v5 _visibleStrokeForIdentifier:v4];

  return v6 != 0;
}

- (id)strokesForSliceIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(PKStrokeProvider *)self sliceForIdentifier:*(*(&v13 + 1) + 8 * i), v13];
        v11 = [v10 stroke];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

@end