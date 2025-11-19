@interface MKAnnotatedMapSnapshotter
- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)a3 camera:(id)a4 mapSize:(CGSize)a5 mapType:(unint64_t)a6 useSnapshotService:(BOOL)a7;
- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)a3 region:(id *)a4 mapSize:(CGSize)a5 mapType:(unint64_t)a6 useSnapshotService:(BOOL)a7;
- (void)_initSnapshotterWithMapItems;
- (void)setTraitCollection:(id)a3;
- (void)startWithQueue:(id)a3 completionHandler:(id)a4;
@end

@implementation MKAnnotatedMapSnapshotter

- (void)startWithQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  snapshotter = self->_snapshotter;
  if (!snapshotter)
  {
    v9 = [[MKMapSnapshotter alloc] initWithOptions:self->_snapshotOptions];
    v10 = self->_snapshotter;
    self->_snapshotter = v9;

    snapshotter = self->_snapshotter;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MKAnnotatedMapSnapshotter_startWithQueue_completionHandler___block_invoke;
  v12[3] = &unk_1E76CD9A8;
  v13 = v7;
  v11 = v7;
  [(MKMapSnapshotter *)snapshotter startWithQueue:v6 completionHandler:v12];
}

uint64_t __62__MKAnnotatedMapSnapshotter_startWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  p_traitCollection = &self->_traitCollection;
  if (self->_traitCollection != v5)
  {
    v7 = v5;
    objc_storeStrong(p_traitCollection, a3);
    p_traitCollection = [(MKMapSnapshotOptions *)self->_snapshotOptions setTraitCollection:v7];
  }

  MEMORY[0x1EEE66BE0](p_traitCollection);
}

- (void)_initSnapshotterWithMapItems
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = self;
  v3 = self->_mapItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x1E69DF408]);
        [v8 _coordinate];
        v10 = [v9 initWithCoordinate:?];
        v11 = [v8 name];
        [v10 setText:v11 locale:0];

        v12 = [v8 _styleAttributes];
        v13 = [v12 copy];

        if (v13 || ([MEMORY[0x1E69A1DB0] markerStyleAttributes], v14 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v14, "copy"), v14, v13))
        {
          v42[0] = xmmword_1A30F71B0;
          [v13 replaceAttributes:v42 count:2];
          [v10 setStyleAttributes:v13];
        }

        v15 = objc_alloc_init(_MKAnnotationViewCustomFeatureAnnotation);
        [v8 _coordinate];
        [(_MKAnnotationViewCustomFeatureAnnotation *)v15 setCoordinate:?];
        [(_MKAnnotationViewCustomFeatureAnnotation *)v15 setCustomFeature:v10];
        [v37 addObject:v15];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v5);
  }

  v16 = 0;
  if (fabs(v36->_region.center.longitude) <= 180.0 && fabs(v36->_region.center.latitude) <= 90.0)
  {
    span = v36->_region.span;
    v18.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(xmmword_1A30F71C0, span)), *&span.f64[0]).u32[0];
    *&span.f64[0] = vmovn_s64(vcgezq_f64(span));
    *&span.f64[0] = vuzp1_s16(*&span.f64[0], *&span.f64[0]);
    v18.i32[1] = HIDWORD(span.f64[0]);
    LOWORD(span.f64[0]) = vminv_u16(v18);
    v16 = LODWORD(span.f64[0]);
  }

  v19 = (v36->_camera == 0) | v16;
  if (MapKitFeature_IsEnabled_SPRForMapSnapshots())
  {
    v20 = ([(NSArray *)v36->_mapItems count]== 1) & v19 & (v16 ^ 1);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSArray *)v36->_mapItems firstObject];
  if ([v21 _isMapItemTypeTransit])
  {

LABEL_20:
    v23 = [_MKCartographicMapConfiguration alloc];
    v42[0] = xmmword_1A30F7320;
    v42[1] = xmmword_1A30F7330;
    v44 = 0;
    v45 = 0;
    v43 = 1;
    v24 = [(_MKCartographicMapConfiguration *)v23 initWithCartographicConfiguration:v42];
    goto LABEL_21;
  }

  mapType = v36->_mapType;

  if (mapType == 104)
  {
    goto LABEL_20;
  }

  v24 = objc_alloc_init(MKStandardMapConfiguration);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(MKMapCamera *)v36->_camera pitch];
    if (!((v33 != 0.0) | v20 & 1))
    {
      goto LABEL_21;
    }
  }

  [(MKMapConfiguration *)v24 setElevationStyle:1];
