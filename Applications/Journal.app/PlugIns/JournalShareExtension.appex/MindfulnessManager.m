@interface MindfulnessManager
- (void)appDidEnterBackground:(id)a3;
@end

@implementation MindfulnessManager

- (void)appDidEnterBackground:(id)a3
{
  v3 = sub_1000FF224();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF1F4();

  sub_1000D82FC();

  (*(v4 + 8))(v6, v3);
}

@end