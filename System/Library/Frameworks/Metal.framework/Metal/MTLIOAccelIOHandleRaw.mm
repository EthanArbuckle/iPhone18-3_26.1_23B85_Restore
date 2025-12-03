@interface MTLIOAccelIOHandleRaw
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelIOHandleRaw

- (void)setLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIOHandleRaw;
  [(_MTLObjectWithLabel *)&v6 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOHandleRaw *)self globalTraceObjectID];
    labelTraceID = self->super._labelTraceID;
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end