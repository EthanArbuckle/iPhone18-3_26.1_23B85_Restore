@interface CLRacingRouteParameters
- (CLRacingRouteParameters)initWithCoder:(id)coder;
- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)vec racingRouteVariables:(id)variables startPointOnCurrentRoute:(id)route startPointOnReferenceRoute:(id)referenceRoute lastOnRouteDataPoint:(id)point lastProjectedDataPoint:(id)dataPoint routeBoundingBox:(id)box;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLRacingRouteParameters

- (CLRacingRouteParameters)initWithRouteMatrixIndexVec:(id)vec racingRouteVariables:(id)variables startPointOnCurrentRoute:(id)route startPointOnReferenceRoute:(id)referenceRoute lastOnRouteDataPoint:(id)point lastProjectedDataPoint:(id)dataPoint routeBoundingBox:(id)box
{
  v17.receiver = self;
  v17.super_class = CLRacingRouteParameters;
  v15 = [(CLRacingRouteParameters *)&v17 init];
  if (v15)
  {
    v15->_routeMatrixIndexVec = [vec copy];
    v15->_racingRouteVariables = [variables copy];
    v15->_startPointOnCurrentRoute = [route copy];
    v15->_startPointOnReferenceRoute = [referenceRoute copy];
    v15->_lastOnRouteDataPoint = [point copy];
    v15->_lastProjectedDataPoint = [dataPoint copy];
    v15->_routeBoundingBox = [box copy];
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLRacingRouteParameters routeMatrixIndexVec](self forKey:{"routeMatrixIndexVec"), @"routeMatrixIndexVec"}];
  [coder encodeObject:-[CLRacingRouteParameters racingRouteVariables](self forKey:{"racingRouteVariables"), @"racingRouteVariables"}];
  [coder encodeObject:-[CLRacingRouteParameters startPointOnCurrentRoute](self forKey:{"startPointOnCurrentRoute"), @"startPointOnCurrentRoute"}];
  [coder encodeObject:-[CLRacingRouteParameters startPointOnReferenceRoute](self forKey:{"startPointOnReferenceRoute"), @"startPointOnReferenceRoute"}];
  [coder encodeObject:-[CLRacingRouteParameters lastOnRouteDataPoint](self forKey:{"lastOnRouteDataPoint"), @"lastOnRouteDataPoint"}];
  [coder encodeObject:-[CLRacingRouteParameters lastProjectedDataPoint](self forKey:{"lastProjectedDataPoint"), @"lastProjectedDataPoint"}];
  routeBoundingBox = [(CLRacingRouteParameters *)self routeBoundingBox];

  [coder encodeObject:routeBoundingBox forKey:@"routeBoundingBox"];
}

- (CLRacingRouteParameters)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = [CLRacingRouteParameters alloc];
  v5 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 2)), @"routeMatrixIndexVec"}];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"racingRouteVariables"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"startPointOnCurrentRoute"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"startPointOnReferenceRoute"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"lastOnRouteDataPoint"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"lastProjectedDataPoint"];
  v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"routeBoundingBox"];
  result = [(CLRacingRouteParameters *)v4 initWithRouteMatrixIndexVec:v6 racingRouteVariables:v7 startPointOnCurrentRoute:v8 startPointOnReferenceRoute:v9 lastOnRouteDataPoint:v10 lastProjectedDataPoint:v11 routeBoundingBox:v12, v15[0]];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

@end