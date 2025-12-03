@interface MKMapSnapshotCreator
- (MKMapSnapshotCreator)init;
- (id)_newSnapshotWithView:(id)view;
- (id)recreateCurrentSnapshotWithRequester:(id)requester context:(id)context;
- (void)_processRequest;
- (void)_respondWithSnapshot;
- (void)createSnapShotWithCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(unint64_t)level size:(CGSize)size handler:(id)handler;
- (void)createSnapShotWithCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(unint64_t)level size:(CGSize)size requester:(id)requester context:(id)context;
- (void)dealloc;
- (void)flushRequestQueue;
@end

@implementation MKMapSnapshotCreator

- (void)createSnapShotWithCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(unint64_t)level size:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v12 = [MKBlockBasedSnapshotRequester snapshotRequesterWitHandler:handler];
  [(MKMapSnapshotCreator *)self createSnapShotWithCoordinate:level zoomLevel:v12 size:0 requester:latitude context:longitude, width, height];
}

- (void)flushRequestQueue
{
  servingRequest = [(MKMapSnapshotCreator *)self servingRequest];
  [servingRequest cancel];

  [(MKMapSnapshotCreator *)self setServingRequest:0];
  [(NSLock *)self->_requestLock lock];
  [(NSMutableArray *)self->_requests removeAllObjects];
  requestLock = self->_requestLock;

  [(NSLock *)requestLock unlock];
}

- (id)recreateCurrentSnapshotWithRequester:(id)requester context:(id)context
{
  requesterCopy = requester;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    v8 = [requesterCopy mapSnapshotCreator:self viewForContext:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MKMapSnapshotCreator *)self _newSnapshotWithView:v8];

  return v9;
}

- (void)createSnapShotWithCoordinate:(CLLocationCoordinate2D)coordinate zoomLevel:(unint64_t)level size:(CGSize)size requester:(id)requester context:(id)context
{
  height = size.height;
  width = size.width;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  contextCopy = context;
  requesterCopy = requester;
  v17 = objc_alloc_init(MKMapSnapshotRequest);
  [(MKMapSnapshotRequest *)v17 setCoordinate:latitude, longitude];
  [(MKMapSnapshotRequest *)v17 setRequester:requesterCopy];

  [(MKMapSnapshotRequest *)v17 setSize:width, height];
  [(MKMapSnapshotRequest *)v17 setZoomLevel:level];
  [(MKMapSnapshotRequest *)v17 setContext:contextCopy];

  [(MKMapSnapshotRequest *)v17 setDelegate:self];
  [(NSLock *)self->_requestLock lock];
  [(NSMutableArray *)self->_requests addObject:v17];
  [(NSLock *)self->_requestLock unlock];
  servingRequest = [(MKMapSnapshotCreator *)self servingRequest];

  if (!servingRequest)
  {
    [(MKMapSnapshotCreator *)self _processRequest];
  }
}

- (void)_respondWithSnapshot
{
  servingRequest = [(MKMapSnapshotCreator *)self servingRequest];
  if (servingRequest)
  {
    v14 = servingRequest;
    requester = [servingRequest requester];
    if (objc_opt_respondsToSelector())
    {
      context = [v14 context];
      v6 = [requester mapSnapshotCreator:self viewForContext:context];
    }

    else
    {
      v6 = 0;
    }

    image = [v14 image];
    lastSnapshot = self->_lastSnapshot;
    self->_lastSnapshot = image;

    attributionString = [v14 attributionString];
    lastAttributionString = self->_lastAttributionString;
    self->_lastAttributionString = attributionString;

    v11 = [(MKMapSnapshotCreator *)self _newSnapshotWithView:v6];
    v12 = self->_lastAttributionString;
    context2 = [v14 context];
    [requester mapSnapshotCreator:self didCreateSnapshot:v11 attributionString:v12 context:context2];

    [(MKMapSnapshotCreator *)self setServingRequest:0];
    if ([(NSMutableArray *)self->_requests count])
    {
      [(MKMapSnapshotCreator *)self _processRequest];
    }

    servingRequest = v14;
  }
}

- (id)_newSnapshotWithView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  lastSnapshot = self->_lastSnapshot;
  if (!viewCopy)
  {
    if (lastSnapshot)
    {
      v13 = lastSnapshot;
      goto LABEL_7;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  if (!lastSnapshot)
  {
    goto LABEL_6;
  }

  [viewCopy frame];
  v8 = v7;
  v10 = v9;
  [(UIImage *)self->_lastSnapshot size];
  UIGraphicsBeginImageContextWithOptions(v15, 1, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIImage *)self->_lastSnapshot drawAtPoint:0.0, 0.0];
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, v8, v10);
  layer = [v5 layer];
  [layer renderInContext:CurrentContext];

  CGContextRestoreGState(CurrentContext);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_7:

  return v13;
}

- (void)_processRequest
{
  if (!self->_servingRequest)
  {
    [(NSLock *)self->_requestLock lock];
    if ([(NSMutableArray *)self->_requests count])
    {
      v3 = [(NSMutableArray *)self->_requests objectAtIndex:0];
      [(MKMapSnapshotCreator *)self setServingRequest:v3];

      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
    }

    [(NSLock *)self->_requestLock unlock];
    servingRequest = [(MKMapSnapshotCreator *)self servingRequest];
    image = [servingRequest image];

    if (image)
    {
      [(MKMapSnapshotCreator *)self _respondWithSnapshot];

      [(MKMapSnapshotCreator *)self _processRequest];
    }

    else
    {
      servingRequest2 = [(MKMapSnapshotCreator *)self servingRequest];
      [servingRequest2 start];
    }
  }
}

- (void)dealloc
{
  servingRequest = [(MKMapSnapshotCreator *)self servingRequest];
  [servingRequest cancel];

  v4.receiver = self;
  v4.super_class = MKMapSnapshotCreator;
  [(MKMapSnapshotCreator *)&v4 dealloc];
}

- (MKMapSnapshotCreator)init
{
  v9.receiver = self;
  v9.super_class = MKMapSnapshotCreator;
  v2 = [(MKMapSnapshotCreator *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    requestLock = v2->_requestLock;
    v2->_requestLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requests = v2->_requests;
    v2->_requests = v5;

    v7 = v2;
  }

  return v2;
}

@end