@interface NSObject
- (void)_bkaxIgnoreNextNotification:(unsigned int)a3;
@end

@implementation NSObject

- (void)_bkaxIgnoreNextNotification:(unsigned int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10007642C;
  v3[3] = &unk_100A045F0;
  v3[4] = self;
  v4 = a3;
  sub_1000763A0(v3);
}

@end