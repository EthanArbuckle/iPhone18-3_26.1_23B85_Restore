@interface ACCNavigationManeuverUpdateInfo(CPAccNavInfo)
- (uint64_t)initWithManeuver:()CPAccNavInfo component:;
@end

@implementation ACCNavigationManeuverUpdateInfo(CPAccNavInfo)

- (uint64_t)initWithManeuver:()CPAccNavInfo component:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ACCNavigationManeuverUpdateInfo_CPAccNavInfo__initWithManeuver_component___block_invoke;
  v12[3] = &unk_278A11A38;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [CPAccNavUpdate accNavInfoWithUpdate:v8 component:v9 customValueBlock:v12];

  return v10;
}

@end