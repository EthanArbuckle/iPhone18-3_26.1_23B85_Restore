@interface UISegmentedControl(MKCrossPlatformOperations)
- (uint64_t)_mapkit_selectedSegmentIndex;
- (uint64_t)_mapkit_setSelectedSegmentIndex:()MKCrossPlatformOperations;
- (void)_mapkit_setTitle:()MKCrossPlatformOperations forSegmentAtIndex:insertIfNeeded:;
@end

@implementation UISegmentedControl(MKCrossPlatformOperations)

- (void)_mapkit_setTitle:()MKCrossPlatformOperations forSegmentAtIndex:insertIfNeeded:
{
  v8 = a3;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if ([self numberOfSegments] <= a4 && a5)
    {
      [self insertSegmentWithTitle:v9 atIndex:a4 animated:0];
    }

    else
    {
      [self setTitle:v9 forSegmentAtIndex:a4];
    }

    v8 = v9;
  }
}

- (uint64_t)_mapkit_setSelectedSegmentIndex:()MKCrossPlatformOperations
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL || (v4 = a3, [self numberOfSegments] <= a3))
  {
    v4 = -1;
  }

  return [self setSelectedSegmentIndex:v4];
}

- (uint64_t)_mapkit_selectedSegmentIndex
{
  result = [self selectedSegmentIndex];
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end