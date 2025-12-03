@interface UGCNearbyPhotosAvailibility
+ (id)fetchNearbyAssetsForMapItemCoordinate:(CLLocationCoordinate2D)coordinate withOptions:(id)options;
+ (void)hasTakenPhotosForMapItem:(id)item completion:(id)completion;
+ (void)numberOfPhotosTakenForMapItem:(id)item lastVisitedDate:(id)date completion:(id)completion;
@end

@implementation UGCNearbyPhotosAvailibility

+ (id)fetchNearbyAssetsForMapItemCoordinate:(CLLocationCoordinate2D)coordinate withOptions:(id)options
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  optionsCopy = options;
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
  v14 = [PHAsset fetchAssetsInBoundingBoxWithTopLeftLocation:v12 bottomRightLocation:v13 options:optionsCopy];

  return v14;
}

+ (void)hasTakenPhotosForMapItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v8 = dispatch_queue_create("com.apple.maps.UGCNearbyPhotosAvailibility", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C3191C;
  block[3] = &unk_1016589F8;
  v12 = itemCopy;
  v13 = completionCopy;
  selfCopy = self;
  v9 = completionCopy;
  v10 = itemCopy;
  dispatch_async(v8, block);
}

+ (void)numberOfPhotosTakenForMapItem:(id)item lastVisitedDate:(id)date completion:(id)completion
{
  itemCopy = item;
  dateCopy = date;
  completionCopy = completion;
  if (completionCopy)
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
    v16 = dateCopy;
    selfCopy = self;
    v17 = itemCopy;
    v18 = completionCopy;
    dispatch_async(v14, v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

@end