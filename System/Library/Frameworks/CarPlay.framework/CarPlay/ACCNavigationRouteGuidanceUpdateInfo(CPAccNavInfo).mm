@interface ACCNavigationRouteGuidanceUpdateInfo(CPAccNavInfo)
- (uint64_t)initWithRouteGuidance:()CPAccNavInfo component:;
@end

@implementation ACCNavigationRouteGuidanceUpdateInfo(CPAccNavInfo)

- (uint64_t)initWithRouteGuidance:()CPAccNavInfo component:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ACCNavigationRouteGuidanceUpdateInfo_CPAccNavInfo__initWithRouteGuidance_component___block_invoke;
  v12[3] = &unk_278A11A38;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [CPAccNavUpdate accNavInfoWithUpdate:v8 component:v9 customValueBlock:v12];

  return v10;
}

@end