LABEL_21:
  v25 = objc_alloc_init(MKMapSnapshotOptions);
  snapshotOptions = v36->_snapshotOptions;
  v36->_snapshotOptions = v25;

  [(MKMapSnapshotOptions *)v36->_snapshotOptions setPreferredConfiguration:v24];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions setSize:v36->_mapSize.width, v36->_mapSize.height];
  if ((v19 & 1) == 0)
  {
    [(MKMapSnapshotOptions *)v36->_snapshotOptions setCamera:v36->_camera];
    goto LABEL_34;
  }

  if (v16)
  {
    latitude = v36->_region.center.latitude;
    longitude = v36->_region.center.longitude;
    latitudeDelta = v36->_region.span.latitudeDelta;
    longitudeDelta = v36->_region.span.longitudeDelta;
  }

  else
  {
    if (v20)
    {
      v31 = [(NSArray *)v36->_mapItems firstObject];
      v32 = [MKMapCamera cameraLookingAtMapItem:v31 forViewSize:1 allowPitch:v36->_mapSize.width, v36->_mapSize.height];
      [(MKMapSnapshotOptions *)v36->_snapshotOptions setCamera:v32];

      goto LABEL_34;
    }

    v48.origin.x = mapRectContainingMapItems(v36->_mapItems, v36->_mapSize.width, v36->_mapSize.height);
    *&latitude = MKCoordinateRegionForMapRect(v48);
  }

  [(MKMapSnapshotOptions *)v36->_snapshotOptions setRegion:latitude, longitude, latitudeDelta, longitudeDelta];
LABEL_34:
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setShowsAppleLogo:0];
  v34 = [(MKAnnotatedMapSnapshotter *)v36 traitCollection];

  if (v34)
  {
    v35 = [(MKAnnotatedMapSnapshotter *)v36 traitCollection];
    [(MKMapSnapshotOptions *)v36->_snapshotOptions setTraitCollection:v35];
  }

  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setRendersInBackground:1];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setUseSnapshotService:v36->_useSnapshotService];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setShowsVenues:1];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setCustomFeatureAnnotations:v37];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setSearchResultsType:1];
  [(MKMapSnapshotOptions *)v36->_snapshotOptions _setAllowsSimultaneousLightDarkSnapshots:1];
}

- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)a3 region:(id *)a4 mapSize:(CGSize)a5 mapType:(unint64_t)a6 useSnapshotService:(BOOL)a7
{
  v11 = a6;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  height = a5.height;
  width = a5.width;
  v20 = a3;
  v25.receiver = self;
  v25.super_class = MKAnnotatedMapSnapshotter;
  v21 = [(MKAnnotatedMapSnapshotter *)&v25 init];
  if (v21)
  {
    v22 = [v20 copy];
    mapItems = v21->_mapItems;
    v21->_mapItems = v22;

    v21->_region.center.latitude = width;
    v21->_region.center.longitude = height;
    v21->_region.span.latitudeDelta = v16;
    v21->_region.span.longitudeDelta = v15;
    v21->_mapSize.width = v14;
    v21->_mapSize.height = v13;
    v21->_mapType = a4;
    v21->_useSnapshotService = v11;
    [(MKAnnotatedMapSnapshotter *)v21 _initSnapshotterWithMapItems];
  }

  return v21;
}

- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)a3 camera:(id)a4 mapSize:(CGSize)a5 mapType:(unint64_t)a6 useSnapshotService:(BOOL)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a4;
  v19.receiver = self;
  v19.super_class = MKAnnotatedMapSnapshotter;
  v15 = [(MKAnnotatedMapSnapshotter *)&v19 init];
  if (v15)
  {
    v16 = [v13 copy];
    mapItems = v15->_mapItems;
    v15->_mapItems = v16;

    objc_storeStrong(&v15->_camera, a4);
    v15->_region.center = MKCoordinateRegionInvalid;
    v15->_region.span = unk_1A30F7F60;
    v15->_mapSize.width = width;
    v15->_mapSize.height = height;
    v15->_mapType = a6;
    v15->_useSnapshotService = a7;
    [(MKAnnotatedMapSnapshotter *)v15 _initSnapshotterWithMapItems];
  }

  return v15;
}

@end