@interface SeymourAvailabilityManager
+ (NSString)seymourAvailabilityDidChangeNotification;
- (BOOL)available;
- (BOOL)stateKnown;
- (BOOL)unavailable;
- (void)updateAvailability;
@end

@implementation SeymourAvailabilityManager

+ (NSString)seymourAvailabilityDidChangeNotification
{
  if (qword_1008DA5E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1009251D8;

  return v3;
}

- (BOOL)available
{
  selfCopy = self;
  v3 = sub_1001C7364();

  return v3 & 1;
}

- (BOOL)unavailable
{
  selfCopy = self;
  v3 = sub_1001C7654();

  return v3;
}

- (BOOL)stateKnown
{
  v3 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  swift_beginAccess();
  sub_1001B3F54(self + v6, v5);
  v7 = type metadata accessor for ContentAvailability();
  LOBYTE(self) = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1001B3FB8(v5);
  return self;
}

- (void)updateAvailability
{
  selfCopy = self;
  sub_100007D24();
}

@end