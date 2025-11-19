@interface UIView(MKCrossPlatformOperations)
+ (void)_mapkit_animateFromCurrentStateWithDuration:()MKCrossPlatformOperations animations:completion:;
+ (void)_mapkit_animateWithDuration:()MKCrossPlatformOperations animations:completion:;
- (double)_mapkit_YCoordinateAtDistance:()MKCrossPlatformOperations inDirection:fromYCoordinate:;
- (id)_mapkit_constraintsPinningSubviewToBounds:()MKCrossPlatformOperations;
- (uint64_t)_mapkit_YCoordinate:()MKCrossPlatformOperations liesInDirection:startingFromYCoordinate:;
- (uint64_t)_mapkit_YCoordinateAtDistance:()MKCrossPlatformOperations inDirection:fromEdge:;
@end

@implementation UIView(MKCrossPlatformOperations)

- (uint64_t)_mapkit_YCoordinate:()MKCrossPlatformOperations liesInDirection:startingFromYCoordinate:
{
  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return (a5 != 0) ^ (a1 < a2);
  }
}

- (double)_mapkit_YCoordinateAtDistance:()MKCrossPlatformOperations inDirection:fromYCoordinate:
{
  if (a5 != 1)
  {
    a1 = -a1;
  }

  return a1 + a2;
}

- (uint64_t)_mapkit_YCoordinateAtDistance:()MKCrossPlatformOperations inDirection:fromEdge:
{
  [a1 bounds];
  if (a5 == 3 || a5 == 1)
  {
    MaxY = CGRectGetMaxY(*&v9);
  }

  else
  {
    v13 = 0.0;
    if (a5)
    {
      goto LABEL_7;
    }

    MaxY = CGRectGetMinY(*&v9);
  }

  v13 = MaxY;
LABEL_7:

  return [a1 _mapkit_YCoordinateAtDistance:a4 inDirection:a2 fromYCoordinate:v13];
}

- (id)_mapkit_constraintsPinningSubviewToBounds:()MKCrossPlatformOperations
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = [a1 leadingAnchor];
  v17 = [v4 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v16;
  v5 = [a1 trailingAnchor];
  v6 = [v4 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [a1 topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v19[2] = v10;
  v11 = [a1 bottomAnchor];
  v12 = [v4 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  return v14;
}

+ (void)_mapkit_animateFromCurrentStateWithDuration:()MKCrossPlatformOperations animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__UIView_MKCrossPlatformOperations___mapkit_animateFromCurrentStateWithDuration_animations_completion___block_invoke;
  v10[3] = &unk_1E76C97C8;
  v12 = a2;
  v11 = v8;
  v9 = v8;
  [a1 animateWithDuration:4 delay:v10 options:a5 animations:a2 completion:0.0];
}

+ (void)_mapkit_animateWithDuration:()MKCrossPlatformOperations animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__UIView_MKCrossPlatformOperations___mapkit_animateWithDuration_animations_completion___block_invoke;
  v10[3] = &unk_1E76C97C8;
  v12 = a2;
  v11 = v8;
  v9 = v8;
  [a1 animateWithDuration:v10 animations:a5 completion:a2];
}

@end