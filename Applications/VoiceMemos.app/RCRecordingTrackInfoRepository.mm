@interface RCRecordingTrackInfoRepository
+ (_TtC10VoiceMemos30RCRecordingTrackInfoRepository)repositoryWithObserver:(id)observer;
- (unint64_t)state;
- (void)clearMutedTrackIndex;
- (void)registerObserver:(id)observer;
- (void)setMutedTrackIndexWithMutedIndex:(int64_t)index;
- (void)setState:(unint64_t)state;
@end

@implementation RCRecordingTrackInfoRepository

+ (_TtC10VoiceMemos30RCRecordingTrackInfoRepository)repositoryWithObserver:(id)observer
{
  swift_unknownObjectRetain();
  v4 = sub_100011750(observer);
  swift_unknownObjectRelease();

  return v4;
}

- (void)registerObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100119E40(observer);
  swift_unknownObjectRelease();
}

- (unint64_t)state
{
  selfCopy = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (void)setState:(unint64_t)state
{
  selfCopy = self;
  sub_100119FD0(state);
}

- (void)setMutedTrackIndexWithMutedIndex:(int64_t)index
{
  selfCopy = self;
  sub_10011A14C(index);
}

- (void)clearMutedTrackIndex
{
  selfCopy = self;
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
}

@end