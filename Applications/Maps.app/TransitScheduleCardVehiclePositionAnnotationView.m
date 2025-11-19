@interface TransitScheduleCardVehiclePositionAnnotationView
- (CGSize)intrinsicContentSize;
@end

@implementation TransitScheduleCardVehiclePositionAnnotationView

- (CGSize)intrinsicContentSize
{
  v3 = [(TransitScheduleCardVehiclePositionAnnotationView *)self layer];
  [v3 size];
  v5 = v4;

  v6 = [(TransitScheduleCardVehiclePositionAnnotationView *)self layer];
  [v6 size];
  v8 = v7;

  v9 = v8;
  v10 = v5;
  result.height = v10;
  result.width = v9;
  return result;
}

@end