@interface BCBookSection
+ (BCBookSection)bookSectionWithStartPosition:(id)position endPosition:(id)endPosition;
- (BOOL)intersects:(id)intersects;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)compareWithSection:(id)section;
@end

@implementation BCBookSection

+ (BCBookSection)bookSectionWithStartPosition:(id)position endPosition:(id)endPosition
{
  endPositionCopy = endPosition;
  positionCopy = position;
  v7 = objc_alloc_init(BCBookSection);
  [(BCBookSection *)v7 setStartPosition:positionCopy];

  [(BCBookSection *)v7 setEndPosition:endPositionCopy];

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startPosition = [(BCBookSection *)self startPosition];
  v6 = [startPosition compare:compareCopy];

  endPosition = [(BCBookSection *)self endPosition];
  v8 = [endPosition compare:compareCopy];

  if (v8 == -1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (int64_t)compareWithSection:(id)section
{
  sectionCopy = section;
  startPosition = [(BCBookSection *)self startPosition];
  startPosition2 = [sectionCopy startPosition];

  v7 = [startPosition compare:startPosition2];
  return v7;
}

- (BOOL)intersects:(id)intersects
{
  if (!intersects)
  {
    return 0;
  }

  intersectsCopy = intersects;
  startPosition = [(BCBookSection *)self startPosition];
  endPosition = [intersectsCopy endPosition];
  v7 = [startPosition compare:endPosition];

  endPosition2 = [(BCBookSection *)self endPosition];
  startPosition2 = [intersectsCopy startPosition];

  v10 = [endPosition2 compare:startPosition2];
  return v7 != &dword_0 + 1 && v10 + 1 != 0;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"BCBookSection\n"];
  startPosition = [(BCBookSection *)self startPosition];
  [v3 appendFormat:@"        startPosition . . . . : %@\n", startPosition];

  endPosition = [(BCBookSection *)self endPosition];
  [v3 appendFormat:@"        endPosition . . . . . : %@", endPosition];

  return v3;
}

@end