@interface ComposedAudioEffectRenderer
- (_TtC10VoiceMemos27ComposedAudioEffectRenderer)init;
- (void)rcAssetWriterDidUpdateQueuedBufferCount:(unint64_t)a3;
@end

@implementation ComposedAudioEffectRenderer

- (_TtC10VoiceMemos27ComposedAudioEffectRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)rcAssetWriterDidUpdateQueuedBufferCount:(unint64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enqueuedBufferCount);
  v5 = self;

  os_unfair_lock_lock((v4 + 32));
  *(v4 + 16) = a3;
  PassthroughSubject.send(_:)();
  os_unfair_lock_unlock((v4 + 32));
}

@end