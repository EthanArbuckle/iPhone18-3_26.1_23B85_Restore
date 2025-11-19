@interface RCRecordingTrackInfoRepository
+ (_TtC10VoiceMemos30RCRecordingTrackInfoRepository)repositoryWithObserver:(id)a3;
- (unint64_t)state;
- (void)clearMutedTrackIndex;
- (void)registerObserver:(id)a3;
- (void)setMutedTrackIndexWithMutedIndex:(int64_t)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation RCRecordingTrackInfoRepository

+ (_TtC10VoiceMemos30RCRecordingTrackInfoRepository)repositoryWithObserver:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_100011750(a3);
  swift_unknownObjectRelease();

  return v4;
}

- (void)registerObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100119E40(a3);
  swift_unknownObjectRelease();
}

- (unint64_t)state
{
  v2 = self;
  CurrentValueSubject.value.getter();

  return v4;
}

- (void)setState:(unint64_t)a3
{
  v4 = self;
  sub_100119FD0(a3);
}

- (void)setMutedTrackIndexWithMutedIndex:(int64_t)a3
{
  v4 = self;
  sub_10011A14C(a3);
}

- (void)clearMutedTrackIndex
{
  v2 = self;
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
}

@end