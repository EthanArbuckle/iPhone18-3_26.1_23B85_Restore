@interface MPAVRoutingControllerSelection
- (MPAVRoutingControllerSelection)initWithRoutes:(id)routes selectionOperation:(int64_t)operation;
- (id)description;
@end

@implementation MPAVRoutingControllerSelection

- (id)description
{
  selectionOperation = self->_selectionOperation;
  if (selectionOperation > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7676E08[selectionOperation];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p operationName=%@ routes=%@>", objc_opt_class(), self, v3, self->_routes];
}

- (MPAVRoutingControllerSelection)initWithRoutes:(id)routes selectionOperation:(int64_t)operation
{
  routesCopy = routes;
  v11.receiver = self;
  v11.super_class = MPAVRoutingControllerSelection;
  v8 = [(MPAVRoutingControllerSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_routes, routes);
    v9->_selectionOperation = operation;
  }

  return v9;
}

@end