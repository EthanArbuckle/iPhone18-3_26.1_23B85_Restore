@interface AudioEnginePlayer
- (id)audioEngineOutputNodeAccessQueue;
- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4;
- (void)audioRendererError:(id)a3;
@end

@implementation AudioEnginePlayer

- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4
{

  v6 = AudioEnginePlayer.fillNextBuffer(_:frameCount:)(a3, a4);

  return v6;
}

- (id)audioEngineOutputNodeAccessQueue
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong audioEngineOutputNodeAccessQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)audioRendererError:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;

    v7 = _convertErrorToNSError(_:)();
    [v5 audioPlayerError:v7];
    swift_unknownObjectRelease();
  }
}

@end