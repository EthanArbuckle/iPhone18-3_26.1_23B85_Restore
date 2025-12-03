@interface SlideToTypeObservable
+ (_TtC15assistivetouchdP33_E95A5B9CFBC065073A07D7F97181393021SlideToTypeObservable)shared;
+ (void)setShared:(id)shared;
- (void)dealloc;
@end

@implementation SlideToTypeObservable

+ (_TtC15assistivetouchdP33_E95A5B9CFBC065073A07D7F97181393021SlideToTypeObservable)shared
{
  if (qword_100218C70 != -1)
  {
    swift_once();
  }

  v3 = qword_100218C78;

  return v3;
}

+ (void)setShared:(id)shared
{
  v3 = qword_100218C70;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_100218C78;
  qword_100218C78 = sharedCopy;

  _objc_release_x1(sharedCopy, v5);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v4 = v3;
    v5 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v4, selfCopy, v5, 0);

    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for SlideToTypeObservable(0);
    [(SlideToTypeObservable *)&v6 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end