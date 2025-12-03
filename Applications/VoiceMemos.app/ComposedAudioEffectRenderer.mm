@interface ComposedAudioEffectRenderer
- (_TtC10VoiceMemos27ComposedAudioEffectRenderer)init;
- (void)rcAssetWriterDidUpdateQueuedBufferCount:(unint64_t)count;
@end

@implementation ComposedAudioEffectRenderer

- (_TtC10VoiceMemos27ComposedAudioEffectRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)rcAssetWriterDidUpdateQueuedBufferCount:(unint64_t)count
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10VoiceMemos27ComposedAudioEffectRenderer_enqueuedBufferCount);
  selfCopy = self;

  os_unfair_lock_lock((v4 + 32));
  *(v4 + 16) = count;
  PassthroughSubject.send(_:)();
  os_unfair_lock_unlock((v4 + 32));
}

@end