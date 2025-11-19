@interface EKUIRemoteUIExtension
- (void)preferredContentSizeChanged:(id)a3;
@end

@implementation EKUIRemoteUIExtension

- (void)preferredContentSizeChanged:(id)a3
{
  v3 = sub_10001CE9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CE7C();
  sub_100009F30();
  (*(v4 + 8))(v7, v3);
}

@end