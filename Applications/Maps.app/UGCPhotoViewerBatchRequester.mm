@interface UGCPhotoViewerBatchRequester
- (UGCPhotoViewerBatchRequester)initWithMapItem:(id)item;
- (void)fetchPhotosWithRange:(_NSRange)range completion:(id)completion;
@end

@implementation UGCPhotoViewerBatchRequester

- (void)fetchPhotosWithRange:(_NSRange)range completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  if (completionCopy)
  {
    if (length)
    {
      [(GEOMapServicePhotoLookupTicket *)self->_currentTicket cancel];
      v8 = +[GEOMapService sharedService];
      _vendorID = [(MKMapItem *)self->_mapItem _vendorID];
      _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
      _identifier = [_geoMapItem _identifier];
      v12 = +[GEOMapService sharedService];
      defaultTraits = [v12 defaultTraits];
      v14 = [v8 ticketForVendorIdentifier:_vendorID mapItemIdentifier:_identifier range:location traits:{length, defaultTraits}];
      currentTicket = self->_currentTicket;
      self->_currentTicket = v14;

      v16 = self->_currentTicket;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100AF4AAC;
      v17[3] = &unk_101637C68;
      v18 = completionCopy;
      [(GEOMapServicePhotoLookupTicket *)v16 submitWithHandler:v17 networkActivity:0];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: completion != ((void *)0)", buf, 2u);
  }
}

- (UGCPhotoViewerBatchRequester)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = UGCPhotoViewerBatchRequester;
  v6 = [(UGCPhotoViewerBatchRequester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end