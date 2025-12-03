@interface VOTTextMovementManager
- (NSString)localizedSegmentName;
- (NSString)localizedSegmentNameForSelection;
- (VOTTextMovementManager)initWithSegments:(id)segments;
- (id)_localizedStringForKey:(id)key;
- (int64_t)segment;
- (void)nextSegment;
- (void)previousSegment;
- (void)setSegment:(int64_t)segment;
@end

@implementation VOTTextMovementManager

- (VOTTextMovementManager)initWithSegments:(id)segments
{
  segmentsCopy = segments;
  v10.receiver = self;
  v10.super_class = VOTTextMovementManager;
  v5 = [(VOTTextMovementManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_segmentIndex = 0;
    if ([segmentsCopy count])
    {
      v7 = [segmentsCopy copy];
    }

    else
    {
      v7 = &off_1001DBAC8;
    }

    segments = v6->_segments;
    v6->_segments = v7;
  }

  return v6;
}

- (int64_t)segment
{
  segments = [(VOTTextMovementManager *)self segments];
  v4 = [segments objectAtIndexedSubscript:{-[VOTTextMovementManager segmentIndex](self, "segmentIndex")}];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (void)setSegment:(int64_t)segment
{
  segments = [(VOTTextMovementManager *)self segments];
  v6 = [NSNumber numberWithInteger:segment];
  v7 = [segments indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [(VOTTextMovementManager *)self setSegmentIndex:v8];
}

- (NSString)localizedSegmentNameForSelection
{
  v3 = [(VOTTextMovementManager *)self segment]- 1;
  if (v3 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1001CA8B8[v3];
  }

  return [(VOTTextMovementManager *)self _localizedStringForKey:v4];
}

- (NSString)localizedSegmentName
{
  v3 = [(VOTTextMovementManager *)self segment]- 1;
  if (v3 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1001CA8F0[v3];
  }

  return [(VOTTextMovementManager *)self _localizedStringForKey:v4];
}

- (void)nextSegment
{
  v3 = [(VOTTextMovementManager *)self segmentIndex]+ 1;
  segments = [(VOTTextMovementManager *)self segments];
  -[VOTTextMovementManager setSegmentIndex:](self, "setSegmentIndex:", v3 % [segments count]);
}

- (void)previousSegment
{
  v3 = [(VOTTextMovementManager *)self segmentIndex]- 1;
  if (v3 < 0)
  {
    segments = [(VOTTextMovementManager *)self segments];
    -[VOTTextMovementManager setSegmentIndex:](self, "setSegmentIndex:", [segments count] - 1);
  }

  else
  {

    [(VOTTextMovementManager *)self setSegmentIndex:v3];
  }
}

- (id)_localizedStringForKey:(id)key
{
  v3 = VOTSharedWorkspace;
  keyCopy = key;
  selectedLanguage = [v3 selectedLanguage];
  v6 = sub_1000511CC(off_1001FDDD0, keyCopy, selectedLanguage);

  return v6;
}

@end