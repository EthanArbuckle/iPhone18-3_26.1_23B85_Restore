@interface CPRouteGuidance
+ (NSArray)accNavParameters;
+ (NSDictionary)accNavParameterKeysIndexed;
+ (NSDictionary)accNavParametersIndexed;
- (CPRouteGuidance)init;
- (CPRouteGuidance)initWithCoder:(id)coder;
- (CPRouteGuidance)routeGuidanceWithComponent:(id)component;
- (CPTravelEstimates)maneuverTravelEstimates;
- (CPTravelEstimates)tripTravelEstimates;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentLaneGuidance:(id)guidance;
- (void)setCurrentLaneGuidanceIndex:(unsigned __int16)index;
- (void)setCurrentManeuverIndexes:(id)indexes;
- (void)setCurrentManeuvers:(id)maneuvers;
@end

@implementation CPRouteGuidance

- (CPRouteGuidance)init
{
  v4.receiver = self;
  v4.super_class = CPRouteGuidance;
  v2 = [(CPRouteGuidance *)&v4 init];
  if (v2)
  {
    [CPAccNavUpdate resetUpdate:v2];
  }

  return v2;
}

+ (NSArray)accNavParameters
{
  if (accNavParameters_onceToken_2 != -1)
  {
    +[CPRouteGuidance(CPAccNavUpdate) accNavParameters];
  }

  v3 = accNavParameters__accNavParameters_2;

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPRouteGuidance;
  v4 = [(CPRouteGuidance *)&v8 description];
  v5 = [CPAccNavUpdate description:self];
  v6 = [v3 stringWithFormat:@"%@ {\n%@\n}", v4, v5];

  return v6;
}

