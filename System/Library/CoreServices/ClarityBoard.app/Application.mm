@interface Application
- (void)didUpdateBadgeStringForApplicationInfo:(id)info;
- (void)didUpdateIconImageForApplicationInfo:(id)info;
@end

@implementation Application

- (void)didUpdateBadgeStringForApplicationInfo:(id)info
{
  infoCopy = info;

  badgeString = [infoCopy badgeString];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100095210(v5, v7);
}

- (void)didUpdateIconImageForApplicationInfo:(id)info
{
  swift_getKeyPath();
  sub_1000978DC(&qword_10032DBA8, type metadata accessor for Application);
  infoCopy = info;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (self->_didInitializeIconImage[0] == 1)
  {
    sub_100095728([infoCopy iconImage]);
  }
}

@end