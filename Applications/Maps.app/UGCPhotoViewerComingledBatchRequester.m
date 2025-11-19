@interface UGCPhotoViewerComingledBatchRequester
- (UGCPhotoViewerComingledBatchRequester)initWithMapItem:(id)a3 categoryId:(id)a4;
- (void)fetchPhotosWithRange:(_NSRange)a3 completion:(id)a4;
@end

@implementation UGCPhotoViewerComingledBatchRequester

- (void)fetchPhotosWithRange:(_NSRange)a3 completion:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (v7)
  {
    if (length)
    {
      [(GEOMapServicePhotoLookupTicket *)self->_currentTicket cancel];
      v8 = +[GEOMapService sharedService];
      categoryId = self->_categoryId;
      v10 = [(MKMapItem *)self->_mapItem _geoMapItem];
      v11 = [v10 _identifier];
      v12 = +[GEOMapService sharedService];
      v13 = [v12 defaultTraits];
      v14 = [v8 ticketForCategoryIdentifier:categoryId mapItemIdentifier:v11 range:location traits:{length, v13}];
      currentTicket = self->_currentTicket;
      self->_currentTicket = v14;

      v16 = self->_currentTicket;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100AF4D30;
      v17[3] = &unk_101637C68;
      v18 = v7;
      [(GEOMapServicePhotoLookupTicket *)v16 submitWithHandler:v17 networkActivity:0];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

- (UGCPhotoViewerComingledBatchRequester)initWithMapItem:(id)a3 categoryId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UGCPhotoViewerComingledBatchRequester;
  v9 = [(UGCPhotoViewerComingledBatchRequester *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_categoryId, a4);
    objc_storeStrong(&v10->_mapItem, a3);
  }

  return v10;
}

@end