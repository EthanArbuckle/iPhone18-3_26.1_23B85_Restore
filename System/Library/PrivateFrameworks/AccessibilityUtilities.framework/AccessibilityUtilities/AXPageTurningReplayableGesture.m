@interface AXPageTurningReplayableGesture
- (AXPageTurningReplayableGesture)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)pointForFingerIdentifier:(id)a3 atEventIndex:(unint64_t)a4;
- (id)initForLeftToRightSwipe:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXPageTurningReplayableGesture

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[AXPageTurningReplayableGesture isLeftToRightSwipe](self forKey:{"isLeftToRightSwipe"), @"IsLeftToRightSwipe"}];
}

- (AXPageTurningReplayableGesture)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"IsLeftToRightSwipe"];

  return [(AXPageTurningReplayableGesture *)self initForLeftToRightSwipe:v4];
}

- (id)initForLeftToRightSwipe:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = AXPageTurningReplayableGesture;
  v4 = [(AXPageTurningReplayableGesture *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXPageTurningReplayableGesture *)v4 setIsLeftToRightSwipe:v3];
  }

  return v5;
}

- (CGPoint)pointForFingerIdentifier:(id)a3 atEventIndex:(unint64_t)a4
{
  MainScreenBounds = AXDeviceGetMainScreenBounds();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(AXPageTurningReplayableGesture *)self isLandscape];
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v13)
  {
    v12 = v10;
  }

  v20.origin.x = MainScreenBounds;
  v20.origin.y = v8;
  v20.size.width = v14;
  v20.size.height = v12;
  MidY = CGRectGetMidY(v20);
  v16 = a4 * 20.0 + 50.0;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = *(&self->super._arePointsDeviceRelative + 1) == v4[17];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end