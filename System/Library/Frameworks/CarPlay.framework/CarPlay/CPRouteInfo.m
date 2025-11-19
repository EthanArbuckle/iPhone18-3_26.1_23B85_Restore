@interface CPRouteInfo
- (CPRouteInfo)initWithCoder:(id)a3;
- (CPRouteInfo)initWithRouteGuidance:(id)a3 maneuvers:(id)a4 laneGuidances:(id)a5 routeLine:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPRouteInfo

- (CPRouteInfo)initWithRouteGuidance:(id)a3 maneuvers:(id)a4 laneGuidances:(id)a5 routeLine:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CPRouteInfo;
  v14 = [(CPRouteInfo *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    routeGuidance = v14->_routeGuidance;
    v14->_routeGuidance = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v11 copyItems:1];
    maneuvers = v14->_maneuvers;
    v14->_maneuvers = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v12 copyItems:1];
    laneGuidances = v14->_laneGuidances;
    v14->_laneGuidances = v19;

    objc_storeStrong(&v14->_routeLine, a6);
  }

  return v14;
}

- (CPRouteInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CPRouteInfo;
  v5 = [(CPRouteInfo *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kCPRouteInfoRouteGuidanceKey"];
    routeGuidance = v5->_routeGuidance;
    v5->_routeGuidance = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kCPRouteInfoManeuversKey"];
    maneuvers = v5->_maneuvers;
    v5->_maneuvers = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"kCPRouteInfoLaneGuidancesKey"];
    laneGuidances = v5->_laneGuidances;
    v5->_laneGuidances = v17;

    v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"kCPRouteInfoRouteLineKey"];
    routeLine = v5->_routeLine;
    v5->_routeLine = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPRouteInfo *)self routeGuidance];
  [v4 encodeObject:v5 forKey:@"kCPRouteInfoRouteGuidanceKey"];

  v6 = [(CPRouteInfo *)self maneuvers];
  [v4 encodeObject:v6 forKey:@"kCPRouteInfoManeuversKey"];

  v7 = [(CPRouteInfo *)self laneGuidances];
  [v4 encodeObject:v7 forKey:@"kCPRouteInfoLaneGuidancesKey"];

  v8 = [(CPRouteInfo *)self routeLine];
  [v4 encodeObject:v8 forKey:@"kCPRouteInfoRouteLineKey"];
}

@end