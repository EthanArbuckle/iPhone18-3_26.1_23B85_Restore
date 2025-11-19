@interface UIView(MKAdditions)
+ (id)_mapkit_currentAnimationTimingFunction;
+ (uint64_t)_mapkit_shouldAdoptImplicitAnimationParameters;
- (BOOL)_mapkit_hasPointerInteraction;
- (BOOL)_mapkit_isDarkModeEnabled;
- (double)_mapkit_translateRect:()MKAdditions ifNeededFromSingleEdge:;
- (double)_mapkit_userInterfaceOnlySafeAreaInsets;
- (id)_mapkit_currentPointerInteraction;
- (void)_mapkit_addPointerInteraction;
- (void)_mapkit_addPointerInteractionWithDelegate:()MKAdditions;
- (void)_mapkit_removePointerInteraction;
@end

@implementation UIView(MKAdditions)

+ (uint64_t)_mapkit_shouldAdoptImplicitAnimationParameters
{
  result = [MEMORY[0x1E69DD250] _isInAnimationBlock];
  if (result)
  {
    v1 = MEMORY[0x1E69DD250];

    return [v1 areAnimationsEnabled];
  }

  return result;
}

+ (id)_mapkit_currentAnimationTimingFunction
{
  v0 = [MEMORY[0x1E69DD250] _currentAnimationCurve];
  if (v0 > 3)
  {
    v1 = MEMORY[0x1E6979EA0];
  }

  else
  {
    v1 = qword_1E76C6880[v0];
  }

  v2 = [MEMORY[0x1E69793D0] functionWithName:*v1];

  return v2;
}

- (void)_mapkit_removePointerInteraction
{
  v2 = [a1 _mapkit_currentPointerInteraction];
  if (v2)
  {
    v3 = v2;
    [a1 removeInteraction:v2];
    v2 = v3;
  }
}

- (void)_mapkit_addPointerInteractionWithDelegate:()MKAdditions
{
  v4 = MEMORY[0x1E69DCDB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithDelegate:v5];

  [a1 addInteraction:v6];
}

- (void)_mapkit_addPointerInteraction
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCDB0]);
  [a1 addInteraction:v2];
}

- (id)_mapkit_currentPointerInteraction
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 interactions];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (BOOL)_mapkit_hasPointerInteraction
{
  v1 = [a1 _mapkit_currentPointerInteraction];
  v2 = v1 != 0;

  return v2;
}

- (double)_mapkit_translateRect:()MKAdditions ifNeededFromSingleEdge:
{
  [a1 bounds];
  v49 = v14;
  v50 = v13;
  v51 = v15;
  v52 = v16;
  v17 = [a1 window];
  [v17 safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [a1 safeAreaInsets];
  if (v19 >= v26)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v26;
  }

  if (v21 >= v27)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v27;
  }

  if (v23 >= v28)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v28;
  }

  if (v25 >= v29)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v29;
  }

  if (a7 > 3)
  {
    if (a7 != 4)
    {
      if (a7 == 8)
      {
        v34 = a1;
        v35 = a2;
        v36 = a3;
        v37 = a4;
        v38 = a5;
        v39 = 5;
        goto LABEL_20;
      }

LABEL_27:
      v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Only one edge can be specified." userInfo:0];
      objc_exception_throw(v48);
    }

LABEL_21:
    [a1 _inscribedRectInBoundingPathByInsettingRect:5 onEdges:0 withOptions:{a2, a3, a4, a5}];
    v42 = a5;
    goto LABEL_22;
  }

  if (a7 == 1)
  {
    goto LABEL_21;
  }

  if (a7 != 2)
  {
    goto LABEL_27;
  }

  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = 10;
LABEL_20:
  [v34 _inscribedRectInBoundingPathByInsettingRect:v39 onEdges:0 withOptions:{v35, v36, v37, v38}];
  v43 = a4;
LABEL_22:
  v54.origin.x = v50 + v31;
  v54.origin.y = v49 + v30;
  v54.size.width = v51 - (v31 + v33);
  v54.size.height = v52 - (v30 + v32);
  v53 = CGRectIntersection(*&v40, v54);
  x = v53.origin.x;
  width = v53.size.width;
  height = v53.size.height;
  if (!CGRectIsNull(v53) && (width < a4 || height < a5))
  {
    return *MEMORY[0x1E695F050];
  }

  return x;
}

- (double)_mapkit_userInterfaceOnlySafeAreaInsets
{
  v1 = a1;
  v2 = v1;
  while (1)
  {
    v3 = [MEMORY[0x1E69DD258] viewControllerForView:v2];
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      v5 = 0.0;
      goto LABEL_24;
    }
  }

  v4 = v3;
  v6 = [v3 navigationController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 navigationBar];
    v9 = v8;
    v10 = 0.0;
    v5 = 0.0;
    if (v8 && ([v8 isHidden] & 1) == 0)
    {
      [v9 bounds];
      [v1 convertRect:v9 fromView:?];
      MaxY = CGRectGetMaxY(v34);
      if (MaxY >= 0.0)
      {
        v5 = MaxY;
      }

      else
      {
        v5 = 0.0;
      }
    }

    v12 = [v7 toolbar];
    v13 = v12;
    if (v12)
    {
      if (([v12 isHidden] & 1) == 0)
      {
        [v13 bounds];
        [v1 convertRect:v13 fromView:?];
        MinY = CGRectGetMinY(v35);
        [v1 bounds];
        if (CGRectGetMaxY(v36) >= MinY)
        {
          [v1 bounds];
          v10 = CGRectGetMaxY(v37) - MinY;
        }
      }
    }
  }

  else
  {
    v10 = 0.0;
    v5 = 0.0;
  }

  v15 = [v4 tabBarController];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 tabBar];
    v18 = v17;
    if (v17)
    {
      if (([v17 isHidden] & 1) == 0)
      {
        [v18 bounds];
        [v1 convertRect:v18 fromView:?];
        v19 = CGRectGetMinY(v38);
        [v1 bounds];
        if (v10 <= CGRectGetMaxY(v39) - v19)
        {
          [v1 bounds];
          CGRectGetMaxY(v40);
        }
      }
    }
  }

LABEL_24:
  v20 = [v1 window];
  v21 = [v20 windowScene];
  v22 = [v21 statusBarManager];
  [v22 statusBarFrame];
  [v1 convertRect:0 fromView:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (v30 > 0.0)
  {
    v31 = [v1 window];
    [v1 convertRect:v31 fromView:{v24, v26, v28, v30}];
    v32 = CGRectGetMaxY(v41);

    if (v5 <= v32)
    {
      v5 = v32;
    }
  }

  return v5;
}

- (BOOL)_mapkit_isDarkModeEnabled
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  return v2;
}

@end