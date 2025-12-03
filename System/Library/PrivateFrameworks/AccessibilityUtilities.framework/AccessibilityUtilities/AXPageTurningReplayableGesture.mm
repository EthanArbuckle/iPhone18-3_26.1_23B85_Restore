@interface AXPageTurningReplayableGesture
- (AXPageTurningReplayableGesture)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (CGPoint)pointForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index;
- (id)initForLeftToRightSwipe:(BOOL)swipe;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXPageTurningReplayableGesture

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[AXPageTurningReplayableGesture isLeftToRightSwipe](self forKey:{"isLeftToRightSwipe"), @"IsLeftToRightSwipe"}];
}

- (AXPageTurningReplayableGesture)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"IsLeftToRightSwipe"];

  return [(AXPageTurningReplayableGesture *)self initForLeftToRightSwipe:v4];
}

- (id)initForLeftToRightSwipe:(BOOL)swipe
{
  swipeCopy = swipe;
  v7.receiver = self;
  v7.super_class = AXPageTurningReplayableGesture;
  v4 = [(AXPageTurningReplayableGesture *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXPageTurningReplayableGesture *)v4 setIsLeftToRightSwipe:swipeCopy];
  }

  return v5;
}

- (CGPoint)pointForFingerIdentifier:(id)identifier atEventIndex:(unint64_t)index
{
  MainScreenBounds = AXDeviceGetMainScreenBounds();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  isLandscape = [(AXPageTurningReplayableGesture *)self isLandscape];
  if (isLandscape)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (isLandscape)
  {
    v12 = v10;
  }

  v20.origin.x = MainScreenBounds;
  v20.origin.y = v8;
  v20.size.width = v14;
  v20.size.height = v12;
  MidY = CGRectGetMidY(v20);
  v16 = index * 20.0 + 50.0;
  if (![(AXPageTurningReplayableGesture *)self isLeftToRightSwipe])
  {
    v21.origin.x = MainScreenBounds;
    v21.origin.y = v8;
    v21.size.width = v14;
    v21.size.height = v12;
    v16 = CGRectGetMaxX(v21) - v16;
  }

  v17 = v16;
  v18 = MidY;
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = *(&self->super._arePointsDeviceRelative + 1) == equalCopy[17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end