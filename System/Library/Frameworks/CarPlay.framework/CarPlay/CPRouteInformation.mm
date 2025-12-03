@interface CPRouteInformation
- (CPRouteInformation)initWithManeuvers:(id)maneuvers laneGuidances:(id)guidances currentManeuvers:(id)currentManeuvers currentLaneGuidance:(id)guidance tripTravelEstimates:(id)estimates maneuverTravelEstimates:(id)travelEstimates;
@end

@implementation CPRouteInformation

- (CPRouteInformation)initWithManeuvers:(id)maneuvers laneGuidances:(id)guidances currentManeuvers:(id)currentManeuvers currentLaneGuidance:(id)guidance tripTravelEstimates:(id)estimates maneuverTravelEstimates:(id)travelEstimates
{
  maneuversCopy = maneuvers;
  guidancesCopy = guidances;
  currentManeuversCopy = currentManeuvers;
  guidanceCopy = guidance;
  estimatesCopy = estimates;
  travelEstimatesCopy = travelEstimates;
  v24.receiver = self;
  v24.super_class = CPRouteInformation;
  v18 = [(CPRouteInformation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_maneuvers, maneuvers);
    objc_storeStrong(&v19->_laneGuidances, guidances);
    objc_storeStrong(&v19->_currentManeuvers, currentManeuvers);
    objc_storeStrong(&v19->_currentLaneGuidance, guidance);
    objc_storeStrong(&v19->_tripTravelEstimates, estimates);
    objc_storeStrong(&v19->_maneuverTravelEstimates, travelEstimates);
  }

  return v19;
}

@end