@interface PHSpringBoardPreferences
+ (id)sharedPreferences;
@end

@implementation PHSpringBoardPreferences

+ (id)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000177BC;
  block[3] = &unk_10010AF00;
  block[4] = self;
  if (qword_100126950 != -1)
  {
    dispatch_once(&qword_100126950, block);
  }

  v2 = qword_100126948;

  return v2;
}

@end