@interface ManeuverBannerItem
- (BOOL)isEqual:(id)a3;
- (ManeuverBannerItem)initWithGuidanceState:(id)a3;
- (NavSignLaneGuidanceInfo)laneGuidanceInfo;
- (NavSignManeuverGuidanceInfo)maneuverGuidanceInfo;
- (id)copy;
@end

@implementation ManeuverBannerItem

- (NavSignManeuverGuidanceInfo)maneuverGuidanceInfo
{
  v2 = [(BannerItem *)self guidanceState];
  v3 = [v2 maneuverGuidanceInfo];

  return v3;
}

- (NavSignLaneGuidanceInfo)laneGuidanceInfo
{
  v2 = [(BannerItem *)self guidanceState];
  v3 = [v2 laneGuidanceInfo];
  v4 = [v3 laneGuidanceInfo];

  return v4;
}

- (id)copy
{
  v3 = [ManeuverBannerItem alloc];
  v4 = [(BannerItem *)self guidanceState];
  v5 = [(ManeuverBannerItem *)v3 initWithGuidanceState:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      uniqueId = self->super._uniqueId;
      v7 = [(BannerItem *)v5 uniqueId];
      v8 = uniqueId;
      v9 = v7;
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v13 = 0;
      }

      else
      {
        v11 = [(BannerItem *)self guidanceState];
        v12 = [(BannerItem *)v5 guidanceState];
        if (v11 | v12)
        {
          v13 = [v11 isEqual:v12];
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

- (ManeuverBannerItem)initWithGuidanceState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ManeuverBannerItem;
  v5 = [(BannerItem *)&v9 initWithGuidanceState:v4];
  if (v5)
  {
    v6 = [v4 uniqueIdForBannerType:0];
    uniqueId = v5->super._uniqueId;
    v5->super._uniqueId = v6;
  }

  return v5;
}

@end