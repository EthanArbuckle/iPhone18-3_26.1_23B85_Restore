@interface SlideToTypeObservable
+ (_TtC15assistivetouchdP33_E95A5B9CFBC065073A07D7F97181393021SlideToTypeObservable)shared;
+ (void)setShared:(id)a3;
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

+ (void)setShared:(id)a3
{
  v3 = qword_100218C70;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_100218C78;
  qword_100218C78 = v4;

  _objc_release_x1(v4, v5);
}

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v4 = v3;
    v5 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v4, v2, v5, 0);

    v6.receiver = v2;
    v6.super_class = type metadata accessor for SlideToTypeObservable(0);
    [(SlideToTypeObservable *)&v6 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end