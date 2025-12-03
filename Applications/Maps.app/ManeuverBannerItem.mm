@interface ManeuverBannerItem
- (BOOL)isEqual:(id)equal;
- (ManeuverBannerItem)initWithGuidanceState:(id)state;
- (NavSignLaneGuidanceInfo)laneGuidanceInfo;
- (NavSignManeuverGuidanceInfo)maneuverGuidanceInfo;
- (id)copy;
@end

@implementation ManeuverBannerItem

- (NavSignManeuverGuidanceInfo)maneuverGuidanceInfo
{
  guidanceState = [(BannerItem *)self guidanceState];
  maneuverGuidanceInfo = [guidanceState maneuverGuidanceInfo];

  return maneuverGuidanceInfo;
}

- (NavSignLaneGuidanceInfo)laneGuidanceInfo
{
  guidanceState = [(BannerItem *)self guidanceState];
  laneGuidanceInfo = [guidanceState laneGuidanceInfo];
  v3LaneGuidanceInfo = [laneGuidanceInfo laneGuidanceInfo];

  return v3LaneGuidanceInfo;
}

- (id)copy
{
  v3 = [ManeuverBannerItem alloc];
  guidanceState = [(BannerItem *)self guidanceState];
  v5 = [(ManeuverBannerItem *)v3 initWithGuidanceState:guidanceState];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uniqueId = self->super._uniqueId;
      uniqueId = [(BannerItem *)v5 uniqueId];
      v8 = uniqueId;
      v9 = uniqueId;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v13 = 0;
      }

      else
      {
        guidanceState = [(BannerItem *)self guidanceState];
        guidanceState2 = [(BannerItem *)v5 guidanceState];
        if (guidanceState | guidanceState2)
        {
          v13 = [guidanceState isEqual:guidanceState2];
        }

        else
        {
          v13 = 1;
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (ManeuverBannerItem)initWithGuidanceState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = ManeuverBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:stateCopy];
  if (v5)
  {
    v6 = [stateCopy uniqueIdForBannerType:0];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end