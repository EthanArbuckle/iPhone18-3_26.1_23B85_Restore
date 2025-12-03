@interface UGCPhotoViewerComingledBatchRequester
- (UGCPhotoViewerComingledBatchRequester)initWithMapItem:(id)item categoryId:(id)id;
- (void)fetchPhotosWithRange:(_NSRange)range completion:(id)completion;
@end

@implementation UGCPhotoViewerComingledBatchRequester

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
      categoryId = self->_categoryId;
      _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
      _identifier = [_geoMapItem _identifier];
      v12 = +[GEOMapService sharedService];
      defaultTraits = [v12 defaultTraits];
      v14 = [v8 ticketForCategoryIdentifier:categoryId mapItemIdentifier:_identifier range:location traits:{length, defaultTraits}];
      currentTicket = self->_currentTicket;
      self->_currentTicket = v14;

      v16 = self->_currentTicket;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100AF4D30;
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

- (UGCPhotoViewerComingledBatchRequester)initWithMapItem:(id)item categoryId:(id)id
{
  itemCopy = item;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = UGCPhotoViewerComingledBatchRequester;
  v9 = [(UGCPhotoViewerComingledBatchRequester *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_categoryId, id);
    objc_storeStrong(&v10->_mapItem, item);
  }

  return v10;
}

@end