@interface URLRequestProperties
- (URLRequestProperties)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation URLRequestProperties

- (URLRequestProperties)init
{
  v7.receiver = self;
  v7.super_class = URLRequestProperties;
  v2 = [(URLRequestProperties *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.URLRequestProperties", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_KBSyncType = 0;
    v2->_requestMethod = 2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10033C9A8;
  v13 = sub_10033C9B8;
  v14 = [+[URLRequestProperties allocWithZone:](URLRequestProperties init];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033DC90;
  block[3] = &unk_100522A30;
  block[4] = self;
  block[5] = &v9;
  block[6] = zone;
  dispatch_sync(dispatchQueue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end