@interface ACCNavigationLaneGuidanceLaneInfo(CPAccNavInfo)
- (uint64_t)initWithLane:()CPAccNavInfo component:;
@end

@implementation ACCNavigationLaneGuidanceLaneInfo(CPAccNavInfo)

- (uint64_t)initWithLane:()CPAccNavInfo component:
{
  v5 = [CPAccNavUpdate accNavInfoWithUpdate:a3 component:a4 customValueBlock:&__block_literal_global_20];

  return v5;
}

@end