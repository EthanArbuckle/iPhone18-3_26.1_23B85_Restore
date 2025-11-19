@interface ACCNavigationLaneGuidanceInfo(CPAccNavInfo)
- (uint64_t)initWithLaneGuidance:()CPAccNavInfo component:;
@end

@implementation ACCNavigationLaneGuidanceInfo(CPAccNavInfo)

- (uint64_t)initWithLaneGuidance:()CPAccNavInfo component:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__ACCNavigationLaneGuidanceInfo_CPAccNavInfo__initWithLaneGuidance_component___block_invoke;
  v12[3] = &unk_278A11A38;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [CPAccNavUpdate accNavInfoWithUpdate:v9 component:v8 customValueBlock:v12];

  return v10;
}

@end