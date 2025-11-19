@interface VOTTextMovementManager
- (NSString)localizedSegmentName;
- (NSString)localizedSegmentNameForSelection;
- (VOTTextMovementManager)initWithSegments:(id)a3;
- (id)_localizedStringForKey:(id)a3;
- (int64_t)segment;
- (void)nextSegment;
- (void)previousSegment;
- (void)setSegment:(int64_t)a3;
@end

@implementation VOTTextMovementManager

- (VOTTextMovementManager)initWithSegments:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VOTTextMovementManager;
  v5 = [(VOTTextMovementManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_segmentIndex = 0;
    if ([v4 count])
    {
      v7 = [v4 copy];
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
  v3 = [(VOTTextMovementManager *)self segments];
  v4 = [v3 objectAtIndexedSubscript:{-[VOTTextMovementManager segmentIndex](self, "segmentIndex")}];
  v5 = [v4 integerValue];

  return v5;
}

- (void)setSegment:(int64_t)a3
{
  v5 = [(VOTTextMovementManager *)self segments];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 indexOfObject:v6];

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
  v4 = [(VOTTextMovementManager *)self segments];
  -[VOTTextMovementManager setSegmentIndex:](self, "setSegmentIndex:", v3 % [v4 count]);
}

- (void)previousSegment
{
  v3 = [(VOTTextMovementManager *)self segmentIndex]- 1;
  if (v3 < 0)
  {
    v4 = [(VOTTextMovementManager *)self segments];
    -[VOTTextMovementManager setSegmentIndex:](self, "setSegmentIndex:", [v4 count] - 1);
  }

  else
  {

    [(VOTTextMovementManager *)self setSegmentIndex:v3];
  }
}

- (id)_localizedStringForKey:(id)a3
{
  v3 = VOTSharedWorkspace;
  v4 = a3;
  v5 = [v3 selectedLanguage];
  v6 = sub_1000511CC(off_1001FDDD0, v4, v5);

  return v6;
}

@end