@interface UIScreen(Orientation)
- (uint64_t)currentOrientation;
@end

@implementation UIScreen(Orientation)

- (uint64_t)currentOrientation
{
  v2 = [a1 coordinateSpace];
  v3 = [a1 fixedCoordinateSpace];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [v2 convertPoint:v3 toCoordinateSpace:{*MEMORY[0x277CBF348], v5}];
  v7 = v6;
  v9 = v8;

  if (v7 == v4 && v9 == v5)
  {
    return 1;
  }

  if (v7 != 0.0 && v9 != 0.0)
  {
    return 2;
  }

  if (v7 == 0.0 && v9 != 0.0)
  {
    return 4;
  }

  if (v9 != 0.0 || v7 == 0.0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

@end