@interface AUAInputStream
- (void)stopStream;
@end

@implementation AUAInputStream

- (void)stopStream
{
  v4 = *&self->super.ASDStream_opaque[OBJC_IVAR___AUAInputStream_startCount];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (v5)
  {
    *&self->super.ASDStream_opaque[OBJC_IVAR___AUAInputStream_startCount] = v6;
    if (!v6)
    {
      v10 = v2;
      v11 = v3;
      v9.receiver = self;
      v9.super_class = type metadata accessor for AUAInputStream(0);
      v7 = v9.receiver;
      [(AUAStream *)&v9 stopStream];
      v8 = *&v7[OBJC_IVAR___AUAInputStream_lockDelay];
      *&v7[OBJC_IVAR___AUAInputStream_lockDelay] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

@end