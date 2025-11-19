@interface MTLIOAccelIOHandleCompressed
- (void)setLabel:(id)a3;
@end

@implementation MTLIOAccelIOHandleCompressed

- (void)setLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIOHandleCompressed;
  [(_MTLObjectWithLabel *)&v6 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOHandleCompressed *)self globalTraceObjectID];
    labelTraceID = self->super._labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end