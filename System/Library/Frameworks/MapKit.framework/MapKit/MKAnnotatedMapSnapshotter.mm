@interface MKAnnotatedMapSnapshotter
- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)items camera:(id)camera mapSize:(CGSize)size mapType:(unint64_t)type useSnapshotService:(BOOL)service;
- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)items region:(id *)region mapSize:(CGSize)size mapType:(unint64_t)type useSnapshotService:(BOOL)service;
- (void)_initSnapshotterWithMapItems;
- (void)setTraitCollection:(id)collection;
- (void)startWithQueue:(id)queue completionHandler:(id)handler;
@end

@implementation MKAnnotatedMapSnapshotter

- (void)startWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
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
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(MKMapSnapshotter *)snapshotter startWithQueue:queueCopy completionHandler:v12];
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

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  p_traitCollection = &self->_traitCollection;
  if (self->_traitCollection != collectionCopy)
  {
    v7 = collectionCopy;
    objc_storeStrong(p_traitCollection, collection);
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
  selfCopy = self;
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
        name = [v8 name];
        [v10 setText:name locale:0];

        _styleAttributes = [v8 _styleAttributes];
        v13 = [_styleAttributes copy];

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
  if (fabs(selfCopy->_region.center.longitude) <= 180.0 && fabs(selfCopy->_region.center.latitude) <= 90.0)
  {
    span = selfCopy->_region.span;
    v18.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(xmmword_1A30F71C0, span)), *&span.f64[0]).u32[0];
    *&span.f64[0] = vmovn_s64(vcgezq_f64(span));
    *&span.f64[0] = vuzp1_s16(*&span.f64[0], *&span.f64[0]);
    v18.i32[1] = HIDWORD(span.f64[0]);
    LOWORD(span.f64[0]) = vminv_u16(v18);
    v16 = LODWORD(span.f64[0]);
  }

  v19 = (selfCopy->_camera == 0) | v16;
  if (MapKitFeature_IsEnabled_SPRForMapSnapshots())
  {
    v20 = ([(NSArray *)selfCopy->_mapItems count]== 1) & v19 & (v16 ^ 1);
  }

  else
  {
    v20 = 0;
  }

  firstObject = [(NSArray *)selfCopy->_mapItems firstObject];
  if ([firstObject _isMapItemTypeTransit])
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

  mapType = selfCopy->_mapType;

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
    [(MKMapCamera *)selfCopy->_camera pitch];
    if (!((v33 != 0.0) | v20 & 1))
    {
      goto LABEL_21;
    }
  }

  [(MKMapConfiguration *)v24 setElevationStyle:1];
LABEL_21:
  v25 = objc_alloc_init(MKMapSnapshotOptions);
  snapshotOptions = selfCopy->_snapshotOptions;
  selfCopy->_snapshotOptions = v25;

  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setPreferredConfiguration:v24];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setSize:selfCopy->_mapSize.width, selfCopy->_mapSize.height];
  if ((v19 & 1) == 0)
  {
    [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setCamera:selfCopy->_camera];
    goto LABEL_34;
  }

  if (v16)
  {
    latitude = selfCopy->_region.center.latitude;
    longitude = selfCopy->_region.center.longitude;
    latitudeDelta = selfCopy->_region.span.latitudeDelta;
    longitudeDelta = selfCopy->_region.span.longitudeDelta;
  }

  else
  {
    if (v20)
    {
      firstObject2 = [(NSArray *)selfCopy->_mapItems firstObject];
      v32 = [MKMapCamera cameraLookingAtMapItem:firstObject2 forViewSize:1 allowPitch:selfCopy->_mapSize.width, selfCopy->_mapSize.height];
      [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setCamera:v32];

      goto LABEL_34;
    }

    v48.origin.x = mapRectContainingMapItems(selfCopy->_mapItems, selfCopy->_mapSize.width, selfCopy->_mapSize.height);
    *&latitude = MKCoordinateRegionForMapRect(v48);
  }

  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setRegion:latitude, longitude, latitudeDelta, longitudeDelta];
LABEL_34:
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setShowsAppleLogo:0];
  traitCollection = [(MKAnnotatedMapSnapshotter *)selfCopy traitCollection];

  if (traitCollection)
  {
    traitCollection2 = [(MKAnnotatedMapSnapshotter *)selfCopy traitCollection];
    [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions setTraitCollection:traitCollection2];
  }

  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setRendersInBackground:1];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setUseSnapshotService:selfCopy->_useSnapshotService];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setShowsVenues:1];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setCustomFeatureAnnotations:v37];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setSearchResultsType:1];
  [(MKMapSnapshotOptions *)selfCopy->_snapshotOptions _setAllowsSimultaneousLightDarkSnapshots:1];
}

- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)items region:(id *)region mapSize:(CGSize)size mapType:(unint64_t)type useSnapshotService:(BOOL)service
{
  typeCopy = type;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  height = size.height;
  width = size.width;
  itemsCopy = items;
  v25.receiver = self;
  v25.super_class = MKAnnotatedMapSnapshotter;
  v21 = [(MKAnnotatedMapSnapshotter *)&v25 init];
  if (v21)
  {
    v22 = [itemsCopy copy];
    mapItems = v21->_mapItems;
    v21->_mapItems = v22;

    v21->_region.center.latitude = width;
    v21->_region.center.longitude = height;
    v21->_region.span.latitudeDelta = v16;
    v21->_region.span.longitudeDelta = v15;
    v21->_mapSize.width = v14;
    v21->_mapSize.height = v13;
    v21->_mapType = region;
    v21->_useSnapshotService = typeCopy;
    [(MKAnnotatedMapSnapshotter *)v21 _initSnapshotterWithMapItems];
  }

  return v21;
}

- (MKAnnotatedMapSnapshotter)initWithMapItems:(id)items camera:(id)camera mapSize:(CGSize)size mapType:(unint64_t)type useSnapshotService:(BOOL)service
{
  height = size.height;
  width = size.width;
  itemsCopy = items;
  cameraCopy = camera;
  v19.receiver = self;
  v19.super_class = MKAnnotatedMapSnapshotter;
  v15 = [(MKAnnotatedMapSnapshotter *)&v19 init];
  if (v15)
  {
    v16 = [itemsCopy copy];
    mapItems = v15->_mapItems;
    v15->_mapItems = v16;

    objc_storeStrong(&v15->_camera, camera);
    v15->_region.center = MKCoordinateRegionInvalid;
    v15->_region.span = unk_1A30F7F60;
    v15->_mapSize.width = width;
    v15->_mapSize.height = height;
    v15->_mapType = type;
    v15->_useSnapshotService = service;
    [(MKAnnotatedMapSnapshotter *)v15 _initSnapshotterWithMapItems];
  }

  return v15;
}

@end