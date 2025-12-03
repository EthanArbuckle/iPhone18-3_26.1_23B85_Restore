@interface TransitScheduleCardVehiclePositionAnnotationView
- (CGSize)intrinsicContentSize;
@end

@implementation TransitScheduleCardVehiclePositionAnnotationView

- (CGSize)intrinsicContentSize
{
  layer = [(TransitScheduleCardVehiclePositionAnnotationView *)self layer];
  [layer size];
  v5 = v4;

  layer2 = [(TransitScheduleCardVehiclePositionAnnotationView *)self layer];
  [layer2 size];
  v8 = v7;

  v9 = v8;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

@end