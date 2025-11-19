@interface MKMapSnapshotRequest
- (CGSize)size;
- (CLLocationCoordinate2D)coordinate;
- (MKMapSnapshotCreator)delegate;
- (id)description;
- (void)start;
@end

@implementation MKMapSnapshotRequest

- (MKMapSnapshotCreator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)start
{
  snapshotCreator = self->_snapshotCreator;
  if (snapshotCreator)
  {
    self->_snapshotCreator = 0;
  }

  v4 = [MEMORY[0x1E69A2200] _mapkit_mapRegionForCoordinateRegion:{MKCoordinateRegionMakeWithZoomLevel(self->_coordinate.latitude, self->_coordinate.longitude, self->_zoomLevel, self->_size.width, self->_size.height)}];
  v5 = +[MKSystemController sharedInstance];
  if ([v5 isHiDPI])
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = MKGetSnapshotLog();
  v8 = os_signpost_id_generate(v7);

  v9 = objc_alloc(MEMORY[0x1E69DF448]);
  v10 = [v9 initWithSize:MEMORY[0x1E69E96A0] scale:v8 homeQueue:0 signpostId:0 mapType:0 mapDisplayStyles:0 mapDisplayStylesCount:self->_size.width auditToken:{self->_size.height, v6}];
  v11 = self->_snapshotCreator;
  self->_snapshotCreator = v10;

  [(VKMapSnapshotCreator *)self->_snapshotCreator setMapType:0];
  [(VKMapSnapshotCreator *)self->_snapshotCreator setMapRegion:v4 pitch:0.0 yaw:0.0];
  v12 = self->_snapshotCreator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__MKMapSnapshotRequest_start__block_invoke;
  v13[3] = &unk_1E76C6B38;
  v13[4] = self;
  *&v13[5] = v6;
  [(VKMapSnapshotCreator *)v12 renderSnapshot:v13];
}

void __29__MKMapSnapshotRequest_start__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__MKMapSnapshotRequest_start__block_invoke_2;
  v4[3] = &unk_1E76C6B10;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  [a2 enumerateImagesWithBlock:v4];
  [*(a1 + 32) setAttributionString:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained _respondWithSnapshot];
}

void __29__MKMapSnapshotRequest_start__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(a1 + 32) + 64))
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a3 scale:0 orientation:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MKMapSnapshotRequest;
  v4 = [(MKMapSnapshotRequest *)&v10 description];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
  zoomLevel = self->_zoomLevel;
  v7 = NSStringFromCGSize(self->_size);
  v8 = [v3 stringWithFormat:@"%@ c:%@ zoom:%lu size:%@", v4, v5, zoomLevel, v7];

  return v8;
}

@end