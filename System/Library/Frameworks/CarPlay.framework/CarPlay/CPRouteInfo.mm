@interface CPRouteInfo
- (CPRouteInfo)initWithCoder:(id)coder;
- (CPRouteInfo)initWithRouteGuidance:(id)guidance maneuvers:(id)maneuvers laneGuidances:(id)guidances routeLine:(id)line;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPRouteInfo

- (CPRouteInfo)initWithRouteGuidance:(id)guidance maneuvers:(id)maneuvers laneGuidances:(id)guidances routeLine:(id)line
{
  guidanceCopy = guidance;
  maneuversCopy = maneuvers;
  guidancesCopy = guidances;
  lineCopy = line;
  v22.receiver = self;
  v22.super_class = CPRouteInfo;
  v14 = [(CPRouteInfo *)&v22 init];
  if (v14)
  {
    v15 = [guidanceCopy copy];
    routeGuidance = v14->_routeGuidance;
    v14->_routeGuidance = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:maneuversCopy copyItems:1];
    maneuvers = v14->_maneuvers;
    v14->_maneuvers = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:guidancesCopy copyItems:1];
    laneGuidances = v14->_laneGuidances;
    v14->_laneGuidances = v19;

    objc_storeStrong(&v14->_routeLine, line);
  }

  return v14;
}

- (CPRouteInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CPRouteInfo;
  v5 = [(CPRouteInfo *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"kCPRouteInfoRouteGuidanceKey"];
    routeGuidance = v5->_routeGuidance;
    v5->_routeGuidance = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kCPRouteInfoManeuversKey"];
    maneuvers = v5->_maneuvers;
    v5->_maneuvers = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kCPRouteInfoLaneGuidancesKey"];
    laneGuidances = v5->_laneGuidances;
    v5->_laneGuidances = v17;

    v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"kCPRouteInfoRouteLineKey"];
    routeLine = v5->_routeLine;
    v5->_routeLine = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  routeGuidance = [(CPRouteInfo *)self routeGuidance];
  [coderCopy encodeObject:routeGuidance forKey:@"kCPRouteInfoRouteGuidanceKey"];

  maneuvers = [(CPRouteInfo *)self maneuvers];
  [coderCopy encodeObject:maneuvers forKey:@"kCPRouteInfoManeuversKey"];

  laneGuidances = [(CPRouteInfo *)self laneGuidances];
  [coderCopy encodeObject:laneGuidances forKey:@"kCPRouteInfoLaneGuidancesKey"];

  routeLine = [(CPRouteInfo *)self routeLine];
  [coderCopy encodeObject:routeLine forKey:@"kCPRouteInfoRouteLineKey"];
}

@end