@interface Application
- (void)didUpdateBadgeStringForApplicationInfo:(id)a3;
- (void)didUpdateIconImageForApplicationInfo:(id)a3;
@end

@implementation Application

- (void)didUpdateBadgeStringForApplicationInfo:(id)a3
{
  v3 = a3;

  v4 = [v3 badgeString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100095210(v5, v7);
}

- (void)didUpdateIconImageForApplicationInfo:(id)a3
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  v5 = a3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (self->_didInitializeIconImage[0] == 1)
  {
    sub_100095728([v5 iconImage]);
  }
}

@end