- (CPRouteGuidance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPRouteGuidance;
  v5 = [(CPRouteGuidance *)&v8 init];
  if (v5)
  {
    [CPAccNavUpdate decodeUpdate:v5 withCoder:coderCopy];
    [coderCopy decodeDoubleForKey:@"kCPRouteGuidanceTimeRemainingToNextManeuver"];
    v5->_timeRemainingToNextManeuver = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [CPAccNavUpdate encodeUpdate:self withCoder:coderCopy];
  [(CPRouteGuidance *)self timeRemainingToNextManeuver];
  [coderCopy encodeDouble:@"kCPRouteGuidanceTimeRemainingToNextManeuver" forKey:?];
}

- (void)setCurrentManeuvers:(id)maneuvers
{
  maneuversCopy = maneuvers;
  v5 = [(NSArray *)maneuversCopy valueForKey:@"index"];
  currentManeuverIndexes = self->_currentManeuverIndexes;
  self->_currentManeuverIndexes = v5;

  currentManeuvers = self->_currentManeuvers;
  self->_currentManeuvers = maneuversCopy;
}

- (void)setCurrentManeuverIndexes:(id)indexes
{
  objc_storeStrong(&self->_currentManeuverIndexes, indexes);
  indexesCopy = indexes;
  currentManeuvers = self->_currentManeuvers;
  self->_currentManeuvers = 0;
}

- (void)setCurrentLaneGuidance:(id)guidance
{
  guidanceCopy = guidance;
  self->_currentLaneGuidanceIndex = [(CPLaneGuidance *)guidanceCopy index];
  currentLaneGuidance = self->_currentLaneGuidance;
  self->_currentLaneGuidance = guidanceCopy;
}

- (void)setCurrentLaneGuidanceIndex:(unsigned __int16)index
{
  self->_currentLaneGuidanceIndex = index;
  currentLaneGuidance = self->_currentLaneGuidance;
  self->_currentLaneGuidance = 0;
  MEMORY[0x2821F96F8]();
}

- (CPTravelEstimates)maneuverTravelEstimates
{
  v3 = [CPTravelEstimates alloc];
  distanceRemainingToNextManeuver = [(CPRouteGuidance *)self distanceRemainingToNextManeuver];
  distanceRemainingToNextManeuverDisplay = [(CPRouteGuidance *)self distanceRemainingToNextManeuverDisplay];
  [(CPRouteGuidance *)self timeRemainingToNextManeuver];
  v6 = [(CPTravelEstimates *)v3 initWithDistanceRemaining:distanceRemainingToNextManeuver distanceRemainingToDisplay:distanceRemainingToNextManeuverDisplay timeRemaining:?];

  return v6;
}

- (CPTravelEstimates)tripTravelEstimates
{
  v3 = [CPTravelEstimates alloc];
  distanceRemaining = [(CPRouteGuidance *)self distanceRemaining];
  distanceRemainingDisplay = [(CPRouteGuidance *)self distanceRemainingDisplay];
  [(CPRouteGuidance *)self timeRemaining];
  v6 = [(CPTravelEstimates *)v3 initWithDistanceRemaining:distanceRemaining distanceRemainingToDisplay:distanceRemainingDisplay timeRemaining:?];

  return v6;
}

void __51__CPRouteGuidance_CPAccNavUpdate__accNavParameters__block_invoke()
{
  v148[22] = *MEMORY[0x277D85DE8];
  v123 = NSStringFromSelector(sel_componentID);
  v125 = [CPAccNavParamKey paramKey:0];
  v124 = [v125 copySettingIsIntegerValue:1];
  v147 = v124;
  v122 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
  v121 = [CPAccNavParam paramWithProperty:v123 keys:v122];
  v148[0] = v121;
  v118 = NSStringFromSelector(sel_guidanceState);
  v120 = [CPAccNavParamKey paramKey:1];
  v119 = [v120 copySettingEnumType:6];
  v146 = v119;
  v117 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  v116 = [CPAccNavParam paramWithProperty:v118 keys:v117];
  v148[1] = v116;
  v113 = NSStringFromSelector(sel_maneuverState);
  v115 = [CPAccNavParamKey paramKey:2];
  v114 = [v115 copySettingEnumType:7];
  v145 = v114;
  v112 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  v111 = [CPAccNavParam paramWithProperty:v113 keys:v112];
  v148[2] = v111;
  v108 = NSStringFromSelector(sel_currentRoadNameVariants);
  v110 = [CPAccNavParamKey paramKey:3];
  v109 = [v110 copySettingHasVariants:1];
  v144 = v109;
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v144 count:1];
  v106 = [CPAccNavParam paramWithProperty:v108 keys:v107];
  v105 = [v106 copySettingCollectionGeneric:objc_opt_class()];
  v148[3] = v105;
  v102 = NSStringFromSelector(sel_destinationNameVariants);
  v104 = [CPAccNavParamKey paramKey:4];
  v103 = [v104 copySettingHasVariants:1];
  v143 = v103;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v100 = [CPAccNavParam paramWithProperty:v102 keys:v101];
  v99 = [v100 copySettingCollectionGeneric:objc_opt_class()];
  v148[4] = v99;
  v97 = NSStringFromSelector(sel_estimatedTimeOfArrival);
  v98 = [CPAccNavParamKey paramKey:5];
  v142 = v98;
  v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
  v95 = [CPAccNavParam paramWithProperty:v97 keys:v96];
  v148[5] = v95;
  v92 = NSStringFromSelector(sel_timeRemaining);
  v94 = [CPAccNavParamKey paramKey:6];
  v93 = [v94 copySettingIsTimeIntervalValue:1];
  v141 = v93;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
  v90 = [CPAccNavParam paramWithProperty:v92 keys:v91];
  v148[6] = v90;
  v86 = NSStringFromSelector(sel_distanceRemaining);
  v89 = [CPAccNavParamKey paramKey:7];
  v88 = [MEMORY[0x277CCAE20] meters];
  v87 = [v89 copySettingDimension:v88];
  v140 = v87;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
  v84 = [CPAccNavParam paramWithProperty:v86 keys:v85];
  v148[7] = v84;
  v80 = NSStringFromSelector(sel_distanceRemainingDisplay);
  v83 = [CPAccNavParamKey paramKey:8];
  v139[0] = v83;
  v82 = [CPAccNavParamKey paramKey:9];
  v81 = [v82 copySettingEnumType:5];
  v139[1] = v81;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
  v78 = [CPAccNavParam paramWithProperty:v80 keys:v79];
  v148[8] = v78;
  v74 = NSStringFromSelector(sel_distanceRemainingToNextManeuver);
  v77 = [CPAccNavParamKey paramKey:10];
  v76 = [MEMORY[0x277CCAE20] meters];
  v75 = [v77 copySettingDimension:v76];
  v138 = v75;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v72 = [CPAccNavParam paramWithProperty:v74 keys:v73];
  v148[9] = v72;
  v68 = NSStringFromSelector(sel_distanceRemainingToNextManeuverDisplay);
  v71 = [CPAccNavParamKey paramKey:11];
  v137[0] = v71;
  v70 = [CPAccNavParamKey paramKey:12];
  v69 = [v70 copySettingEnumType:5];
  v137[1] = v69;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:2];
  v66 = [CPAccNavParam paramWithProperty:v68 keys:v67];
  v148[10] = v66;
  v63 = NSStringFromSelector(sel_currentManeuverIndexes);
  v65 = [CPAccNavParamKey paramKey:13];
  v64 = [v65 copySettingAccNavType:9];
  v136 = v64;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
  v61 = [CPAccNavParam paramWithProperty:v63 keys:v62];
  v60 = [v61 copySettingCollectionGeneric:objc_opt_class()];
  v148[11] = v60;
  v57 = NSStringFromSelector(sel_totalManeuverCount);
  v59 = [CPAccNavParamKey paramKey:14];
  v58 = [v59 copySettingIsIntegerValue:1];
  v135 = v58;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
  v55 = [CPAccNavParam paramWithProperty:v57 keys:v56];
  v148[12] = v55;
  v52 = NSStringFromSelector(sel_beingShownInApp);
  v54 = [CPAccNavParamKey paramKey:15];
  v53 = [v54 copySettingIsBoolValue:1];
  v134 = v53;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
  v50 = [CPAccNavParam paramWithProperty:v52 keys:v51];
  v148[13] = v50;
  v47 = NSStringFromSelector(sel_currentLaneGuidanceIndex);
  v49 = [CPAccNavParamKey paramKey:16];
  v48 = [v49 copySettingIsIntegerValue:1];
  v133 = v48;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  v45 = [CPAccNavParam paramWithProperty:v47 keys:v46];
  v148[14] = v45;
  v42 = NSStringFromSelector(sel_totalLaneGuidanceCount);
  v44 = [CPAccNavParamKey paramKey:17];
  v43 = [v44 copySettingIsIntegerValue:1];
  v132 = v43;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v40 = [CPAccNavParam paramWithProperty:v42 keys:v41];
  v148[15] = v40;
  v37 = NSStringFromSelector(sel_laneGuidanceShowing);
  v39 = [CPAccNavParamKey paramKey:18];
  v38 = [v39 copySettingIsBoolValue:1];
  v131 = v38;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
  v35 = [CPAccNavParam paramWithProperty:v37 keys:v36];
  v148[16] = v35;
  v33 = NSStringFromSelector(sel_sourceName);
  v34 = [CPAccNavParamKey paramKey:19];
  v130 = v34;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
  v31 = [CPAccNavParam paramWithProperty:v33 keys:v32];
  v148[17] = v31;
  v28 = NSStringFromSelector(sel_sourceSupportsRouteGuidance);
  v30 = [CPAccNavParamKey paramKey:20];
  v29 = [v30 copySettingIsBoolValue:1];
  v129 = v29;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
  v26 = [CPAccNavParam paramWithProperty:v28 keys:v27];
  v148[18] = v26;
  v23 = NSStringFromSelector(sel_destinationTimeZoneOffsetMinutes);
  v25 = [CPAccNavParamKey paramKey:21];
  v24 = [v25 copySettingIsIntegerValue:1];
  v128 = v24;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
  v21 = [CPAccNavParam paramWithProperty:v23 keys:v22];
  v148[19] = v21;
  v18 = NSStringFromSelector(sel_stopType);
  v20 = [CPAccNavParamKey paramKey:22];
  v19 = [v20 copySettingEnumType:8];
  v127 = v19;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
  v16 = [CPAccNavParam paramWithProperty:v18 keys:v17];
  v148[20] = v16;
  v12 = NSStringFromSelector(sel_electricVehicleDestination);
  v15 = [CPAccNavParamKey paramKey:23];
  v126[0] = v15;
  v14 = [CPAccNavParamKey paramKey:24];
  v13 = [MEMORY[0x277CCADF8] wattHours];
  v0 = [v14 copySettingDimension:v13];
  v126[1] = v0;
  v1 = [CPAccNavParamKey paramKey:25];
  v2 = [MEMORY[0x277CCADF8] wattHours];
  v3 = [v1 copySettingDimension:v2];
  v126[2] = v3;
  v4 = [CPAccNavParamKey paramKey:26];
  v5 = [MEMORY[0x277CCADF8] wattHours];
  v6 = [v4 copySettingDimension:v5];
  v126[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:4];
  v8 = [CPAccNavParam paramWithProperty:v12 keys:v7];
  v148[21] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:22];
  v10 = accNavParameters__accNavParameters_2;
  accNavParameters__accNavParameters_2 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSDictionary)accNavParametersIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPRouteGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParametersIndexed_onceToken_2 != -1)
  {
    dispatch_once(&accNavParametersIndexed_onceToken_2, block);
  }

  v2 = accNavParametersIndexed__accNavParametersIndexed_2;

  return v2;
}

