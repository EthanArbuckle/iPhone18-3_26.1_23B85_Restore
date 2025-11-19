@interface ACCNavigationManeuverUpdateInfo
@end

@implementation ACCNavigationManeuverUpdateInfo

id __76__ACCNavigationManeuverUpdateInfo_CPAccNavInfo__initWithManeuver_component___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 key];
  if (v3 == 4)
  {
    v7 = *(a1 + 32);
    v5 = [*(a1 + 40) roadFollowingManeuverVariants];
    v6 = [v7 CP_variantFittingPostManeuverRoadName:v5];
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) instructionVariants];
    v6 = [v4 CP_variantFittingManeuverDescription:v5];
LABEL_5:
    v8 = v6;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end