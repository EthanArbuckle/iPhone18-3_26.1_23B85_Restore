@interface BEAudioSession
- (BEAudioSession)init;
- (BEAudioSession)initWithAudioSession:(id)session;
- (BOOL)setPreferredOutput:(id)output error:(id *)error;
- (NSArray)availableOutputs;
@end

@implementation BEAudioSession

- (BEAudioSession)initWithAudioSession:(id)session
{
  v4 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *(&self->super.isa + OBJC_IVAR___BEAudioSession__preferredOutput) = 0;
  *(&self->super.isa + OBJC_IVAR___BEAudioSession_inner) = session;
  *(&self->super.isa + v4) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BEAudioSession();
  sessionCopy = session;
  return [(BEAudioSession *)&v7 init];
}

- (NSArray)availableOutputs
{
  v2 = *(&self->super.isa + OBJC_IVAR___BEAudioSession_inner);
  selfCopy = self;
  availableOutputs = [v2 availableOutputs];
  if (availableOutputs)
  {
    v5 = availableOutputs;
    sub_236E9C874();
    sub_236E9D138();

    selfCopy = v5;
  }

  sub_236E9C874();
  v6 = sub_236E9D128();

  return v6;
}

- (BOOL)setPreferredOutput:(id)output error:(id *)error
{
  outputCopy = output;
  selfCopy = self;
  sub_236E9C8C0(output);

  return 1;
}

- (BEAudioSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end