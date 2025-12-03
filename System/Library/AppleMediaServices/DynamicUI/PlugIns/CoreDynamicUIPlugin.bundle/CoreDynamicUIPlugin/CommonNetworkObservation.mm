@interface CommonNetworkObservation
- (void)networkStateDidChange:(id)change;
@end

@implementation CommonNetworkObservation

- (void)networkStateDidChange:(id)change
{
  v3 = sub_8E034();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E014();

  sub_2FB88();

  (*(v4 + 8))(v6, v3);
}

@end