@interface UGCNearbyPhotosAvailibility
+ (id)fetchNearbyAssetsForMapItemCoordinate:(CLLocationCoordinate2D)a3 withOptions:(id)a4;
+ (void)hasTakenPhotosForMapItem:(id)a3 completion:(id)a4;
+ (void)numberOfPhotosTakenForMapItem:(id)a3 lastVisitedDate:(id)a4 completion:(id)a5;
@end

@implementation UGCNearbyPhotosAvailibility

+ (id)fetchNearbyAssetsForMapItemCoordinate:(CLLocationCoordinate2D)a3 withOptions:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = a4;
  UInteger = GEOConfigGetUInteger();
  v17.latitude = latitude;
  v17.longitude = longitude;
  v18 = MKCoordinateRegionMakeWithDistance(v17, UInteger, UInteger);
  latitudeDelta = v18.span.latitudeDelta;
  longitudeDelta = v18.span.longitudeDelta;
  v10 = CLLocationCoordinate2DMake(v18.span.latitudeDelta + latitude, longitude - v18.span.longitudeDelta);
  v11 = CLLocationCoordinate2DMake(latitude - latitudeDelta, longitudeDelta + longitude);
  v12 = [[CLLocation alloc] initWithLatitude:v10.latitude longitude:v10.longitude];
  v13 = [[CLLocation alloc] initWithLatitude:v11.latitude longitude:v11.longitude];
  v14 = [PHAsset fetchAssetsInBoundingBoxWithTopLeftLocation:v12 bottomRightLocation:v13 options:v6];

  return v14;
}

+ (void)hasTakenPhotosForMapItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_queue_create("com.apple.maps.UGCNearbyPhotosAvailibility", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3191C;
  block[3] = &unk_1016589F8;
  v12 = v6;
  v13 = v7;
  v14 = a1;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (void)numberOfPhotosTakenForMapItem:(id)a3 lastVisitedDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = sub_1007996E8();
    v12 = sub_1007996E8();
    v13 = os_signpost_id_generate(v12);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, v13, "NumberOfPhotosTakenForMapItem", "", buf, 2u);
    }

    v14 = dispatch_queue_create("com.apple.maps.UGCNearbyPhotosAvailibility", 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100C31C74;
    v15[3] = &unk_10164E210;
    v16 = v9;
    v19 = a1;
    v17 = v8;
    v18 = v10;
    dispatch_async(v14, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

@end