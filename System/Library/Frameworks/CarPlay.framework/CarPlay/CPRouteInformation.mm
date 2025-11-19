@interface CPRouteInformation
- (CPRouteInformation)initWithManeuvers:(id)a3 laneGuidances:(id)a4 currentManeuvers:(id)a5 currentLaneGuidance:(id)a6 tripTravelEstimates:(id)a7 maneuverTravelEstimates:(id)a8;
@end

@implementation CPRouteInformation

- (CPRouteInformation)initWithManeuvers:(id)a3 laneGuidances:(id)a4 currentManeuvers:(id)a5 currentLaneGuidance:(id)a6 tripTravelEstimates:(id)a7 maneuverTravelEstimates:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CPRouteInformation;
  v18 = [(CPRouteInformation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_maneuvers, a3);
    objc_storeStrong(&v19->_laneGuidances, a4);
    objc_storeStrong(&v19->_currentManeuvers, a5);
    objc_storeStrong(&v19->_currentLaneGuidance, a6);
    objc_storeStrong(&v19->_tripTravelEstimates, a7);
    objc_storeStrong(&v19->_maneuverTravelEstimates, a8);
  }

  return v19;
}

@end