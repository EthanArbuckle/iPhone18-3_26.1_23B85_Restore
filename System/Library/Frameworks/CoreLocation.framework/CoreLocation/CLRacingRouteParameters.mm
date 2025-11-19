@interface CLRacingRouteParameters
- (CLRacingRouteParameters)initWithCoder:(id)a3;
- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)a3 racingRouteVariables:(id)a4 startPointOnCurrentRoute:(id)a5 startPointOnReferenceRoute:(id)a6 lastOnRouteDataPoint:(id)a7 lastProjectedDataPoint:(id)a8 routeBoundingBox:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLRacingRouteParameters

- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)a3 racingRouteVariables:(id)a4 startPointOnCurrentRoute:(id)a5 startPointOnReferenceRoute:(id)a6 lastOnRouteDataPoint:(id)a7 lastProjectedDataPoint:(id)a8 routeBoundingBox:(id)a9
{
  v17.receiver = self;
  v17.super_class = CLRacingRouteParameters;
  v15 = [(CLRacingRouteParameters *)&v17 init];
  if (v15)
  {
    v15->_routeMatrixIndexVec = [a3 copy];
    v15->_racingRouteVariables = [a4 copy];
    v15->_startPointOnCurrentRoute = [a5 copy];
    v15->_startPointOnReferenceRoute = [a6 copy];
    v15->_lastOnRouteDataPoint = [a7 copy];
    v15->_lastProjectedDataPoint = [a8 copy];
    v15->_routeBoundingBox = [a9 copy];
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLRacingRouteParameters routeMatrixIndexVec](self forKey:{"routeMatrixIndexVec"), @"routeMatrixIndexVec"}];
  [a3 encodeObject:-[CLRacingRouteParameters racingRouteVariables](self forKey:{"racingRouteVariables"), @"racingRouteVariables"}];
  [a3 encodeObject:-[CLRacingRouteParameters startPointOnCurrentRoute](self forKey:{"startPointOnCurrentRoute"), @"startPointOnCurrentRoute"}];
  [a3 encodeObject:-[CLRacingRouteParameters startPointOnReferenceRoute](self forKey:{"startPointOnReferenceRoute"), @"startPointOnReferenceRoute"}];
  [a3 encodeObject:-[CLRacingRouteParameters lastOnRouteDataPoint](self forKey:{"lastOnRouteDataPoint"), @"lastOnRouteDataPoint"}];
  [a3 encodeObject:-[CLRacingRouteParameters lastProjectedDataPoint](self forKey:{"lastProjectedDataPoint"), @"lastProjectedDataPoint"}];
  v5 = [(CLRacingRouteParameters *)self routeBoundingBox];

  [a3 encodeObject:v5 forKey:@"routeBoundingBox"];
}

- (CLRacingRouteParameters)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = [CLRacingRouteParameters alloc];
  v5 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 2)), @"routeMatrixIndexVec"}];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"racingRouteVariables"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startPointOnCurrentRoute"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startPointOnReferenceRoute"];
  v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lastOnRouteDataPoint"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lastProjectedDataPoint"];
  v12 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"routeBoundingBox"];
  result = [(CLRacingRouteParameters *)v4 initWithRouteMatrixIndexVec:v6 racingRouteVariables:v7 startPointOnCurrentRoute:v8 startPointOnReferenceRoute:v9 lastOnRouteDataPoint:v10 lastProjectedDataPoint:v11 routeBoundingBox:v12, v15[0]];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end