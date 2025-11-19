@interface CALayer(MKAdditions)
- (id)_mapKit_mapLayer;
- (uint64_t)getPresentationValue:()MKAdditions forValueKey:animationKey:removeAnimation:;
- (void)_mapkit_addAnimation:()MKAdditions forKey:completion:;
- (void)_mapkit_removeAnimationImmediatelyForKey:()MKAdditions;
- (void)_mapkit_setActionsToRemoveDefaultImplicitActions;
- (void)currentLayer;
@end

@implementation CALayer(MKAdditions)

- (void)_mapkit_setActionsToRemoveDefaultImplicitActions
{
  v10[6] = *MEMORY[0x1E69E9840];
  v9[0] = @"bounds";
  v2 = [MEMORY[0x1E695DFB0] null];
  v10[0] = v2;
  v9[1] = @"position";
  v3 = [MEMORY[0x1E695DFB0] null];
  v10[1] = v3;
  v9[2] = @"cornerRadius";
  v4 = [MEMORY[0x1E695DFB0] null];
  v10[2] = v4;
  v9[3] = @"transform";
  v5 = [MEMORY[0x1E695DFB0] null];
  v10[3] = v5;
  v9[4] = @"hidden";
  v6 = [MEMORY[0x1E695DFB0] null];
  v10[4] = v6;
  v9[5] = @"shadowOpacity";
  v7 = [MEMORY[0x1E695DFB0] null];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  [a1 setActions:v8];
}

- (void)currentLayer
{
  v1 = a1;
  v2 = [a1 presentationLayer];
  v3 = v2;
  if (v2)
  {
    v1 = v2;
  }

  v4 = v1;

  return v1;
}

- (void)_mapkit_addAnimation:()MKAdditions forKey:completion:
{
  v8 = a4;
  v10 = a3;
  v9 = [MKCALayerCompletionDelegate delegateWithCompletion:a5];
  [v10 setDelegate:v9];

  [a1 addAnimation:v10 forKey:v8];
}

- (void)_mapkit_removeAnimationImmediatelyForKey:()MKAdditions
{
  v9 = a3;
  v4 = [a1 animationForKey:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 completion];
      v8 = [v7 copy];

      [v6 setCompletion:0];
      [a1 removeAnimationForKey:v9];
      if (v8)
      {
        v8[2](v8, 0);
      }
    }

    else
    {
      [a1 removeAnimationForKey:v9];
    }
  }
}

- (id)_mapKit_mapLayer
{
  if (!_mapKit_mapLayer_mapViewClass)
  {
    _mapKit_mapLayer_mapViewClass = objc_opt_class();
  }

  v2 = a1;
  do
  {
    v3 = CALayerGetDelegate();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    v5 = CALayerGetSuperlayer();

    v2 = v5;
  }

  while (v5);

  return v2;
}

- (uint64_t)getPresentationValue:()MKAdditions forValueKey:animationKey:removeAnimation:
{
  v10 = a4;
  v11 = a5;
  v12 = [a1 presentationLayer];
  if (v12 && (v13 = v12, [a1 animationForKey:v11], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = [a1 presentationLayer];
    if ([v10 isEqualToString:@"doublePosition"])
    {
      [v15 doublePosition];
      v18 = [objc_alloc(MEMORY[0x1E696B098]) _mapkit_initWithCADoublePoint:{v16, v17}];
    }

    else if ([v10 isEqualToString:@"doubleBounds"])
    {
      [v15 doubleBounds];
      v18 = [objc_alloc(MEMORY[0x1E696B098]) _mapkit_initWithCADoubleRect:{v20, v21, v22, v23}];
    }

    else
    {
      v18 = [v15 valueForKey:v10];
    }

    v24 = v18;
    if (a6)
    {
      [a1 removeAnimationForKey:v11];
    }

    if (a3)
    {
      v25 = v24;
      *a3 = v24;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end