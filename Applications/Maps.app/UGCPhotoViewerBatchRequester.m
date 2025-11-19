@interface UGCPhotoViewerBatchRequester
- (UGCPhotoViewerBatchRequester)initWithMapItem:(id)a3;
- (void)fetchPhotosWithRange:(_NSRange)a3 completion:(id)a4;
@end

@implementation UGCPhotoViewerBatchRequester

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
      v9 = [(MKMapItem *)self->_mapItem _vendorID];
      v10 = [(MKMapItem *)self->_mapItem _geoMapItem];
      v11 = [v10 _identifier];
      v12 = +[GEOMapService sharedService];
      v13 = [v12 defaultTraits];
      v14 = [v8 ticketForVendorIdentifier:v9 mapItemIdentifier:v11 range:location traits:{length, v13}];
      currentTicket = self->_currentTicket;
      self->_currentTicket = v14;

      v16 = self->_currentTicket;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100AF4AAC;
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

- (UGCPhotoViewerBatchRequester)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UGCPhotoViewerBatchRequester;
  v6 = [(UGCPhotoViewerBatchRequester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end