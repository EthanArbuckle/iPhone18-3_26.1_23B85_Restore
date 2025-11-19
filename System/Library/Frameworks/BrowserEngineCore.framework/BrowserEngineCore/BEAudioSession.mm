@interface BEAudioSession
- (BEAudioSession)init;
- (BEAudioSession)initWithAudioSession:(id)a3;
- (BOOL)setPreferredOutput:(id)a3 error:(id *)a4;
- (NSArray)availableOutputs;
@end

@implementation BEAudioSession

- (BEAudioSession)initWithAudioSession:(id)a3
{
  v4 = OBJC_IVAR___BEAudioSession__preferredOutput;
  *(&self->super.isa + OBJC_IVAR___BEAudioSession__preferredOutput) = 0;
  *(&self->super.isa + OBJC_IVAR___BEAudioSession_inner) = a3;
  *(&self->super.isa + v4) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BEAudioSession();
  v5 = a3;
  return [(BEAudioSession *)&v7 init];
}

- (NSArray)availableOutputs
{
  v2 = *(&self->super.isa + OBJC_IVAR___BEAudioSession_inner);
  v3 = self;
  v4 = [v2 availableOutputs];
  if (v4)
  {
    v5 = v4;
    sub_236E9C874();
    sub_236E9D138();

    v3 = v5;
  }

  sub_236E9C874();
  v6 = sub_236E9D128();

  return v6;
}

- (BOOL)setPreferredOutput:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  sub_236E9C8C0(a3);

  return 1;
}

- (BEAudioSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end