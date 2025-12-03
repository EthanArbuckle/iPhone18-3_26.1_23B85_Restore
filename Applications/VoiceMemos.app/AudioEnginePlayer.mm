@interface AudioEnginePlayer
- (id)audioEngineOutputNodeAccessQueue;
- (int)fillNextBuffer:(AudioBufferList *)buffer frameCount:(int)count;
- (void)audioRendererError:(id)error;
@end

@implementation AudioEnginePlayer

- (int)fillNextBuffer:(AudioBufferList *)buffer frameCount:(int)count
{

  v6 = AudioEnginePlayer.fillNextBuffer(_:frameCount:)(buffer, count);

  return v6;
}

- (id)audioEngineOutputNodeAccessQueue
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    audioEngineOutputNodeAccessQueue = [Strong audioEngineOutputNodeAccessQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    audioEngineOutputNodeAccessQueue = 0;
  }

  return audioEngineOutputNodeAccessQueue;
}

- (void)audioRendererError:(id)error
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    errorCopy = error;

    v7 = _convertErrorToNSError(_:)();
    [v5 audioPlayerError:v7];
    swift_unknownObjectRelease();
  }
}

@end