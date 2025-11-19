@interface MPAVTelevisionRoute
- (MPAVTelevisionRoute)initWithTelevision:(void *)a3;
- (id)routeUID;
- (void)dealloc;
@end

@implementation MPAVTelevisionRoute

- (id)routeUID
{
  v2 = MRExternalDeviceCopyUniqueIdentifier();

  return v2;
}

- (void)dealloc
{
  CFRetain(self->_television);
  v3.receiver = self;
  v3.super_class = MPAVTelevisionRoute;
  [(MPAVTelevisionRoute *)&v3 dealloc];
}

- (MPAVTelevisionRoute)initWithTelevision:(void *)a3
{
  v14.receiver = self;
  v14.super_class = MPAVTelevisionRoute;
  v5 = [(MPAVTelevisionRoute *)&v14 init];
  if (v5)
  {
    if (!a3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:v5 file:@"MPAVTelevisionRoute.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"television"}];
    }

    v5->_television = CFRetain(a3);
    v6 = MRExternalDeviceCopyName();
    routeName = v5->super._routeName;
    v5->super._routeName = v6;

    v5->super._picked = 0;
    avRouteDescription = v5->super._avRouteDescription;
    v5->super._avRouteDescription = 0;

    wirelessDisplayRoute = v5->super._wirelessDisplayRoute;
    v5->super._wirelessDisplayRoute = 0;

    v5->super._displayRouteType = 3;
    v10 = [[MPAVRouteConnection alloc] initWithExternalDevice:v5->_television];
    connection = v5->_connection;
    v5->_connection = v10;
  }

  return v5;
}

@end