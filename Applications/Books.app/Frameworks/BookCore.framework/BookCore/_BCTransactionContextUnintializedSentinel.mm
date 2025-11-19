@interface _BCTransactionContextUnintializedSentinel
+ (id)sharedInstance;
@end

@implementation _BCTransactionContextUnintializedSentinel

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_133AA8;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
  if (qword_345EF0 != -1)
  {
    dispatch_once(&qword_345EF0, block);
  }

  v2 = qword_345EF8;

  return v2;
}

@end