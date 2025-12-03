@interface VKTourGuideAccessibilityElement
- (BOOL)pointInside:(CGPoint)inside;
- (CGRect)accessibilityFrame;
- (VKTourGuideAccessibilityElement)initWithAccessibilityContainer:(id)container userLocationMarker:(id)marker;
- (id)_accessibilityScrollStatus;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation VKTourGuideAccessibilityElement

- (CGRect)accessibilityFrame
{
  userLocationMarker = [(VKTourGuideAccessibilityElement *)self userLocationMarker];
  [userLocationMarker accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v11 = CGRectGetMidX(v16) + -60.0;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v12 = CGRectGetMidY(v17) + -60.0;
  v13 = 120.0;
  v14 = v11;
  v15 = 120.0;
  result.size.height = v15;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v14;
  return result;
}

- (id)accessibilityLabel
{
  accessibilityContainer = [(VKTourGuideAccessibilityElement *)self accessibilityContainer];
  accessibilityTourStatus = [accessibilityContainer accessibilityTourStatus];

  return accessibilityTourStatus;
}

- (id)accessibilityPath
{
  [(VKTourGuideAccessibilityElement *)self accessibilityFrame];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v6 = MEMORY[0x29EDC7948];
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14) * 0.5;

  return [v6 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 clockwise:{0.0, 6.28318531}];
}

- (BOOL)pointInside:(CGPoint)inside
{
  y = inside.y;
  x = inside.x;
  [(VKTourGuideAccessibilityElement *)self accessibilityFrame];
  v11.x = x;
  v11.y = y;
  result = 0;
  if (CGRectContainsPoint(v12, v11))
  {
    accessibilityPath = [(VKTourGuideAccessibilityElement *)self accessibilityPath];
    cGPath = [accessibilityPath CGPath];
    v10.x = x;
    v10.y = y;
    v8 = CGPathContainsPoint(cGPath, 0, v10, 0);

    if (v8)
    {
      return 1;
    }
  }

  return result;
}

- (id)_accessibilityScrollStatus
{
  accessibilityContainer = [(VKTourGuideAccessibilityElement *)self accessibilityContainer];
  _accessibilityScrollStatus = [accessibilityContainer _accessibilityScrollStatus];

  return _accessibilityScrollStatus;
}

- (VKTourGuideAccessibilityElement)initWithAccessibilityContainer:(id)container userLocationMarker:(id)marker
{
  markerCopy = marker;
  v11.receiver = self;
  v11.super_class = VKTourGuideAccessibilityElement;
  v8 = [(VKTourGuideAccessibilityElement *)&v11 initWithAccessibilityContainer:container];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userLocationMarker, marker);
  }

  return v9;
}

@end