uint64_t __58__CPRouteGuidance_CPAccNavUpdate__accNavParametersIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParametersIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParametersIndexed__accNavParametersIndexed_2;
  accNavParametersIndexed__accNavParametersIndexed_2 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)accNavParameterKeysIndexed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CPRouteGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accNavParameterKeysIndexed_onceToken_2 != -1)
  {
    dispatch_once(&accNavParameterKeysIndexed_onceToken_2, block);
  }

  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_2;

  return v2;
}

uint64_t __61__CPRouteGuidance_CPAccNavUpdate__accNavParameterKeysIndexed__block_invoke(uint64_t a1)
{
  v1 = [CPAccNavUpdate accNavParameterKeysIndexedForUpdate:*(a1 + 32)];
  v2 = accNavParameterKeysIndexed__accNavParameterKeysIndexed_2;
  accNavParameterKeysIndexed__accNavParameterKeysIndexed_2 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CPRouteGuidance)routeGuidanceWithComponent:(id)component
{
  v4 = MEMORY[0x277CE82F8];
  componentCopy = component;
  v6 = [v4 alloc];
  component = [componentCopy component];
  v8 = [v6 initWithRouteGuidance:self component:component];

  v9 = [objc_alloc(MEMORY[0x277CF8AA0]) initWithComponent:componentCopy accNavInfo:v8];

  return v9;
}

@end