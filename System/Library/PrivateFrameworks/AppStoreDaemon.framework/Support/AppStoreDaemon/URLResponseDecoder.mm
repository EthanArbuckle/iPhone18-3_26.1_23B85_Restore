@interface URLResponseDecoder
- (URLResponseDecoder)init;
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation URLResponseDecoder

- (URLResponseDecoder)init
{
  v9.receiver = self;
  v9.super_class = URLResponseDecoder;
  v2 = [(URLResponseDecoder *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.URLResponseDecoder", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    requestProperties = v2->_requestProperties;
    v2->_requestProperties = v6;
  }

  return v2;
}

- (id)resultFromResult:(id)result error:(id *)error
{
  v12.receiver = self;
  v12.super_class = URLResponseDecoder;
  v5 = [(URLResponseDecoder *)&v12 resultFromResult:result error:error];
  v6 = v5;
  if (v5)
  {
    dispatchQueue = self->_dispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10020EF98;
    v9[3] = &unk_10051B570;
    v10 = v5;
    selfCopy = self;
    dispatch_sync(dispatchQueue, v9);
  }

  return v6;
}

@end