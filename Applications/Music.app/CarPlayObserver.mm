@interface CarPlayObserver
+ (_TtC5Music15CarPlayObserver)shared;
- (void)setPlayerState:(int64_t)state;
@end

@implementation CarPlayObserver

- (void)setPlayerState:(int64_t)state
{
  selfCopy = self;
  sub_100647604(state);
}

+ (_TtC5Music15CarPlayObserver)shared
{
  if (qword_10117FA48 != -1)
  {
    swift_once();
  }

  v3 = qword_101219150;

  return v3;
}

@end