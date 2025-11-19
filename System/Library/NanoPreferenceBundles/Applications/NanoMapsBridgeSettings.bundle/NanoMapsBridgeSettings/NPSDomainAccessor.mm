@interface NPSDomainAccessor
+ (id)nanoMapsDomainAccessor;
@end

@implementation NPSDomainAccessor

+ (id)nanoMapsDomainAccessor
{
  if (qword_CB38 != -1)
  {
    sub_5CC8();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_50FC;
  v9 = sub_510C;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5114;
  block[3] = &unk_8ED8;
  block[4] = &v5;
  dispatch_sync(qword_CB40, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end