@interface PDStoreBag
- (PDStoreBag)init;
- (void)_registerBagKeys;
@end

@implementation PDStoreBag

- (PDStoreBag)init
{
  v7.receiver = self;
  v7.super_class = PDStoreBag;
  v2 = [(PDStoreBag *)&v7 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [AMSBag bagForProfile:@"schoolwork" profileVersion:@"1"];
    bag = v2->_bag;
    v2->_bag = v4;

    objc_autoreleasePoolPop(v3);
    [(PDStoreBag *)v2 _registerBagKeys];
  }

  return v2;
}

- (void)_registerBagKeys
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041360;
  block[3] = &unk_100202D40;
  block[4] = self;
  if (qword_10024D8B8 != -1)
  {
    dispatch_once(&qword_10024D8B8, block);
  }
}

@end