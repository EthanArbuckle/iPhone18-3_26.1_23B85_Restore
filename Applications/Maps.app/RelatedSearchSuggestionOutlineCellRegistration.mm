@interface RelatedSearchSuggestionOutlineCellRegistration
+ (id)sharedRegistration;
@end

@implementation RelatedSearchSuggestionOutlineCellRegistration

+ (id)sharedRegistration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F60A4C;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F7D8 != -1)
  {
    dispatch_once(&qword_10195F7D8, block);
  }

  v2 = qword_10195F7D0;

  return v2;
}

@end