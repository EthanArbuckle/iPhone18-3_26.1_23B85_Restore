@interface PreciseLocationManager
- (BOOL)isPreciseLocationEnabled;
@end

@implementation PreciseLocationManager

- (BOOL)isPreciseLocationEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (qword_100590488 != -1)
  {
    dispatch_once(&qword_100590488, &stru_100514C20);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ADD9C;
  block[3] = &unk_10051E1C8;
  block[4] = &v5;
  dispatch_sync(qword_100590480, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end