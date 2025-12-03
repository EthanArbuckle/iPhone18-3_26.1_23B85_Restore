@interface HomeOutlineHiddenViewModel
+ (id)sharedViewModel;
@end

@implementation HomeOutlineHiddenViewModel

+ (id)sharedViewModel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AE67E4;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195E598 != -1)
  {
    dispatch_once(&qword_10195E598, block);
  }

  v2 = qword_10195E590;

  return v2;
}

@end