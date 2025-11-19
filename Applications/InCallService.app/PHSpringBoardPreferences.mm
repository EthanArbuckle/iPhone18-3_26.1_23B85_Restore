@interface PHSpringBoardPreferences
+ (id)sharedPreferences;
@end

@implementation PHSpringBoardPreferences

+ (id)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110160;
  block[3] = &unk_1003567B0;
  block[4] = a1;
  if (qword_1003B0FB8 != -1)
  {
    dispatch_once(&qword_1003B0FB8, block);
  }

  v2 = qword_1003B0FB0;

  return v2;
}

@end