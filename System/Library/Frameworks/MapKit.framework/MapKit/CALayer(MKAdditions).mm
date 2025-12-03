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
  null = [MEMORY[0x1E695DFB0] null];
  v10[0] = null;
  v9[1] = @"position";
  null2 = [MEMORY[0x1E695DFB0] null];
  v10[1] = null2;
  v9[2] = @"cornerRadius";
  null3 = [MEMORY[0x1E695DFB0] null];
  v10[2] = null3;
  v9[3] = @"transform";
  null4 = [MEMORY[0x1E695DFB0] null];
  v10[3] = null4;
  v9[4] = @"hidden";
  null5 = [MEMORY[0x1E695DFB0] null];
  v10[4] = null5;
  v9[5] = @"shadowOpacity";
  null6 = [MEMORY[0x1E695DFB0] null];
  v10[5] = null6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  [self setActions:v8];
}

- (void)currentLayer
{
  selfCopy = self;
  presentationLayer = [self presentationLayer];
  v3 = presentationLayer;
  if (presentationLayer)
  {
    selfCopy = presentationLayer;
  }

  v4 = selfCopy;

  return selfCopy;
}

- (void)_mapkit_addAnimation:()MKAdditions forKey:completion:
{
  v8 = a4;
  v10 = a3;
  v9 = [MKCALayerCompletionDelegate delegateWithCompletion:a5];
  [v10 setDelegate:v9];

  [self addAnimation:v10 forKey:v8];
}

- (void)_mapkit_removeAnimationImmediatelyForKey:()MKAdditions
{
  v9 = a3;
  v4 = [self animationForKey:?];
  v5 = v4;
  if (v4)
  {
    delegate = [v4 delegate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      completion = [delegate completion];
      v8 = [completion copy];

      [delegate setCompletion:0];
      [self removeAnimationForKey:v9];
      if (v8)
      {
        v8[2](v8, 0);
      }
    }

    else
    {
      [self removeAnimationForKey:v9];
    }
  }
}

- (id)_mapKit_mapLayer
{
  if (!_mapKit_mapLayer_mapViewClass)
  {
    _mapKit_mapLayer_mapViewClass = objc_opt_class();
  }

  selfCopy = self;
  do
  {
    v3 = CALayerGetDelegate();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    v5 = CALayerGetSuperlayer();

    selfCopy = v5;
  }

  while (v5);

  return selfCopy;
}

- (uint64_t)getPresentationValue:()MKAdditions forValueKey:animationKey:removeAnimation:
{
  v10 = a4;
  v11 = a5;
  presentationLayer = [self presentationLayer];
  if (presentationLayer && (v13 = presentationLayer, [self animationForKey:v11], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    presentationLayer2 = [self presentationLayer];
    if ([v10 isEqualToString:@"doublePosition"])
    {
      [presentationLayer2 doublePosition];
      v18 = [objc_alloc(MEMORY[0x1E696B098]) _mapkit_initWithCADoublePoint:{v16, v17}];
    }

    else if ([v10 isEqualToString:@"doubleBounds"])
    {
      [presentationLayer2 doubleBounds];
      v18 = [objc_alloc(MEMORY[0x1E696B098]) _mapkit_initWithCADoubleRect:{v20, v21, v22, v23}];
    }

    else
    {
      v18 = [presentationLayer2 valueForKey:v10];
    }

    v24 = v18;
    if (a6)
    {
      [self removeAnimationForKey:v11];
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